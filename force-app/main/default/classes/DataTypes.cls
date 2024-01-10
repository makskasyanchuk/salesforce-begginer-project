public with sharing class DataTypes {

    // Primitive data types

    public static Blob blobDataType() {
        // Blob Data type: Represents a collection of binary data. Often used to handle files and attachments
        Blob key = null; 
        try {
            key = Crypto.generateAesKey(128);
        } catch (Exception e) {
            System.debug(e.getMessage());
        }
        return key;
    }

    public static Boolean booleanDataType() {
        // Boolean: A value that can only be assigned is (true, false, or null)
        Boolean isEmployed = null;
        try {
            isEmployed = false;
            if (!isEmployed) {
                System.debug('Not employed yet');
            } else {
                System.debug('Already employed');
            }    
        } catch (Exception e) {
            System.debug(e.getMessage());
        }

        return isEmployed;
    }


    public static Date dateDataType() {
        // Date: A value that indicates a particular day (Do not contain information about current time)
        Date myDate = null;
        try {
            myDate = Date.newInstance(2025, 11, 22);
            Integer myDay = myDate.day();
            System.debug(myDay);
        } catch (DmlException de) {
            System.debug(de.getMessage());
        } catch (Exception e) {
            System.debug(e.getMessage());
        }
        return myDate;
    }

    public static Datetime datetimeDataType() {
        // Datetime: A value that indicates a particular day and time, such as a timestamp
        Datetime myDateTime = null;
        Date myDate = null;
        try {
            myDateTime = Datetime.newInstance(2006, 3, 16, 12, 6, 13);
            myDate = myDateTime.date();
            System.debug(myDate);
        } catch (Exception e) {
            System.debug(e.getMessage());
        }
        return myDate;
    }

    public static Decimal decimalDataType() {
        // Decimal: A number that includes a decimal point
        Decimal decimalNumber = null;
        try {
            decimalNumber = 100.2222222;
            System.debug(decimalNumber.setScale(2));
        } catch (Exception e) {
            System.debug(e.getMessage());
        }

        return decimalNumber;
    }

    public static Double doubleDataType() {
        // Double: A 64-bit number that includes a decimal point (e) scientific notation isn't supported so we use D instead
        Double pi = null;
        try {
            pi = 3.14159D;
            System.debug(pi);
            System.debug(pi.round());
        } catch (Exception e) {
            System.debug(e.getMessage());
        }

        return pi;
    }

    public static Id idDataType() {
        // Id: Any valid 18-character Lightning Platform record indentifier
        Id id = null;
        try {
            id = '003003KKKKKKKK8';
            System.debug(id);
            System.debug(id.to15());
        } catch (Exception e) {
            System.debug(e.getMessage());
        }

        return id;
    }

    public static Integer integerDataType() {
        // Integer: A 32-bit number that doesn't include a decimal point
        Integer num = null;
        try {
            num = 12;
            System.debug(num);
        } catch (Exception e) {
            System.debug(e.getMessage());
        }

        return num;
    }


    public static Long longDataType() {
        // Long: A 64-bit number that doesn't include a decimal point
        Long longNum = null;
        try {
            longNum = 2147483648L;
            System.debug('Default long value: ' + longNum);
            System.debug('Long converted to the Integer: ' + longNum.intValue());
        } catch (Exception e) {
            System.debug(e.getMessage());
        }

        return longNum;
    }

    public enum errors{
        OBJECT_WAS_NOT_ASSIGNED
    }

    public static Object objectDataType() {
        // Object: Any data type that is supported in Apex
        Object obj = 'New Object';
        try {
            // Check if object was assigned with the value, and is not null, otherwise throw exception
            if (obj == null) {
                System.debug(errors.OBJECT_WAS_NOT_ASSIGNED);
            } else {
                // Cast the object to the object value type
                String myString = (String) obj;
                System.debug(myString);
            }
        } catch (Exception e) {
            return e.getMessage();
        }

        return obj;
    }

    public static Object classObject() {
        // Create a new instance of the custom class
        Object obj = new ObjectClassInherited();
        // Define the variable for the custom class object
        ObjectClassInherited classObj;
        try {
            // Cast the object to the custom class type
            classObj = (ObjectClassInherited) obj;

            // Access the method
            classObj.message();
        } catch (Exception e) {
            return e.getMessage();
        }

        return classObj;
    }

    public static String stringDataType() {
        // String: Any set of characters surrounded by single quotes
        String userInfo = 'User 1 \" User was created for the test approach only"';
        System.debug(userInfo);
        // Making string characters all to upper case
        System.debug('Uppercased info: ' + userInfo.toUpperCase());
        // Making string characters all to lower case
        System.debug('Lowercased info: ' + userInfo.toLowerCase());
        // Showing the size of the string, amount of characters exactly
        System.debug('Size of the string: ' + userInfo.length());
        return userInfo;
    }

    public static String upperCaseSubstring() {
        String userInfo = 'User 1 \" User was created for the test approach only"';

        // Get the first and the last characters of the substring
        Integer start = userInfo.indexOf('\"');
        Integer ending = userInfo.lastIndexOf('\"');

        // Check if the index of both characters is not a negative number, and the start is less than end
        try {
            if (start != -1 && ending != -1 && start < ending) {
                // Extract the substring withing the double quotes (the first and the last characters)
                String substringToUppercase = userInfo.substring(start + 1, ending);
                // Convert the content between double quotes to the uppercase
                String uppercasedSubstring = substringToUppercase.toUpperCase();
                // Replace the original substring with the uppercased one for the output
                String output = userInfo.substring(0, start + 1) + uppercasedSubstring + userInfo.substring(ending); 
                System.debug(output);
                return output;
            } else {
                // If not valid, return the message
                return 'Substring was not defined';
            }
        } catch (Exception e) {
            return e.getMessage();
        }
    }
    
    public static Time timeDataType() {
        // Time: A value that indicates a particular time
        Time newTime = Time.newInstance(5, 4, 3, 2);
        System.debug('New time: ' + newTime);
        return newTime;
    }

    // Non-primitive data types

    public static SObject sobjectDataType() {
        // SObject: Account, Contact, Opportunity MyCustomSObject__c (Specific) SObject (generic)
        SObject obj = new Opportunity();
        Opportunity opp = (Opportunity) obj;
        opp.Name = 'Example Opportunity';
        opp.CloseDate = Date.newInstance(2024, 1, 10);
        opp.CloseDate.format();

        System.debug(opp);

        return opp;
    }

    public static Account accountDataType() {
        // Account: Specific SObject
        Account acct = new Account();
        acct.Name = 'Maks';

        System.debug(acct);

        return acct;
    }

    public static Contact contactDataType() {
        // Contact: Specific SObject
        Contact con = new Contact(FirstName='Maks', LastName='Kasyanchuk');
        con.Email = 'kasyanchukmaks22@gmail.com';

        System.debug(con);

        return con;
    }

    public static ExampleCustomObject__c customObjectDataType() {
        // ExampleCustomObject__c: User defined (custom) object
        ExampleCustomObject__c customObj = new ExampleCustomObject__c();
        customObj.Name = 'Maks';

        System.debug(customObj);

        return customObj;
    }
}