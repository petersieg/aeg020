# aeg020

Eine UR-Alte SPS Simulation für eine AEG020. DOS(Box). Turbo Pascal 5 Source.
CC BY-SA

![Bild](https://github.com/petersieg/aeg020/blob/master/aeg020.png)

```
At first you will need a cable from the serial port of your PC to the A020:

25p (PC) / 25p(A020):
1 / 1
2 / 2
3 / 3
4 / 4
5 / 5
7 / 7

OR:
9p (PC) /25p (A020):
Shield(or 5) / 1
3 / 2
2 / 3
7 / 4
8 / 5
5 / 7

you may use a normal Terminal-Programm with the following Transmission codes:

1 Startbit
7 Bit per Character
1 Signal Parity even
1 Stopbit

The Baudrate normaly is 9600. (Possible others: 4800,2400,1200,600,300)
You should get message:
FUS: (OR: *FUS

Type in:
HE (Ret)--------->[Hold A020)
M (Ret)--------->[Show memory)

A020 will sent:
Adr:
Type in (for ex.):1 (Ret)

You will see the program line 1
(For example: 1: UE1 or NO if there is no command)

by pressing the Return-Key you accept the term and reach the next program line.

Example:
1 UE1
2 UNE2
3 =A1
.
.
840 PE (Programm end)

You can edit the program now.

SBN clears the program.

Leave the Program-Editor by typing E(Ret).

IF YOU CHANGED THE PROGRAMM YOU WILL HAVE
TO TYPE IN "PRZE" TO KEEP THESE CHANGES.
DON`T DO SO IF YOU WANT TO KEEP THE OLD
PROGRAMM !!!

Now you can start the A020 by pressing S(Ret).
```

