DECLARE FUNCTION Bit% (bitf%, bitn%)
DECLARE SUB QBputSpr (px%, py%, ps%, pe%)
DECLARE SUB QBshowTileData ()
DECLARE SUB QBshowBgndMaps ()
DECLARE FUNCTION Conver% (Linea$)
DECLARE SUB QBconvertir ()
DECLARE SUB QBerror (NumOfError%)
DECLARE SUB QBshowMapDemo ()
DECLARE SUB QBscanMap ()
DECLARE FUNCTION HexToDec% (q$)
DECLARE SUB QBrefreshTxt ()
DECLARE SUB QBshowCursor ()
DECLARE SUB QBscr ()
DECLARE SUB QBloadPal (PalFile$)
DECLARE SUB QBshowTileC ()
DECLARE SUB QBline (a$, B$, i%)
DECLARE FUNCTION HexToBin$ (q$)
DECLARE SUB QBputHex ()
DECLARE SUB QBhelp ()

DEFINT A-Z

DIM SHARED ArchIN$
DIM SHARED ArchOUT$
DIM SHARED ShowMap
DIM SHARED ShowSpr
DIM SHARED Tabla(4095)
DIM SHARED l1 AS LONG

CLS
IF COMMAND$ = "" THEN QBhelp: END
comm$ = LTRIM$(RTRIM$(COMMAND$))
IF comm$ = "/?" THEN QBhelp: END
IF INSTR(1, comm$, " -S") THEN ShowSpr = -1
IF INSTR(1, comm$, " -M") THEN ShowMap = -1
ps = INSTR(1, comm$, " ")
IF ps > 0 THEN arch$ = MID$(comm$, 1, ps - 1) ELSE arch$ = comm$
pp = INSTR(1, arch$, ".")
IF pp > 0 THEN arch$ = MID$(arch$, 1, pp - 1)
ArchIN$ = arch$ + ".HEX"
ArchOUT$ = arch$ + ".BIN"

QBconvertir

IF ShowMap OR ShowSpr THEN
  SCREEN 12
  WINDOW SCREEN (0, -70)-(640, 410)
  PRINT
  PRINT "MISOFT 2002"
  PRINT "ASC-BIN v1.0"
  PRINT
END IF
IF ShowMap AND ShowSpr THEN
  PRINT "ESC: Exit        S: VRAM Tile Data        M: VRAM Background Maps"
  QBshowTileData
  DO
    ink$ = UCASE$(INKEY$)
    IF ink$ = "S" AND Win1 = -1 THEN QBshowTileData: Win1 = 0
    IF ink$ = "M" AND Win1 = 0 THEN QBshowBgndMaps: Win1 = -1
  LOOP UNTIL ink$ = CHR$(27)
END IF
IF ShowMap AND NOT ShowSpr THEN
  PRINT "ESC: Exit        VRAM Background Maps"
  QBshowBgndMaps
  DO
    ink$ = UCASE$(INKEY$)
  LOOP UNTIL ink$ = CHR$(27)
END IF
IF NOT ShowMap AND ShowSpr THEN
  PRINT "ESC: Exit        VRAM Tile Data"
  QBshowTileData
  DO
    ink$ = UCASE$(INKEY$)
  LOOP UNTIL ink$ = CHR$(27)
END IF
SCREEN 0
WIDTH 80, 25
END

FUNCTION Bit (bitf, bitn)
  bitf = bitf AND (2 ^ bitn)
  bitf = bitf / (2 ^ bitn)
  Bit = bitf
END FUNCTION

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

SUB QBconvertir
  PRINT
  PRINT "MISOFT 2002"
  PRINT "ASC-BIN v1.0"
  PRINT
  PRINT "Buscando "; ArchIN$; "...";
  OPEN ArchIN$ FOR BINARY AS #1
  IF LOF(1) = 0 THEN CLOSE #1: KILL ArchIN$: QBerror 1
  PRINT "Listo"
  PRINT "Leyendo "; ArchIN$; "..."
  LOCATE 6, LEN(ArchIN$) + 12: PRINT "-"
  PRINT
  PRINT "  Leido:"; Porcentaje; "%"
  FOR l = 0 TO 511
    Linea$ = SPACE$(62)
    GET #1, , Linea$
    NuevaLinea$ = MID$(Linea$, 11, 32)
    FOR B = 0 TO 15
      q$ = MID$(NuevaLinea$, B * 2 + 1, 2)
      bl = HexToDec(q$)
      l1 = l * 16 + B
      DEF SEG = VARSEG(Tabla(0))
      POKE (VARPTR(Tabla(0)) + l1), bl
    NEXT B
    Porcentaje = FIX(l / 512 * 100 + 1)
    Cur = Cur + 1: IF Cur = 120 THEN Cur = 0
    SELECT CASE Cur
      CASE 0 TO 29: LOCATE 6, LEN(ArchIN$) + 12: PRINT "-"
      CASE 30 TO 59: LOCATE 6, LEN(ArchIN$) + 12: PRINT "/"
      CASE 60 TO 89: LOCATE 6, LEN(ArchIN$) + 12: PRINT "|"
      CASE 90 TO 119: LOCATE 6, LEN(ArchIN$) + 12: PRINT "\"
    END SELECT
    PRINT
    PRINT "  Leido:"; Porcentaje; "%"
  NEXT l
  CLOSE #1
  LOCATE 6, LEN(ArchIN$) + 12: PRINT "Listo"
  PRINT
  PRINT "               "
  LOCATE 7, 1: PRINT "Escribiendo "; ArchOUT$; "...";
  DEF SEG = VARSEG(Tabla(0))
  BSAVE ArchOUT$, VARPTR(Tabla(0)), 8192
  PRINT "Listo"
END SUB

SUB QBerror (NumOfError)
  SELECT CASE NumOfError
    CASE 1
      PRINT
      PRINT "El archivo especificado no existe."
      END
  END SELECT
END SUB

SUB QBhelp
  PRINT
  PRINT "MISOFT 2002"
  PRINT "ASC-BIN v1.0"
  PRINT
  PRINT "  Este programa lee un archivo creado por el emulador NO$GMB, con el"
  PRINT "comando Hexdump del men£ Utility y el par metro 2000, para convertir"
  PRINT "los datos en ASIC a Binario."
  PRINT
  PRINT "  Sintaxis:"
  PRINT "        ASC-BIN {Archivo [-s] [-m] | /h}"
  PRINT
  PRINT "  Archivo: Es el nombre del archivo. La extensi¢n que ingrese ser "
  PRINT "           reemplazada por 'HEX'. La extensi¢n de la salida es 'BIN'"
  PRINT "  -s:      Despu‚s de convertir el archivo se muestra en pantalla"
  PRINT "           el conjunto de 384 sprites del archivo"
  PRINT "  -m:      Despu‚s de convertir el archivo se muestra en pantalla"
  PRINT "           ambos mapas del archivo"
  PRINT "  /h:      Muestra este mensaje"
  PRINT
  PRINT "  NOTA: El archivo de entrada debe estar en el directorio actual."
  PRINT
  PRINT
  PRINT
END SUB

SUB QBputSpr (px, py, ps, pe)
  DEF SEG = VARSEG(Tabla(0))
  FOR py2 = 0 TO 7
    FOR px2 = 0 TO 7
      b1 = PEEK(VARPTR(Tabla(0)) + py2 * 2 + ps * 16)
      b2 = PEEK(VARPTR(Tabla(0)) + py2 * 2 + 1 + ps * 16)
      b1 = Bit(b1, px2)
      b2 = Bit(b2, px2)
      p = b1 * 2 + b2
      SELECT CASE p
        CASE 0: p = 15
        CASE 1: p = 6
        CASE 2: p = 7
        CASE 3: p = 4
      END SELECT
      px3 = (7 - px2) * pe
      py3 = py2 * pe
      LINE (px + px3, py + py3)-(px + px3 + 1 - pe, py + py3 + 1 - pe), p, B
    NEXT px2
  NEXT py2
END SUB

SUB QBshowBgndMaps
  X = 13: Y = 90: LX = 32
  LINE (X - 3, Y - 3)-(X + LX * 16 + 3, 349), 0, BF
  LINE (X - 3 + 1, Y - 3 + 1)-(X + LX * 16 + 3 - 1, 349 - 1), 7, B
  n = 0: cx = 0: cy = 0
  DO
    DEF SEG = VARSEG(Tabla(0))
    Spr = PEEK(VARPTR(Tabla(0)) + 6144 + n)
    IF Spr < 128 THEN Spr = Spr + 256 ELSE Spr = Spr - 128: Spr = 256 - Spr
    QBputSpr cx * 8 + X, cy * 8 + Y, Spr, 1
    cx = cx + 1: IF cx = LX THEN cx = 0: cy = cy + 1
    n = n + 1
  LOOP UNTIL n = 1024
  n = 0: cx = 0: cy = 0
  DO
    DEF SEG = VARSEG(Tabla(0))
    Spr = PEEK(VARPTR(Tabla(0)) + 7168 + n)
    IF Spr < 128 THEN Spr = Spr + 256 ELSE Spr = Spr - 128: Spr = 256 - Spr
    QBputSpr 256 + cx * 8 + X, cy * 8 + Y, Spr, 1
    cx = cx + 1: IF cx = LX THEN cx = 0: cy = cy + 1
    n = n + 1
  LOOP UNTIL n = 1024
END SUB

SUB QBshowTileData
  X = 13: Y = 123: LX = 30
  LINE (X - 3, Y - 3)-(X + LX * 17 + 3, 345), 0, BF
  LINE (X - 3 + 1, Y - 3 + 1)-(X + LX * 17 + 3 - 1, 345 - 1), 7, B
  n = 0: cx = 0: cy = 0
  DO
    Spr = n
    QBputSpr cx * 17 + X, cy * 17 + Y, Spr, 2
    cx = cx + 1: IF cx = LX THEN cx = 0: cy = cy + 1
    n = n + 1
  LOOP UNTIL n = 384
END SUB

