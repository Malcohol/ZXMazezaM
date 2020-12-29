REM ** ugdmaker **
REM Copyright (C) 2002
REM Malcolm Tyrrell
REM 
REM Run the program and
REM follow the on-screen
REM instructions.

  GO SUB @LOADUDGS
  CLS
  PRINT "Saving UDG segment"
  PRINT
  PRINT "Please save to tapefile called"
  PRINT "'MazezaM2.tap'"
  PRINT
  SAVE "MazezaM 2" CODE 65368,72
  STOP

@LOADUDGS: REM ** load udgs **
  RESTORE @UDGDATA
  FOR i = 0 TO 8
    READ where
    FOR j = 0 TO 7
      READ value
      POKE where + j,value
    NEXT j
  NEXT i
  RETURN 

@UDGDATA: REM ** udg data **

  REM ** udg data **
  DATA USR "a"
  DATA BIN 00011000
  DATA BIN 10011001
  DATA BIN 11111111
  DATA BIN 00111100
  DATA BIN 00111100
  DATA BIN 00100100
  DATA BIN 00100100
  DATA BIN 01100110
  DATA USR "b"
  DATA BIN 11111111
  DATA BIN 11010101
  DATA BIN 10101011
  DATA BIN 11010101
  DATA BIN 10101011
  DATA BIN 11010101
  DATA BIN 10101011
  DATA BIN 11111111
  DATA USR "c"
  DATA BIN 11111111
  DATA BIN 11010101
  DATA BIN 10101010
  DATA BIN 11010101
  DATA BIN 10101010
  DATA BIN 11010101
  DATA BIN 10101010
  DATA BIN 11111111
  DATA USR "d"
  DATA BIN 11111111
  DATA BIN 01010101
  DATA BIN 10101010
  DATA BIN 01010101
  DATA BIN 10101010
  DATA BIN 01010101
  DATA BIN 10101010
  DATA BIN 11111111
  DATA USR "e"
  DATA BIN 11111111
  DATA BIN 01010101
  DATA BIN 10101011
  DATA BIN 01010101
  DATA BIN 10101011
  DATA BIN 01010101
  DATA BIN 10101011
  DATA BIN 11111111
  DATA USR "f"
  DATA BIN 11111101
  DATA BIN 11111101
  DATA BIN 11111101
  DATA BIN 00000000
  DATA BIN 11011111
  DATA BIN 11011111
  DATA BIN 11011111
  DATA BIN 00000000
  DATA USR "g"
  DATA BIN 00101010
  DATA BIN 01111111
  DATA BIN 00101010
  DATA BIN 01111111
  DATA BIN 00101010
  DATA BIN 01111111
  DATA BIN 00101010
  DATA BIN 11111111
  DATA USR "h"
  DATA BIN 00000000
  DATA BIN 00001111
  DATA BIN 11110000
  DATA BIN 00000000
  DATA BIN 00000000
  DATA BIN 11000011
  DATA BIN 00111100
  DATA BIN 00000000
  DATA USR "i"
  DATA BIN 00000000
  DATA BIN 01000000
  DATA BIN 00100000
  DATA BIN 00000000
  DATA BIN 00000000
  DATA BIN 00000010
  DATA BIN 00000001
  DATA BIN 00000000
