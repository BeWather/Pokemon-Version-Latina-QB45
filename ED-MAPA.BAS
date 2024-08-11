DECLARE SUB QBlookLikeGame ()
DECLARE SUB QBunoMenos ()
DECLARE SUB QBunoMas ()
DECLARE FUNCTION AddWater% ()
DECLARE SUB QBsaveMap ()
DECLARE FUNCTION QBrepetir$ (NumOfChar%, Char%)
DECLARE SUB QBshowSprAyu ()
DECLARE FUNCTION QBget$ ()
DECLARE SUB QBputInMap (NumSprToPut%)
DECLARE SUB QBshowTable ()
DECLARE SUB QBenMapa ()
DECLARE SUB QBenTiles ()
DECLARE SUB QBputCursor ()
DECLARE SUB QBshowVar ()
DECLARE SUB QBrandomMap ()
DECLARE SUB QBinitProg ()
DECLARE SUB QBloadMap ()
DECLARE SUB QBclearAllMap (mi%, mf%)
DECLARE SUB QBshowMap ()
DECLARE SUB QBput (PutX%, PutY%)
DEFINT A-Z

'$INCLUDE: 'DIRECTQB.BI'

TYPE TipoMapa
  MX AS INTEGER
  MY AS INTEGER
  PX AS INTEGER
  PY AS INTEGER
END TYPE

DIM SHARED MaxMap
MaxMap = 199

SCREEN 13
IF DQBinit(0, 0, 0) THEN DQBclose: SCREEN 0: WIDTH 80, 25: PRINT DQBerror: END
DQBinitVGA

DIM SHARED Apuntador AS LONG
DIM SHARED NumSpr AS LONG
DIM SHARED NumMapa AS LONG
DIM SHARED Largo1 AS LONG
DIM SHARED Largo2 AS LONG
DIM SHARED Mapa1$
DIM SHARED Mapa2$
DIM SHARED PalDefault AS STRING * 768
DIM SHARED DirPal$
DIM SHARED DirSpr$
DIM SHARED DirMap$
DIM SHARED Archi1$
DIM SHARED Archi2$
DIM SHARED Archi3$
DIM SHARED MapaX
DIM SHARED MapaY
DIM SHARED TablaY
DIM SHARED PuntoX
DIM SHARED PuntoY
DIM SHARED PuntoX2
DIM SHARED PuntoY2
DIM SHARED Cursor(129)
DIM SHARED Ancho
DIM SHARED Alto
DIM SHARED Ancho2
DIM SHARED Alto2
DIM SHARED Win2
DIM SHARED SprAyu1$
DIM SHARED SprAyu2$
DIM SHARED SprAyu3$
DIM SHARED SprAyu4$
DIM SHARED SprAyu5$
DIM SHARED SprAyu6$
DIM SHARED SprAyu7$
DIM SHARED SprAyu8$
DIM SHARED SprAyu9$
DIM SHARED SA1
DIM SHARED SA2
DIM SHARED SA3
DIM SHARED SA4
DIM SHARED SA5
DIM SHARED SA6
DIM SHARED SA7
DIM SHARED SA8
DIM SHARED SA9
DIM SHARED TipoFlor
DIM SHARED FlorST
DIM SHARED FlorT(14, 3)
DIM SHARED TipoAgua
DIM SHARED AguaST
DIM SHARED AguaT(2, 3)
DIM SHARED Tempo1 AS LONG
DIM SHARED Tempo2 AS LONG
DIM SHARED NumBarra
DIM SHARED CoorsMap(MaxMap) AS TipoMapa

QBinitProg
'QBclearAllMap 100, 199
NumMapa = 133
QBloadMap
'QBrandomMap
QBshowMap
QBshowTable
QBshowVar
Win2 = TRUE: QBputCursor
Win2 = FALSE: QBputCursor
QBshowSprAyu
QBenMapa
QBsaveMap
DQBclose
SHELL "copy /y d:\mapas40.bin c:\newpoke1\archivos"

END

DATA    9,   10,   11,    9
DATA   12,   13,   14,   12
DATA   15,   16,   17,   15
DATA   18,   19,   20,   18
DATA 1434, 1435, 1434, 1435
DATA  900,  901,  902,  903
DATA  851,  852,  851,  852
DATA  853,  854,  853,  854
DATA 1852, 1853, 1852, 1853
DATA 1864, 1865, 1864, 1865
DATA 1873, 1874, 1873, 1874
DATA 1551, 1560, 1551, 1560
DATA 1552, 1561, 1552, 1561
DATA 1546, 1555, 1546, 1555
DATA 1547, 1556, 1547, 1556

DATA   45,   46,   47,   46
DATA   48,   49,   50,   49
DATA  833,  834,  835,  834

REM $DYNAMIC
FUNCTION AddWater
  AddWater = FALSE
 
 
  SELECT CASE NumSpr
    CASE 210, 833, 834, 835: NumSpr = AguaT(TipoAgua, AguaST)
    CASE 206 TO 209, 211 TO 217, 93, 104, 837, 838, 890 TO 929, 1314 TO 1371, 1828 TO 1839: AddWater = TRUE
    CASE 9: TipoFlor = 0: NumSpr = FlorT(TipoFlor, FlorST)
    CASE 12: TipoFlor = 1: NumSpr = FlorT(TipoFlor, FlorST)
    CASE 15: TipoFlor = 2: NumSpr = FlorT(TipoFlor, FlorST)
    CASE 18: TipoFlor = 3: NumSpr = FlorT(TipoFlor, FlorST)
    CASE 1434: TipoFlor = 4: NumSpr = FlorT(TipoFlor, FlorST)
    CASE 900: TipoFlor = 5: NumSpr = FlorT(TipoFlor, FlorST)
    CASE 851: TipoFlor = 6: NumSpr = FlorT(TipoFlor, FlorST)
    CASE 853: TipoFlor = 7: NumSpr = FlorT(TipoFlor, FlorST)
    CASE 1852: TipoFlor = 8: NumSpr = FlorT(TipoFlor, FlorST)
    CASE 1864: TipoFlor = 9: NumSpr = FlorT(TipoFlor, FlorST)
    CASE 1873: TipoFlor = 10: NumSpr = FlorT(TipoFlor, FlorST)
    CASE 1551: TipoFlor = 11: NumSpr = FlorT(TipoFlor, FlorST)
    CASE 1552: TipoFlor = 12: NumSpr = FlorT(TipoFlor, FlorST)
    CASE 1546: TipoFlor = 13: NumSpr = FlorT(TipoFlor, FlorST)
    CASE 1547: TipoFlor = 14: NumSpr = FlorT(TipoFlor, FlorST)
  END SELECT
END FUNCTION

SUB QBclearAllMap (mi, mf)
  Mapa1$ = QBrepetir(1024, 0)
  Mapa2$ = QBrepetir(1024, 0)
  FOR m = mi TO mf
    PUT #2, CLNG(m) * 2048 + 1, Mapa1$
    PUT #2, CLNG(m) * 2048 + 1025, Mapa2$
  NEXT m
END SUB

REM $STATIC
SUB QBenMapa
  DO
    ink$ = UCASE$(INKEY$)
    SELECT CASE ink$
      CASE CHR$(0) + "G"
        IF PuntoY = 0 AND MapaY > 0 THEN
          MapaY = MapaY - 1
          QBshowMap
          QBputCursor
          QBshowVar
        ELSEIF PuntoY > 0 THEN
          QBputCursor
          PuntoY = PuntoY - 1
          QBputCursor
          QBshowVar
        END IF
      CASE CHR$(0) + "O"
        IF PuntoY = Alto - 1 AND MapaY < 32 - Alto THEN
          MapaY = MapaY + 1
          QBshowMap
          QBputCursor
          QBshowVar
        ELSEIF PuntoY < Alto - 1 THEN
          QBputCursor
          PuntoY = PuntoY + 1
          QBputCursor
          QBshowVar
        END IF
      CASE CHR$(0) + "S"
        IF PuntoX = 0 AND MapaX > 0 THEN
          MapaX = MapaX - 1
          QBshowMap
          QBputCursor
          QBshowVar
        ELSEIF PuntoX > 0 THEN
          QBputCursor
          PuntoX = PuntoX - 1
          QBputCursor
          QBshowVar
        END IF
      CASE CHR$(0) + "Q"
        IF PuntoX = Ancho - 1 AND MapaX < 32 - Ancho THEN
          MapaX = MapaX + 1
          QBshowMap
          QBputCursor
          QBshowVar
        ELSEIF PuntoX < Ancho - 1 THEN
          QBputCursor
          PuntoX = PuntoX + 1
          QBputCursor
          QBshowVar
        END IF
      CASE CHR$(9): Win2 = TRUE: QBshowVar: QBenTiles: Win2 = FALSE: QBshowVar
      CASE " ": NumSprToPut = (TablaY + PuntoY2) * Ancho2 + PuntoX2: QBputInMap NumSprToPut: QBshowMap: QBputCursor
      CASE CHR$(13): NumSprToPut = NumBarra: QBputInMap NumSprToPut: QBshowMap: QBputCursor
      CASE "[": QBunoMenos
      CASE "]": QBunoMas
      CASE "1": NumSprToPut = SA1: QBputInMap NumSprToPut: QBshowMap: QBputCursor
      CASE "2": NumSprToPut = SA2: QBputInMap NumSprToPut: QBshowMap: QBputCursor
      CASE "3": NumSprToPut = SA3: QBputInMap NumSprToPut: QBshowMap: QBputCursor
      CASE "4": NumSprToPut = SA4: QBputInMap NumSprToPut: QBshowMap: QBputCursor
      CASE "5": NumSprToPut = SA5: QBputInMap NumSprToPut: QBshowMap: QBputCursor
      CASE "6": NumSprToPut = SA6: QBputInMap NumSprToPut: QBshowMap: QBputCursor
      CASE "7": NumSprToPut = SA7: QBputInMap NumSprToPut: QBshowMap: QBputCursor
      CASE "8": NumSprToPut = SA8: QBputInMap NumSprToPut: QBshowMap: QBputCursor
      CASE "9": NumSprToPut = SA9: QBputInMap NumSprToPut: QBshowMap: QBputCursor
      CASE "P": DQBsetPal PalDefault
      CASE "*": TipoAgua = TipoAgua + 1: IF TipoAgua = 3 THEN TipoAgua = 0
      CASE "+"
        IF NumMapa < MaxMap THEN
          QBsaveMap
          NumMapa = NumMapa + 1
          QBloadMap
          QBshowMap
          QBshowVar
          QBputCursor
        END IF
      CASE "-"
        IF NumMapa > 0 THEN
          QBsaveMap
          NumMapa = NumMapa - 1
          QBloadMap
          QBshowMap
          QBshowVar
          QBputCursor
        END IF
      CASE CHR$(0) + "C": QBlookLikeGame
    END SELECT
    IF Tempo1 > 60 THEN
      FlorST = FlorST + 1: IF FlorST = 4 THEN FlorST = 0
      AguaST = AguaST + 1: IF AguaST = 4 THEN AguaST = 0
      QBshowMap
      QBputCursor
      Tempo1 = 0
    END IF
    Tempo1 = Tempo1 + 1
  LOOP UNTIL ink$ = CHR$(27)
END SUB

SUB QBenTiles
  DO
    ink$ = UCASE$(INKEY$)
    SELECT CASE ink$
      CASE CHR$(0) + "G"
        IF PuntoY2 = 0 AND TablaY > 0 THEN
          TablaY = TablaY - 1
          QBshowTable
          QBputCursor
          QBshowVar
        ELSEIF PuntoY2 > 0 THEN
          QBputCursor
          PuntoY2 = PuntoY2 - 1
          QBputCursor
          QBshowVar
        END IF
      CASE CHR$(0) + "O"
        IF PuntoY2 = Alto - 1 AND TablaY < (1880 - Alto2 * Ancho2) / Ancho2 THEN
          TablaY = TablaY + 1
          QBshowTable
          QBputCursor
          QBshowVar
        ELSEIF PuntoY2 < Alto - 1 THEN
          QBputCursor
          PuntoY2 = PuntoY2 + 1
          QBputCursor
          QBshowVar
        END IF
      CASE CHR$(0) + "S"
        IF PuntoX2 > 0 THEN
          QBputCursor
          PuntoX2 = PuntoX2 - 1
          QBputCursor
          QBshowVar
        END IF
      CASE CHR$(0) + "Q"
        IF PuntoX2 < Ancho - 1 THEN
          QBputCursor
          PuntoX2 = PuntoX2 + 1
          QBputCursor
          QBshowVar
        END IF
      CASE CHR$(0) + "I"
        TablaY = TablaY - Alto: IF TablaY < 0 THEN TablaY = 0
        UpdateWinBin = TRUE
        QBshowTable
        QBputCursor
        QBshowVar
      CASE CHR$(0) + "R"
        TablaY = TablaY + Alto: IF TablaY > 227 - Alto THEN TablaY = 227 - Alto
        UpdateWinBin = TRUE
        QBshowTable
        QBputCursor
        QBshowVar
      CASE "1": SprAyu1$ = QBget: QBshowSprAyu: SA1 = NumSpr
      CASE "2": SprAyu2$ = QBget: QBshowSprAyu: SA2 = NumSpr
      CASE "3": SprAyu3$ = QBget: QBshowSprAyu: SA3 = NumSpr
      CASE "4": SprAyu4$ = QBget: QBshowSprAyu: SA4 = NumSpr
      CASE "5": SprAyu5$ = QBget: QBshowSprAyu: SA5 = NumSpr
      CASE "6": SprAyu6$ = QBget: QBshowSprAyu: SA6 = NumSpr
      CASE "7": SprAyu7$ = QBget: QBshowSprAyu: SA7 = NumSpr
      CASE "8": SprAyu8$ = QBget: QBshowSprAyu: SA8 = NumSpr
      CASE "9": SprAyu9$ = QBget: QBshowSprAyu: SA9 = NumSpr
      CASE "P": DQBsetPal PalDefault
    END SELECT
  LOOP UNTIL ink$ = CHR$(9)
END SUB

FUNCTION QBget$
  QBget$ = SPACE$(260)
  NumSpr = (TablaY + PuntoY2) * Ancho2 + PuntoX2
  Apuntador = NumSpr * 260 + 1
  SEEK #1, Apuntador
  GET 1, , QBget$
END FUNCTION

REM $DYNAMIC
SUB QBinitProg
  Archi1$ = "ESPECIAL.PAL"
  Archi2$ = "SPRITE16.BIN"
  Archi3$ = "MAPAS40.BIN"
  NumMapa = 0
  CurX = 5
  CurY = 71
  Ancho = 9
  Alto = 7
  Ancho2 = 9
  Alto2 = 7
  FOR i = 0 TO 14
    FOR j = 0 TO 3
      READ s
      FlorT(i, j) = s
    NEXT j
  NEXT i
  FOR i = 0 TO 2
    FOR j = 0 TO 3
      READ s
      AguaT(i, j) = s
    NEXT j
  NEXT i

  DirPal$ = "": DirSpr$ = "D:\": DirMap$ = "D:\"
  OPEN DirPal$ + Archi1$ FOR BINARY AS #1
    GET #1, , PalDefault
  CLOSE #1
  DQBsetPal PalDefault
  OPEN DirSpr$ + Archi2$ FOR BINARY AS #1
  OPEN DirMap$ + Archi3$ FOR BINARY AS #2
  DQBsetSolidPut
  LINE (0, 0)-(15, 15), 20, B
  GET (0, 0)-(15, 15), Cursor
  LINE (0, 0)-(15, 15), 0, B

  SprAyu1$ = QBget: SA1 = NumSpr
  SprAyu2$ = QBget: SA2 = NumSpr
  SprAyu3$ = QBget: SA3 = NumSpr
  SprAyu4$ = QBget: SA4 = NumSpr
  SprAyu5$ = QBget: SA5 = NumSpr
  SprAyu6$ = QBget: SA6 = NumSpr
  SprAyu7$ = QBget: SA7 = NumSpr
  SprAyu8$ = QBget: SA8 = NumSpr
  SprAyu9$ = QBget: SA9 = NumSpr
END SUB

SUB QBloadMap
  Apuntador = NumMapa * 2048 + 1
  Mapa1$ = SPACE$(1024)
  Mapa2$ = SPACE$(1024)
  SEEK #2, Apuntador
  GET #2, , Mapa1$
  GET #2, , Mapa2$
  MapaX = CoorsMap(NumMapa).MX
  MapaY = CoorsMap(NumMapa).MY
  QBputCursor
  PuntoX = CoorsMap(NumMapa).PX
  PuntoY = CoorsMap(NumMapa).PY
  QBputCursor
END SUB

REM $STATIC
SUB QBlookLikeGame
  QBputCursor
  PuntoY = 3: PuntoX = 4
  QBputCursor
  DO
    ink$ = UCASE$(INKEY$)
    SELECT CASE ink$
      CASE CHR$(0) + "G"
        IF MapaY > 0 THEN
          MapaY = MapaY - 1
          QBshowMap
          QBputCursor
          QBshowVar
        END IF
      CASE CHR$(0) + "O"
        IF MapaY < 32 - Alto THEN
          MapaY = MapaY + 1
          QBshowMap
          QBputCursor
          QBshowVar
        END IF
      CASE CHR$(0) + "S"
        IF MapaX > 0 THEN
          MapaX = MapaX - 1
          QBshowMap
          QBputCursor
          QBshowVar
        END IF
      CASE CHR$(0) + "Q"
        IF MapaX < 32 - Ancho THEN
          MapaX = MapaX + 1
          QBshowMap
          QBputCursor
          QBshowVar
        END IF
    END SELECT
    IF Tempo1 > 60 THEN
      FlorST = FlorST + 1: IF FlorST = 4 THEN FlorST = 0
      AguaST = AguaST + 1: IF AguaST = 4 THEN AguaST = 0
      QBshowMap
      QBputCursor
      Tempo1 = 0
    END IF
    Tempo1 = Tempo1 + 1
  LOOP UNTIL ink$ = CHR$(0) + "C"
END SUB

REM $DYNAMIC
SUB QBput (PutX, PutY)
  IF NOT Win2 THEN
    AW = AddWater
    IF AW THEN
      AW = NumSpr
      NumSpr = AguaT(TipoAgua, AguaST)
      'IF NumSpr = 0 THEN BEEP
      Apuntador = NumSpr * 260 + 1
      SEEK #1, Apuntador
      a$ = SPACE$(260)
      GET #1, , a$
      DQBput VIDEO, PutX, PutY, VARSEG(a$), SADD(a$)
      NumSpr = AW
      Apuntador = NumSpr * 260 + 1
      SEEK #1, Apuntador
      a$ = SPACE$(260)
      GET #1, , a$
      DQBsetTransPut
      DQBput VIDEO, PutX, PutY, VARSEG(a$), SADD(a$)
      DQBsetSolidPut
    ELSE
      Apuntador = NumSpr * 260 + 1
      SEEK #1, Apuntador
      a$ = SPACE$(260)
      GET #1, , a$
      DQBput VIDEO, PutX, PutY, VARSEG(a$), SADD(a$)
    END IF
  END IF
  IF Win2 THEN
    Apuntador = NumSpr * 260 + 1
    SEEK #1, Apuntador
    a$ = SPACE$(260)
    GET #1, , a$
    DQBput VIDEO, PutX, PutY, VARSEG(a$), SADD(a$)
  END IF
END SUB

REM $STATIC
SUB QBputCursor
  IF NOT Win2 THEN PUT (5 + PuntoX * 16, 71 + PuntoY * 16), Cursor ELSE PUT (10 + Ancho * 16 + PuntoX2 * 16, 71 + PuntoY2 * 16), Cursor
END SUB

SUB QBputInMap (NumSprToPut)
  ByteMenor = NumSprToPut MOD 256
  ByteMayor = (NumSprToPut - ByteMenor) / 256
  BMn$ = CHR$(ByteMenor)
  BMy$ = CHR$(ByteMayor)
  MID$(Mapa1$, (MapaY + PuntoY) * 32 + MapaX + PuntoX + 1, 1) = BMy$
  MID$(Mapa2$, (MapaY + PuntoY) * 32 + MapaX + PuntoX + 1, 1) = BMn$
  NumBarra = NumSprToPut
END SUB

SUB QBrandomMap
  c = 0
  Mapa1$ = ""
  Mapa2$ = ""
  DO
    p = INT(RND(1) * 254)
    Mapa2$ = Mapa2$ + CHR$(p)
    c = c + 1
    Mapa1$ = Mapa1$ + CHR$(0)
  LOOP UNTIL c = 1024
END SUB

FUNCTION QBrepetir$ (NumOfChar, Char)
  QBrep$ = ""
  FOR c = 1 TO NumOfChar
    QBrep$ = QBrep$ + CHR$(Char)
  NEXT c
  QBrepetir$ = QBrep$
END FUNCTION

SUB QBsaveMap
  Apuntador = NumMapa * 2048 + 1
  SEEK #2, Apuntador
  PUT #2, , Mapa1$
  PUT #2, , Mapa2$
  CoorsMap(NumMapa).MX = MapaX
  CoorsMap(NumMapa).MY = MapaY
  CoorsMap(NumMapa).PX = PuntoX
  CoorsMap(NumMapa).PY = PuntoY
END SUB

REM $DYNAMIC
SUB QBshowMap
  x1 = 5: y1 = 71
  y2 = 0
  LINE (x1 - 1, y1 - 1)-(x1 + Ancho * 16, y1 + Alto * 16), 15, B
  DO
    x2 = 0
    DO
      Largo1 = ASC(MID$(Mapa1$, (MapaY + y2) * 32 + MapaX + x2 + 1, 1))
      Largo2 = ASC(MID$(Mapa2$, (MapaY + y2) * 32 + MapaX + x2 + 1, 1))
      NumSpr = Largo1 * 256 + Largo2
      QBput x1 + x2 * 16, y1 + y2 * 16
      x2 = x2 + 1
    LOOP UNTIL x2 = Ancho
    y2 = y2 + 1
  LOOP UNTIL y2 = Alto
END SUB

REM $STATIC
SUB QBshowSprAyu
  DQBput VIDEO, 130, 16, VARSEG(SprAyu1$), SADD(SprAyu1$)
  DQBput VIDEO, 150, 16, VARSEG(SprAyu2$), SADD(SprAyu2$)
  DQBput VIDEO, 170, 16, VARSEG(SprAyu3$), SADD(SprAyu3$)
  DQBput VIDEO, 190, 16, VARSEG(SprAyu4$), SADD(SprAyu4$)
  DQBput VIDEO, 210, 16, VARSEG(SprAyu5$), SADD(SprAyu5$)
  DQBput VIDEO, 230, 16, VARSEG(SprAyu6$), SADD(SprAyu6$)
  DQBput VIDEO, 250, 16, VARSEG(SprAyu7$), SADD(SprAyu7$)
  DQBput VIDEO, 270, 16, VARSEG(SprAyu8$), SADD(SprAyu8$)
  DQBput VIDEO, 290, 16, VARSEG(SprAyu9$), SADD(SprAyu9$)
  LOCATE 2, 18: PRINT "1 2  3 4  5 6  7 8  9"
END SUB

SUB QBshowTable
  x1 = 10 + Ancho * 16: y1 = 71
  y2 = 0
  LINE (x1 - 1, y1 - 1)-(x1 + Ancho2 * 16, y1 + Alto2 * 16), 15, B
  DO
    x2 = 0
    DO
      NumSpr = (TablaY + y2) * Ancho + x2
      QBput x1 + x2 * 16, y1 + y2 * 16
      x2 = x2 + 1
    LOOP UNTIL x2 = Ancho
    y2 = y2 + 1
  LOOP UNTIL y2 = Alto
END SUB

SUB QBshowVar
  LOCATE 1, 1
  PRINT "Programa de utilidad - Version 1.0"
  PRINT "Mapa N§:"; NumMapa
  IF NOT Win2 THEN
    PRINT "Coord X:"; MapaX + PuntoX
    PRINT "Coord Y:"; MapaY + PuntoY
    PRINT "Ventana: Mapa"
  ELSE
    PRINT "               "
    PRINT "Spr N§:"; (TablaY + PuntoY2) * Ancho2 + PuntoX2; "  "
    PRINT "Ventana: Tiles"
  END IF
  PRINT
  PRINT
  PRINT "Mapa:              Sprites:"
END SUB

SUB QBunoMas
  ByteMayor = ASC(MID$(Mapa1$, (MapaY + PuntoY) * 32 + MapaX + PuntoX + 1, 1))
  ByteMenor = ASC(MID$(Mapa2$, (MapaY + PuntoY) * 32 + MapaX + PuntoX + 1, 1))
  ByteTotal = ByteMayor * 256 + ByteMenor + 1
  IF ByteTotal = 1530 THEN ByteTotal = 0
  QBputInMap ByteTotal
  QBshowMap
  QBputCursor
END SUB

SUB QBunoMenos
  ByteMayor = ASC(MID$(Mapa1$, (MapaY + PuntoY) * 32 + MapaX + PuntoX + 1, 1))
  ByteMenor = ASC(MID$(Mapa2$, (MapaY + PuntoY) * 32 + MapaX + PuntoX + 1, 1))
  ByteTotal = ByteMayor * 256 + ByteMenor - 1
  IF ByteTotal = -1 THEN ByteTotal = 1529
  QBputInMap ByteTotal
  QBshowMap
  QBputCursor
END SUB

