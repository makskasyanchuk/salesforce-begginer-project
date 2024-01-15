public with sharing class Variables {
    public static void variables() {
        // Variable is a container which stores a specific data type value
        String str = 'Hello world';
        // Multiple variables which have the same data type for each, can be declared and assigned with the value in one statement
        Integer i, j, k;
        // Instance method variable, have to be assigned as an object
        Date d = Date.newInstance(2021, 10, 11);
        // Variable scope, assigning values to i, j, k variables
        {
            i = 10;
            j = 20;
            k = 30;
        }
        // Variable scope, adding 10 days to the date instance d
        {
            d.addDays(10);
        }

        System.debug(i + ' ' + j + ' ' + k + ' ' + d);
    }
}