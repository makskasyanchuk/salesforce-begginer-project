public with sharing class ControlFlow {
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

    public void switchControl(Integer x) {
        // Create a new variable to store the x value and switch on result
        Integer result = x;
        // The switch statement in apex allows to evaluate a variable against multiple values and execute different code block based on the match
        switch on result{
            when 1, 2 {
                System.debug('first block');
            }
            when 3, 4 {
                System.debug('second block');
            }
            when 5, 6 {
                System.debug('third block');
            }
            when else {
                System.debug('Else block');
            }
        }
    }
}