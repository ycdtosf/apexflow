public class InvocableRequest {
    @AuraEnabled public String namespaceName;
    @AuraEnabled public String className;
    @AuraEnabled public String prefix;
    @AuraEnabled public String methodName;
    @AuraEnabled public DataTypes value {
        get {
            if(value == null) {
                value = new DataTypes();
            }
            return value;
        }   
        set;
    }
    @AuraEnabled public List<DataTypes> parameterValues {
        get {
            if(parameterValues == null) {
                parameterValues = new List<DataTypes>();
            }
            return parameterValues;
        }   
        set;
    }
    
    public InvocableRequest() {}
    
}