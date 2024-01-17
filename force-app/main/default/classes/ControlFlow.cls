public with sharing class ControlFlow {

    // Create an enum
    public enum Jobs {
        DEVELOPER, UIUX, PM, ANALYST
    }

    // Control Flow statements are simply used to control the logic flow of your app, you can control the important code with the flow statements
    public static Integer ifElse() {
        // If-else is used to control whether one expression is true or false, depending on the result of the control flow you will get the specific response
        // Create two integer type variables
        Integer x, y;
        // Control the flow of x
        if (x <= 0 || x == null) {
            // Initialize y with the value 1 if x is less than/equal to 0 or x is null
            y = -1;
        } else {
            // Initialize y with the value 1 if x is not less than/equal to 0 or x is not null
            y = 1;
        }

        return y;

        // You can use else if, when you want to control multiple conditions, but i recommend to use || operator for one statement
    }

    public void switchControl(String userInput) {

        // Create a variable to select a job position
        Jobs selectedPosition;

        // switch controls the expression condition and executing result depending on the response of the expression
        switch on userInput {
            when 'Developer' { selectedPosition = Jobs.DEVELOPER; }
            when 'UIUX'      { selectedPosition = Jobs.UIUX; }
            when 'PM'        { selectedPosition = Jobs.PM; }
            when 'Analyst'   { selectedPosition = Jobs.ANALYST; }
            when else        { throw new NullPointerException(); }
        }

        // switch controls the expression condition and executing result depending on the response of the expression
        switch on selectedPosition {
            when DEVELOPER { developerAccount('Developer'); }
            when UIUX      { uiuxAccount('UIUX'); }
            when PM        { projectManagerAccount('Project Manager'); }
            when ANALYST   { analystAccount('Analyst'); }
            when else      { throw new NullPointerException(); }
        }
    }

    // Create a method to handle the developer position account creation for switch
    private Account developerAccount(String position) {
        // Create a new Account
        Account acct = new Account(Name='Maks', Position__c=position);

        if (acct != null) {
            // Control if user has an access to insert the record
            if(!Account.SOBjectType.getDescribe().isAccessible()) {
                throw new DmlException('No access to the specific field');
            }
            // Insert the record
            insert acct;
        }

        System.debug(acct.Position__c);

        return acct;
    }

    // Create a method to handle the uiux position account creation for switch
    private Account uiuxAccount(String position) {
        // Create a new Account
        Account acct = new Account(Name='Maks', Position__c=position);

        if (acct != null) {
            // Control if user has an access to insert the record
            if(!Account.SOBjectType.getDescribe().isAccessible()) {
                throw new DmlException('No access to the specific field');
            }
            insert acct;
        }

        System.debug(acct.Position__c);

        return acct;
    }

    // Create a method to handle the project manager position account creation for switch
    private Account projectManagerAccount(String position) {
        // Create a new Account
        Account acct = new Account(Name='Maks', Position__c=position);

        if (acct != null) {
            // Control if user has an access to insert the record
            if(!Account.SOBjectType.getDescribe().isAccessible()) {
                throw new DmlException('No access to the specific field');
            }
            insert acct;
        }

        System.debug(acct.Position__c);

        return acct;
    }

    // Create a method to handle the analyst position account creation for switch
    private Account analystAccount(String position) {
        // Create a new Account
        Account acct = new Account(Name='Maks', Position__c=position);

        if (acct != null) {
            // Control if user has an access to insert the record
            if(!Account.SOBjectType.getDescribe().isAccessible()) {
                throw new DmlException('No access to the specific field');
            }
            insert acct;
        }

        System.debug(acct.Position__c);

        return acct;
    }
}