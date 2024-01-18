public with sharing class Loops {
    public static void forLoop() {
        // for loop allows to iterate over a collection of elements, such as lists, sets, or maps
        // Create an Account List
        List<Account> accts = [SELECT Id, Name FROM Account WITH SECURITY_ENFORCED LIMIT 5];

        // Iterate over the List of Accounts
        for (Integer i = 0; i < accts.size(); i++) {
            Account acct = accts[i];
            System.debug(acct);
        }
    }

    public static void whileLoop() {
        // while loop allows to repeatedly execute a block of code as long as a specified condition is true
        Integer count = 1;

        // Execute the block below as long as size of Set of account ids is less than 3 
        while (count <= 5) {
            System.debug('Count - ' + count);
            count++;
        }
    }

    // Do while is the same as while loop, but condition is checked at the end 
}