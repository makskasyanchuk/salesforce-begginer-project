public with sharing class Classes {
    // Outer class code here
    private static final String RESPONSE = 'OK'; // Class variable
    private final Integer RESPONSE_CODE = 200; // Class variable
    public class ServerUser {
        // Inner class code here
        private Account USER;

        public Account accountConfig(Account acct) {
            {
                acct.Name = 'User (unverified)';
                acct.BillingCountry = 'Ukraine';
                acct.BillingCity = 'L\'viv';
                acct.BillingStreet = ' Volodymira Velikoho 63';
            }

            List<Account> existingAcct = [SELECT Id FROM Account WHERE Name = 'User (unverified)' AND BillingCountry = 'Ukraine' AND BillingCity = 'L\'viv' AND BillingStreet = ' Volodymira Velikoho 63'];

            if (!existingAcct.isEmpty()) {
                if(!Account.SObjectType.getDescribe().isAccessible() && !Account.SObjectType.getDescribe().isUpdateable()) {
                    throw new DmlException('Access is denied');
                }
                upsert acct;
            }

            return acct;
        }


        public Account getUser {
            get {return USER;}
            set {USER = value;}
        }

    }
    // You can have an inner class only one level deep
}