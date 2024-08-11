DECLARE SUB QBput (QBp%)
DECLARE FUNCTION Convert$ (QBc%)
DECLARE SUB QBcopiar ()
DECLARE SUB QBpegar ()
DECLARE SUB QBput8 (QBt%)
DECLARE SUB QBshowTable ()
DECLARE SUB QBput56 (QBt%)
DECLARE SUB QBseeFile ()
DECLARE SUB QBcg (QBns%)
DECLARE SUB QBpaint (QBcol%)
DECLARE SUB QBscroll (QBdirec%)
DECLARE SUB QBshowVar ()
DECLARE SUB QBeditSpr ()
DECLARE SUB QBputCursor ()
DECLARE SUB QBshowBuffers ()
DECLARE SUB QBinitEdit ()

DEFINT A-Z

'$INCLUDE: 'DIRECTQB.BI'

SCREEN 13
IF DQBinit(0, 0, 0) THEN DQBclose: SCREEN 0: WIDTH 80, 25: PRINT DQBerror: END

DIM SHARED Lado, LP, DIS
DIM SHARED TAM AS LONG
DIM SHARED NumOfSpr
DIM SHARED Archivo$
DIM SHARED Direccion$
DIM SHARED PalDefault AS STRING * 768
DIM SHARED Modo
DIM SHARED CX1, CY1, CX2, CY2
DIM SHARED Cur1(33)
DIM SHARED VX1, VY1, VX2, VY2
DIM SHARED SX1, SY1, SX2, SY2
DIM SHARED TI, TX, TY
DIM SHARED Apuntador AS LONG
DIM SHARED SprL1 AS LONG
DIM SHARED SprL2 AS LONG
DIM SHARED SprC1$
DIM SHARED SprC2$
DIM SHARED CopiaCargada

QBinitEdit

SELECT CASE Lado
  CASE 8: TAM = 33: DIM SHARED Spr1(TAM): DIM SHARED Spr2(TAM): LP = 5: DIS = 3
  CASE 16: TAM = 129: DIM SHARED Spr1(TAM): DIM SHARED Spr2(TAM): LP = 3: DIS = 1
  CASE 56: TAM = 1569: DIM SHARED Spr1(TAM): DIM SHARED Spr2(TAM): LP = 2: DIS = 1
  CASE ELSE: DQBclose: CLS : PRINT "Tama¤o desconocido": END
END SELECT

QBshowBuffers
QBeditSpr

DQBclose
END

DATA 1,1,0,0,0,0,0,0
DATA 1,1,1,1,0,0,0,0
DATA 0,1,1,1,1,1,0,0
DATA 0,1,1,1,1,0,0,0
DATA 0,0,1,1,1,1,0,0
DATA 0,0,1,0,1,1,1,0
DATA 0,0,0,0,0,1,1,0
DATA 0,0,0,0,0,0,0,0

FUNCTION Convert$ (QBc)
  IF QBc = 1 THEN
    b = 0
    c$ = ""
    DEF SEG = VARSEG(Spr1(0))
    DO
      bb = PEEK(VARPTR(Spr1(0)) + b)
      c$ = c$ + CHR$(bb)
      b = b + 1
    LOOP UNTIL b = 68
    Convert$ = c$
  ELSE
    b = 0
    c$ = ""
    DEF SEG = VARSEG(Spr2(0))
    DO
      bb = PEEK(VARPTR(Spr2(0)) + b)
      c$ = c$ + CHR$(bb)
      b = b + 1
    LOOP UNTIL b = 68
    Convert$ = c$
  END IF
END FUNCTION

REM $DYNAMIC
SUB QBcg (QBns)





  IF QBns = 1 THEN xq = SX1: yq = SY1 ELSE xq = SX2: yq = SY2
  FOR y = 0 TO Lado - 1
    FOR x = 0 TO Lado - 1
      c = POINT(xq + x + 3, yq + y + 3)
      LINE (VX1 + x * LP + 3, VY1 + y * LP + 3)-(VX1 + x * LP + LP + 2, VY1 + y * LP + LP + 2), c, BF
    NEXT x
  NEXT y
END SUB

REM $STATIC
SUB QBcopiar





  SprL1 = TI + CY2 * 9 + CX2
  SprL1 = SprL1 * 68 + 1
  SEEK #1, SprL1
  SprC1$ = SPACE$(68)
  GET #1, , SprC1$
  CopiaCargada = 1
  SOUND 100, 1
END SUB

REM $DYNAMIC
SUB QBeditSpr
  CX1 = 0: CY1 = 0
  QBputCursor
  DO
    DEF SEG = 0
    Banderas = PEEK(&H417)
    Shift = (Banderas AND 1) OR ((Banderas AND 2) / 2)
    ink$ = UCASE$(INKEY$)
    IF ink$ = CHR$(0) + "H" AND CY1 > 0 AND Shift = 0 THEN QBputCursor: CY1 = CY1 - 1: QBputCursor: QBshowVar
    IF ink$ = CHR$(0) + "P" AND CY1 < Lado - 1 AND Shift = 0 THEN QBputCursor: CY1 = CY1 + 1: QBputCursor: QBshowVar
    IF ink$ = CHR$(0) + "K" AND CX1 > 0 AND Shift = 0 THEN QBputCursor: CX1 = CX1 - 1: QBputCursor: QBshowVar
    IF ink$ = CHR$(0) + "M" AND CX1 < Lado - 1 AND Shift = 0 THEN QBputCursor: CX1 = CX1 + 1: QBputCursor: QBshowVar
    IF ink$ = CHR$(0) + "H" AND Shift = 1 THEN QBputCursor: QBscroll 1: QBcg 1: QBputCursor: QBshowVar
    IF ink$ = CHR$(0) + "P" AND Shift = 1 THEN QBputCursor: QBscroll 2: QBcg 1: QBputCursor: QBshowVar
    IF ink$ = CHR$(0) + "K" AND Shift = 1 THEN QBputCursor: QBscroll 3: QBcg 1: QBputCursor: QBshowVar
    IF ink$ = CHR$(0) + "M" AND Shift = 1 THEN QBputCursor: QBscroll 4: QBcg 1: QBputCursor: QBshowVar
    IF ink$ = "0" THEN PSET (SX1 + CX1 + 3, SY1 + CY1 + 3), 0: QBputCursor: QBcg 1: QBputCursor: QBshowVar: DQBwait 2
    IF ink$ = "1" THEN PSET (SX1 + CX1 + 3, SY1 + CY1 + 3), 127: QBputCursor: QBcg 1: QBputCursor: QBshowVar: DQBwait 2
    IF ink$ = "2" THEN PSET (SX1 + CX1 + 3, SY1 + CY1 + 3), 92: QBputCursor: QBcg 1: QBputCursor: QBshowVar: DQBwait 2
    IF ink$ = "3" THEN PSET (SX1 + CX1 + 3, SY1 + CY1 + 3), 87: QBputCursor: QBcg 1: QBputCursor: QBshowVar: DQBwait 2
    IF ink$ = "4" THEN PSET (SX1 + CX1 + 3, SY1 + CY1 + 3), 4: QBputCursor: QBcg 1: QBputCursor: QBshowVar: DQBwait 2
    IF ink$ = "P" THEN DQBsetPal PalDefault
    IF ink$ = ")" THEN QBputCursor: QBpaint 0:   QBcg 1: QBputCursor: QBshowVar: DQBwait 2
    IF ink$ = "!" THEN QBputCursor: QBpaint 127: QBcg 1: QBputCursor: QBshowVar: DQBwait 2
    IF ink$ = "@" THEN QBputCursor: QBpaint 92:  QBcg 1: QBputCursor: QBshowVar: DQBwait 2
    IF ink$ = "#" THEN QBputCursor: QBpaint 87:  QBcg 1: QBputCursor: QBshowVar: DQBwait 2
    IF ink$ = "$" THEN QBputCursor: QBpaint 4:   QBcg 1: QBputCursor: QBshowVar: DQBwait 2
    IF ink$ = CHR$(0) + ";" THEN QBseeFile
  LOOP UNTIL ink$ = CHR$(27)
END SUB

SUB QBinitEdit
 
 
 
 
  Lado = 8
  Archivo$ = "SPRITE8.BIN"
  Direccion$ = "ARCHIVOS\"
  NumOfSpr = 768         '56-54

  FOR y = 0 TO 7
    FOR x = 0 TO 7
      READ p
      PSET (x, y), p * 20
    NEXT x
  NEXT y
  GET (0, 0)-(7, 7), Cur1

  OPEN "ESPECIAL.PAL" FOR BINARY AS #1
    GET #1, , PalDefault
  CLOSE #1
  DQBsetPal PalDefault
 
  OPEN Direccion$ + Archivo$ FOR BINARY AS #1

  PRINT "  SPRITE EDITOR 2        VERSION 1.0"
  LOCATE 2, 1: PRINT USING " CX: ##  CY: ##  COL: ###"; CX1; CY1; Col
END SUB

SUB QBpaint (QBcol)
  DQBpaint VIDEO, SX1 + CX1 + 3, SY1 + CY1 + 3, QBcol
END SUB

REM $STATIC
SUB QBpegar





  SprL2 = TI + CY2 * 9 + CX2
  SprL2 = SprL2 * 68 + 1
  IF SprL2 = SprL1 THEN BEEP: CopiaCargada = 0: EXIT SUB
  SEEK #1, SprL2
  SprC2$ = SPACE$(68)
  GET #1, , SprC2$
 
  SEEK #1, SprL1
  PUT #1, , SprC2$

  SEEK #1, SprL2
  PUT #1, , SprC1$

  CopiaCargada = 0
  SOUND 200, 1
END SUB

SUB QBput (QBp)





  IF QBp = 1 THEN
    GET (SX1 + 3, SY1 + 3)-(SX1 + Lado + 2, SY1 + Lado + 2), Spr1
    SprPut$ = Convert(QBp)
    Apuntador = TI + CY2 * 9 + CX2
    Apuntador = Apuntador * 68 + 1
    SEEK #1, Apuntador
    PUT #1, , SprPut$
  ELSE
    GET (SX2 + 3, SY2 + 3)-(SX2 + Lado + 2, SY2 + Lado + 2), Spr2
    SprPut$ = Convert(QBp)
    Apuntador = TI + CY2 * 9 + CX2
    Apuntador = Apuntador * 68 + 1
    SEEK #1, Apuntador
    PUT #1, , SprPut$
  END IF
END SUB

SUB QBput56 (QBt)
     
     
     
     
     
  LINE (VX2, VY2)-(VX2 + 61, VY2 + 61), ABS(SGN(QBt)) * 127, BF
  LINE (VX2 + 1, VY2 + 1)-(VX2 + 60, VY2 + 60), 15, B
  Apuntador = TI
  Apuntador = Apuntador * 3140 + 1
  SEEK #1, Apuntador
  a$ = SPACE$(3140)
  GET #1, , a$
  DQBput VIDEO, VX2 + 3, VY2 + 3, VARSEG(a$), SADD(a$)
  DQBwait 2
END SUB

SUB QBput8 (QBt)





  Apuntador = TI + TY * 9 + TX
  Apuntador = Apuntador * 68 + 1
  SEEK #1, Apuntador
  a$ = SPACE$(68)
  GET #1, , a$
  DQBput VIDEO, VX2 + 3, VY2 + 3, VARSEG(a$), SADD(a$)
END SUB

REM $DYNAMIC
SUB QBputCursor





  SELECT CASE Modo
    CASE 0: PUT (CX1 * LP + DIS + 13, CY1 * LP + DIS + 73), Cur1
    CASE 1: PUT (CX2 * LP + DIS + VX2, CY2 * LP + DIS + 73), Cur1
  END SELECT
END SUB

SUB QBscroll (QBdirec)





  SELECT CASE QBdirec
    CASE 1
      FOR y = 1 TO Lado - 1
        FOR x = 0 TO Lado - 1
          c = POINT(VX1 + x * LP + 3, VY1 + y * LP + 3)
          PSET (SX1 + x + 3, SY1 + y + 2), c
        NEXT x
      NEXT y
      FOR x = 0 TO Lado - 1
        c = POINT(VX1 + x * LP + 3, VY1 + 3)
        PSET (SX1 + x + 3, SY1 + (Lado - 1) + 3), c
      NEXT x
    CASE 2
      FOR y = 0 TO Lado - 2
        FOR x = 0 TO Lado - 1
          c = POINT(VX1 + x * LP + 3, VY1 + y * LP + 3)
          PSET (SX1 + x + 3, SY1 + y + 4), c
        NEXT x
      NEXT y
      FOR x = 0 TO Lado - 1
        c = POINT(VX1 + x * LP + 3, VY1 + (Lado - 1) * LP + 3)
        PSET (SX1 + x + 3, SY1 + 3), c
      NEXT x
    CASE 3
      FOR y = 0 TO Lado - 1
        FOR x = 1 TO Lado - 1
          c = POINT(VX1 + x * LP + 3, VY1 + y * LP + 3)
          PSET (SX1 + x + 2, SY1 + y + 3), c
        NEXT x
      NEXT y
      FOR y = 0 TO Lado - 1
        c = POINT(VX1 + 3, VY1 + y * LP + 3)
        PSET (SX1 + (Lado - 1) + 3, SY1 + y + 3), c
      NEXT y
    CASE 4
      FOR y = 0 TO Lado - 1
        FOR x = 0 TO Lado - 2
          c = POINT(VX1 + x * LP + 3, VY1 + y * LP + 3)
          PSET (SX1 + x + 4, SY1 + y + 3), c
        NEXT x
      NEXT y
      FOR y = 0 TO Lado - 1
        c = POINT(VX1 + (Lado - 1) * LP + 3, VY1 + y * LP + 3)
        PSET (SX1 + 3, SY1 + y + 3), c
      NEXT y
  END SELECT
END SUB

REM $STATIC
SUB QBseeFile





  Modo = 1
  SELECT CASE Lado
    CASE 8
      VX2 = 110: VY2 = 70
      LINE (VX2, VY2)-(VX2 + 8 * 9 + 5, VY2 + 8 * 14 + 5), 0, BF
      LINE (VX2 + 1, VY2 + 1)-(VX2 + 8 * 9 + 4, VY2 + 8 * 14 + 4), 15, B
      QBshowTable
      PUT (CX2 * 8 + 118, CY2 * 8 + 78), Cur1
      DO
        ink2$ = UCASE$(INKEY$)
        IF ink2$ = CHR$(0) + "H" AND CY2 = 0 AND TI > 0 THEN PUT (CX2 * 8 + 118, CY2 * 8 + 78), Cur1: TI = TI - 9: QBshowTable: PUT (CX2 * 8 + 118, CY2 * 8 + 78), Cur1
        IF ink2$ = CHR$(0) + "P" AND CY2 = 13 AND TI < 768 - 9 * 14 THEN PUT (CX2 * 8 + 118, CY2 * 8 + 78), Cur1: TI = TI + 9: QBshowTable: PUT (CX2 * 8 + 118, CY2 * 8 + 78), Cur1
        IF ink2$ = CHR$(0) + "H" AND CY2 > 0 THEN PUT (CX2 * 8 + 118, CY2 * 8 + 78), Cur1: CY2 = CY2 - 1: PUT (CX2 * 8 + 118, CY2 * 8 + 78), Cur1
        IF ink2$ = CHR$(0) + "P" AND CY2 < 13 THEN PUT (CX2 * 8 + 118, CY2 * 8 + 78), Cur1: CY2 = CY2 + 1: PUT (CX2 * 8 + 118, CY2 * 8 + 78), Cur1
        IF ink2$ = CHR$(0) + "K" AND CX2 > 0 THEN PUT (CX2 * 8 + 118, CY2 * 8 + 78), Cur1: CX2 = CX2 - 1: PUT (CX2 * 8 + 118, CY2 * 8 + 78), Cur1
        IF ink2$ = CHR$(0) + "M" AND CX2 < 8 THEN PUT (CX2 * 8 + 118, CY2 * 8 + 78), Cur1: CX2 = CX2 + 1: PUT (CX2 * 8 + 118, CY2 * 8 + 78), Cur1
        IF ink2$ = CHR$(27) THEN DQBclose: END
        IF ink2$ <> "" THEN LOCATE 3, 1: PRINT USING "SPR: ####"; TI + CY2 * 9 + CX2
        IF ink2$ = "1" THEN VX2 = 60: VY2 = 70: TX = CX2: TY = CY2: QBput8 0: Modo = 0: QBputCursor: QBcg 1: QBputCursor: Modo = 1
        IF ink2$ = "2" THEN VX2 = 78: VY2 = 70: TX = CX2: TY = CY2: QBput8 0
        IF ink2$ = CHR$(0) + "R" AND CopiaCargada = 0 THEN QBcopiar: ink2$ = ""
        IF ink2$ = CHR$(0) + "R" AND CopiaCargada = 1 THEN QBpegar: PUT (CX2 * 8 + 118, CY2 * 8 + 78), Cur1: QBshowTable: PUT (CX2 * 8 + 118, CY2 * 8 + 78), Cur1
        IF ink2$ = "!" THEN QBput 1: PUT (CX2 * 8 + 118, CY2 * 8 + 78), Cur1: QBshowTable: PUT (CX2 * 8 + 118, CY2 * 8 + 78), Cur1
        IF ink2$ = "@" THEN QBput 2: PUT (CX2 * 8 + 118, CY2 * 8 + 78), Cur1: QBshowTable: PUT (CX2 * 8 + 118, CY2 * 8 + 78), Cur1
      LOOP UNTIL ink2$ = CHR$(0) + ";"
    CASE 16
      VX2 = 198: VY2 = 135
      QBput56 1
      DO
        ink2$ = UCASE$(INKEY$)
        IF ink2$ = CHR$(0) + "H" AND TI > 0 THEN TI = TI - 1: QBput56 1
        IF ink2$ = CHR$(0) + "P" AND TI < NumOfSpr THEN TI = TI + 1: QBput56 1
        IF ink2$ = "1" THEN VX2 = 132: VY2 = 70: QBput56 0: VX2 = 198: VY2 = 135: Modo = 0: QBputCursor: QBcg 1: QBputCursor: Modo = 1
        IF ink2$ = "2" THEN VY2 = 70: QBput56 0: VY2 = 135
        IF ink2$ = CHR$(0) THEN DQBclose: END
      LOOP UNTIL ink2$ = CHR$(0) + ";"
    CASE 56
      VX2 = 198: VY2 = 135
      QBput56 1
      DO
        ink2$ = UCASE$(INKEY$)
        IF ink2$ = CHR$(0) + "H" AND TI > 0 THEN TI = TI - 1: QBput56 1
        IF ink2$ = CHR$(0) + "P" AND TI < NumOfSpr THEN TI = TI + 1: QBput56 1
        IF ink2$ = "1" THEN VX2 = 132: VY2 = 70: QBput56 0: VX2 = 198: VY2 = 135: Modo = 0: QBputCursor: QBcg 1: QBputCursor: Modo = 1
        IF ink2$ = "2" THEN VY2 = 70: QBput56 0: VY2 = 135
        IF ink2$ = CHR$(27) THEN DQBclose: END
      LOOP UNTIL ink2$ = CHR$(0) + ";"
  END SELECT
  Modo = 0
END SUB

REM $DYNAMIC
SUB QBshowBuffers




  VX1 = 10: VY1 = 70
  LINE (VX1, VY1)-(VX1 + Lado * LP + 5, VY1 + Lado * LP + 5), 0, BF
  LINE (VX1 + 1, VY1 + 1)-(VX1 + Lado * LP + 4, VY1 + Lado * LP + 4), 15, B
 
  SX1 = VX1 + Lado * LP + 10: SY1 = 70
  LINE (SX1, SY1)-(SX1 + Lado + 5, SY1 + Lado + 5), 0, BF
  LINE (SX1 + 1, SY1 + 1)-(SX1 + Lado + 4, SY1 + Lado + 4), 15, B
  IF Spr1(0) / 8 = Lado THEN PUT (SX1 + 2, SY1 + 2), Spr1, PSET
 
  SX2 = SX1 + Lado + 10: SY2 = 70
  LINE (SX2, SY2)-(SX2 + Lado + 5, SY2 + Lado + 5), 0, BF
  LINE (SX2 + 1, SY2 + 1)-(SX2 + Lado + 4, SY2 + Lado + 4), 15, B
  IF Spr2(0) / 8 = Lado THEN PUT (SX2 + 2, SY2 + 2), Spr2, PSET
END SUB

REM $STATIC
SUB QBshowTable
  s = 0
  TX = 0: TY = 0: VX2 = 110: VY2 = 70
  DO
    s = s + 1
    QBput8 1
    VX2 = VX2 + 8
    IF s MOD 9 = 0 THEN VX2 = 110: VY2 = VY2 + 8
    TX = TX + 1
    IF TX MOD 9 = 0 THEN TX = 0: TY = TY + 1
  LOOP UNTIL s = 9 * 14
END SUB

REM $DYNAMIC
SUB QBshowVar




  Col = POINT(SX1 + CX1 + 3, SY1 + CY1 + 3)
  LOCATE 2, 1: PRINT USING " CX: ##  CY: ##  COL: ###"; CX1; CY1; Col
END SUB

