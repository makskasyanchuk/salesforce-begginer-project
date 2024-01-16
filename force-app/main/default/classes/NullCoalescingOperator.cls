public with sharing class NullCoalescingOperator {
    // Null Coalescing Operator basically returns left-hand argument if left-hand argument is not null, otherwise returns right-hand argument
    // Null Coalescing Operator IS NO LONGER SUPPORTED FOR APEX, instead we use ternary operators to check the response or if-else
    public static Id getAccountId() {
        // Create new Account
        Account acct = new Account(Name='New Account val');

        // Insert new Account to database
        try {
            insert acct;
        } catch (DmlException de) {
            System.debug(de.getMessage() + ' Error Cause: ' + de.getCause());
        }

        // Check if Id field is accessible for current user, depending on the result do the specific action
        Id acctId = (Schema.SObjectType.Account.fields.Id.isAccessible()) ? acct.Id : null;

        return acctId;
    }
}