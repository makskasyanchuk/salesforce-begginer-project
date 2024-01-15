public with sharing class Constants {
    // Constant: Variable whose value does not change after being initialized once
    // Define constant using final keyword
    static final Integer PRIVATE_INTEGER = 200;
    static final String PRIVATE_STRING;

    // Declare a method, which returns the value that we will get initialized in private string constant
    public static String initializeString() {
        return 'Private String OK';
    }

    // Declare a method that outputs Integer constant value
    public static Integer outputInteger() {
        return PRIVATE_INTEGER;
    }

    // Initialize constant in the static block
    static {
        PRIVATE_STRING = initializeString();
    }
}