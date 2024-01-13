public with sharing class Enums {
    // Enum: Abstract data type with values that each take on exactly one of a finite set of identifiers that you specify
    public enum WorkPositions {
        // Enum representing three levels of work positions 
        JUNIOR, MIDDLE, SENIOR
    }

    public enum Countries {
        // Enum representing five different levels of countries
        UKRAINE, HUNGARY, BRITAIN, SPAIN, FRANCE
    }

    public WorkPositions employedAs() {
        /* 
            In this method, we determine and return the work position level based on the user's work class
            This method currently sets the work position to SENIOR for demonstration purposes
            In a real scenario, you would determine the work position dynamically  on the user's data
        */
        WorkPositions experiencedDeveloper = WorkPositions.SENIOR;
        // Check the work class of the user
        if (experiencedDeveloper == WorkPositions.SENIOR) {
            System.debug(experiencedDeveloper);
        }

        return experiencedDeveloper;
    }

    public List<Countries> countries() {
        /*
            In this method, we determine and return list of different levels of countries based on the specific Account Id
            This method sets each level of countries for a specific Account with its special id into description field
        */
        List<Countries> europeCountries = Countries.values();
        List<Account> accts = [SELECT Id, Name, Description FROM Account LIMIT 5];
        // try catch block to check for any sort of exceptions
        try {
            // Iterate over the amount of list elements
            for(Integer i = 0; i < accts.size(); i++) {
                // Get each Account of the list
                Account acct = accts[i];
                // Get each country of the existing levels
                Countries country = europeCountries[i];

                // Set the Account description value to the country name
                acct.Description = 'Country: ' + country;
                
                System.debug(acct.Description);
            }
        } catch (Exception e) {
            System.debug(e.getMessage());
        }
        return europeCountries;
    }
}