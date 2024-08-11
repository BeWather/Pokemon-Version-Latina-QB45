DECLARE SUB QBsavePant ()
DECLARE SUB QBputTile ()
DECLARE SUB QBshowVar ()
DECLARE SUB QBputCursor ()
DECLARE SUB QBrndPant ()
DECLARE SUB QBloadPant ()
DECLARE SUB QBshowPant ()
DECLARE SUB QBclearPants ()
DECLARE SUB QBinitProg ()
DECLARE SUB QBput8 (QBn%)
DECLARE SUB QBshowTiles ()

DEFINT A-Z

'$INCLUDE: 'DIRECTQB.BI'

CLEAR

SCREEN 13
IF DQBinit(0, 0, 0) THEN DQBclose: SCREEN 0: WIDTH 80, 25: PRINT DQBerror: END

DIM SHARED Archivo$
DIM SHARED Direccion$
DIM SHARED Banco
DIM SHARED TX, TY
DIM SHARED VX2, VY2
DIM SHARED Apuntador AS LONG
DIM SHARED PalDefault AS STRING * 768
DIM SHARED NumPant
DIM SHARED Pantalla$
DIM SHARED NumSpr
DIM SHARED Cur1(33)
DIM SHARED CX1, CY1, CX2, CY2

QBinitProg

QBshowTiles
'QBclearPants
'QBcopyPants

'  a$ = SPACE$(253)
'  GET #2, 253 * 35 + 1, a$
'  PUT #2, 253 * 40 + 1, a$
'  PUT #2, 253 * 41 + 1, a$
'  PUT #2, 253 * 42 + 1, a$
'  PUT #2, 253 * 43 + 1, a$
'  PUT #2, 253 * 44 + 1, a$
'  PUT #2, 253 * 45 + 1, a$
'  PUT #2, 253 * 46 + 1, a$
'  PUT #2, 253 * 47 + 1, a$
'  PUT #2, 253 * 48 + 1, a$
'  PUT #2, 253 * 49 + 1, a$
'  PUT #2, 253 * 50 + 1, a$

QBloadPant
'QBrndPant
QBshowPant

QBputCursor

DO
  ink$ = UCASE$(INKEY$)
  IF ink$ = "W" AND CY1 > 0 THEN QBputCursor: CY1 = CY1 - 1: QBputCursor: QBshowVar
  IF ink$ = "S" AND CY1 < 13 THEN QBputCursor: CY1 = CY1 + 1: QBputCursor: QBshowVar
  IF ink$ = "A" AND CX1 = 0 AND CY1 > 0 THEN QBputCursor: CX1 = 17: CY1 = CY1 - 1: QBputCursor: ink$ = "": QBshowVar
  IF ink$ = "A" AND CX1 > 0 THEN QBputCursor: CX1 = CX1 - 1: QBputCursor: QBshowVar
  IF ink$ = "D" AND CX1 = 17 AND CY1 < 13 THEN QBputCursor: CX1 = 0: CY1 = CY1 + 1: QBputCursor: ink$ = "": QBshowVar
  IF ink$ = "D" AND CX1 < 17 THEN QBputCursor: CX1 = CX1 + 1: QBputCursor: QBshowVar
  IF ink$ = CHR$(0) + "H" AND CY2 > 0 THEN QBputCursor: CY2 = CY2 - 1: QBputCursor: QBshowVar
  IF ink$ = CHR$(0) + "P" AND CY2 < 15 THEN QBputCursor: CY2 = CY2 + 1: QBputCursor: QBshowVar
  IF ink$ = CHR$(0) + "K" AND CX2 = 0 AND CY2 > 0 THEN QBputCursor: CX2 = 15: CY2 = CY2 - 1: QBputCursor: ink$ = "": QBshowVar
  IF ink$ = CHR$(0) + "M" AND CX2 = 15 AND CY2 < 15 THEN QBputCursor: CX2 = 0: CY2 = CY2 + 1: QBputCursor: ink$ = "": QBshowVar
  IF ink$ = CHR$(0) + "K" AND CX2 > 0 THEN QBputCursor: CX2 = CX2 - 1: QBputCursor: QBshowVar
  IF ink$ = CHR$(0) + "M" AND CX2 < 15 THEN QBputCursor: CX2 = CX2 + 1: QBputCursor: QBshowVar
  IF ink$ = "P" THEN DQBsetPal PalDefault
  IF ink$ = CHR$(13) THEN QBputCursor: QBputTile: QBshowPant: QBputCursor: QBshowVar: DQBwait 2
  IF ink$ = "+" AND NumPant < 79 THEN QBsavePant: NumPant = NumPant + 1: QBloadPant: QBputCursor: QBshowTiles: QBshowPant: QBputCursor: QBshowVar: DQBwait 5
  IF ink$ = "-" AND NumPant > 0 THEN QBsavePant: NumPant = NumPant - 1: QBloadPant: QBputCursor: QBshowTiles: QBshowPant: QBputCursor: QBshowVar: DQBwait 5
  IF ink$ = "[" AND Banco > 0 THEN Banco = Banco - 1: QBputCursor: QBshowTiles: QBshowPant: QBputCursor: QBshowVar: DQBwait 5
  IF ink$ = "]" AND Banco < 3 THEN Banco = Banco + 1: QBputCursor: QBshowTiles: QBshowPant: QBputCursor: QBshowVar: DQBwait 5
LOOP UNTIL ink$ = CHR$(27)

DQBclose
CLOSE
SHELL "copy /y d:\pant40.bin c:\newpoke1\archivos"
END

DATA 1,1,0,0,0,0,0,0
DATA 1,1,1,1,0,0,0,0
DATA 0,1,1,1,1,1,0,0
DATA 0,1,1,1,1,0,0,0
DATA 0,0,1,1,1,1,0,0
DATA 0,0,1,0,1,1,1,0
DATA 0,0,0,0,0,1,1,0
DATA 0,0,0,0,0,0,0,0

REM $DYNAMIC
SUB QBclearPants
  a$ = STRING$(253, 0)
  FOR i = 40 TO 79
    PUT #2, i * 253 + 1, a$
  NEXT i
END SUB

REM $STATIC
SUB QBcopyPants
  cad$ = SPACE$(253)
  GET #2, 43& * 253& + 1&, cad$
  FOR p& = 44 TO 50
    PUT #2, p& * 253 + 1, cad$
  NEXT p&
END SUB

REM $DYNAMIC
SUB QBinitProg
  Archivo$ = "SPRITE8.BIN"
  Direccion$ = "D:\"
  Archivo2$ = "PANT40.BIN"
  Direccion2$ = "D:\"
  Banco = 0
  FOR y = 0 TO 7
    FOR x = 0 TO 7
      READ p
      PSET (x, y), p * 20
    NEXT x
  NEXT y
  GET (0, 0)-(7, 7), Cur1
  PUT (0, 0), Cur1
  OPEN "ESPECIAL.PAL" FOR BINARY AS #1
    GET #1, , PalDefault
  CLOSE #1
  DQBsetPal PalDefault
  OPEN Direccion$ + Archivo$ FOR BINARY AS #1
  OPEN Direccion2$ + Archivo2$ FOR BINARY AS #2
END SUB

SUB QBloadPant
  Apuntador = NumPant * 253 + 1
  Pantalla$ = SPACE$(253)
  SEEK #2, Apuntador
  GET #2, , Pantalla$
  Banco = ASC(MID$(Pantalla$, 1, 1))
END SUB

SUB QBput8 (QBn)
  IF QBn = 0 THEN Apuntador = TY * 16 + TX + Banco * 256 ELSE Apuntador = NumSpr + Banco * 256: IF NumSpr = 0 THEN LINE (VX2 + 3, VY2 + 3)-(VX2 + 10, VY2 + 10), 0, BF: EXIT SUB
  Apuntador = Apuntador * 68 + 1
  SEEK #1, Apuntador
  a$ = SPACE$(68)
  GET #1, , a$
  DQBput VIDEO, VX2 + 3, VY2 + 3, VARSEG(a$), SADD(a$)
END SUB

SUB QBputCursor
  PUT (CX1 * 8 + 9, CY1 * 8 + 77), Cur1
  PUT (CX2 * 8 + 167, CY2 * 8 + 72), Cur1
END SUB

SUB QBputTile
  NumSpr = CY2 * 16 + CX2
  Apuntador = CY1 * 18 + CX1
  MID$(Pantalla$, Apuntador + 2, 1) = CHR$(NumSpr)
END SUB

SUB QBrndPant
  Pantalla$ = CHR$(0)
  FOR i = 0 TO 251
    n = INT(RND(1) * 255)
    Pantalla$ = Pantalla$ + CHR$(n)
  NEXT i
END SUB

SUB QBsavePant
  MID$(Pantalla$, 1, 1) = CHR$(Banco)
  Apuntador = NumPant * 253 + 1
  SEEK #2, Apuntador
  PUT #2, , Pantalla$
END SUB

SUB QBshowPant
  VX2 = 2: VY2 = 70
  'LINE (VX2, VY2)-(VX2 + 149, VY2 + 117), 0, BF
  LINE (VX2 + 1, VY2 + 1)-(VX2 + 148, VY2 + 116), 15, B
  TX = 0: TY = 0: s = 0
  DO
    NumSpr = ASC(MID$(Pantalla$, s + 2, 1))
    QBput8 1
    VX2 = VX2 + 8: IF VX2 = 146 THEN VX2 = 2: VY2 = VY2 + 8
    s = s + 1
  LOOP UNTIL s = 252
END SUB

SUB QBshowTiles
  VX2 = 160: VY2 = 67
  'LINE (VX2, VY2)-(VX2 + 133, VY2 + 133), 0, BF
  LINE (VX2 + 1, VY2 + 1)-(VX2 + 132, VY2 + 132), 15, B
  TX = 0: TY = 0
  DO
    QBput8 0
    VX2 = VX2 + 8: IF VX2 = 288 THEN VX2 = 160: VY2 = VY2 + 8
    TX = TX + 1: IF TX = 16 THEN TX = 0: TY = TY + 1
  LOOP UNTIL TY = 16
END SUB

SUB QBshowVar
  LOCATE 1, 1
  PRINT " PROGRAMA DE UTILIDAD      VERSION 1.0"
  PRINT USING " CX1: ##  CY1: ##  SPR: ####"; CX1; CY1; CY2 * 16 + CX2 + Banco * 256
  PRINT USING " Banco N§: ##  Pantalla N§: ##"; Banco; NumPant
END SUB

