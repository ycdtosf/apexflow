public class DataTypes {

    @AuraEnabled public String stringValue;
    @AuraEnabled public Date dateValue;
    @AuraEnabled public DateTime dateTimeValue;
    @AuraEnabled public Time timeValue;
    @AuraEnabled public Integer integerValue;
    @AuraEnabled public Long longValue;
    @AuraEnabled public Double doubleValue;
    @AuraEnabled public Double decimalValue;
    @AuraEnabled public Boolean booleanValue;
    public Object objectValue {
        get {
            if(stringValue != null) return stringValue; 
            else if(dateValue != null) return dateValue; 
            else if(dateTimeValue != null) return dateTimeValue; 
            else if(timeValue != null) return timeValue; 
            else if(integerValue != null) return integerValue; 
            else if(longValue != null) return longValue; 
            else if(doubleValue != null) return doubleValue; 
            else if(decimalValue != null) return decimalValue; 
            else if(booleanValue != null) return booleanValue;
            else return objectValue;
        }
        set;
    }
    @AuraEnabled public List<String> stringListValue;
    @AuraEnabled public List<Date> dateListValue;
    @AuraEnabled public List<DateTime> dateTimeListValue;
    @AuraEnabled public List<Time> timeListValue;
    @AuraEnabled public List<Integer> integerListValue;
    @AuraEnabled public List<Integer> longListValue;
    @AuraEnabled public List<Double> doubleListValue;
    @AuraEnabled public List<Decimal> decimalListValue;
    @AuraEnabled public List<Boolean> booleanListValue;
    public List<Object> objectListValue {
        get {
            system.debug(this);
            if(stringListValue != null) return stringListValue; 
            else if(dateListValue != null) return dateListValue; 
            else if(dateTimeListValue != null) return dateTimeListValue; 
            else if(timeListValue != null) return timeListValue; 
            else if(integerListValue != null) return integerListValue; 
            else if(longListValue != null) return longListValue; 
            else if(doubleListValue != null) return doubleListValue; 
            else if(decimalListValue != null) return decimalListValue; 
            else if(booleanListValue != null) return booleanListValue;
            else return objectListValue;
        }
        set;
    }
    
    public DataTypes() {}
    
}