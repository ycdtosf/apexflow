@isTest
public class ApexFlowInvocableTests {
    
    @isTest
    public static void test() {
        
        InvocableRequest input = new InvocableRequest();
        input.namespaceName = 'System';
        input.className = 'String';
        input.methodName = 'contains';
        input.value.stringValue = 'TEST';

        DataTypes parameterValue = new DataTypes();
        parameterValue.stringValue = 'ES';
        input.parameterValues.add(parameterValue);

        ApexFlowInvocable.Request r = new ApexFlowInvocable.Request();
        r.input = input;
        List<ApexFlowInvocable.Response> responses = ApexFlowInvocable.call(new List<ApexFlowInvocable.Request> { r });
        
    }

}