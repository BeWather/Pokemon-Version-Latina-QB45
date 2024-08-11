DECLARE SUB QBoldNew ()
DECLARE SUB QBputCursor (nc%)
DECLARE SUB EDcamDat (cm%)
DECLARE SUB QBputScr ()
DECLARE SUB EDreadFile (nz%, es%, x1%, y1%, x2%, y2%, re%, lu%, ma%, zo%, di%)
DECLARE SUB EDreadFile2 (nz%, es%, en%, mo%, x%, y%, pe%, di%, x1%, y1%, x2%, y2%, ra%, re%, rn%)
DEFINT A-Z

TYPE TipoCursor
  NX AS INTEGER
  NY AS INTEGER
  VX AS INTEGER
  VY AS INTEGER
  MX AS INTEGER
  MY AS INTEGER
END TYPE

DIM SHARED Cursor(6) AS TipoCursor
DIM SHARED NumZona, Ventana

Cursor(0).MX = 8: Cursor(0).MY = 9
Cursor(1).MX = 8: Cursor(1).MY = 19
Cursor(2).MX = 7: Cursor(2).MY = 9
Cursor(3).MX = 12: Cursor(3).MY = 9
Cursor(4).MX = 6: Cursor(4).MY = 9
Cursor(5).MX = 9: Cursor(5).MY = 0

WIDTH 80, 50

OPEN "D:\AMBIENTE.BIN" FOR BINARY AS #1

'QBoldNew
NumZona = 283
QBputScr

DO
  ink$ = INKEY$
  'IF ink$ = "|" THEN QBoldNew
  IF ink$ = "+" AND NumZona < 767 THEN NumZona = NumZona + 1: QBputScr
  IF ink$ = "+" AND NumZona = 767 THEN NumZona = 0: QBputScr
  IF ink$ = "-" AND NumZona > 0 THEN NumZona = NumZona - 1: QBputScr
  IF ink$ = "-" AND NumZona = 0 THEN NumZona = 767: QBputScr
  IF ink$ = "¨" THEN
    NumZona = NumZona + 10: IF NumZona > 767 THEN NumZona = NumZona - 768
    QBputScr
  END IF
  IF ink$ = "?" THEN
    NumZona = NumZona - 10: IF NumZona < 0 THEN NumZona = NumZona + 768
    QBputScr
  END IF
  IF ink$ = CHR$(0) + ";" AND Ventana <> 0 THEN Ventana = 0: CLS : QBputScr
  IF ink$ = CHR$(0) + "<" AND Ventana <> 1 THEN Ventana = 1: CLS : QBputScr
  IF ink$ = CHR$(0) + "=" AND Ventana <> 2 THEN Ventana = 2: CLS : QBputScr
  IF ink$ = CHR$(0) + ">" AND Ventana <> 3 THEN Ventana = 3: CLS : QBputScr
  IF ink$ = CHR$(0) + "?" AND Ventana <> 4 THEN Ventana = 4: CLS : QBputScr
  IF ink$ = CHR$(0) + "@" AND Ventana <> 5 THEN Ventana = 5: CLS : QBputScr
  IF ink$ = CHR$(0) + "H" AND Cursor(Ventana).NY > 0 THEN Cursor(Ventana).NY = Cursor(Ventana).NY - 1: QBputScr
  IF ink$ = CHR$(0) + "P" AND Cursor(Ventana).NY < Cursor(Ventana).MY THEN Cursor(Ventana).NY = Cursor(Ventana).NY + 1: QBputScr
  IF ink$ = CHR$(0) + "K" AND Cursor(Ventana).NX > 0 THEN Cursor(Ventana).NX = Cursor(Ventana).NX - 1: QBputScr
  IF ink$ = CHR$(0) + "M" AND Cursor(Ventana).NX < Cursor(Ventana).MX THEN Cursor(Ventana).NX = Cursor(Ventana).NX + 1: QBputScr
  IF ink$ = "]" THEN EDcamDat 1: QBputScr
  IF ink$ = "[" THEN EDcamDat -1: QBputScr
  IF ink$ = "}" THEN EDcamDat 10: QBputScr
  IF ink$ = "{" THEN EDcamDat -10: QBputScr
LOOP UNTIL ink$ = CHR$(27)

CLOSE
'SHELL "copy /y d:\ambiente.bin c:\newpoke1\archivos"

END

SUB EDcamDat (cm)
  SELECT CASE Ventana
    CASE 0: ap3& = 0
    CASE 1: ap3& = 90
    CASE 2: ap3& = 270
    CASE 3: ap3& = 350
    CASE 4: ap3& = 480
    CASE 5: ap3& = 550
  END SELECT
  ap1& = NumZona
  ap2& = Cursor(Ventana).NY * (Cursor(Ventana).MX + 1) + Cursor(Ventana).NX
  ap& = ap1& * 560 + ap2& + ap3& + 1
  a$ = " "
  GET #1, ap&, a$
  a = ASC(a$)
  a = a + cm
  IF a < 0 THEN a = a + 256
  IF a > 255 THEN a = a - 256
  a$ = CHR$(a)
  PUT #1, ap&, a$
END SUB

SUB EDreadFile (nz, es, x1, y1, x2, y2, re, lu, ma, zo, di)
  ap& = nz
  ap& = ap& * 560 + 1
  a$ = SPACE$(560)
  GET #1, ap&, a$
  SELECT CASE Ventana
    CASE 0
      x1 = ASC(MID$(a$, es * 9 + 1, 1))
      y1 = ASC(MID$(a$, es * 9 + 2, 1))
      x2 = ASC(MID$(a$, es * 9 + 3, 1))
      y2 = ASC(MID$(a$, es * 9 + 4, 1))
      re = ASC(MID$(a$, es * 9 + 5, 1))
      lu = ASC(MID$(a$, es * 9 + 6, 1))
      ma = ASC(MID$(a$, es * 9 + 7, 1))
      zo = ASC(MID$(a$, es * 9 + 8, 1)) + ABS(re - 1) * 256
      di = ASC(MID$(a$, es * 9 + 9, 1))
    CASE 1
      x1 = ASC(MID$(a$, es * 9 + 91, 1))
      y1 = ASC(MID$(a$, es * 9 + 92, 1))
      x2 = ASC(MID$(a$, es * 9 + 93, 1))
      y2 = ASC(MID$(a$, es * 9 + 94, 1))
      re = ASC(MID$(a$, es * 9 + 95, 1))
      lu = ASC(MID$(a$, es * 9 + 96, 1))
      ma = ASC(MID$(a$, es * 9 + 97, 1))
      zo = ASC(MID$(a$, es * 9 + 98, 1)) + ABS(re - 1) * 256
      di = ASC(MID$(a$, es * 9 + 99, 1))
    CASE 2
      x1 = ASC(MID$(a$, es * 8 + 271, 1))
      y1 = ASC(MID$(a$, es * 8 + 272, 1))
      x2 = ASC(MID$(a$, es * 8 + 273, 1))
      y2 = ASC(MID$(a$, es * 8 + 274, 1))
      re = ASC(MID$(a$, es * 8 + 275, 1))
      lu = ASC(MID$(a$, es * 8 + 276, 1))
      ma = ASC(MID$(a$, es * 8 + 277, 1))
      zo = ASC(MID$(a$, es * 8 + 278, 1))
    CASE 4
      x1 = ASC(MID$(a$, es * 7 + 481, 1))
      y1 = ASC(MID$(a$, es * 7 + 482, 1))
      x2 = ASC(MID$(a$, es * 7 + 483, 1))
      y2 = ASC(MID$(a$, es * 7 + 484, 1))
      re = ASC(MID$(a$, es * 7 + 485, 1))
      lu = ASC(MID$(a$, es * 7 + 486, 1))
      ma = ASC(MID$(a$, es * 7 + 487, 1))
    CASE 5
      es = ASC(MID$(a$, 551, 1))
      x1 = ASC(MID$(a$, 552, 1))
      y1 = ASC(MID$(a$, 553, 1))
      x2 = ASC(MID$(a$, 554, 1))
      y2 = ASC(MID$(a$, 555, 1))
      re = ASC(MID$(a$, 556, 1))
      lu = ASC(MID$(a$, 557, 1))
      ma = ASC(MID$(a$, 558, 1))
      zo = ASC(MID$(a$, 559, 1))
      di = ASC(MID$(a$, 560, 1))
  END SELECT
END SUB

SUB EDreadFile2 (nz, es, en, mo, x, y, pe, di, x1, y1, x2, y2, ra, re, rn)
  ap& = nz
  ap& = ap& * 560 + 1
  a$ = SPACE$(550)
  GET #1, ap&, a$
  SELECT CASE Ventana
    CASE 3
      en = ASC(MID$(a$, es * 13 + 351, 1))
      mo = ASC(MID$(a$, es * 13 + 352, 1))
      x = ASC(MID$(a$, es * 13 + 353, 1))
      y = ASC(MID$(a$, es * 13 + 354, 1))
      pe = ASC(MID$(a$, es * 13 + 355, 1))
      di = ASC(MID$(a$, es * 13 + 356, 1))
      x1 = ASC(MID$(a$, es * 13 + 357, 1))
      y1 = ASC(MID$(a$, es * 13 + 358, 1))
      x2 = ASC(MID$(a$, es * 13 + 359, 1))
      y2 = ASC(MID$(a$, es * 13 + 360, 1))
      ra = ASC(MID$(a$, es * 13 + 361, 1))
      re = ASC(MID$(a$, es * 13 + 362, 1))
      rn = ASC(MID$(a$, es * 13 + 363, 1))
  END SELECT
END SUB

SUB QBoldNew
  CLS
  OPEN "C:\NEWPOKE1\ARCHIVOS\AMBIENTE.BIN" FOR BINARY AS #2
  FOR i& = 0 TO 767
    'LOCATE 20, 5: PRINT "Convirtiendo:"; INT(i& * 100 / 767)
    LOCATE 20, 5: PRINT "Convirtiendo:"; i&
    a$ = SPACE$(550)
    GET #2, i& * 550 + 1, a$
    a$ = a$ + STRING$(10, 0)
    PUT #1, i& * 560 + 1, a$
  NEXT i&
  CLOSE #2
  QBputScr
END SUB

SUB QBputCursor (nc)





  LOCATE Cursor(nc).VY + 22, Cursor(nc).VX * 5 + 4
  PRINT " "
  LOCATE Cursor(nc).NY + 22, Cursor(nc).NX * 5 + 4
  PRINT ">"
  Cursor(nc).VX = Cursor(nc).NX
  Cursor(nc).VY = Cursor(nc).NY

END SUB

SUB QBputScr
  SELECT CASE Ventana
    CASE 0
      LOCATE 18, 10: PRINT "ESCALERAS"
      LOCATE 20, 5: PRINT "XOr  YOr  XDe  YDe  Reg  Lug  Map  Zon  Dir"
      FOR i = 0 TO 9
        LOCATE i + 22, 5
        Escalera = i
        EDreadFile NumZona, Escalera, x1, y1, x2, y2, Reg, Lug, Map, Zon, Dir
        PRINT USING "###  ###  ###  ###  ###  ###  ###  ###  ###"; x1; y1; x2; y2; Reg; Lug; Map; Zon; Dir
      NEXT i
    CASE 1
      LOCATE 18, 10: PRINT "SALIDAS"
      LOCATE 20, 5: PRINT "XOr  YOr  XDe  YDe  Reg  Lug  Map  Zon  Dir"
      FOR i = 0 TO 19
        LOCATE i + 22, 5
        Salida = i
        EDreadFile NumZona, Salida, x1, y1, x2, y2, Reg, Lug, Map, Zon, Dir
        PRINT USING "###  ###  ###  ###  ###  ###  ###  ###  ###"; x1; y1; x2; y2; Reg; Lug; Map; Zon; Dir
      NEXT i
    CASE 2
      LOCATE 18, 10: PRINT "CARTELES"
      LOCATE 20, 5: PRINT "  X    Y  Dir  Rma  Rme  Rng  Ani  Dat"
      FOR i = 0 TO 9
        LOCATE i + 22, 5
        Cartel = i
        EDreadFile NumZona, Cartel, x1, y1, x2, y2, Reg, Lug, Map, Zon, Dir
        PRINT USING "###  ###  ###  ###  ###  ###  ###  ###"; x1; y1; x2; y2; Reg; Lug; Map; Zon
      NEXT i
    CASE 3
      LOCATE 18, 10: PRINT "PERSONAS"
      LOCATE 20, 5: PRINT "Ena  Mov    X    Y  Per  Dir   x1   y1   x2   y2  Rma  Rme  Rng"
      FOR i = 0 TO 9
        LOCATE i + 22, 5
        Persona = i
        EDreadFile2 NumZona, Persona, Ena, Mov, x, y, Per, Dir, x1, y1, x2, y2, Rma, Rme, Rng
        PRINT USING "###  ###  ###  ###  ###  ###  ###  ###  ###  ###  ###  ###  ###"; Ena; Mov; x; y; Per; Dir; x1; y1; x2; y2; Rma; Rme; Rng
      NEXT i
    CASE 4
      LOCATE 18, 10: PRINT "OBJETOS"
      LOCATE 20, 5: PRINT "Ena  Vis    X    Y  Ima  Obj   Ban"
      FOR i = 0 TO 9
        LOCATE i + 22, 5
        Objeto = i
        EDreadFile NumZona, Objeto, x1, y1, x2, y2, Reg, Lug, Map, Zon, Dir
        PRINT USING "###  ###  ###  ###  ###  ###  ###"; x1; y1; x2; y2; Reg; Lug; Map
      NEXT i
    CASE 5
      LOCATE 18, 10: PRINT "ESPECIFICACIONES"
      LOCATE 20, 5:  PRINT "Edif Extr Intr    X    Y  Reg  Lug Mapa Zona City"
      EDreadFile NumZona, Edif, Extr, Intr, x, y, Reg, Lug, Mapa, Zona, City
      LOCATE 22, 6: PRINT USING "###  ###  ###  ###  ###  ###  ###  ###  ###  ###"; Edif; Extr; Intr; x; y; Reg; Lug; Mapa; Zona; City
  END SELECT
  LOCATE 19, 10: PRINT "Zona:"; NumZona + 1
  QBputCursor Ventana
END SUB

