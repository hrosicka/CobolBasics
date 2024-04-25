       IDENTIFICATION DIVISION.

       PROGRAM-ID. FIRST-CALCULATOR.
      *    This paragraph names the program as FIRST-PROGRAM.

       DATA DIVISION.
           WORKING-STORAGE SECTION.
      *        This section defines working storage variables that are available throughout the program.

               01 X PIC S999.
      *            This line declares a numeric variable named X.
      *            PIC S999 defines X as a signed numeric variable with a maximum of 3 digits including sign.

               01 Y PIC S999.
      *            This line declares a numeric variable named Y.
      *            PIC S999 defines Y as a signed numeric variable with a maximum of 3 digits including sign.

               01 TOTAL PIC S9999.
      *            This line declares a numeric variable named TOTAL.
      *            PIC S9999 defines TOTAL as a signed numeric variable - example -1098.

               01 DIFFERENCE PIC S9999.
      *            This line declares a numeric variable named DIFFERENCE.
      *            PIC S9999 defines DIFFERENCE as a signed numeric variable - example -1098.

               01 PRODUCT PIC S999999.
      *            This line declares a numeric variable named PRODUCT.
      *            PIC S999999 defines PRODUCT as a signed numeric variable - +998001.

               01 QUATIENT PIC S9999V99.
      *            This line declares a numeric variable named QUATIENT.
      *            PIC S9999V99 defines PRODUCT as a signed numeric variable - example +1002.34.

               01 ANSWER PIC A(1) VALUE "N".

       PROCEDURE DIVISION.
      *    This division contains the program's instructions.

           RepeteCalculation.

           DISPLAY 'Insert first number X in format S999: '.
           ACCEPT X.

           DISPLAY 'Insert second number Y in format S999: '.
           ACCEPT Y.

           ADD X Y GIVING TOTAL.
      *        This statement adds the values of X and Y and stores the result in TOTAL.

           SUBTRACT Y FROM X GIVING DIFFERENCE.
      *        This statement substracts the value Y from X and stores the result in DIFFERENCE.

           MULTIPLY X BY Y GIVING PRODUCT.
      *        This statement multiplies the values X by Y and stores the result in PRODUCT.

           DIVIDE X BY Y GIVING QUATIENT.
      *        This statement devides the values X by Y and stores the result in QUATIENT.

           DISPLAY "X= "X.
           DISPLAY "Y = "Y.
           DISPLAY "X + Y = "TOTAL.
           DISPLAY "X - Y = "DIFFERENCE.
           DISPLAY "X * Y = "PRODUCT.
           DISPLAY "X / Y = "QUATIENT.
           DISPLAY "Do you want repete calculation? (Y/N): "
           ACCEPT ANSWER
           IF ANSWER = 'Y'
               GO TO RepeteCalculation.

       STOP RUN.
