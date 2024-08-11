DECLARE SUB QBinsSpr5 ()
DECLARE SUB QBrestore ()
DECLARE SUB QBcopiar ()
DECLARE SUB QBpegar ()
DECLARE SUB QBseeMapDemo ()
DECLARE SUB QBshowMapDemo ()
DECLARE SUB QBscanMap ()
DECLARE FUNCTION HexToDec% (q$)
DECLARE SUB QBinsSpr3 ()
DECLARE SUB QBeditSpr16 ()
DECLARE SUB QBsaveSpr16 ()
DECLARE SUB QBrefreshTxt ()
DECLARE SUB QBhideCursor ()
DECLARE SUB QBshowCursor ()
DECLARE SUB QBfillBinFile ()
DECLARE SUB WinBuffer ()
DECLARE SUB WinSetOfTiles ()
DECLARE SUB WinSetOfSpr16 ()
DECLARE SUB QBputBin ()
DECLARE SUB QBscr ()
DECLARE SUB QBloadPal (PalFile$)
DECLARE SUB QBshowTileC ()
DECLARE SUB QBline (a$, B$, i%)
DECLARE FUNCTION HexToBin$ (q$)
DECLARE SUB QBputHex ()
DECLARE SUB QBinitVariables ()

DEFINT A-Z

'$INCLUDE: 'DIRECTQB.BI'

CLEAR

SCREEN 13
IF DQBinit(3, 0, 0) THEN DQBclose: SCREEN 0: WIDTH 80, 25: PRINT DQBerror: END

DIM SHARED SprAyu1(129)
DIM SHARED SprAyu2(129)
DIM SHARED SprAyu3(129)
DIM SHARED SprAyu4(33)
DIM SHARED SprAyu5(129)
DIM SHARED Color00
DIM SHARED Color01
DIM SHARED Color10
DIM SHARED Color11
DIM SHARED Direc1$
DIM SHARED Direc2$
DIM SHARED Arch1$
DIM SHARED Arch2$
DIM SHARED Apuntador AS LONG
DIM SHARED NumSpr1 AS LONG
DIM SHARED NumSpr2 AS LONG
DIM SHARED TileC AS STRING
DIM SHARED SprIndex1 AS LONG
DIM SHARED CurX AS LONG
DIM SHARED CurY AS LONG
DIM SHARED CurX2 AS LONG
DIM SHARED CurY2 AS LONG
DIM SHARED MX AS LONG
DIM SHARED MY AS LONG
DIM SHARED MapIndex1 AS LONG
DIM SHARED OneLine AS STRING
DIM SHARED FlipHor
DIM SHARED FlipVer
DIM SHARED Transpa
DIM SHARED PalDefault AS STRING * 768
DIM SHARED MaxSpr
DIM SHARED XQ
DIM SHARED YQ
DIM SHARED Cuarto1
DIM SHARED Cuarto2
DIM SHARED Cuarto3
DIM SHARED Cuarto4
DIM SHARED UpdateMapHex
DIM SHARED UpdateWinHex
DIM SHARED UpdateWinBin
DIM SHARED CapaHex
DIM SHARED CurrentMode
DIM SHARED CopiaS1$
DIM SHARED CopiaS2$
DIM SHARED CopiaN1
DIM SHARED CopiaN2
DIM SHARED PasoC
DIM SHARED Borrado$
DIM SHARED BorradIn AS LONG

QBinitVariables
GET (0, 0)-(15, 15), SprAyu5

QBscr
DO
  ink$ = INKEY$
  SELECT CASE UCASE$(ink$)
    CASE CHR$(0) + "H"
      IF CurrentMode = 0 AND CurY > 0 THEN QBhideCursor: CurY = CurY - 1: QBshowCursor
      IF CurrentMode = 1 AND CurY = 0 AND SprIndex1 > 0 THEN SprIndex1 = SprIndex1 - 9: UpdateWinBin = TRUE: QBscr
      IF CurrentMode = 1 AND CurY > 0 THEN QBhideCursor: CurY = CurY - 1: QBshowCursor
    CASE CHR$(0) + "P"
      IF CurrentMode = 0 AND CurY < 11 THEN QBhideCursor: CurY = CurY + 1: QBshowCursor
      IF CurrentMode = 1 AND CurY = 5 AND CurY * 9 + CurX + SprIndex1 < MaxSpr - 9 THEN SprIndex1 = SprIndex1 + 9: UpdateWinBin = TRUE: QBscr
      IF CurrentMode = 1 AND CurY < 5 THEN QBhideCursor: CurY = CurY + 1: QBshowCursor
    CASE CHR$(0) + "I"
      IF CurrentMode = 1 THEN
        SprIndex1 = SprIndex1 - 54: IF SprIndex1 < 0 THEN SprIndex1 = 0
        UpdateWinBin = TRUE
        QBscr
      END IF
    CASE CHR$(0) + "Q"
      IF CurrentMode = 1 THEN
        SprIndex1 = SprIndex1 + 54: IF SprIndex1 > MaxSpr - 54 THEN SprIndex1 = MaxSpr - 54
        UpdateWinBin = TRUE
        QBscr
      END IF
    CASE CHR$(0) + "K"
      IF CurrentMode = 0 AND CurX > 0 THEN QBhideCursor: CurX = CurX - 1: QBshowCursor
      IF CurrentMode = 1 AND CurX > 0 THEN QBhideCursor: CurX = CurX - 1: QBshowCursor
    CASE CHR$(0) + "M"
      IF CurrentMode = 0 AND CurX < 31 THEN QBhideCursor: CurX = CurX + 1: QBshowCursor
      IF CurrentMode = 1 AND CurX < 8 THEN QBhideCursor: CurX = CurX + 1: QBshowCursor
    CASE CHR$(9)
      IF CurrentMode = 0 THEN CurrentMode = 1 ELSE CurrentMode = 0
      SWAP CurX, CurX2: SWAP CurY, CurY2
      QBscr
    CASE CHR$(13)
      'IF CurrentMode = 1 THEN QBfillBinFile: QBscr
      IF CurrentMode = 1 THEN QBsaveSpr16
    CASE "P"
      DQBsetPal PalDefault
    CASE "7"
      IF CurrentMode = 0 THEN Cuarto1 = CurY * 32 + CurX: WinBuffer: DQBwait 2
      IF CurrentMode = 1 THEN x1 = CurX * 17 + 29: y1 = CurY * 17 + 96: GET (x1, y1)-(x1 + 7, y1 + 7), SprAyu4: PUT (4, 110), SprAyu4, PSET
    CASE "8"
      IF CurrentMode = 0 THEN Cuarto2 = CurY * 32 + CurX: WinBuffer: DQBwait 2
      IF CurrentMode = 1 THEN x1 = CurX * 17 + 37: y1 = CurY * 17 + 96: GET (x1, y1)-(x1 + 7, y1 + 7), SprAyu4: PUT (4, 110), SprAyu4, PSET
    CASE "4"
      IF CurrentMode = 0 THEN Cuarto3 = CurY * 32 + CurX: WinBuffer: DQBwait 2
      IF CurrentMode = 1 THEN x1 = CurX * 17 + 29: y1 = CurY * 17 + 104: GET (x1, y1)-(x1 + 7, y1 + 7), SprAyu4: PUT (4, 110), SprAyu4, PSET
    CASE "5"
      IF CurrentMode = 0 THEN Cuarto4 = CurY * 32 + CurX: WinBuffer: DQBwait 2
      IF CurrentMode = 1 THEN x1 = CurX * 17 + 37: y1 = CurY * 17 + 104: GET (x1, y1)-(x1 + 7, y1 + 7), SprAyu4: PUT (4, 110), SprAyu4, PSET
    CASE "/"
      IF CurrentMode = 0 THEN Cuarto1 = -1: WinBuffer: DQBwait 2
      IF CurrentMode = 1 THEN PUT (4, 87), SprAyu4, PSET
    CASE "("
      IF CurrentMode = 0 THEN Cuarto2 = -1: WinBuffer: DQBwait 2
      IF CurrentMode = 1 THEN PUT (12, 87), SprAyu4, PSET
    CASE "$"
      IF CurrentMode = 0 THEN Cuarto3 = -1: WinBuffer: DQBwait 2
      IF CurrentMode = 1 THEN PUT (4, 95), SprAyu4, PSET
    CASE "%"
      IF CurrentMode = 0 THEN Cuarto4 = -1: WinBuffer: DQBwait 2
      IF CurrentMode = 1 THEN PUT (12, 95), SprAyu4, PSET
    CASE CHR$(0) + "<"                                  '<F2
      LOCATE 10, 1: INPUT "Nuevo Archivo:", a$
      a$ = UCASE$(a$)
      IF LEN(a$) > 4 AND RIGHT$(a$, 4) = ".HEX" THEN
        CLOSE #1
        Arch1$ = a$
        OPEN Direc1$ + Arch1$ FOR BINARY AS #1
        UpdateWinHex = TRUE
        UpdateMapHex = TRUE
        CurrentMode = 0
        QBscr
      ELSE
        QBscr
      END IF
    CASE CHR$(0) + "=": QBeditSpr16                     '<F3    \/Supr
    CASE CHR$(0) + "S": GET (CurX * 17 + 29, CurY * 17 + 96)-(CurX * 17 + 44, CurY * 17 + 111), SprAyu3
    CASE CHR$(0) + "R": IF CurrentMode = 1 THEN QBinsSpr3       '<Insert
    CASE CHR$(0) + ">": QBseeMapDemo: QBscr
    CASE "S"
      IF CurrentMode = 1 THEN
        x1 = CurX * 17 + 29: y1 = CurY * 17 + 96
        GET (x1, y1)-(x1 + 15, y1 + 15), SprAyu3
        PUT (4, 110), SprAyu3, PSET
        FOR y = 0 TO 14: FOR x = 0 TO 15
          c1 = POINT(4 + x, 110 + y): PSET (x1 + x, y1 + y + 1), c1
        NEXT x, y
        FOR x = 0 TO 15
          c1 = POINT(4 + x, 125): PSET (x1 + x, y1), c1
        NEXT x
        PUT (4, 110), SprAyu3
        GET (x1, y1)-(x1 + 15, y1 + 15), SprAyu3
        QBinsSpr3
      END IF
    CASE "W"
      IF CurrentMode = 1 THEN
        x1 = CurX * 17 + 29: y1 = CurY * 17 + 96
        GET (x1, y1)-(x1 + 15, y1 + 15), SprAyu3
        PUT (4, 110), SprAyu3, PSET
        FOR y = 0 TO 14: FOR x = 0 TO 15
          c1 = POINT(4 + x, 111 + y): PSET (x1 + x, y1 + y), c1
        NEXT x, y
        FOR x = 0 TO 15
          c1 = POINT(4 + x, 110): PSET (x1 + x, y1 + 15), c1
        NEXT x
        PUT (4, 110), SprAyu3
        GET (x1, y1)-(x1 + 15, y1 + 15), SprAyu3
        QBinsSpr3
      END IF
    CASE "A"
      IF CurrentMode = 1 THEN
        x1 = CurX * 17 + 29: y1 = CurY * 17 + 96
        GET (x1, y1)-(x1 + 15, y1 + 15), SprAyu3
        PUT (4, 110), SprAyu3, PSET
        FOR y = 0 TO 15: FOR x = 0 TO 14
          c1 = POINT(5 + x, 110 + y): PSET (x1 + x, y1 + y), c1
        NEXT x, y
        FOR y = 0 TO 15
          c1 = POINT(4, 110 + y): PSET (x1 + 15, y1 + y), c1
        NEXT y
        PUT (4, 110), SprAyu3
        GET (x1, y1)-(x1 + 15, y1 + 15), SprAyu3
        QBinsSpr3
      END IF
    CASE "D"
      IF CurrentMode = 1 THEN
        x1 = CurX * 17 + 29: y1 = CurY * 17 + 96
        GET (x1, y1)-(x1 + 15, y1 + 15), SprAyu3
        PUT (4, 110), SprAyu3, PSET
        FOR y = 0 TO 15: FOR x = 0 TO 14
          c1 = POINT(4 + x, 110 + y): PSET (x1 + x + 1, y1 + y), c1
        NEXT x, y
        FOR y = 0 TO 15
          c1 = POINT(19, 110 + y): PSET (x1, y1 + y), c1
        NEXT y
        PUT (4, 110), SprAyu3
        GET (x1, y1)-(x1 + 15, y1 + 15), SprAyu3
        QBinsSpr3
      END IF
    CASE "E"
      IF CurrentMode = 1 THEN
        x1 = CurX * 17 + 29: y1 = CurY * 17 + 96
        GET (x1, y1)-(x1 + 15, y1 + 15), SprAyu3
        PUT (4, 110), SprAyu3, PSET
        FOR y = 0 TO 15: FOR x = 0 TO 15
          c1 = POINT(4 + x, 110 + y): PSET (x1 - y + 15, y1 + x), c1
        NEXT x, y
        PUT (4, 110), SprAyu3
        GET (x1, y1)-(x1 + 15, y1 + 15), SprAyu3
        QBinsSpr3
      END IF
    CASE "Q"
      IF CurrentMode = 1 THEN
        x1 = CurX * 17 + 29: y1 = CurY * 17 + 96
        GET (x1, y1)-(x1 + 15, y1 + 15), SprAyu3
        PUT (4, 110), SprAyu3, PSET
        FOR y = 0 TO 15: FOR x = 0 TO 15
          c1 = POINT(4 + x, 110 + y): PSET (x1 + y, y1 - x + 15), c1
        NEXT x, y
        PUT (4, 110), SprAyu3
        GET (x1, y1)-(x1 + 15, y1 + 15), SprAyu3
        QBinsSpr3
      END IF
    CASE " "
      ppp = 0
      IF PasoC = 1 AND CurrentMode = 1 THEN
        QBpegar
        PasoC = 0
        SOUND 100, .5
        ppp = 1
      END IF
      IF PasoC = 0 AND CurrentMode = 1 AND ppp = 0 THEN
        QBcopiar
        PasoC = 1
        SOUND 200, .5
      END IF
    CASE "!": QBrestore
    CASE CHR$(0) + "C": IF CurrentMode = 1 THEN QBinsSpr5       '<F9
  END SELECT
  IF ink$ <> "" THEN QBrefreshTxt: DQBwait 1
LOOP UNTIL ink$ = CHR$(27)

CLOSE
DQBclose
SHELL "copy /y d:\sprite16.bin c:\newpoke1\archivos"
END

DATAcursor1:
DATA 0,0,0,0,0,0,0,0
DATA 0,1,1,1,0,0,0,0
DATA 0,1,2,2,1,1,0,0
DATA 0,1,2,2,1,0,0,0
DATA 0,0,1,1,2,1,0,0
DATA 0,0,1,0,1,2,1,0
DATA 0,0,0,0,0,1,0,0
DATA 0,0,0,0,0,0,0,0

REM $DYNAMIC
FUNCTION HexToBin$ (q$)
  H1$ = ""
  SELECT CASE MID$(q$, 1, 1)
    CASE "0": H1$ = "0000"
    CASE "1": H1$ = "0001"
    CASE "2": H1$ = "0010"
    CASE "3": H1$ = "0011"
    CASE "4": H1$ = "0100"
    CASE "5": H1$ = "0101"
    CASE "6": H1$ = "0110"
    CASE "7": H1$ = "0111"
    CASE "8": H1$ = "1000"
    CASE "9": H1$ = "1001"
    CASE "A": H1$ = "1010"
    CASE "B": H1$ = "1011"
    CASE "C": H1$ = "1100"
    CASE "D": H1$ = "1101"
    CASE "E": H1$ = "1110"
    CASE "F": H1$ = "1111"
  END SELECT
  SELECT CASE MID$(q$, 2, 1)
    CASE "0": H1$ = H1$ + "0000"
    CASE "1": H1$ = H1$ + "0001"
    CASE "2": H1$ = H1$ + "0010"
    CASE "3": H1$ = H1$ + "0011"
    CASE "4": H1$ = H1$ + "0100"
    CASE "5": H1$ = H1$ + "0101"
    CASE "6": H1$ = H1$ + "0110"
    CASE "7": H1$ = H1$ + "0111"
    CASE "8": H1$ = H1$ + "1000"
    CASE "9": H1$ = H1$ + "1001"
    CASE "A": H1$ = H1$ + "1010"
    CASE "B": H1$ = H1$ + "1011"
    CASE "C": H1$ = H1$ + "1100"
    CASE "D": H1$ = H1$ + "1101"
    CASE "E": H1$ = H1$ + "1110"
    CASE "F": H1$ = H1$ + "1111"
  END SELECT
  HexToBin$ = H1$
END FUNCTION

REM $STATIC
FUNCTION HexToDec (q$)
  SELECT CASE MID$(q$, 1, 1)
    CASE "0": i1 = 0
    CASE "1": i1 = 1
    CASE "2": i1 = 2
    CASE "3": i1 = 3
    CASE "4": i1 = 4
    CASE "5": i1 = 5
    CASE "6": i1 = 6
    CASE "7": i1 = 7
    CASE "8": i1 = 8
    CASE "9": i1 = 9
    CASE "A": i1 = 10
    CASE "B": i1 = 11
    CASE "C": i1 = 12
    CASE "D": i1 = 13
    CASE "E": i1 = 14
    CASE "F": i1 = 15
  END SELECT
  SELECT CASE MID$(q$, 2, 1)
    CASE "0": i2 = 0
    CASE "1": i2 = 1
    CASE "2": i2 = 2
    CASE "3": i2 = 3
    CASE "4": i2 = 4
    CASE "5": i2 = 5
    CASE "6": i2 = 6
    CASE "7": i2 = 7
    CASE "8": i2 = 8
    CASE "9": i2 = 9
    CASE "A": i2 = 10
    CASE "B": i2 = 11
    CASE "C": i2 = 12
    CASE "D": i2 = 13
    CASE "E": i2 = 14
    CASE "F": i2 = 15
  END SELECT
  HexToDec = i1 * 16 + i2
END FUNCTION

SUB QBcopiar





  Apuntador = CurY * 9 + CurX + SprIndex1
  CopiaN1 = Apuntador
  Apuntador = Apuntador * 260 + 1
  SEEK #2, Apuntador
  CopiaS1$ = SPACE$(260)
  GET #2, , CopiaS1$
END SUB

SUB QBeditSpr16
  FOR y = 0 TO 15
    FOR x = 0 TO 15
      IF POINT(CurX * 17 + 29 + x, CurY * 17 + 96 + y) = 32 THEN PSET (CurX * 17 + 29 + x, CurY * 17 + 96 + y), 0
    NEXT x
  NEXT y
  GET (CurX * 17 + 29, CurY * 17 + 96)-(CurX * 17 + 44, CurY * 17 + 111), SprAyu5
  CLS
  LINE (8, 98)-(27, 117), 16, B
  PUT (10, 100), SprAyu5, PSET
  LINE (98, 98)-(181, 181), 16, B
  DQBsPut VIDEO, 100, 100, VARSEG(SprAyu5(0)), VARPTR(SprAyu5(0)), 80, 80
  ptx = 0: pty = 0
  PUT (ptx * 5 + 99, pty * 5 + 99), SprAyu2
  DO
    IF ink$ <> "" THEN LOCATE 1, 1: PRINT POINT(ptx + 10, pty + 100)
    ink$ = INKEY$
    IF ink$ = CHR$(27) THEN EXIT DO
    IF ink$ = CHR$(0) + "H" THEN
      PUT (ptx * 5 + 99, pty * 5 + 99), SprAyu2
      pty = pty - 1: IF pty = -1 THEN pty = 15
      PUT (ptx * 5 + 99, pty * 5 + 99), SprAyu2
    END IF
    IF ink$ = CHR$(0) + "P" THEN
      PUT (ptx * 5 + 99, pty * 5 + 99), SprAyu2
      pty = pty + 1: IF pty = 16 THEN pty = 0
      PUT (ptx * 5 + 99, pty * 5 + 99), SprAyu2
    END IF
    IF ink$ = CHR$(0) + "K" THEN
      PUT (ptx * 5 + 99, pty * 5 + 99), SprAyu2
      ptx = ptx - 1: IF ptx = -1 THEN ptx = 15
      PUT (ptx * 5 + 99, pty * 5 + 99), SprAyu2
    END IF
    IF ink$ = CHR$(0) + "M" THEN
      PUT (ptx * 5 + 99, pty * 5 + 99), SprAyu2
      ptx = ptx + 1: IF ptx = 16 THEN ptx = 0
      PUT (ptx * 5 + 99, pty * 5 + 99), SprAyu2
    END IF
    IF ink$ = "p" THEN DQBsetPal PalDefault
    IF ink$ = "0" THEN
      PSET (10 + ptx, 100 + pty), 0
      PUT (ptx * 5 + 99, pty * 5 + 99), SprAyu2
      GET (10, 100)-(25, 115), SprAyu5
      DQBsPut VIDEO, 100, 100, VARSEG(SprAyu5(0)), VARPTR(SprAyu5(0)), 80, 80
      PUT (ptx * 5 + 99, pty * 5 + 99), SprAyu2
    END IF
    IF ink$ = "1" THEN
      PSET (10 + ptx, 100 + pty), 87
      PUT (ptx * 5 + 99, pty * 5 + 99), SprAyu2
      GET (10, 100)-(25, 115), SprAyu5
      DQBsPut VIDEO, 100, 100, VARSEG(SprAyu5(0)), VARPTR(SprAyu5(0)), 80, 80
      PUT (ptx * 5 + 99, pty * 5 + 99), SprAyu2
    END IF
    IF ink$ = "2" THEN
      PSET (10 + ptx, 100 + pty), 92
      PUT (ptx * 5 + 99, pty * 5 + 99), SprAyu2
      GET (10, 100)-(25, 115), SprAyu5
      DQBsPut VIDEO, 100, 100, VARSEG(SprAyu5(0)), VARPTR(SprAyu5(0)), 80, 80
      PUT (ptx * 5 + 99, pty * 5 + 99), SprAyu2
    END IF
    IF ink$ = "3" THEN
      PSET (10 + ptx, 100 + pty), 4
      PUT (ptx * 5 + 99, pty * 5 + 99), SprAyu2
      GET (10, 100)-(25, 115), SprAyu5
      DQBsPut VIDEO, 100, 100, VARSEG(SprAyu5(0)), VARPTR(SprAyu5(0)), 80, 80
      PUT (ptx * 5 + 99, pty * 5 + 99), SprAyu2
    END IF
    IF ink$ = "4" THEN
      PSET (10 + ptx, 100 + pty), 127
      PUT (ptx * 5 + 99, pty * 5 + 99), SprAyu2
      GET (10, 100)-(25, 115), SprAyu5
      DQBsPut VIDEO, 100, 100, VARSEG(SprAyu5(0)), VARPTR(SprAyu5(0)), 80, 80
      PUT (ptx * 5 + 99, pty * 5 + 99), SprAyu2
    END IF
    IF ink$ = "5" THEN
      PSET (10 + ptx, 100 + pty), 10
      PUT (ptx * 5 + 99, pty * 5 + 99), SprAyu2
      GET (10, 100)-(25, 115), SprAyu5
      DQBsPut VIDEO, 100, 100, VARSEG(SprAyu5(0)), VARPTR(SprAyu5(0)), 80, 80
      PUT (ptx * 5 + 99, pty * 5 + 99), SprAyu2
    END IF
  LOOP
  CLS
  QBscr
END SUB

REM $DYNAMIC
SUB QBfillBinFile
  GET (4, 87)-(19, 102), SprAyu1
  q1 = 0: q1$ = ""
  DEF SEG = VARSEG(SprAyu1(0))
  DO
    q2 = PEEK(VARPTR(SprAyu1(0)) + q1)
    q1$ = q1$ + CHR$(q2)
    q1 = q1 + 1
  LOOP UNTIL q1 = 260
  q1 = 0
  Apuntador = 1
  DO
    SEEK #2, Apuntador
    PUT #2, , q1$
    Apuntador = Apuntador + 260
    q1 = q1 + 1
    LOCATE 1, 1: PRINT "Spr N§:"; q1 - 1; "grabada."
  LOOP UNTIL q1 = MaxSpr + 1
END SUB

SUB QBhideCursor
  SELECT CASE CurrentMode
    CASE 0
      LINE (CurX * 9 + 29, CurY * 9 + 89)-(CurX * 9 + 38, CurY * 9 + 98), 0, B
    CASE 1
      LINE (CurX * 17 + 28, CurY * 17 + 95)-(CurX * 17 + 45, CurY * 17 + 112), 0, B
  END SELECT
END SUB

SUB QBinitVariables
  CLS
  CLOSE
  Apuntador = 0
  NumSpr1 = 0
  NumSpr2 = 0
  FlipHor = 0
  FlipVer = 0
  XQ = 0
  YQ = 0
  SprIndex1 = 0
  CurrentMode = 0
  CurX = 0
  CurY = 0
  Color00 = 127
  Color01 = 87
  Color10 = 92
  Color11 = 4
  Direc1$ = "C:\GMB\STUFF\"
  Direc2$ = "D:\"
  Arch1$ = "POKE08.HEX"
  Arch2$ = "Sprite16.BIN"
  Transpa = TRUE
  MaxSpr = 1880
  PalDefault = SPACE$(768)
  TileC = ""
  UpdateWinHex = TRUE
  UpdateWinBin = TRUE
  UpdateMapHex = TRUE

  QBloadPal "ESPECIAL.PAL"
  DQBsetPal PalDefault

  OPEN Direc1$ + Arch1$ FOR BINARY AS #1
  OPEN Direc2$ + Arch2$ FOR BINARY AS #2

  RESTORE DATAcursor1
  FOR y = 0 TO 7
    FOR x = 0 TO 7
      READ p
      PSET (4 + x, 4 + y), p * 15
    NEXT x
  NEXT y
  GET (0, 0)-(15, 15), SprAyu2
  CLS

  DQBsetSolidPut

END SUB

REM $STATIC
SUB QBinsSpr3
  DQBput VIDEO, CurX * 17 + 29, CurY * 17 + 96, VARSEG(SprAyu3(0)), VARPTR(SprAyu3(0))
  DQBput 2, CurX * 17 + 29, CurY * 17 + 96, VARSEG(SprAyu3(0)), VARPTR(SprAyu3(0))
  GET (CurX * 17 + 29, CurY * 17 + 96)-(CurX * 17 + 44, CurY * 17 + 111), SprAyu3
  q1 = 0: q1$ = ""
  DEF SEG = VARSEG(SprAyu3(0))
  DO
    q2 = PEEK(VARPTR(SprAyu3(0)) + q1)
    q1$ = q1$ + CHR$(q2)
    q1 = q1 + 1
  LOOP UNTIL q1 = 260
  q1 = 0
  Apuntador = (CurY * 9 + CurX + SprIndex1) * 260 + 1
  SEEK #2, Apuntador
  Borrado$ = SPACE$(260)
  GET #2, , Borrado$
  BorradIn = Apuntador
  SEEK #2, Apuntador
  PUT #2, , q1$
END SUB

SUB QBinsSpr5
  DQBput VIDEO, CurX * 17 + 29, CurY * 17 + 96, VARSEG(SprAyu5(0)), VARPTR(SprAyu5(0))
  DQBput 2, CurX * 17 + 29, CurY * 17 + 96, VARSEG(SprAyu5(0)), VARPTR(SprAyu5(0))
  GET (CurX * 17 + 29, CurY * 17 + 96)-(CurX * 17 + 44, CurY * 17 + 111), SprAyu5
  q1 = 0: q1$ = ""
  DEF SEG = VARSEG(SprAyu5(0))
  DO
    q2 = PEEK(VARPTR(SprAyu5(0)) + q1)
    q1$ = q1$ + CHR$(q2)
    q1 = q1 + 1
  LOOP UNTIL q1 = 260
  q1 = 0
  Apuntador = (CurY * 9 + CurX + SprIndex1) * 260 + 1
  SEEK #2, Apuntador
  Borrado$ = SPACE$(260)
  GET #2, , Borrado$
  BorradIn = Apuntador
  SEEK #2, Apuntador
  PUT #2, , q1$
END SUB

REM $DYNAMIC
SUB QBline (a$, B$, i)
  C$ = HexToBin$(a$)
  D$ = HexToBin$(B$)
  FOR j = 1 TO 8
    e$ = MID$(C$, j, 1) + MID$(D$, j, 1)
    SELECT CASE e$
      CASE "00": DQBpset CapaHex, XQ + j - 1, YQ + i - 1, Color00     '127
      CASE "01": DQBpset CapaHex, XQ + j - 1, YQ + i - 1, Color01     '87
      CASE "10": DQBpset CapaHex, XQ + j - 1, YQ + i - 1, Color10     '92
      CASE "11": DQBpset CapaHex, XQ + j - 1, YQ + i - 1, Color11     '4
    END SELECT
  NEXT j
END SUB

SUB QBloadPal (PalFile$)
  OPEN PalFile$ FOR BINARY AS #1
    GET #1, , PalDefault
  CLOSE #1
END SUB

REM $STATIC
SUB QBpegar





  Apuntador = CurY * 9 + CurX + SprIndex1
  CopiaN2 = Apuntador
  Apuntador = Apuntador * 260 + 1
  SEEK #2, Apuntador
  CopiaS2$ = SPACE$(260)
  GET #2, , CopiaS2$
 
  Apuntador = CopiaN1
  Apuntador = Apuntador * 260 + 1
  SEEK #2, Apuntador
  PUT #2, , CopiaS2$

  Apuntador = CopiaN2
  Apuntador = Apuntador * 260 + 1
  SEEK #2, Apuntador
  PUT #2, , CopiaS1$

  UpdateWinBin = TRUE
  QBscr
END SUB

REM $DYNAMIC
SUB QBputBin
  Apuntador = (NumSpr2 + SprIndex1) * 260 + 1
  SEEK #2, Apuntador
  TileC = SPACE$(260)
  GET #2, , TileC
  DQBput 2, XQ, YQ, VARSEG(TileC), SADD(TileC)
END SUB

SUB QBputHex
  Apuntador = NumSpr1 * 62 + 1
  SEEK #1, Apuntador
  TileC = SPACE$(62)
  GET #1, , TileC
  TileC = MID$(TileC, 11, 32)
  QBshowTileC
END SUB

SUB QBrefreshTxt
  LOCATE 1, 1
  PRINT " PROGRAMA DE UTILIDAD - VERSION 1.1"
  PRINT "  Este programa permite hacer un"
  PRINT " archivo binario cuyo contenido"
  PRINT " es el de Sprites de 16x16 pixeles."
  PRINT
  IF CurrentMode = 0 THEN PRINT " Modo: Obtenci¢n"
  IF CurrentMode = 1 THEN PRINT " Modo: Grabaci¢n"
  IF CurrentMode = 2 THEN PRINT " Modo: Edici¢n  "
  PRINT "Coord X:"; CurX
  PRINT "Coord Y:"; CurY
  IF CurrentMode = 0 THEN PRINT "Spr N§:"; CurY * 32 + CurX
  IF CurrentMode = 1 THEN PRINT "Spr N§:"; CurY * 9 + CurX + SprIndex1
  PRINT "Fuente actual:"; Arch1$
END SUB

REM $STATIC
SUB QBrestore
  SEEK #2, BorradIn
  PUT #2, , Borrado$
  UpdateWinBin = TRUE
  QBscr
END SUB

REM $DYNAMIC
SUB QBsaveSpr16
  GET (4, 87)-(19, 102), SprAyu1
  q1 = 0: q1$ = ""
  DEF SEG = VARSEG(SprAyu1(0))
  DO
    q2 = PEEK(VARPTR(SprAyu1(0)) + q1)
    q1$ = q1$ + CHR$(q2)
    q1 = q1 + 1
  LOOP UNTIL q1 = 260
  q1 = 0
  Apuntador = (CurY * 9 + CurX + SprIndex1) * 260 + 1
  SEEK #2, Apuntador
  Borrado$ = SPACE$(260)
  GET #2, , Borrado$
  BorradIn = Apuntador
  SEEK #2, Apuntador
  PUT #2, , q1$
  DQBput VIDEO, CurX * 17 + 29, CurY * 17 + 96, VARSEG(SprAyu1(0)), VARPTR(SprAyu1(0))
  DQBput 2, CurX * 17 + 29, CurY * 17 + 96, VARSEG(SprAyu1(0)), VARPTR(SprAyu1(0))
END SUB

REM $STATIC
SUB QBscanMap
  Apuntador = (MY + MapIndex1) MOD 32
  Apuntador = Apuntador * 124 + 23808 + 1
  SEEK #1, Apuntador
  MedLin1$ = SPACE$(62)
  MedLin2$ = SPACE$(62)
  GET #1, , MedLin1$
  GET #1, , MedLin2$
  MedLin1$ = MID$(MedLin1$, 11, 32)
  MedLin2$ = MID$(MedLin2$, 11, 32)
  TodaLin$ = MedLin1$ + MedLin2$
  FOR j = 1 TO 32
    a$ = MID$(TodaLin$, j * 2 - 1, 2)
    NumSpr1 = HexToDec(a$)
    IF NumSpr1 < 128 THEN NumSpr1 = NumSpr1 + 256
    XQ = j * 8 + 53
    YQ = MY * 8 + 5
    QBputHex
  NEXT j
END SUB

REM $DYNAMIC
SUB QBscr
  IF CurrentMode = 0 THEN WinSetOfTiles
  IF CurrentMode = 1 THEN WinSetOfSpr16
  WinBuffer
  QBshowCursor
  QBrefreshTxt
  DQBwait 2
END SUB

REM $STATIC
SUB QBseeMapDemo
  QBshowMapDemo
  DO
    ink2$ = INKEY$
    IF ink2$ = CHR$(0) + "H" AND MapIndex1 = 18 THEN MapIndex1 = 0: UpdateMapHex = TRUE: QBshowMapDemo: ink2$ = ""
    IF ink2$ = CHR$(0) + "P" AND MapIndex1 = 0 THEN MapIndex1 = 18: UpdateMapHex = TRUE: QBshowMapDemo: ink2$ = ""
  LOOP UNTIL ink2$ <> ""
END SUB

REM $DYNAMIC
SUB QBshowCursor
  SELECT CASE CurrentMode
    CASE 0
      LINE (CurX * 9 + 29, CurY * 9 + 89)-(CurX * 9 + 38, CurY * 9 + 98), 23, B
    CASE 1
      LINE (CurX * 17 + 28, CurY * 17 + 95)-(CurX * 17 + 45, CurY * 17 + 112), 23, B
    CASE 2
      DQBput VIDEO, CurX, CurY, VARSEG(SprAyu2(0)), VARPTR(SprAyu2(0))
  END SELECT
END SUB

REM $STATIC
SUB QBshowMapDemo
  CapaHex = 3
  x = 58: y = 2
  IF UpdateMapHex THEN
    LOCATE 10, 1: PRINT "Leyendo archivo fuente..."
    DQBboxf 3, x, y, x + 261, y + 197, 32
    DQBbox 3, x + 1, y + 1, x + 260, y + 196, 15
    MX = 0: MY = 0
    DO
      QBscanMap
      MY = MY + 1
      v = v + 1
    LOOP UNTIL v = 24
    LOCATE 10, 1: PRINT "                         "
    DQBcopyTransLayer 3, VIDEO
    UpdateMapHex = FALSE
  ELSE
    DQBcopyTransLayer 3, VIDEO
  END IF
END SUB

REM $DYNAMIC
SUB QBshowTileC
  FOR i = 1 TO 8
    a$ = MID$(TileC, i * 4 - 3, 2)
    B$ = MID$(TileC, i * 4 - 1, 2)
    QBline a$, B$, i
  NEXT i
END SUB

SUB WinBuffer
  CapaHex = VIDEO
  x = 1: y = 84
  'LINE (X, Y)-(X + 21, Y + 21), 0, BF
  LINE (x + 1, y + 1)-(x + 20, y + 20), 15, B
  IF Cuarto1 > -1 THEN NumSpr1 = Cuarto1: XQ = x + 3: YQ = y + 3: QBputHex
  IF Cuarto2 > -1 THEN NumSpr1 = Cuarto2: XQ = x + 11: YQ = y + 3: QBputHex
  IF Cuarto3 > -1 THEN NumSpr1 = Cuarto3: XQ = x + 3: YQ = y + 11: QBputHex
  IF Cuarto4 > -1 THEN NumSpr1 = Cuarto4: XQ = x + 11: YQ = y + 11: QBputHex
  IF Cuarto1 = -1 THEN LINE (x + 3, y + 3)-(x + 10, y + 10), 0, BF
  IF Cuarto2 = -1 THEN LINE (x + 11, y + 3)-(x + 18, y + 10), 0, BF
  IF Cuarto3 = -1 THEN LINE (x + 3, y + 11)-(x + 10, y + 18), 0, BF
  IF Cuarto4 = -1 THEN LINE (x + 11, y + 11)-(x + 18, y + 18), 0, BF
  y = y + 3
  LINE (x, y + 20)-(x + 13, y + 33), 0, BF
  LINE (x + 1, y + 21)-(x + 12, y + 32), 15, B
  IF SprAyu4(0) / 8 = 8 THEN PUT (x + 3, y + 23), SprAyu4, PSET ELSE GET (x + 3, y + 23)-(x + 10, y + 30), SprAyu4
  LINE (x, y + 48)-(x + 19, y + 67), 15, B
  PUT (x + 2, y + 50), SprAyu5, PSET
END SUB

SUB WinSetOfSpr16
  x = 26: y = 93
  IF UpdateWinBin THEN
    DQBboxf 2, x, y, x + 157, y + 106, 32
    DQBbox 2, x + 1, y + 1, x + 156, y + 105, 15
    NumSpr2 = 0: XQ = x + 3: YQ = y + 3
    DQBsetTransPut
    DO
      QBputBin
      NumSpr2 = NumSpr2 + 1
      XQ = XQ + 17: IF XQ = x + 156 THEN XQ = x + 3: YQ = YQ + 17
    LOOP UNTIL NumSpr2 = 54
    DQBsetSolidPut
    DQBcopyTransLayer 2, VIDEO
    UpdateWinBin = FALSE
  ELSE
    DQBcopyTransLayer 2, VIDEO
  END IF
END SUB

SUB WinSetOfTiles
  CapaHex = 1
  x = 27: y = 87
  IF UpdateWinHex THEN
    LOCATE 10, 1: PRINT "Leyendo archivo fuente..."
    DQBboxf 1, x, y, x + 292, y + 112, 32
    DQBbox 1, x + 1, y + 1, x + 291, y + 111, 15
    NumSpr1 = 0: XQ = x + 3: YQ = y + 3
    DO
      QBputHex
      NumSpr1 = NumSpr1 + 1
      XQ = XQ + 9: IF XQ = x + 291 THEN XQ = x + 3: YQ = YQ + 9
    LOOP UNTIL NumSpr1 = 384
    DQBcopyTransLayer 1, VIDEO
    UpdateWinHex = FALSE
    LOCATE 10, 1: PRINT "                         "
  ELSE
    DQBcopyTransLayer 1, VIDEO
  END IF
END SUB

