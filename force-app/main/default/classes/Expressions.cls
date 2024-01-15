public with sharing class Expressions {
    public static void expressionOperators() {

        // Expression can be joined to one another with operators
        // Assignment operator '='
        SOBject obj = new Account();
    
        // Addition assignment operator '=+' (x =+ y represents x = x + y)
        Integer numberx = 10;
        Integer numbery =+ numberx;
    
        // Subtraction assignment operator '=-' (x =- y represents x = x - y)
        Integer numberx2 = 15;
        Integer numbery2 =- numberx2;
    
        // Multiplication assignment operator '*' (x = number * y) 
        Integer numberx3 = 10;
        Integer numbery3 = 10 * numberx3;
    
        // Division assignment operator '/' (x = y / number)
        Integer numberx4 = 20;
        Integer numbery4 = numberx4 / 2;
    
        // Ternary operator '? :' (x ? y : z) if-then-else boilerplate, if x is true then y, if else z
        Integer numberx5 = 15, numbery5 = 10;
    
        Boolean result = (numberx5 > numbery5) ? true : false;
    
        // Logical operator '&&' represents AND, also we use here the equality operator '==', and less than operator '<'
        Integer numberx6 = 100, numbery6 = 200, numberz = 200;
    
        Boolean result2 = (numberx6 < numbery6 && numbery6 == numberz) ? true : false;
    
        // Logical operator '||' represents OR, also we use here the greater than/equal logical operator '>='
        Integer numberx7 = 1000, numbery7 = 1500;
    
        Boolean result3 = (numberx7 >= numbery7 || numberx7 < numbery7) ? true : false;
    
        // Greater than operator '>' (x > y)
        Integer numberx8 = 2500, numbery8 = 2000;

        Boolean result4 = (numberx8 > numbery8) ? true : false;

        // Less than or equal to operator '<=' (x <= y)
        Integer numberx9 = 3000, numbery9 = 3000;

        Boolean result5 = (numberx9 <= numbery9) ? true : false;

        // Inequality operator '!=' (x != y)
        Integer numberx10 = 400, numbery10 = 870;

        Boolean result6 = (numberx10 != numbery10) ? true : false;

        // Skip the part of +, -, *, /, % because they are too simple to understand and pretty flexible to use for the begginer. This is a 1 degree math my friend xDDD

        // Increment operator '++' (i++)
        Integer i = 10;
        // Increment i (increase the number by 1)
        i++;

        // Decrement operator '--' (i--)
        Integer j = 20;
        // Decrement j (decrease the number by 1)
        j--;

        // Bitwise Not or Compliment operator '~' (~x) toggle the digit, 0 to 1 or 1 to 0; true to false and vise verca
        Integer numberx11 = 0;
        ~x;
        
        Boolean bool = true;
        ~bool;
    }
}