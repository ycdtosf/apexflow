public class ApexFlow {
    
    private static Map<String, Map<String, Map<String, MethodWrapper>>> hierarchy {
        get {
            if(hierarchy == null) {
                hierarchy = new Map<String, Map<String, Map<String, MethodWrapper>>>();
            }
            return hierarchy;
        }
        set;
    }

    @AuraEnabled
    public static List<String> getNamespaces() {
        init();
        Set<String> s = hierarchy.keySet();
        List<String> out = new List<String>();
        out.addAll(s);
        out.sort();
        return out;
    }

    @AuraEnabled
    public static List<String> getClasses(String namespaceName) {
        init();
        Set<String> s = hierarchy.get(namespaceName).keySet();
        List<String> out = new List<String>();
        out.addAll(s);
        out.sort();
        return out;
    }

    @AuraEnabled
    public static List<String> getMethods(String namespaceName, String className) {
        init();
        system.debug(namespaceName);
        system.debug(className);
        system.debug(hierarchy.get(namespaceName));
        system.debug(hierarchy.get(namespaceName).get(className));
        Set<String> s = hierarchy.get(namespaceName).get(className).keySet();
        List<String> out = new List<String>();
        out.addAll(s);
        out.sort();
        return out;
    }

    @AuraEnabled
    public static MethodWrapper getMethod(String namespaceName, String className, String methodName) {
        init();
        system.debug(hierarchy.get(namespaceName));
        system.debug(hierarchy.get(namespaceName).get(className));
        system.debug(hierarchy.get(namespaceName).get(className).keySet());
        system.debug(hierarchy.get(namespaceName).get(className).get(methodName));
        return hierarchy.get(namespaceName).get(className).get(methodName);
    }

    public static void register(MethodWrapper c) {

        if(!hierarchy.containsKey(c.namespaceName)) {
            hierarchy.put(c.namespaceName, new Map<String, Map<String, MethodWrapper>>());
        }
        if(!hierarchy.get(c.namespaceName).containsKey(c.className)) {
            hierarchy.get(c.namespaceName).put(c.className, new Map<String, MethodWrapper>());
        }
        if(!hierarchy.get(c.namespaceName).get(c.className).containsKey(c.methodName)) {
            hierarchy.get(c.namespaceName).get(c.className).put(c.methodName, c);
        }
    }

    public static void init() {

        List<ApexTypeImplementor> classes = [select ClassNamespacePrefix, ClassName from ApexTypeImplementor where InterfaceName = 'IMethodContainer'];

        system.debug(classes);

        for(ApexTypeImplementor c : classes) {
            String fullName = '';
            if(c.ClassNamespacePrefix != null) {
                fullName += c.ClassNamespacePrefix;
                fullName += c.ClassNamespacePrefix != '' ? '.' : '';
            }
            fullName += c.ClassName;
            Type t = Type.forName(fullName);
            IMethodContainer i = (IMethodContainer)t.newInstance();
            i.init();
        }

    }

}