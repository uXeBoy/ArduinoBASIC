VGA1306 Basic
=============
Now you can turn your Arduino into an 80's home computer!

Refactored to use the VGA1306 board for 80x60 characters at 640x480 resolution, and added a COLOR command for selectable foreground / background colours - all 8 glorious colours of the 3-bit RGB rainbow!

![](VGA1306_BASIC.jpg?raw=true)

(the direct PORT manipulation commands used are specific to the ATmega1284)

A complete BASIC interpreter for the Arduino, using a PS/2 keyboard. The BASIC supports almost all the usual features, with float and string variables, multi-dimensional arrays, FOR-NEXT, GOSUB-RETURN, etc. Saving and Loading from EEPROM is supported, as well as auto-running a program on power-up. You can also read and write from the analog and digital pins.

![](BASIC.gif?raw=true)

BASIC Language
--------------
Variables names can be up to 8 alphanumeric characters but start with a letter e.g. a, bob32
String variable names must end in $ e.g. a$, bob32$
Case is ignored (for all identifiers). BOB32 is the same as Bob32. print is the same as PRINT

Array variables are independent from normal variables. So you can use both:
```
LET a = 5
DIM a(10)
```
There is no ambiguity, since a on its own refers to the simple variable 'a', and a(n) referes to an element of the 'a' array.

```
Arithmetic operators: + - * / MOD
Comparisons: <> (not equals) > >= < <=
Logical: AND, OR, NOT
```

Expressions can be numerical e.g. 5*(3+2), or string "Hello "+"world".
Only the addition operator is supported on strings (plus the functions below).

Commands
```
PRINT <expr>;<expr>... e.g. PRINT "A=";a
LET variable = <expr> e.g. LET A$="Hello".
variable = <expr> e.g. A=5
LIST [start],[end] e.g. LIST or LIST 10,100
RUN [lineNumber]
GOTO lineNumber
REM <comment> e.g. REM ** My Program ***
STOP
CONT (continue from a STOP)
INPUT variable e.g. INPUT a$ or INPUT a(5,3)
IF <expr> THEN cmd e.g. IF a>10 THEN a = 0: GOTO 20
FOR variable = start TO end STEP step
NEXT variable
NEW
GOSUB lineNumber
RETURN
DIM variable(n1,n2...)
CLS
PAUSE milliseconds
POSITION x,y sets the cursor
PIN pinNum, value (0 = low, non-zero = high)
PINMODE pinNum, mode (0 = input, 1 = output)
LOAD (from internal EEPROM)
SAVE (to internal EEPROM) e.g. use SAVE + to set auto-run on boot flag
LOAD "filename", SAVE "filename, DIR, DELETE "filename" if using with external EEPROM.
COLOR foreGround, backGround (0 = Black, 1 = Blue, 2 = Green, 3 = Cyan, 4 = Red, 5 = Violet, 6 = Yellow, 7 = White)
```

"Pseudo-identifiers"
```
INKEY$ - returns (and eats) the last key pressed buffer (non-blocking). e.g. PRINT INKEY$
RND - random number betweeen 0 and 1. e.g. LET a = RND
```

Functions
```
LEN(string) e.g. PRINT LEN("Hello") -> 5
VAL(string) e.g. PRINT VAL("1+2")
INT(number) e.g. INT(1.5)-> 1
STR$(number) e.g. STR$(2) -> "2"
LEFT$(string,n)
RIGHT$(string,n)
MID$(string,start,n)
PINREAD(pin) - see Arduino digitalRead()
ANALOGRD(pin) - see Arduino analogRead()
```
