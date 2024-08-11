DECLARE SUB QBmovCur (QBd%)
DECLARE SUB QBputCursor ()
DECLARE SUB QBput8 (QBx%, QBy%)

DEFINT A-Z

'$INCLUDE: 'DIRECTQB.BI'

SCREEN 13
IF DQBinit(0, 0, 0) THEN DQBclose: SCREEN 0: WIDTH 80, 25: PRINT DQBerror: END

DIM SHARED Direccion$, Banco
DIM SHARED Apuntador AS LONG
DIM SHARED PalDefault AS STRING * 768
DIM SHARED NumSpr
DIM SHARED Conver1(255)
DIM SHARED NX, NY, VX, VY, CX, CY

  OPEN "ESPECIAL.PAL" FOR BINARY AS #1
    GET #1, , PalDefault
  CLOSE #1
  DQBsetPal PalDefault
 
  OPEN "C:\NEWPOKE1\ARCHIVOS\SPRITE8.BIN" FOR BINARY AS #1

  DEF SEG = VARSEG(Conver1(0))
  BLOAD "C:\NEWPOKE1\CONVER1.BIN", VARPTR(Conver1(0))
  DEF SEG

COLOR 18
LOCATE 1, 1: PRINT "Este programa ajusta la conversi¢n de": PRINT "los caracteres a las sprites"
NX = 3: NY = 5: c = 32

DO
  LOCATE NY, NX - 2: PRINT CHR$(c) + "x"
  NumSpr = Conver1(c)
  QBput8 NX * 8 - 16, NY * 8 - 8
  NY = NY + 1: IF NY = 24 THEN NY = 5: NX = NX + 3
  c = c + 1
LOOP UNTIL c = 256

NX = 3: VX = 3: NY = 5: VY = 5
QBputCursor

DO
  ink$ = INKEY$
  IF ink$ = CHR$(0) + "H" THEN QBmovCur 1: QBputCursor
  IF ink$ = CHR$(0) + "P" THEN QBmovCur 2: QBputCursor
  IF ink$ = CHR$(0) + "K" THEN QBmovCur 3: QBputCursor
  IF ink$ = CHR$(0) + "M" THEN QBmovCur 4: QBputCursor
  IF ink$ = "+" THEN
    a = (NX / 3 - 1) * 19 + NY + 27
    Conver1(a) = Conver1(a) + 1: IF Conver1(a) > 255 THEN Conver1(a) = 0
    NumSpr = Conver1(a)
    QBput8 NX * 8 - 16, NY * 8 - 8
  END IF
  IF ink$ = "-" THEN
    a = (NX / 3 - 1) * 19 + NY + 27
    Conver1(a) = Conver1(a) - 1: IF Conver1(a) < 0 THEN Conver1(a) = 255
    NumSpr = Conver1(a)
    QBput8 NX * 8 - 16, NY * 8 - 8
  END IF
  IF ink$ = "0" THEN
    a = (NX / 3 - 1) * 19 + NY + 27
    Conver1(a) = 100
    NumSpr = 100
    QBput8 NX * 8 - 16, NY * 8 - 8
  END IF
  IF ink$ = "1" THEN
    a = (NX / 3 - 1) * 19 + NY + 27
    Conver1(a) = 10
    NumSpr = 10
    QBput8 NX * 8 - 16, NY * 8 - 8
  END IF
  IF ink$ = "2" THEN
    a = (NX / 3 - 1) * 19 + NY + 27
    Conver1(a) = 20
    NumSpr = 20
    QBput8 NX * 8 - 16, NY * 8 - 8
  END IF
  IF ink$ = "3" THEN
    a = (NX / 3 - 1) * 19 + NY + 27
    Conver1(a) = 30
    NumSpr = 30
    QBput8 NX * 8 - 16, NY * 8 - 8
  END IF
  IF ink$ = "4" THEN
    a = (NX / 3 - 1) * 19 + NY + 27
    Conver1(a) = 40
    NumSpr = 40
    QBput8 NX * 8 - 16, NY * 8 - 8
  END IF
  IF ink$ = "5" THEN
    a = (NX / 3 - 1) * 19 + NY + 27
    Conver1(a) = 50
    NumSpr = 50
    QBput8 NX * 8 - 16, NY * 8 - 8
  END IF
  IF ink$ = "6" THEN
    a = (NX / 3 - 1) * 19 + NY + 27
    Conver1(a) = 60
    NumSpr = 60
    QBput8 NX * 8 - 16, NY * 8 - 8
  END IF
  IF ink$ = "7" THEN
    a = (NX / 3 - 1) * 19 + NY + 27
    Conver1(a) = 70
    NumSpr = 70
    QBput8 NX * 8 - 16, NY * 8 - 8
  END IF
  IF ink$ = "8" THEN
    a = (NX / 3 - 1) * 19 + NY + 27
    Conver1(a) = 80
    NumSpr = 80
    QBput8 NX * 8 - 16, NY * 8 - 8
  END IF
  IF ink$ = "9" THEN
    a = (NX / 3 - 1) * 19 + NY + 27
    Conver1(a) = 90
    NumSpr = 90
    QBput8 NX * 8 - 16, NY * 8 - 8
  END IF
LOOP UNTIL ink$ = CHR$(27)

DEF SEG = VARSEG(Conver1(0))
BSAVE "C:\NEWPOKE1\CONVER1.BIN", VARPTR(Conver1(0)), 512
DEF SEG

DQBclose
END

SUB QBmovCur (QBd)
  SELECT CASE QBd
    CASE 1: NY = NY - 1: IF NY = 4 THEN NY = 23: IF NY = 23 AND NX = 36 THEN NY = 19
    CASE 2: NY = NY + 1: IF NY = 24 THEN NY = 5 ELSE IF NY > 19 AND NX = 36 THEN NY = 5
    CASE 3: NX = NX - 3: IF NX = 0 THEN NX = 36: IF NY > 19 THEN NX = NX - 3
    CASE 4: NX = NX + 3: IF NX = 36 AND NY > 19 THEN NX = 3 ELSE IF NX = 39 THEN NX = 3
  END SELECT
END SUB

SUB QBput8 (QBx, QBy)
  Apuntador = NumSpr + Banco * 256
 
 
 
 
  IF NumSpr = 0 THEN LOCATE NY, NX - 1: PRINT "x": EXIT SUB
  Apuntador = Apuntador * 68 + 1
  SEEK #1, Apuntador
  a$ = SPACE$(68)
  GET #1, , a$
  DQBput VIDEO, QBx, QBy, VARSEG(a$), SADD(a$)
END SUB

SUB QBputCursor





  LOCATE VY, VX: PRINT " "
  LOCATE NY, NX: PRINT "<"
  VX = NX: VY = NY
  LOCATE 3, 1: PRINT "X:"; NX / 3 - 1; "Y:"; NY - 5; "S:"; (NX / 3 - 1) * 19 + NY + 27
END SUB

