# Cobol Basics
**Calling all retro lovers, modern hipsters, and old-school programmers!**

Tired of Python? Looking for something that will get your blood pumping and your binary neurons firing? Then this repository is for you!

Our code is written in Cobol, a language so old that only dinosaurs and bearded hipsters remember it. But don't let that scare you away! Cobol isn't just for the old-timers, it's for anyone who wants to experience real programming.

## Simple Calculator
- [**Simple Calculator**](https://github.com/hrosicka/CobolBasics/blob/master/first-calculator.cbl)
- This code shows the basic structure of a simple calculator program written in COBOL.

### Here's a breakdown of each section:

#### IDENTIFICATION DIVISION
This section identifies the program.  Here, it's named FIRST-CALCULATOR.

#### DATA DIVISION
This section defines the program's data storage areas. We're focusing on the WORKING-STORAGE SECTION:

- **01 X PIC S999.** - Declares a numeric variable named X that can hold signed values with a maximum of 3 digits (including the sign).
- **01 Y PIC S999.** - Similar to X, but stores the second number entered by the user.
- **01 TOTAL PIC S9999.** - Holds the sum of X and Y. It can accommodate signed values up to 4 digits.
- **01 DIFFERENCE PIC S9999.** - Stores the difference between X and Y. Similar size capacity to TOTAL.
- **01 PRODUCT PIC S999999.** - Holds the product of multiplying X by Y. It can handle signed values up to 6 digits.
- **01 QUATIENT PIC S9999V99.** - Stores the result of dividing X by Y. It can hold signed values with 4 digits before the decimal point and 2 digits after.
- **01 ANSWER PIC A(1) VALUE "N".** - Declares a single-character variable named ANSWER initialized to "N". This will be used to decide if the user wants to repeat calculations.

#### PROCEDURE DIVISION

This part contains the program's instructions, which are grouped within a paragraph named RepeteCalculation.

- **DISPLAY prompts and ACCEPT user input:**
  - The program displays messages asking the user to enter the first and second numbers in the specified format (S999).
  - It then uses the ACCEPT statement to read the user's input and store it in X and Y.
- **Calculations:**
  - ADD X Y GIVING TOTAL - Adds X and Y and stores the result in TOTAL.
  - SUBTRACT Y FROM X GIVING DIFFERENCE - Subtracts Y from X and stores the result in DIFFERENCE.
  - MULTIPLY X BY Y GIVING PRODUCT - Multiplies X by Y and stores the result in PRODUCT.
  - DIVIDE X BY Y GIVING QUATIENT - Divides X by Y and stores the result in QUATIENT.
- **DISPLAY results:**
  - The program displays the values of X, Y, and the calculated results (TOTAL, DIFFERENCE, PRODUCT, and QUATIENT) using the DISPLAY statement.
- **Loop control:**
  - It asks the user if they want to repeat the calculation with a yes or no question.
  - Based on the user's input (ANSWER), it decides whether to repeat the process by using an IF statement.
  - If the answer is "Y", it jumps back to the RepeteCalculation paragraph using the GO TO statement.
- **STOP RUN:** This statement gracefully terminates the program's execution.
