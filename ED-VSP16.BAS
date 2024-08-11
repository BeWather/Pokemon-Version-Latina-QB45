DECLARE SUB QBputOrGet ()
DECLARE SUB QBeditSpr ()
DECLARE SUB QBchicoGrande ()
DECLARE SUB QBinitEditor ()
DECLARE SUB QBputSprQ ()
DECLARE SUB QBcopyLeft ()
DECLARE SUB QBnewHexFile ()
DECLARE SUB QBscr ()
DECLARE SUB QBputBfr ()
DECLARE SUB QBloadPrs ()
DECLARE SUB QBsavePrs ()
DECLARE SUB QBloadPal (PalFile$)
DECLARE SUB QBshowTileC ()
DECLARE SUB QBline (a$, B$, i%)
DECLARE FUNCTION HexToBin$ (q$)
DEFINT A-Z

'$INCLUDE: 'DIRECTQB.BI'

SCREEN 13
IF DQBinit(0, 0, 0) THEN DQBclose: SCREEN 0: WIDTH 80, 25: PRINT DQBerror: END
DQBinitVGA

DIM SHARED Direc1$, Direc2$
DIM SHARED Arch1$
DIM SHARED Apuntador
DIM SHARED NumSpr
DIM SHARED TileC AS STRING * 32
DIM SHARED cx, cy, FlipHor, FlipVer, Transpa, sx1, sy1
Transpa = -1

DIM SHARED Obj1((16 * 16 / 2 + 2) * 16 * 1 - 1)       '4160
DIM SHARED Obj2((16 * 16 / 2 + 2) * 1 * 5 - 1)
DIM SHARED SprAyu1(129)
DIM SHARED SprAyu2(129)

DIM SHARED SprEdi1(129)
DIM SHARED SprEdi2(129)

DIM SHARED PalDefault AS STRING * 768
QBloadPal "ESPECIAL.PAL"
DQBsetPal PalDefault

DIM SHARED NumPrs AS LONG
DIM SHARED Point1 AS LONG
DIM SHARED Arch2$
DIM SHARED NumShape
DIM SHARED MaxPrs
MaxPrs = 15

DIM SHARED UnoDeTres

Arch1$ = "POKE00.HEX"
Arch2$ = "VARIOS16.BIN"

Direc1$ = "C:\GMB\STUFF\": Direc2$ = "D:\"

OPEN Direc1$ + Arch1$ FOR BINARY AS #1
OPEN Direc2$ + Arch2$ FOR BINARY AS #2

CLS
FOR y = 0 TO 7
  FOR x = 0 TO 7
    READ p
    PSET (4 + x, 4 + y), p * 31
  NEXT x
NEXT y
GET (0, 0)-(15, 15), SprAyu2
CLS

QBloadPrs
QBscr

DO
  ink$ = INKEY$
  IF ink$ = "+" AND NumSpr < 380 THEN NumSpr = NumSpr + 4: QBscr
  IF ink$ = "/" AND NumSpr < 380 THEN NumSpr = NumSpr + 2: QBscr
  IF ink$ = "-" AND NumSpr > 0 THEN NumSpr = NumSpr - 4: QBscr
  IF ink$ = ">" THEN QBcopyLeft: QBputSprQ
  IF UCASE$(ink$) = "T" THEN Transpa = NOT Transpa: QBscr
  IF UCASE$(ink$) = "L" THEN QBnewHexFile
  IF UCASE$(ink$) = "P" THEN DQBsetPal PalDefault
  IF UCASE$(ink$) = "H" THEN
    IF FlipHor = 0 THEN FlipHor = 1 ELSE FlipHor = 0
    QBscr
  END IF
  IF UCASE$(ink$) = "V" THEN
    IF FlipVer = 0 THEN FlipVer = 1 ELSE FlipVer = 0
    QBscr
  END IF
  IF ink$ = "[" AND NumPrs > 0 THEN NumPrs = NumPrs - 1: QBloadPrs: QBscr
  IF ink$ = "]" AND NumPrs < MaxPrs THEN NumPrs = NumPrs + 1: QBloadPrs: QBscr
  IF UCASE$(ink$) = "S" THEN QBsavePrs
  IF ink$ = "@" THEN GET (100, 130)-(115, 145), SprEdi2
  IF ink$ = "#" THEN QBeditSpr
  IF ink$ = CHR$(13) THEN QBputOrGet
  'IF ink$ = "0" THEN NumPrs = 100: QBloadPrs: QBscr
  'IF ink$ = "1" THEN NumPrs = 10: QBloadPrs: QBscr
  'IF ink$ = "2" THEN NumPrs = 20: QBloadPrs: QBscr
  'IF ink$ = "3" THEN NumPrs = 30: QBloadPrs: QBscr
  'IF ink$ = "4" THEN NumPrs = 40: QBloadPrs: QBscr
  'IF ink$ = "5" THEN NumPrs = 50: QBloadPrs: QBscr
  'IF ink$ = "6" THEN NumPrs = 60: QBloadPrs: QBscr
  'IF ink$ = "7" THEN NumPrs = 70: QBloadPrs: QBscr
  'IF ink$ = "8" THEN NumPrs = 80: QBloadPrs: QBscr
  'IF ink$ = "9" THEN NumPrs = 90: QBloadPrs: QBscr
  IF ink$ = "*" THEN NumSpr = 0: QBscr
LOOP UNTIL ink$ = CHR$(27)

CLOSE
DQBclose
SHELL "copy /y d:\varios16.bin c:\newpoke1\archivos"
END

DATA 0,0,0,1,0,0,0,0
DATA 0,0,1,1,1,0,0,0
DATA 0,1,1,1,1,1,0,0
DATA 1,1,1,1,1,1,1,0
DATA 0,1,1,1,1,1,0,0
DATA 0,0,1,1,1,0,0,0
DATA 0,0,0,1,0,0,0,0
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
SUB QBchicoGrande
  FOR y = 0 TO 15
    FOR x = 0 TO 15
      c1 = POINT(100 + x, 80 + y)
      LINE (x * 5 + 10, y * 5 + 80)-(x * 5 + 14, y * 5 + 84), c1, BF
    NEXT x
  NEXT y
END SUB

SUB QBcopyLeft
  FOR y = 0 TO 15
    FOR x = 0 TO 7
      c1 = POINT(50 + x, 130 + y)
      PSET (65 - x, 130 + y), c1
    NEXT x
  NEXT y
END SUB

SUB QBeditSpr
  QBinitEditor
  cxn = 5: cyn = 78
  PUT (cxn, cyn), SprAyu2
  DO
    ink2$ = INKEY$
    IF UCASE$(ink2$) = "O" THEN
      IF SprEdi2(0) / 8 = 16 THEN PUT (100, 80), SprEdi2, PSET ELSE SOUND 100, .1
      DO: LOOP UNTIL UCASE$(INKEY$) = "O"
      IF SprEdi1(0) / 8 = 16 THEN PUT (100, 80), SprEdi1, PSET ELSE SOUND 100, .1
    END IF
    IF ink2$ = CHR$(0) + "H" AND cyn > 78 THEN PUT (cxn, cyn), SprAyu2: cyn = cyn - 5: PUT (cxn, cyn), SprAyu2
    IF ink2$ = CHR$(0) + "P" AND cyn < 153 THEN PUT (cxn, cyn), SprAyu2: cyn = cyn + 5: PUT (cxn, cyn), SprAyu2
    IF ink2$ = CHR$(0) + "K" AND cxn > 5 THEN PUT (cxn, cyn), SprAyu2: cxn = cxn - 5: PUT (cxn, cyn), SprAyu2
    IF ink2$ = CHR$(0) + "M" AND cxn < 80 THEN PUT (cxn, cyn), SprAyu2: cxn = cxn + 5: PUT (cxn, cyn), SprAyu2
    IF ink2$ = "0" THEN
      PUT (cxn, cyn), SprAyu2
      PSET ((cxn - 5) / 5 + 100, (cyn - 78) / 5 + 80), 0
      GET (100, 80)-(115, 95), SprEdi1
      QBchicoGrande
      PUT (cxn, cyn), SprAyu2
    END IF
    IF ink2$ = "1" THEN
      PUT (cxn, cyn), SprAyu2
      PSET ((cxn - 5) / 5 + 100, (cyn - 78) / 5 + 80), 87
      GET (100, 80)-(115, 95), SprEdi1
      QBchicoGrande
      PUT (cxn, cyn), SprAyu2
    END IF
    IF ink2$ = "2" THEN
      PUT (cxn, cyn), SprAyu2
      PSET ((cxn - 5) / 5 + 100, (cyn - 78) / 5 + 80), 92
      GET (100, 80)-(115, 95), SprEdi1
      QBchicoGrande
      PUT (cxn, cyn), SprAyu2
    END IF
    IF ink2$ = "3" THEN
      PUT (cxn, cyn), SprAyu2
      PSET ((cxn - 5) / 5 + 100, (cyn - 78) / 5 + 80), 4
      GET (100, 80)-(115, 95), SprEdi1
      QBchicoGrande
      PUT (cxn, cyn), SprAyu2
    END IF
    IF ink2$ = "4" THEN
      PUT (cxn, cyn), SprAyu2
      PSET ((cxn - 5) / 5 + 100, (cyn - 78) / 5 + 80), 127
      GET (100, 80)-(115, 95), SprEdi1
      QBchicoGrande
      PUT (cxn, cyn), SprAyu2
    END IF
    IF ink2$ = "5" THEN
      PUT (cxn, cyn), SprAyu2
      PSET ((cxn - 5) / 5 + 100, (cyn - 78) / 5 + 80), 10
      GET (100, 80)-(115, 95), SprEdi1
      QBchicoGrande
      PUT (cxn, cyn), SprAyu2
    END IF
    IF UCASE$(ink2$) = "S" THEN
      PUT (200, 80), SprEdi1, PSET: PUT (cxn, cyn), SprAyu2
      FOR y = 0 TO 14: FOR x = 0 TO 15
        c1 = POINT(200 + x, 80 + y): PSET (100 + x, 81 + y), c1
      NEXT x, y
      FOR x = 0 TO 15
        c1 = POINT(200 + x, 95): PSET (100 + x, 80), c1
      NEXT x
      GET (100, 80)-(115, 95), SprEdi1: QBchicoGrande
      PUT (cxn, cyn), SprAyu2
    END IF
    IF UCASE$(ink2$) = "W" THEN
      PUT (200, 80), SprEdi1, PSET: PUT (cxn, cyn), SprAyu2
      FOR y = 0 TO 14: FOR x = 0 TO 15
        c1 = POINT(200 + x, 81 + y): PSET (100 + x, 80 + y), c1
      NEXT x, y
      FOR x = 0 TO 15
        c1 = POINT(200 + x, 80): PSET (100 + x, 95), c1
      NEXT x
      GET (100, 80)-(115, 95), SprEdi1: QBchicoGrande
      PUT (cxn, cyn), SprAyu2
    END IF
    IF UCASE$(ink2$) = "A" THEN
      PUT (200, 80), SprEdi1, PSET: PUT (cxn, cyn), SprAyu2
      FOR y = 0 TO 15: FOR x = 0 TO 14
        c1 = POINT(201 + x, 80 + y): PSET (100 + x, 80 + y), c1
      NEXT x, y
      FOR y = 0 TO 15
        c1 = POINT(200, 80 + y): PSET (115, 80 + y), c1
      NEXT y
      GET (100, 80)-(115, 95), SprEdi1: QBchicoGrande
      PUT (cxn, cyn), SprAyu2
    END IF
    IF UCASE$(ink2$) = "D" THEN
      PUT (200, 80), SprEdi1, PSET: PUT (cxn, cyn), SprAyu2
      FOR y = 0 TO 15: FOR x = 0 TO 14
        c1 = POINT(200 + x, 80 + y): PSET (101 + x, 80 + y), c1
      NEXT x, y
      FOR y = 0 TO 15
        c1 = POINT(215, 80 + y): PSET (100, 80 + y), c1
      NEXT y
      GET (100, 80)-(115, 95), SprEdi1: QBchicoGrande
      PUT (cxn, cyn), SprAyu2
    END IF
    IF UCASE$(ink2$) = "H" THEN
      PUT (200, 80), SprEdi1, PSET: PUT (cxn, cyn), SprAyu2: x2 = 0: y2 = 0
      FOR y1 = 0 TO 15: FOR x1 = 0 TO 15
        c1 = POINT(200 + x2, 80 + y2): PSET (115 - x1, 80 + y1), c1: x2 = x2 + 1
       NEXT x1
       y2 = y2 + 1: x2 = 0
      NEXT y1
      GET (100, 80)-(115, 95), SprEdi1: QBchicoGrande
      PUT (cxn, cyn), SprAyu2
    END IF
    IF UCASE$(ink2$) = "V" THEN
      PUT (200, 80), SprEdi1, PSET: PUT (cxn, cyn), SprAyu2: x2 = 0: y2 = 0
      FOR y1 = 0 TO 15: FOR x1 = 0 TO 15
        c1 = POINT(200 + x2, 80 + y2)
        PSET (100 + x1, 95 - y1), c1
        x2 = x2 + 1
       NEXT x1
       y2 = y2 + 1: x2 = 0
      NEXT y1
      GET (100, 80)-(115, 95), SprEdi1: QBchicoGrande
      PUT (cxn, cyn), SprAyu2
    END IF
    IF ink2$ = CHR$(13) THEN GET (100, 80)-(115, 95), SprEdi1: EXIT DO
    DQBwait 2
  LOOP UNTIL ink2$ = CHR$(27)
  IF ink2$ = CHR$(27) THEN GET (260, 80)-(275, 95), SprEdi1
  CLS : QBscr
END SUB

SUB QBinitEditor
  CLS
  LINE (9, 79)-(90, 160), 31, B
  LINE (99, 79)-(116, 96), 31, B
  LINE (259, 79)-(276, 96), 31, B
  LINE (199, 79)-(216, 96), 31, B
  LINE (229, 79)-(246, 96), 31, B
  IF SprEdi1(0) / 8 = 16 THEN PUT (200, 80), SprEdi1, PSET: PUT (100, 80), SprEdi1, PSET: PUT (260, 80), SprEdi1, PSET
  IF SprEdi2(0) / 8 = 16 THEN PUT (230, 80), SprEdi2, PSET
  QBchicoGrande
END SUB

REM $DYNAMIC
SUB QBline (a$, B$, i)
  c$ = HexToBin$(a$)
  d$ = HexToBin$(B$)
  FOR j = 1 TO 8
    e$ = MID$(c$, j, 1) + MID$(d$, j, 1)
    SELECT CASE e$
      CASE "00": PSET (cx + j - 1, cy + i - 1), 127
      CASE "01": PSET (cx + j - 1, cy + i - 1), 87
      CASE "10": PSET (cx + j - 1, cy + i - 1), 92
      CASE "11": PSET (cx + j - 1, cy + i - 1), 4
    END SELECT
  NEXT j
END SUB

REM $STATIC
SUB QBloadPal (PalFile$)
  OPEN PalFile$ FOR BINARY AS #1
    GET #1, , PalDefault
  CLOSE #1
END SUB

SUB QBloadPrs
  Point1 = NumPrs * 4160 + 1
  SEEK #2, Point1
  q1$ = SPACE$(4160)
  GET #2, , q1$
  q1 = 1
  DEF SEG = VARSEG(Obj1(0))
  DO
    q2 = ASC(MID$(q1$, q1, 1))
    POKE VARPTR(Obj1(0)) + q1 - 1, q2
    q1 = q1 + 1
  LOOP UNTIL q1 = 4161
END SUB

SUB QBnewHexFile
  PRINT
  INPUT "Ingrese el nuevo archivo: ", Arch1$
  CLOSE #1
  OPEN Direc1$ + Arch1$ FOR BINARY AS #1
  QBloadPrs
  CLS
  QBscr
END SUB

SUB QBputBfr
  Apuntador = NumSpr * 62 + 1
  SEEK #1, Apuntador:       a$ = SPACE$(62): GET #1, , a$: B$ = MID$(a$, 11, 32): TileC = B$: cx = 50: cy = 130: QBshowTileC
  SEEK #1, Apuntador + 62:  a$ = SPACE$(62): GET #1, , a$: B$ = MID$(a$, 11, 32): TileC = B$: cx = 58: cy = 130: QBshowTileC
  SEEK #1, Apuntador + 124: a$ = SPACE$(62): GET #1, , a$: B$ = MID$(a$, 11, 32): TileC = B$: cx = 50: cy = 138: QBshowTileC
  SEEK #1, Apuntador + 186: a$ = SPACE$(62): GET #1, , a$: B$ = MID$(a$, 11, 32): TileC = B$: cx = 58: cy = 138: QBshowTileC
  QBputSprQ
  FOR i = 0 TO 15
    LINE (i * 20, 150)-(i * 20 + 15, 165), 0, BF
    IF Obj1((16 * 16 / 2 + 2) * i * 1) / 8 = 16 AND Obj1((16 * 16 / 2 + 2) * i * 1 + 1) = 16 THEN PUT (i * 20, 150), Obj1((16 * 16 / 2 + 2) * i * 1), PSET
  NEXT i
  IF SprEdi1(0) / 8 = 16 THEN PUT (130, 130), SprEdi1, PSET
  IF SprEdi2(0) / 8 = 16 THEN PUT (160, 130), SprEdi2, PSET
END SUB

SUB QBputOrGet
  GET (UnoDeTres * 30 + 100, 130)-(UnoDeTres * 30 + 115, 145), SprAyu1: y1 = 0: GOSUB UpdateTiles
  DO
    ink2$ = INKEY$
    IF ink2$ = CHR$(0) + "H" AND UnoDeTres < 2 THEN PUT (y1 * 20, 170), SprAyu2: UnoDeTres = UnoDeTres + 1: GET (UnoDeTres * 30 + 100, 130)-(UnoDeTres * 30 + 115, 145), SprAyu1: GOSUB UpdateTiles
    IF ink2$ = CHR$(0) + "P" AND UnoDeTres > 0 THEN PUT (y1 * 20, 170), SprAyu2: UnoDeTres = UnoDeTres - 1: GET (UnoDeTres * 30 + 100, 130)-(UnoDeTres * 30 + 115, 145), SprAyu1: GOSUB UpdateTiles
    IF ink2$ = CHR$(0) + "K" AND y1 > 0 THEN PUT (y1 * 20, 170), SprAyu2: y1 = y1 - 1: GOSUB UpdateTiles
    IF ink2$ = CHR$(0) + "M" AND y1 < 15 THEN PUT (y1 * 20, 170), SprAyu2: y1 = y1 + 1: GOSUB UpdateTiles
    IF ink2$ = " " THEN
      LINE (y1 * 20, 150)-(y1 * 20 + 15, 165), 0, BF
      IF Obj1((16 * 16 / 2 + 2) * y1 * 1) / 8 = 16 AND Obj1((16 * 16 / 2 + 2) * y1 * 1 + 1) = 16 THEN PUT (y1 * 20, 150), Obj1((16 * 16 / 2 + 2) * y1 * 1), PSET
      GET (y1 * 20, 150)-(y1 * 20 + 15, 165), SprAyu1
      PUT (UnoDeTres * 30 + 100, 130), SprAyu1, PSET
      SELECT CASE UnoDeTres
        CASE 1: GET (UnoDeTres * 30 + 100, 130)-(UnoDeTres * 30 + 115, 145), SprEdi1
        CASE 2: GET (UnoDeTres * 30 + 100, 130)-(UnoDeTres * 30 + 115, 145), SprEdi2
      END SELECT
      PUT (y1 * 20, 150), SprAyu1, PSET
    END IF
    IF ink2$ = CHR$(13) THEN
      FOR i = 0 TO 15
        GET (i * 20, 150)-(i * 20 + 15, 165), Obj1((16 * 16 / 2 + 2) * i * 1)
      NEXT i
    END IF
  LOOP UNTIL ink2$ = CHR$(27)
  FOR i = 0 TO 15
    LINE (i * 20, 150)-(i * 20 + 15, 165), 0, BF
    IF Obj1((16 * 16 / 2 + 2) * i * 1) / 8 = 16 AND Obj1((16 * 16 / 2 + 2) * i * 1 + 1) = 16 THEN PUT (i * 20, 150), Obj1((16 * 16 / 2 + 2) * i * 1), PSET
  NEXT i
  PUT (y1 * 20, 170), SprAyu2
  EXIT SUB

UpdateTiles:
  FOR i = 0 TO 15
    LINE (i * 20, 150)-(i * 20 + 15, 165), 0, BF
    IF Obj1((16 * 16 / 2 + 2) * i * 1) / 8 = 16 AND Obj1((16 * 16 / 2 + 2) * i * 1 + 1) = 16 THEN PUT (i * 20, 150), Obj1((16 * 16 / 2 + 2) * i * 1), PSET
  NEXT i
  PUT (y1 * 20, 150), SprAyu1, PSET
  PUT (y1 * 20, 170), SprAyu2
  LOCATE 16, 1: PRINT "N§ de la Sprite Actual:"; UnoDeTres
  DQBwait 5
  RETURN

END SUB

SUB QBputSprQ
  SELECT CASE FlipVer * 2 + FlipHor
    CASE 0
      FOR y1 = 0 TO 15
        FOR x1 = 0 TO 15
          c1 = POINT(50 + x2, 130 + y2)
          IF c1 = 127 AND Transpa THEN c1 = 0
          PSET (100 + x1, 130 + y1), c1
          x2 = x2 + 1
        NEXT x1
        y2 = y2 + 1
        x2 = 0
      NEXT y1
    CASE 1
      FOR y1 = 0 TO 15
        FOR x1 = 0 TO 15
          c1 = POINT(65 - x2, 130 + y2)
          IF c1 = 127 AND Transpa THEN c1 = 0
          PSET (100 + x1, 130 + y1), c1
          x2 = x2 + 1
        NEXT x1
        y2 = y2 + 1
        x2 = 0
      NEXT y1
    CASE 2
      FOR y1 = 0 TO 15
        FOR x1 = 0 TO 15
          c1 = POINT(50 + x2, 145 - y2)
          IF c1 = 127 AND Transpa THEN c1 = 0
          PSET (100 + x1, 130 + y1), c1
          x2 = x2 + 1
        NEXT x1
        y2 = y2 + 1
        x2 = 0
      NEXT y1
    CASE 3
      FOR y1 = 0 TO 15
        FOR x1 = 0 TO 15
          c1 = POINT(65 - x2, 145 - y2)
          IF c1 = 127 AND Transpa THEN c1 = 0
          PSET (100 + x1, 130 + y1), c1
          x2 = x2 + 1
        NEXT x1
        y2 = y2 + 1
        x2 = 0
      NEXT y1
  END SELECT
END SUB

SUB QBsavePrs
  Point1 = NumPrs * 4160 + 1
  SEEK #2, Point1
  q1 = 1
  DEF SEG = VARSEG(Obj1(0))
  DO
    q2 = PEEK(VARPTR(Obj1(0)) + q1 - 1)
    q1$ = q1$ + CHR$(q2)
    q1 = q1 + 1
  LOOP UNTIL q1 = 4161
  PUT #2, , q1$
END SUB

SUB QBscr
  LOCATE 1, 1
  PRINT "      Programa de Utilidad    "
  PRINT
  PRINT "   Este programa perfecciona  "
  PRINT "  el archivo de las sprites   "
  PRINT "  de 16x16 pixeles            "
  PRINT
  PRINT
  PRINT
  PRINT
  PRINT "N§ de la Sprite del Cuadro:"; NumSpr / 4
  PRINT "Reflejo Horizontal: "; : IF FlipHor THEN PRINT "ON " ELSE PRINT "OFF"
  PRINT "Reflejo Vertical:   "; : IF FlipVer THEN PRINT "ON " ELSE PRINT "OFF"
  PRINT "Estado Transparente:"; : IF Transpa THEN PRINT "ON " ELSE PRINT "OFF"
  PRINT
  PRINT "N§ de Personaje Actual:"; NumPrs
  PRINT "N§ de la Sprite Actual:"; UnoDeTres
  QBputBfr
END SUB

REM $DYNAMIC
SUB QBshowTileC
  FOR i = 1 TO 8
    a$ = MID$(TileC, i * 4 - 3, 2)
    B$ = MID$(TileC, i * 4 - 1, 2)
    QBline a$, B$, i
  NEXT i
END SUB

