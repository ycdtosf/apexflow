public abstract class MethodWrapper {
    @AuraEnabled public String namespaceName { get; set; }
    @AuraEnabled public String className { get; set; }
    @AuraEnabled public String methodName { get; set; }
    @AuraEnabled public String description { get; set; }
    @AuraEnabled public Boolean isStatic { get; set; }
    @AuraEnabled public Map<String, MethodWrapperParameter> parameters { get; set; }
    @AuraEnabled public String inputType { get; set; }
    @AuraEnabled public String outputType { get; set; }

    @AuraEnabled public String prefix {
        get {
            if(prefix == null) prefix = '';
            return prefix;
        }
        set;
    }

    public DataTypes inputValue {
        get {
            if(inputValue == null) inputValue = new DataTypes();
            return inputValue;
        }
        set;
    }
    public DataTypes outputValue {
        get {
            if(outputValue == null) outputValue = new DataTypes();
            return outputValue;
        }
        set;
    }

    public MethodWrapper() {
        this.parameters = new Map<String, MethodWrapperParameter>();
        this.register();
    }

    public void setInputValue(DataTypes d) { this.inputValue = d; }
    public void setOutputValue(DataTypes d) { d = this.outputValue; }

    public void addParameter(String name, String paramType, String description) {
        MethodWrapperParameter p = new MethodWrapperParameter();
        p.name = name;
        p.paramType = paramType;
        p.description = description;
        p.index = this.parameters.values().size();
        this.parameters.put(p.name, p);
    }

    public Boolean hasParameter(String parameterName) {
        return this.parameters.containsKey(parameterName);
    }

    public MethodWrapperParameter getParameter(String parameterName) {
        if(!hasParameter(parameterName)) return null;
        return this.parameters.get(parameterName);
    }
    
    public abstract void execute();
    public abstract void register();

}