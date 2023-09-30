public class MethodWrapperParameter {
    
    @AuraEnabled public String name { get; set; }
    @AuraEnabled public String paramType { get; set; }
    @AuraEnabled public String description { get; set; }
    @AuraEnabled public DataTypes value { get; set; }
    @AuraEnabled public Integer index { get; set; }

    public MethodWrapperParameter() {
        this.value = new DataTypes();
    }
}