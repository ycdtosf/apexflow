public with sharing class ApexFlowInvocable {
    
    @InvocableMethod(label='ApexFlow' configurationEditor='c-apex-flow-cpe' category='ApexFlow')
    public static List<Response> call(List<Request> requests) {

        List<Response> responses = new List<Response>(); 

        for(Request request : requests) {

            Response response = new Response(); 
            MethodWrapper c = ApexFlow.getMethod(request.input.namespaceName, request.input.className, request.input.methodName);
            c.setInputValue(request.input.value); 

            system.debug('hello?');

            // hand off invocable parameter values to wrapper parameter values
            for(Integer x = 0; x < c.parameters.values().size(); x++) {
                MethodWrapperParameter methodWrapperParameter = c.parameters.values()[x];
                DataTypes parameterValue = request.input.parameterValues[x];
                methodWrapperParameter.value = parameterValue; 
            }
            
            c.execute();
            response.output = c.outputValue;
            system.debug(c.outputValue);
            system.debug(response.output);
            responses.add(response);

        }

        return responses;

    }

    public class Request {
        @InvocableVariable public InvocableRequest input;
    }

    public class Response {
        @InvocableVariable public DataTypes output;
    }

}
