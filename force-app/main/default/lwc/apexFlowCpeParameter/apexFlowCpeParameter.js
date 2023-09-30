import { LightningElement, api } from 'lwc';

export default class ApexFlowCpeParameter extends LightningElement {

    @api builderContext;
    @api parameterData;

    isBind = true;

    get isCollection() {
        return this.parameterData.paramType.indexOf('[]') > -1;
    }

    get bindOptions() {
        let options = [];
        if(this.isCollection === true) {
            // this is a parameter expecting a collection
            this.builderContext.variables.forEach((element) => {
                if(element.isCollection === true) {
                    // this variable is a collection
                    if(this.parameterData.paramType.indexOf('Object') > -1 || this.parameterData.paramType.indexOf(element.dataType) > -1) {
                        // this variable matches the parameter data type
                        options.push({ value: '{!' + element.name + '}', label: element.name, description: element.description });
                    }
                }
            });
        }
        return options;
    }

    connectedCallback() {
        // TODO: check if is binded - I guess use the "{!" at the start of the variable eventually...
    }

    handleToggle(e) {
        this.isBind = !this.isBind;
    }

    handleParameterValueChange(e) {
        // event up to parent

        /*
        let parameterName = 'param';
        let theVariable = null;

        if(this.parameterDataType.indexOf('Object[]') > -1) {
            theVariable = this.builderContext.variables.find(item => {
                return item.name === e.target.value;
            });
            parameterName += theVariable.dataType + '[]';
        }
        else {
            parameterName += this.parameterDataType;
        }

        parameterName += (Number(this.parameterIndex) + 1);
        parameterName = parameterName.replace('[]', 'Collection');

        let newValueDataType = this.parameterDataType;
        if(newValueDataType.indexOf('[]') > -1) newValueDataType = 'Reference';

        if(parameterName.indexOf('Collection') > -1) {
             // we need to wipe out all the parallel parameters by index so old values aren't retained
            this.dispatchDelete(parameterName.replace(theVariable.dataType, 'String'));
            this.dispatchDelete(parameterName.replace(theVariable.dataType, 'Number'));
            this.dispatchDelete(parameterName.replace(theVariable.dataType, 'Date'));
            this.dispatchDelete(parameterName.replace(theVariable.dataType, 'DateTime'));
            this.dispatchDelete(parameterName.replace(theVariable.dataType, 'Boolean'));
        }

        */

        this.dispatchEvent(new CustomEvent('parametervaluechanged', {
            detail : {
                parameterData : this.parameterData,
                parameterValue : e.target.value
            }
        }));
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
    }
    */

}