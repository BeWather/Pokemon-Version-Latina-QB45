DECLARE SUB QBsaveInAll ()
DECLARE SUB QBdelChar ()
DECLARE SUB QBmovCursor (QBd%)
DECLARE SUB QBputCursor ()
DECLARE SUB QBcambArea ()
DECLARE SUB QBputChar (QBc$)
DECLARE SUB QBsaveDesc ()
DECLARE SUB QBshowData ()
DECLARE SUB QBloadDesc ()

DEFINT A-Z

SCREEN 9

DIM SHARED Nombre1$, Nombre2$, Alto$, Peso$, Informe$
DIM SHARED NumPoke$, NumPkm, NX, NY, VX, VY
DIM SHARED Apuntador AS LONG
DIM SHARED Cursor(30), Area

OPEN "C:\NEWPOKE1\ARCHIVOS\DESC-PKM.BIN" FOR BINARY AS #1

LOCATE 1, 1: PRINT CHR$(219)
GET (0, 0)-(7, 13), Cursor
PUT (0, 0), Cursor

Area = 1: NumPkm = 1: NX = 10: VX = 10: NY = 10: VY = 10

QBloadDesc
QBshowData

DO
  ink$ = INKEY$
  IF ink$ = CHR$(0) + "H" THEN QBmovCursor 1: ink$ = ""
  IF ink$ = CHR$(0) + "P" THEN QBmovCursor 2: ink$ = ""
  IF ink$ = CHR$(0) + "K" THEN QBmovCursor 3: ink$ = ""
  IF ink$ = CHR$(0) + "M" THEN QBmovCursor 4: ink$ = ""
  IF ink$ = CHR$(9) THEN QBcambArea: ink$ = ""
  IF ink$ = CHR$(8) THEN QBdelChar: ink$ = ""
  IF ink$ = CHR$(0) + ";" AND NumPkm > 1 THEN QBsaveDesc: NumPkm = NumPkm - 1: QBloadDesc: QBshowData: ink$ = ""
  IF ink$ = CHR$(0) + "<" AND NumPkm < 255 THEN QBsaveDesc: NumPkm = NumPkm + 1: QBloadDesc: QBshowData: ink$ = ""
  IF ink$ = CHR$(0) + "=" THEN QBsaveInAll
  IF ink$ > CHR$(31) THEN QBputChar ink$
LOOP UNTIL ink$ = CHR$(27)
QBsaveDesc

CLOSE

END

SUB QBcambArea
  Area = Area + 1: IF Area = 6 THEN Area = 1
  SELECT CASE Area
    CASE 1: NX = 10: NY = 10: QBputCursor
    CASE 2: NX = 31: NY = 10: QBputCursor
    CASE 3: NX = 51: NY = 10: QBputCursor
    CASE 4: NX = 64: NY = 10: QBputCursor
    CASE 5: NX = 8: NY = 12: QBputCursor
  END SELECT
END SUB

SUB QBdelChar
  SELECT CASE Area
    CASE 1
      QBmovCursor 3
      MID$(Nombre1$, NX - 9, 1) = " "
      QBshowData
    CASE 2
      QBmovCursor 3
      MID$(Nombre2$, NX - 30, 1) = " "
      QBshowData
    CASE 3
      QBmovCursor 3
      MID$(Alto$, NX - 50, 1) = " "
      QBshowData
    CASE 4
      QBmovCursor 3
      MID$(Peso$, NX - 63, 1) = " "
      QBshowData
    CASE 5
      QBmovCursor 3
      MID$(Informe$, (NY - 12) * 16 + (NX - 8) + 1, 1) = " "
      QBshowData
  END SELECT
END SUB

SUB QBloadDesc
  Apuntador = NumPkm - 1
  Apuntador = Apuntador * 222 + 1
  SEEK #1, Apuntador
  PkmDesc$ = SPACE$(222)
  GET #1, , PkmDesc$
  Nombre1$ = MID$(PkmDesc$, 1, 10)
  Nombre2$ = MID$(PkmDesc$, 11, 10)
  Informe$ = MID$(PkmDesc$, 21, 192)
  Alto$ = MID$(PkmDesc$, 213, 5)
  Peso$ = MID$(PkmDesc$, 218, 5)
END SUB

SUB QBmovCursor (QBd)
  SELECT CASE Area
    CASE 1
      IF QBd = 3 AND NX > 10 THEN NX = NX - 1: QBputCursor: QBd = 0
      IF QBd = 4 AND NX < 19 THEN NX = NX + 1: QBputCursor: QBd = 0
      IF QBd = 3 AND NX = 10 THEN NX = 19: QBputCursor
      IF QBd = 4 AND NX = 19 THEN NX = 10: QBputCursor
    CASE 2
      IF QBd = 3 AND NX > 31 THEN NX = NX - 1: QBputCursor: QBd = 0
      IF QBd = 4 AND NX < 40 THEN NX = NX + 1: QBputCursor: QBd = 0
      IF QBd = 3 AND NX = 31 THEN NX = 40: QBputCursor
      IF QBd = 4 AND NX = 40 THEN NX = 31: QBputCursor
    CASE 3
      IF QBd = 3 AND NX > 51 THEN NX = NX - 1: QBputCursor: QBd = 0
      IF QBd = 4 AND NX < 55 THEN NX = NX + 1: QBputCursor: QBd = 0
      IF QBd = 3 AND NX = 51 THEN NX = 55: QBputCursor
      IF QBd = 4 AND NX = 55 THEN NX = 51: QBputCursor
    CASE 4
      IF QBd = 3 AND NX > 64 THEN NX = NX - 1: QBputCursor: QBd = 0
      IF QBd = 4 AND NX < 68 THEN NX = NX + 1: QBputCursor: QBd = 0
      IF QBd = 3 AND NX = 64 THEN NX = 68: QBputCursor
      IF QBd = 4 AND NX = 68 THEN NX = 64: QBputCursor
    CASE 5
      IF QBd = 1 AND NY > 12 THEN NY = NY - 1: QBputCursor: QBd = 0
      IF QBd = 2 AND NY < 23 THEN NY = NY + 1: QBputCursor: QBd = 0
      IF QBd = 1 AND NY = 12 THEN NY = 23: QBputCursor
      IF QBd = 2 AND NY = 23 THEN NY = 12: QBputCursor
      IF QBd = 3 AND NX > 8 THEN NX = NX - 1: QBputCursor: QBd = 0
      IF QBd = 4 AND NX < 23 THEN NX = NX + 1: QBputCursor: QBd = 0
      IF QBd = 3 AND NX = 8 THEN NX = 23: IF NY > 12 THEN NY = NY - 1: QBputCursor ELSE NY = 23: QBputCursor
      IF QBd = 4 AND NX = 23 THEN NX = 8: IF NY < 23 THEN NY = NY + 1: QBputCursor ELSE NY = 12: QBputCursor
  END SELECT
END SUB

SUB QBputChar (QBc$)
  SELECT CASE Area
    CASE 1
      MID$(Nombre1$, NX - 9, 1) = QBc$
      QBshowData
      QBmovCursor 4
    CASE 2
      MID$(Nombre2$, NX - 30, 1) = QBc$
      QBshowData
      QBmovCursor 4
    CASE 3
      MID$(Alto$, NX - 50, 1) = QBc$
      QBshowData
      QBmovCursor 4
    CASE 4
      MID$(Peso$, NX - 63, 1) = QBc$
      QBshowData
      QBmovCursor 4
    CASE 5
      MID$(Informe$, (NY - 12) * 16 + (NX - 8) + 1, 1) = QBc$
      QBshowData
      QBmovCursor 4
  END SELECT
END SUB

SUB QBputCursor
  PUT (VX * 8 - 8, VY * 14 - 14), Cursor
  PUT (NX * 8 - 8, NY * 14 - 14), Cursor
  VX = NX: VY = NY
END SUB

SUB QBsaveDesc
  Apuntador = NumPkm - 1
  Apuntador = Apuntador * 222 + 1
  SEEK #1, Apuntador
  PkmDesc$ = Nombre1$ + Nombre2$ + Informe$ + Alto$ + Peso$
  PUT #1, , PkmDesc$
END SUB

SUB QBsaveInAll
  FOR i = 0 TO 250
    Apuntador = i
    Apuntador = Apuntador * 222 + 1
    SEEK #1, Apuntador
    PkmDesc$ = Nombre1$ + Nombre2$ + Informe$ + Alto$ + Peso$
    PUT #1, , PkmDesc$
  NEXT i
END SUB

SUB QBshowData
  LOCATE 1, 1
  PRINT "Poke N§:"; NumPkm
  LOCATE 10, 1
  PRINT "Nombre1: "; Nombre1$; "  Nombre2: "; Nombre2$; "  Altura: "; Alto$; "  Peso: "; Peso$
  PRINT
  PRINT "Pag 1: "; MID$(Informe$, 1, 16)
  PRINT "       "; MID$(Informe$, 17, 16)
  PRINT "       "; MID$(Informe$, 33, 16)
  PRINT "Pag 2: "; MID$(Informe$, 49, 16)
  PRINT "       "; MID$(Informe$, 65, 16)
  PRINT "       "; MID$(Informe$, 81, 16)
  PRINT "Pag 3: "; MID$(Informe$, 97, 16)
  PRINT "       "; MID$(Informe$, 113, 16)
  PRINT "       "; MID$(Informe$, 129, 16)
  PRINT "Pag 4: "; MID$(Informe$, 145, 16)
  PRINT "       "; MID$(Informe$, 161, 16)
  PRINT "       "; MID$(Informe$, 177, 16)

  PUT (VX * 8 - 8, VY * 14 - 14), Cursor
END SUB

