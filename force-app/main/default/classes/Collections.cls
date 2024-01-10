public with sharing class Collections {

    // Lists: Ordered collection of elements
    public static List<String> stringDataTypeList() {
        // Create an empty List
        List<String> strList = new List<String>();

        // Create second List and fill it with elements
        List<String> strListMultiple = new List<String>();
        
        try {
            // Add the elements to the List 1 and List 2
            strList.add('New String');
            strListMultiple.addAll(new List<String>{'Str 1', 'Str 2', 'Str 3'});
            System.debug('List 1 - ' + strList + ' List 2 - ' + strListMultiple);    
        } catch (Exception e) {
            System.debug(e.getMessage());
        }

        return strList;
    }

    public static List<Integer> integerDataTypeList() {
        // Create an empty List
        List<Integer> intList = new List<Integer>();

        // Create a List and fill it with multiple elements
        List<Integer> intListMultiple = new List<Integer>();
        
        try {
            // Add the elements to the List 1 and List 2
            intList.add(12);
            intListMultiple.addAll(new List<Integer>{13, 14, 15, 16});
            System.debug('List 1 - ' + intList + ' List 2 - ' + intListMultiple);        
        } catch (Exception e) {
            System.debug(e.getMessage());
        }

        return intList;
    }

    public static List<Long> longDataTypeList() {
        // Create an empty List
        List<Long> longList = new List<Long>();

        // Create a List and fill it with multiple elements
        List<Long> longListMultiple = new List<Long>();

        try {
            // Add elements to both lists
            longList.add(000202020020L);
            longListMultiple.addAll(new List<Long>{02031031030L, 23123132131L, 2313123131L});
            System.debug('List 1 - ' + longList + ' List 2 - ' + longListMultiple);
        } catch (Exception e) {
            System.debug(e.getMessage());
        }

        return longList;
    }

    public static List<Double> doubleDataTypeList() {
        // Create an empty List
        List<Double> doubleList = new List<Double>();

        // Create a new empty List, which will store multiple elements
        List<Double> doubleListMultiple = new List<Double>();

        try {
            // Add elements
            doubleList.add(23.22D);
            doubleListMultiple.addAll(new List<Double>{100.23D, 200.33D, 300.43D});
            System.debug('List 1 - ' + doubleList + ' List 2 - ' + doubleListMultiple);        
        } catch (Exception e) {
            System.debug(e.getMessage());
        }

        return doubleList;
    }

    public static List<Decimal> decimalDataTypeList() {
        // Create an empty List
        List<Decimal> decimalList = new List<Decimal>();

        // Create a new empty List, which will store multiple elements
        List<Decimal> decimalListMultiple = new List<Decimal>();

        try {
            // Add elements
            decimalList.add(22.11);
            decimalList.set(0, 23.112); // Adds decimal to the list at index 0
            decimalListMultiple.addAll(new List<Decimal>{89.213, 90.231, 100.87});
            System.debug('List 1 - ' + decimalList[0].setScale(1) + ' List 2 - ' + decimalListMultiple);
        } catch (Exception e) {
            System.debug(e.getMessage());
        }

        return decimalList;
    }

    public static List<Date> dateDataTypeList() {
        // Create an empty List 
        List<Date> dateList = new List<Date>();

        // Create a new List, which will store multiple elements
        List<Date> dateListMultiple = new List<Date>();

        try {
            // Add elements
            dateList.add(Date.newInstance(2024, 1, 1));
            dateListMultiple.addAll(new List<Date> {Date.newInstance(2024, 1, 2), Date.newInstance(2024, 1, 3)});
            System.debug('List 1 - ' + dateList + ' List 2 - ' + dateListMultiple);
        } catch (Exception e) {
            System.debug(e.getMessage());
        }

        return dateList;
    }

    public static List<Datetime> datetimeDataTypeList() {
        // Create a new List
        List<Datetime> datetimeList = new List<Datetime>();

        // Create a new List, which will store multiple elements
        List<Datetime> datetimeListMultiple = new List<Datetime>();

        try {
            datetimeList.add(Datetime.newInstance(2024, 1, 1, 13, 00, 00));
            datetimeListMultiple.addAll(new List<Datetime>{Datetime.newInstance(2024, 1, 2, 13, 00, 00), Datetime.newInstance(2024, 1, 3, 13, 00, 00)});
            System.debug('List 1 - ' + datetimeList + ' List 2 - ' + datetimeListMultiple);
        } catch (Exception e) {
            System.debug(e.getMessage());
        }

        return datetimeList;
    }

    public static List<SObject> sobjectDataTypeList() {
        // Create a new List
        List<SObject> sobjList = new List<SObject>();

        // Create a new List, which will contain multiple elements
        List<SObject> sobjListMultiple = new List<SObject>();

        try {
            sobjList.add(new Account(Name='Maks'));
            for (Integer i = 0; i < 5; i++) {
                sobjListMultiple.addAll(new List<SObject> {new Account(Name='Maks ' + i)});
            }
            System.debug('List 1 - ' + sobjList + ' List 2 - ' + sobjListMultiple);
        } catch (Exception e) {
            System.debug(e.getMessage());
        }

        return sobjList;
    }

    public static List<List<Integer>> nestedIntegerDataTypeList() {
        // Create an empty List
        List<List<Integer>> nestedList = new List<List<Integer>>();

        try {
            // Add elements
            nestedList.addAll(new List<List<Integer>> {new List<Integer>{1, 2, 3}, new List<Integer> {5, 6, 7}});
            System.debug(nestedList);
        } catch (Exception e) {
            System.debug(e.getMessage());
        }

        return nestedList;
    }

    // Sets: Unordered collection of elements, with no duplicates
    public static Set<String> stringDataTypeSet() {
        // Create an empty Set
        Set<String> strSet = new Set<String>();

        // Create a new Set, which will contain multiple elements
        Set<String> strSetMultiple = new Set<String>();

        try {
            // Add elements
            strSet.add('Name 1');
            strSetMultiple.addAll(new Set<String>{'Name 2', 'Name 3', 'Name 4'});
            System.debug(strSet + ' ' + strSetMultiple);
        } catch (Exception e) {
            System.debug(e.getMessage());
        }

        return strSet;
    }

    public static Set<Integer> integerDataTypeSet() {
        // Create an empty Set
        Set<Integer> intSet = new Set<Integer>();

        // Create a new Set, which will contain multiple elements
        Set<Integer> intSetMultiple = new Set<Integer>();
        
        try {
            // Add elements
            intSet.add(1);
            intSetMultiple.addAll(new Set<Integer>{2, 3, 4});
            System.debug(intSet + ' ' + intSetMultiple);
        } catch (Exception e) {
            System.debug(e.getMessage());
        }

        return intSet;
    }

    public static Set<Long> longDataTypeSet() {
        // Create an empty Set
        Set<Long> longSet = new Set<Long>();

        // Create a new Set, which will contain multiple elements
        Set<Long> longSetMultiple = new Set<Long>();

        try {
            // Add elements
            longSet.add(8000000000000L);
            longSetMultiple.addAll(new Set<Long>{9000000000000L, 10000000000000L, 11000000000000L});
            System.debug(longSet + ' ' + longSetMultiple);
        } catch (Exception e) {
            System.debug(e.getMessage());
        }

        return longSet;
    }

    public static Set<Decimal> decimalDataTypeSet() {
        // Create an empty Set
        Set<Decimal> decimalSet = new Set<Decimal>();

        // Create a new Set, which will contain multiple elements
        Set<Decimal> decimalSetMultiple = new Set<Decimal>();

        try {
            // Add elements
            decimalSet.add(100.111);
            decimalSetMultiple.addAll(new Set<Decimal>{101.222, 102.333, 103.444});
            System.debug(decimalSet + ' ' + decimalSetMultiple);
        } catch (Exception e) {
            System.debug(e.getMessage());
        }

        return decimalSet;
    }

    public static Set<Double> doubleDataTypeSet() {
        // Create an empty Set
        Set<Double> doubleSet = new Set<Double>();

        // Create a new Set, which will contain multiple elements
        Set<Double> doubleSetMultiple = new Set<Double>();

        try {
            // Add elements
            doubleSet.add(200.222D);
            doubleSetMultiple.addAll(new Set<Double>{201.333D, 202.444D, 203.555D});
            System.debug(doubleSet + ' ' + doubleSetMultiple);
        } catch (Exception e) {
            System.debug(e.getMessage());
        }

        return doubleSet;
    }

    public static Set<Date> dateDataTypeSet() {
        // Create an empty Set
        Set<Date> dateSet = new Set<Date>();

        // Create a new Set, which will contain multiple elements
        Set<Date> dateSetMultiple = new Set<Date>();

        try {
            // Add elements
            dateSet.add(Date.newInstance(2025, 1, 1));
            dateSetMultiple.addAll(new Set<Date>{Date.newInstance(2025, 1, 2), Date.newInstance(2025, 1, 3), Date.newInstance(2025, 1, 4)});
            System.debug(dateSet + ' ' + dateSetMultiple);
        } catch (Exception e) {
            System.debug(e.getMessage());
        }

        return dateSet;
    }
    
    public static Set<Datetime> datetimeDataTypeSet() {
        // Create an empty Set
        Set<Datetime> datetimeSet = new Set<Datetime>();

        // Create a new Set, which will contain multiple elements
        Set<Datetime> datetimeSetMultiple = new Set<Datetime>();

        try {
            // Add elements
            datetimeSet.add(Datetime.newInstance(2025, 1, 1, 3, 15, 25));
            datetimeSetMultiple.addAll(new Set<Datetime>{Datetime.newInstance(2025, 1, 2, 4, 15, 25), Datetime.newInstance(2025, 1, 3, 5, 15, 25), Datetime.newInstance(2025, 1, 4, 6, 15, 25)});
            System.debug(datetimeSet + ' ' + datetimeSetMultiple);
        } catch (Exception e) {
            System.debug(e.getMessage());
        }

        return datetimeSet;
    }

    public static Set<Id> idDataTypeSet() {
        // Create an empty Set
        Set<Id> idSet = new Set<Id>();

        // Create a new Set, which will contain multiple elements
        Set<Id> idSetMultiple = new Set<Id>();

        // Retrieve account ids with SOQL query
        List<Account> accts = [SELECT Id, Name FROM Account LIMIT 5];

        try {
            // Add elements
            idSet.add(accts[0].Id);
            // Remove the element that is in position 0, to not duplicate it in 2 Sets
            accts.remove(0);
            // Iterate through each Account to get access to the id field, using foreach loop
            for (Account acct : accts) {
                idSetMultiple.add(acct.Id);
            }
            System.debug(idSet + ' ' + idSetMultiple);
        } catch (Exception e) {
            System.debug(e.getMessage());
        }

        return idSet;
    }

    // Maps: Collection of key-value pairs
    public static Map<String, String> mapCollection() {
        // Create an empty Map
        Map<String, String> newMap = new Map<String, String>();

        // Create a new Map, which will contain multiple pairs
        Map<String, String> newMapMultiple = new Map<String, String>();

        try {
            // Add pairs
            newMap.put('Key 1', 'Value 1');
            newMapMultiple.putAll(new Map<String, String>{'Key 2' => 'Value 2', 'Key 3' => 'Value 3', 'Key 4' => 'Value 4'});
            System.debug(newMap + ' ' + newMapMultiple);
        } catch (Exception e) {
            System.debug(e.getMessage());
        }

        return newMap;
    }

    public static Map<Integer, Integer> mapCollection2() {
        // Create an empty Map
        Map<Integer, Integer> newMap = new Map<Integer, Integer>();

        // Create a new Map, which will contain multiple pairs
        Map<Integer, Integer> newMapMultiple = new Map<Integer, Integer>();

        try {
            // Add pairs
            newMap.put(0, 1);
            newMapMultiple.putAll(new Map<Integer, Integer>{1 => 2, 2 => 3, 3 => 4});
            System.debug(newMap + ' ' + newMapMultiple);
        } catch (Exception e) {
            System.debug(e.getMessage());
        }

        return newMap;
    }

    public static Map<Integer, String> mapCollection3() {
        // Create an empty Map
        Map<Integer, String> newMap = new Map<Integer, String>();

        // Create a new Map, which will contain multiple pairs
        Map<Integer, String> newMapMultiple = new Map<Integer, String>();

        try {
            // Add pairs
            newMap.put(1, 'Value 1');
            newMapMultiple.putAll(new Map<Integer, String>{2 => 'Value 2', 3 => 'Value 3', 4 => 'Value 4'});
            System.debug(newMap + ' ' + newMapMultiple);
        } catch (Exception e) {
            System.debug(e.getMessage());
        }

        return newMap;
    }
}