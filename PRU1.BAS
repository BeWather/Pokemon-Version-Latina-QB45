






'$INCLUDE: 'directqb.bi'

DIM SHARED paleta AS STRING * 768

SCREEN 13

IF DQBinit(0, 0, 0) THEN DQBclose: END

OPEN "D:\sprite16.bin" FOR BINARY AS #1


DO: LOOP UNTIL INKEY$ <> ""

CLOSE
DQBclose
END

