import { LightningElement, api } from 'lwc';
import cpeGetNamespaces from '@salesforce/apex/ApexFlow.getNamespaces';
import cpeGetClasses from '@salesforce/apex/ApexFlow.getClasses';
import cpeGetMethods from '@salesforce/apex/ApexFlow.getMethods';
import cpeGetMethod from '@salesforce/apex/ApexFlow.getMethod';

export default class ApexFlowCpe extends LightningElement {

    @api inputVariables;
    @api builderContext;

    namespaceData;
    classData;
    methodData;
    parametersData;

    selectedMethod;
    
    namespaceName;
    className;
    prefix;
    methodName;

    requestInput = {
        namespaceName : null,
        className : null,
        prefix : null,
        methodName : null,
        value : {},
        parameters : []
    };

    findParam(paramName) {
        const param = this.inputVariables.find(({ name }) => name === paramName);
        return param && param.value;
    }

    buildOptions(stringArray) {
        let options = [];
        stringArray.forEach((item) => options.push({ value: item, label: item, description: item }));
        return options;
    }

    get inputValue() {

        let dataTypes = ['string', 'date', 'dateTime', 'integer', 'decimal', 'boolean', 'stringList', 'dateList', 'dateTimeList', 'integerList', 'decimalList', 'booleanList' ]

        if(this.requestInput.value !== undefined) {
            for(let x = 0; x < dataTypes.length; x++) {
                let dataTypeFieldName = dataTypes[x] + 'Value';
                if(this.requestInput.value[dataTypeFieldName] !== undefined && this.requestInput.value[dataTypeFieldName] !== null) {
                    return this.requestInput.value[dataTypeFieldName];
                }
            }
        }

        else {
            return '';
        }
    }

    get builderContextVariableOptions() {
        let options = [];
        this.builderContext.variables.forEach((element) => {

        });
        console.log(this.builderContext.variables);
        return options;
    }

    get namespaceOptions() {
        return this.buildOptions(this.namespaceData);
    }

    get classOptions() {
        return this.buildOptions(this.classData);
    }

    get methodOptions() {
        return this.buildOptions(this.methodData);
    }

    get selectedMethodData() {
        return this.methodData.find((element) => element.name === this.methodName);
    }

    get isStaticMethod() {
        return this.selectedMethod && this.selectedMethod.isStatic === true;
    }

    connectedCallback() {
        this.init();
    }

    async init() {

        // init from inputVariables to start, but these may change and inputVariables will not reflect until component is reloaded
        this.requestInput = this.findParam('input');
        if(this.requestInput === undefined || this.requestInput === null) this.resetRequestInput('namespace');
        else this.requestInput = JSON.parse(this.requestInput);
        
        await this.loadNamespaces();
        if(this.requestInput.namespaceName) await this.loadClasses();
        if(this.requestInput.className) await this.loadMethods();
        if(this.requestInput.methodName) await this.loadMethod();

    }

    async loadNamespaces() {
        try {
            this.namespaceData = await cpeGetNamespaces();
        }
        catch(error) {
            console.log(error);
        }
    }

    async loadClasses() {
        try {
            this.classData = await cpeGetClasses({ namespaceName : this.requestInput.namespaceName });
        }
        catch(error) {
            console.log(error);
        }
    }

    async loadMethods() {
        try {
            this.methodData = await cpeGetMethods({ namespaceName : this.requestInput.namespaceName, className : this.requestInput.className });
        }
        catch(error) {
            console.log(error);
        }
    }

    async loadMethod() {
        try {

            this.selectedMethod = await cpeGetMethod({ namespaceName : this.requestInput.namespaceName, className : this.requestInput.className, methodName : this.requestInput.methodName });

            this.requestInput.prefix = this.selectedMethod.prefix;
            this.dispatchChange();

            let temp = this.selectedMethod.parameters;
            // https://stackoverflow.com/questions/52181220/converting-object-properties-to-array-of-objects
            this.parametersData = Object.entries(temp).map(([k, v]) => ({ 'name' : k, 'paramType' : v.paramType, 'index' : v.index, 'description' : v.description, 'value' : null }));
            
            this.parametersData.forEach((e) => {
                if(this.requestInput.parameterValues.length > e.index) {
                    let dataTypeFieldName = this.getParameterDataTypeFieldName(e.paramType);
                    dataTypeFieldName = dataTypeFieldName.replace('object', 'string');
                    e.value = this.requestInput.parameterValues[e.index][dataTypeFieldName];
                }
                
            });

            

        }
        catch(error) {
            console.log(error);
        }
    }

    resetRequestInput(resetType) {
        if(resetType === 'namespace') {
            this.requestInput = {
                namespaceName : null,
                className : null,
                prefix : null,
                methodName : null,
                value : {},
                parameterValues : []
            };
        }
        else if(resetType === 'class') {
            this.requestInput.className = null;
            this.requestInput.prefix = null;
            this.requestInput.methodName = null;
            this.requestInput.value = {};
            this.requestInput.parameterValues = [];
        }
        else if(resetType === 'method') {
            this.requestInput.prefix = null;
            this.requestInput.methodName = null;
            this.requestInput.value = {};
            this.requestInput.parameterValues = [];
        }
    }

    async handleNamespaceChange(event) {
        this.resetRequestInput('namespace');
        this.requestInput.namespaceName = event.detail.value;
        this.dispatchChange();
        this.loadClasses();
    }


    async handleClassChange(event) {
        this.resetRequestInput('class');
        this.requestInput.className = event.detail.value;
        this.dispatchChange();
        this.loadMethods();
    }

    async handleMethodChange(event) {
        this.resetRequestInput('method');
        this.requestInput.methodName = event.detail.value;
        this.dispatchChange();
        this.loadMethod();
    }

    async handleInputValueChange(event) {
        let dataTypeFieldName = this.getParameterDataTypeFieldName(this.selectedMethod.inputType);
        dataTypeFieldName = dataTypeFieldName.replace('object', 'string');
        this.requestInput.value[dataTypeFieldName] = event.detail.value;
        this.dispatchChange();
    }

    getParameterDataTypeFieldName(paramType) {
        let dataTypeFieldName = this.uncapitalize(paramType.replace('[]', ''));
        if(paramType.indexOf('[]') > -1) dataTypeFieldName += 'List';
        dataTypeFieldName += 'Value';
        return dataTypeFieldName;
    }

    async handleParameterValueChanged(event) {

        let dataTypeFieldName = this.getParameterDataTypeFieldName(event.detail.parameterData.paramType);
        dataTypeFieldName = dataTypeFieldName.replace('object', 'string');
        if(this.requestInput.parameterValues.length === 0) this.requestInput.parameterValues.push({});
        this.requestInput.parameterValues[event.detail.parameterData.index][dataTypeFieldName] = event.detail.parameterValue;
        this.dispatchChange();
        //this.dispatchChange(event.detail.name, event.detail.newValue, event.detail.newValueDataType);
    }

    uncapitalize(value) {
        return value.charAt(0).toLowerCase() + value.slice(1);
    }
    
    /*
    async handleChange(event) {
        if(event && event.detail) {
            const name = event.target.name;
            const value = event.detail.value;
            const dataType = "String"; // TODO later
            this.dispatchChange(name, value, dataType);
        }
    }
    */

    async dispatchChange() {
        try {
            this.dispatchEvent(new CustomEvent("configuration_editor_input_value_changed", {
                bubbles: true,
                cancelable: false,
                composed: true,
                detail: {
                    name: 'input',
                    newValue: JSON.stringify(this.requestInput),
                    newValueDataType: 'Apex'
                },
            }));
        }
        catch(error) {
            console.log(error);
        }
    }

    /*
    async dispatchDelete(name) {
        try {
            this.dispatchEvent(new CustomEvent("configuration_editor_input_value_deleted", {
                bubbles: true,
                cancelable: false,
                composed: true,
                detail: {
                    name: name
                },
            }));
        }
        catch(error) {
            console.log(error);
        }
    }*/

    @api validate() {
        const validity = [];
        /*
        if (
          !this.isValidEmailAddress(this.sendToEmail) ||
          !this.isValidEmailAddress(this.replyToEmail)
        ) {
          validity.push({
            key: "SendToAddress",
            errorString: "You have entered an invalid email format.",
          });
        }
        */
        return validity;
      }

}