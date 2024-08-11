DECLARE SUB QBreadFile ()
DECLARE SUB QBwriteFile ()
DECLARE SUB QBeditGIF ()
DECLARE SUB QBinitProg ()
DECLARE SUB QBborrarArchivo ()
DECLARE SUB QBborrar ()
DECLARE SUB QBabrirGIF ()
DECLARE SUB QBrefreshScr1 ()
DECLARE SUB QBscanScreen (x1%, y1%, x2%, y2%)
DECLARE SUB QBloadPal (PalFile$)
DECLARE SUB QBloadGIF (GIFfile$)

DEFINT A-Z

'$INCLUDE: 'DIRECTQB.BI'

CLEAR : CLOSE

DIM SHARED Prefix(4095), Suffix(4095), OutStack(4095), shiftout%(8)
DIM SHARED Ybase AS LONG, powersof2(11) AS LONG, WorkCode AS LONG
DIM SHARED PalLoaded AS STRING * 768, PalDefault AS STRING * 768
DIM SHARED Cursor(129), PkmBin1(1569), CursorGrande(1569)
DIM SHARED PkmStr1 AS STRING * 3140
DIM SHARED PkmFile1$, NumPkm, OpcionMenu, SalirDelPrograma
DIM SHARED OpcionMenu2, Direccion$
DIM SHARED Apuntador AS LONG, NumOfBank AS LONG
  NumOfBank = 144
DIM SHARED Nombre(1 TO NumOfBank) AS STRING
DIM SHARED Num1$, Num2$, Num3$, Num4$

SCREEN 13
IF DQBinit(0, 0, 0) THEN DQBclose: SCREEN 0: WIDTH 80, 25: PRINT DQBerror: END
DQBinitVGA

QBinitProg
QBrefreshScr1
DO
  ink$ = INKEY$
  IF ink$ = CHR$(0) + "H" AND OpcionMenu > 0 THEN
    LOCATE 10 + OpcionMenu, 20: PRINT "  "
    OpcionMenu = OpcionMenu - 1
    LOCATE 10 + OpcionMenu, 20: PRINT "<-"
  END IF
  IF ink$ = CHR$(0) + "P" AND OpcionMenu < 6 THEN
    LOCATE 10 + OpcionMenu, 20: PRINT "  "
    OpcionMenu = OpcionMenu + 1
    LOCATE 10 + OpcionMenu, 20: PRINT "<-"
  END IF
  IF ink$ = "+" AND NumPkm < NumOfBank - 1 THEN NumPkm = NumPkm + 1: QBrefreshScr1
  IF ink$ = "-" AND NumPkm > 0 THEN NumPkm = NumPkm - 1: QBrefreshScr1
  IF ink$ = " " THEN
    SELECT CASE OpcionMenu
      CASE 0: QBborrarArchivo
      CASE 1: QBabrirGIF
      CASE 2: QBeditGIF
      CASE 3: QBwriteFile
      CASE 4: QBreadFile
      CASE 5
        LOCATE 10, 26: PRINT "Nuevo N§ Img:"
        LOCATE 11, 26: INPUT "  ", NumPkm
        IF NumPkm < 0 THEN NumPkm = 0
        IF NumPkm > NumOfBank - 1 THEN NumPkm = NumOfBank - 1
        QBrefreshScr1
      CASE 6: SalirDelPrograma = TRUE
    END SELECT
  END IF
  IF UCASE$(ink$) = "R" THEN QBrefreshScr1
LOOP UNTIL SalirDelPrograma

CLOSE
CLEAR
DQBclose: SCREEN 0: WIDTH 80, 25: PRINT "Gracias por elegir este programa!"
SHELL "copy /y c:\newpoke1\archivos\people56.bin d:\"

END
PrsList:
DATA "Ash (Atr s)","Ash (Adelante)","Prof. Oak","Gary 1","Gary 2"
DATA "Anciano","Cazabichos","Entrenad.Jr (Chico)","Entrenad.Jr (Chica)"
DATA "Joven","Chica","Entren.Guay (Chico)","Entren.Guay (Chica)"
DATA "S£per Necio","Rocket","Monta¤ero","Nadador","Pescador","Marinero"
DATA "Caballero","Rockero","Pok‚man¡aco","Jugador","Bella","Exorcista"
DATA "Mec nico","Ornit¢logo","Motorista","Malabarista","Domador","Karateka"
DATA "Cient¡fico","M‚dium","Calvo","Ladr¢n"
DATA "Brock","Misty","Lt.Surge","Erika","Koga","Sabrina","Blaine","Giovanni"
DATA "Lorelei","Bruno","Agatha","Lance"
DATA "Ash P1","Jigglypuff P1","Jigglypuff P2","Jigglypuff P3"
DATA "Gengar P1","Gengar P2","Gengar P3","Pok‚Ball P1"
DATA "Conversion 1","Conversion 2"

DATA "Prog2 (Atr s)","Prog2 (Adelante)","Prof. Oak 2","Anta2 1","Anta2 2"
DATA "Chico Ense¤a","Cazabichos","Entrenad.Jr (Chico)","Entrenad.Jr (Chica)"
DATA "Joven","Chica","Entren.Guay (Chico)","Entren.Guay (Chica)"
DATA "S£per Necio","Rocket","Monta¤ero","Nadador","Pescador","Marinero"
DATA "Caballero","Rockero","Pok‚man¡aco","Jugador","Bella","Exorcista"
DATA "Mec nico","Ornit¢logo","Motorista","Malabarista","Domador","Karateka"
DATA "Cient¡fico","M‚dium","Calvo","Ladr¢n"
DATA "Brock","Misty","Lt.Surge","Erika","Koga","Sabrina","Blaine","Giovanni"
DATA "Lorelei","Bruno","Agatha","Lance"

DATA "Pegaso","Dominguera","Campista","Comefuego","Rocket Fem","Ant¢n","Pokefan Masc","Jes-Jam","Misty 3","Gary 3"
DATA "Bailarina","Pensador","Colegial","Snow-boarder","Guitarrista","Jessie","James","Nadadora","Esquiadora","L¡der Yasmina"
DATA "L¡der An¡bal","Chica Prog","Chica Prog (Atr s)","Pok‚fan Femen","Mentalista","L¡der Morti","Gemelas","Extra27","Extra28","Extra29"
DATA "Extra30","Extra31","Extra32","Extra33","Extra34","Extra35","Extra36","Extra37","Extra38","Extra39"

REM $DYNAMIC
SUB QBabrirGIF
  LOCATE 10, 26: PRINT "Entre el N§"
  LOCATE 11, 26: PRINT "   de la"
  LOCATE 12, 26: PRINT "  Imagen:"
  Num1$ = "0"
  Ind1 = 3
  LOCATE 13, 26: PRINT "   " + Num1$ + Num2$ + Num3$ + Num4$
  DO
    ink2$ = INKEY$
    IF ink2$ = CHR$(0) + "H" THEN
      IF Ind1 = 0 THEN IF VAL(Num1$) < 9 THEN Num1$ = LTRIM$(RTRIM$(STR$(VAL(Num1$) + 1)))
      IF Ind1 = 1 THEN IF VAL(Num2$) < 9 THEN Num2$ = LTRIM$(RTRIM$(STR$(VAL(Num2$) + 1)))
      IF Ind1 = 2 THEN IF VAL(Num3$) < 9 THEN Num3$ = LTRIM$(RTRIM$(STR$(VAL(Num3$) + 1)))
      IF Ind1 = 3 THEN IF VAL(Num4$) < 9 THEN Num4$ = LTRIM$(RTRIM$(STR$(VAL(Num4$) + 1)))
      LOCATE 13, 26: PRINT "   " + Num1$ + Num2$ + Num3$ + Num4$
    END IF
    IF ink2$ = CHR$(0) + "P" THEN
      IF Ind1 = 0 THEN IF VAL(Num1$) > 0 THEN Num1$ = LTRIM$(RTRIM$(STR$(VAL(Num1$) - 1)))
      IF Ind1 = 1 THEN IF VAL(Num2$) > 0 THEN Num2$ = LTRIM$(RTRIM$(STR$(VAL(Num2$) - 1)))
      IF Ind1 = 2 THEN IF VAL(Num3$) > 0 THEN Num3$ = LTRIM$(RTRIM$(STR$(VAL(Num3$) - 1)))
      IF Ind1 = 3 THEN IF VAL(Num4$) > 0 THEN Num4$ = LTRIM$(RTRIM$(STR$(VAL(Num4$) - 1)))
      LOCATE 13, 26: PRINT "   " + Num1$ + Num2$ + Num3$ + Num4$
    END IF
    IF ink2$ = CHR$(0) + "K" AND Ind1 > 0 THEN Ind1 = Ind1 - 1
    IF ink2$ = CHR$(0) + "M" AND Ind1 < 3 THEN Ind1 = Ind1 + 1
    IF ink2$ = CHR$(27) THEN Num1$ = "N": EXIT DO
    IF UCASE$(ink2$) = "O" THEN Num1$ = "O": EXIT DO
    IF ink2$ = " " THEN EXIT DO
  LOOP
  LOCATE 10, 26: PRINT "           "
  LOCATE 11, 26: PRINT "        "
  LOCATE 12, 26: PRINT "         "
  LOCATE 13, 26: PRINT "       "
  IF Num1$ = "N" THEN EXIT SUB
  IF Num1$ = "O" THEN
    LOCATE 10, 26: PRINT "Nombre:"
    LOCATE 11, 26: INPUT " ", GIFfile$
    QBloadGIF GIFfile$
    DO: LOOP UNTIL INKEY$ <> ""
    DQBsetPal PalDefault
    QBrefreshScr1
    EXIT SUB
  END IF
  GIFfile$ = "GMB-" + Num1$ + Num2$ + Num3$ + Num4$ + ".GIF"
  QBloadGIF "C:\GMB\" + GIFfile$
  DQBscroll VIDEO, 0, 56
  StepX = 4: StepY = 4: CoorX = 16: CoorY = 96: PUT (CoorX, CoorY), CursorGrande
  DO
    ink2$ = INKEY$
    IF ink2$ = " " THEN
      PUT (CoorX, CoorY), CursorGrande
      QBscanScreen CoorX, CoorY, CoorX + 55, CoorY + 55
      DQBsetPal PalDefault
      GET (CoorX, CoorY)-(CoorX + 55, CoorY + 55), PkmBin1
      EXIT DO
    END IF
    IF ink2$ = CHR$(0) + "H" THEN
      PUT (CoorX, CoorY), CursorGrande
      CoorY = CoorY - StepY
      IF CoorY < 0 THEN CoorY = 0
      PUT (CoorX, CoorY), CursorGrande
    END IF
    IF ink2$ = CHR$(0) + "P" THEN
      PUT (CoorX, CoorY), CursorGrande
      CoorY = CoorY + StepY
      IF CoorY > 144 THEN CoorY = 144
      PUT (CoorX, CoorY), CursorGrande
    END IF
    IF ink2$ = CHR$(0) + "K" THEN
      PUT (CoorX, CoorY), CursorGrande
      CoorX = CoorX - StepX
      IF CoorX < 0 THEN CoorX = 0
      PUT (CoorX, CoorY), CursorGrande
    END IF
    IF ink2$ = CHR$(0) + "M" THEN
      PUT (CoorX, CoorY), CursorGrande
      CoorX = CoorX + StepX
      IF CoorX > 264 THEN CoorY = 264
      PUT (CoorX, CoorY), CursorGrande
    END IF
    IF ink2$ = CHR$(27) THEN EXIT DO
  LOOP
  QBrefreshScr1
END SUB

SUB QBborrar
  LOCATE 10, 26: PRINT "Borrando..."
  LOCATE 11, 27: PRINT " 0 %"
  Apuntador = 1
  SEEK #1, Apuntador
  DO
    a$ = " "
    PUT #1, , a$
    Apuntador = Apuntador + 1
    IF Apuntador = NumOfBank * 3140 + 1 THEN EXIT DO
    IF Apuntador MOD 3140 = 0 THEN LOCATE 11, 27: PRINT FIX((Apuntador / (NumOfBank * 3140)) * 100); "%"
  LOOP
  LOCATE 13, 26: PRINT "­Listo!"
  DO: LOOP UNTIL INKEY$ <> ""
  LOCATE 10, 26: PRINT "           "
  LOCATE 11, 27: PRINT "      "
  LOCATE 13, 26: PRINT "       "
END SUB

SUB QBborrarArchivo
  LOCATE 10, 25: PRINT "¨Est s seguro?"
  LOCATE 11, 25: PRINT "   (S/N)"
  DO
    ink2$ = INKEY$
    IF UCASE$(ink2$) = "S" THEN
      LOCATE 10, 25: PRINT "              ": LOCATE 11, 25: PRINT "        "
      EXIT DO
    END IF
    IF UCASE$(ink2$) = "N" THEN
      LOCATE 10, 25: PRINT "              ": LOCATE 11, 25: PRINT "        "
      EXIT SUB
    END IF
  LOOP
  QBborrar
END SUB

SUB QBeditGIF
  CLS
  DQBsetPal PalDefault
  DQBput VIDEO, 16, 96, VARSEG(PkmBin1(0)), VARPTR(PkmBin1(0))
  DQBput VIDEO, 166, 96, VARSEG(PkmBin1(0)), VARPTR(PkmBin1(0))
  CoorX = 16: CoorY = 96: StepX = 8: StepY = 8
  PUT (CoorX, CoorY), Cursor
  DO
    ink2$ = INKEY$
    IF ink2$ = CHR$(0) + "H" THEN
      PUT (CoorX, CoorY), Cursor
      CoorY = CoorY - StepY: IF CoorY < 0 THEN CoorY = 0
      PUT (CoorX, CoorY), Cursor
    END IF
    IF ink2$ = CHR$(0) + "P" THEN
      PUT (CoorX, CoorY), Cursor
      CoorY = CoorY + StepY: IF CoorY > 184 THEN CoorY = 184
      PUT (CoorX, CoorY), Cursor
    END IF
    IF ink2$ = CHR$(0) + "K" THEN
      PUT (CoorX, CoorY), Cursor
      CoorX = CoorX - StepX: IF CoorX < 0 THEN CoorX = 0
      PUT (CoorX, CoorY), Cursor
    END IF
    IF ink2$ = CHR$(0) + "M" THEN
      PUT (CoorX, CoorY), Cursor
      CoorX = CoorX + StepX: IF CoorX > 304 THEN CoorX = 304
      PUT (CoorX, CoorY), Cursor
    END IF
    IF ink2$ = "*" THEN StepX = 1: StepY = 1
    IF ink2$ = "/" THEN StepX = 8: StepY = 8
    IF ink2$ = CHR$(27) THEN EXIT DO
    IF ink2$ = " " THEN PUT (CoorX, CoorY), Cursor: DQBpaint VIDEO, CoorX + 7, CoorY + 7, 0: PUT (CoorX, CoorY), Cursor
    IF ink2$ = CHR$(13) THEN
      PUT (CoorX, CoorY), Cursor
      GET (16, 96)-(71, 151), PkmBin1
      EXIT DO
    END IF
    IF UCASE$(ink2$) = "P" THEN PUT (CoorX, CoorY), Cursor: PSET (CoorX + 7, CoorY + 7), 0: PUT (CoorX, CoorY), Cursor
    IF ink2$ = "1" THEN PUT (CoorX, CoorY), Cursor: PSET (CoorX + 7, CoorY + 7), Color1: PUT (CoorX, CoorY), Cursor
    IF ink2$ = "2" THEN PUT (CoorX, CoorY), Cursor: PSET (CoorX + 7, CoorY + 7), Color2: PUT (CoorX, CoorY), Cursor
    IF ink2$ = "3" THEN PUT (CoorX, CoorY), Cursor: PSET (CoorX + 7, CoorY + 7), Color3: PUT (CoorX, CoorY), Cursor
    IF ink2$ = "4" THEN PUT (CoorX, CoorY), Cursor: PSET (CoorX + 7, CoorY + 7), Color4: PUT (CoorX, CoorY), Cursor
    IF ink2$ = "!" THEN PUT (CoorX, CoorY), Cursor: Color1 = POINT(CoorX + 7, CoorY + 7): PUT (CoorX, CoorY), Cursor
    IF ink2$ = "@" THEN PUT (CoorX, CoorY), Cursor: Color2 = POINT(CoorX + 7, CoorY + 7): PUT (CoorX, CoorY), Cursor
    IF ink2$ = "ú" THEN PUT (CoorX, CoorY), Cursor: Color3 = POINT(CoorX + 7, CoorY + 7): PUT (CoorX, CoorY), Cursor
    IF ink2$ = "$" THEN PUT (CoorX, CoorY), Cursor: Color4 = POINT(CoorX + 7, CoorY + 7): PUT (CoorX, CoorY), Cursor
    IF ink2$ = "0" THEN PUT (16, 96), PkmBin1
  LOOP
  QBrefreshScr1
END SUB

SUB QBinitProg
  Num1$ = "0": Num2$ = "0": Num3$ = "0": Num4$ = "0"
  LINE (7, 0)-(7, 14), 255: LINE (0, 7)-(14, 7), 255
  GET (0, 0)-(15, 15), Cursor: CLS
  LINE (0, 0)-(55, 55), 255, B: GET (0, 0)-(55, 55), CursorGrande: CLS
  FOR i = 1 TO NumOfBank
    READ a$
    Nombre(i) = a$
  NEXT i
  QBloadPal "ESPECIAL.PAL"
  PalDefault = PalLoaded
  Direccion$ = "ARCHIVOS\"
  PkmFile1$ = "PEOPLE56.BIN"
  OPEN Direccion$ + PkmFile1$ FOR BINARY AS #1
END SUB

SUB QBloadGIF (GIFfile$)
  FOR a% = 0 TO 7
    shiftout%(8 - a%) = 2 ^ a%
  NEXT a%
  FOR a% = 0 TO 11
    powersof2(a%) = 2 ^ a%
  NEXT a%
  OPEN GIFfile$ FOR BINARY AS #3
    a$ = "      "
    GET #3, , a$
    IF a$ <> "GIF87a" THEN CLS : CLOSE #3: EXIT SUB
    GET #3, , TotalX
    GET #3, , TotalY
    GOSUB GetByte
    NumColors = 2 ^ ((a% AND 7) + 1)
    NoPalette = (a% AND 128) = 0
    GOSUB GetByte
    Background = a%
    GOSUB GetByte
    IF a% <> 0 THEN PRINT "Bad screen descriptor.": END
    IF NoPalette = 0 THEN P$ = SPACE$(NumColors * 3): GET #3, , P$
    DO
      GOSUB GetByte
      IF a% = 44 THEN
        EXIT DO
      ELSEIF a% <> 33 THEN
        PRINT "Unknown extension type.": END
      END IF
      GOSUB GetByte
      DO
        GOSUB GetByte
        a$ = SPACE$(a%)
        GET #3, , a$
      LOOP UNTIL a% = 0
    LOOP
    GET #3, , XStart
    GET #3, , YStart
    GET #3, , XLength
    GET #3, , YLength
    XEnd = XStart + XLength
    YEnd = YStart + YLength
    GOSUB GetByte
    IF a% AND 128 THEN PRINT "Can't handle local colormaps.": END
    Interlaced = a% AND 64
    PassNumber = 0
    PassStep = 8
    GOSUB GetByte
    ClearCode = 2 ^ a%
    EOSCode = ClearCode + 1
    FirstCode = ClearCode + 2
    NextCode = FirstCode
    StartCodeSize = a% + 1
    CodeSize = StartCodeSize
    StartMaxCode = 2 ^ (a% + 1) - 1
    MaxCode = StartMaxCode

    BitsIn = 0
    BlockSize = 0
    BlockPointer = 1
    x% = XStart
    y% = YStart
    Ybase = y% * 320&

    DEF SEG = &HA000
    IF NoPalette = 0 THEN
      OUT &H3C7, 0
      OUT &H3C8, 0
      FOR a% = 1 TO NumColors * 3
        OUT &H3C9, ASC(MID$(P$, a%, 1)) \ 4
      NEXT a%
    END IF
    LINE (0, 0)-(319, 199), Background, BF
    DO
      GOSUB GetCode
      IF Code <> EOSCode THEN
        IF Code = ClearCode THEN
          NextCode = FirstCode
          CodeSize = StartCodeSize
          MaxCode = StartMaxCode
          GOSUB GetCode
          CurCode = Code
          LastCode = Code
          LastPixel = Code
          IF x% < 320 THEN POKE x% + Ybase, LastPixel
          x% = x% + 1
          IF x% = XEnd THEN GOSUB NextScanLine
        ELSE
          CurCode = Code: StackPointer = 0
          IF Code > NextCode THEN EXIT DO
          IF Code = NextCode THEN
            CurCode = LastCode
            OutStack(StackPointer) = LastPixel
            StackPointer = StackPointer + 1
          END IF

          DO WHILE CurCode >= FirstCode
            OutStack(StackPointer) = Suffix(CurCode)
            StackPointer = StackPointer + 1
            CurCode = Prefix(CurCode)
          LOOP

          LastPixel = CurCode
          IF x% < 320 THEN POKE x% + Ybase, LastPixel
          x% = x% + 1
          IF x% = XEnd THEN GOSUB NextScanLine

          FOR a% = StackPointer - 1 TO 0 STEP -1
            IF x% < 320 THEN POKE x% + Ybase, OutStack(a%)
            x% = x% + 1
            IF x% = XEnd THEN GOSUB NextScanLine
          NEXT a%

          IF NextCode < 4096 THEN
            Prefix(NextCode) = LastCode
            Suffix(NextCode) = LastPixel
            NextCode = NextCode + 1
            IF NextCode > MaxCode AND CodeSize < 12 THEN
              CodeSize = CodeSize + 1
              MaxCode = MaxCode * 2 + 1
            END IF
          END IF
          LastCode = Code
        END IF
      END IF
    LOOP UNTIL DoneFlag OR Code = EOSCode
  CLOSE #3
  DEF SEG
  EXIT SUB

GetByte:
  a$ = " "
  GET #3, , a$
  a% = ASC(a$)
  RETURN

NextScanLine:
  IF Interlaced THEN
    y% = y% + PassStep
    IF y% >= YEnd THEN
      PassNumber = PassNumber + 1
      SELECT CASE PassNumber
        CASE 1: y% = 4: PassStep = 8
        CASE 2: y% = 2: PassStep = 4
        CASE 3: y% = 1: PassStep = 2
      END SELECT
    END IF
  ELSE
    y% = y% + 1
  END IF
  x% = XStart
  Ybase = y% * 320&
  DoneFlag = y% > 199
  RETURN

GetCode:
  IF BitsIn = 0 THEN GOSUB ReadBufferedByte: LastChar = a%: BitsIn = 8
  WorkCode = LastChar \ shiftout%(BitsIn)
  DO WHILE CodeSize > BitsIn
    GOSUB ReadBufferedByte
    LastChar = a%
    WorkCode = WorkCode OR LastChar * powersof2(BitsIn)
    BitsIn = BitsIn + 8
  LOOP
  BitsIn = BitsIn - CodeSize
  Code = WorkCode AND MaxCode
  RETURN

ReadBufferedByte:
  IF BlockPointer > BlockSize THEN
    GOSUB GetByte
    BlockSize = a%
    a$ = SPACE$(BlockSize)
    GET #3, , a$
    BlockPointer = 1
  END IF
  a% = ASC(MID$(a$, BlockPointer, 1))
  BlockPointer = BlockPointer + 1
  RETURN

END SUB

SUB QBloadPal (PalFile$)
  OPEN PalFile$ FOR BINARY AS #1
    GET #1, , PalLoaded
  CLOSE #1
END SUB

REM $STATIC
SUB QBreadFile
  DEF SEG = VARSEG(PkmBin1(0))
  LOCATE 10, 26: PRINT "Leyendo..."
  LOCATE 11, 27: PRINT " 0 %"
  Apuntador = NumPkm: Apuntador = Apuntador * 3140 + 1
  SEEK #1, Apuntador
  GET #1, , PkmStr1
  B$ = PkmStr1
  ByteQ = 0
  DO
    a$ = MID$(B$, ByteQ + 1, 1)
    B = ASC(a$)
    POKE VARPTR(PkmBin1(0)) + ByteQ, B
    ByteQ = ByteQ + 1
    IF ByteQ MOD 157 = 0 THEN LOCATE 11, 27: PRINT FIX((ByteQ / 3140) * 100); "%"
  LOOP UNTIL ByteQ = 3140
  LOCATE 13, 26: PRINT "­Listo!"
  LINE (208, 140)-(319, 199), 0, BF
  IF PkmBin1(0) / 8 = 56 AND PkmBin1(1) = 56 THEN PUT (264, 140), PkmBin1, PSET
  DO: LOOP UNTIL INKEY$ <> ""
  LOCATE 10, 26: PRINT "           "
  LOCATE 11, 27: PRINT "      "
  LOCATE 13, 26: PRINT "       "
END SUB

SUB QBrefreshScr1
  CLS
  'PALETTE
  DQBsetPal PalDefault
  LOCATE 1, 1
  PRINT "  PROGRAMA DE UTILIDAD - VERSION 2.0"
  PRINT
  PRINT " Este programa perfecciona los archivos"
  PRINT "binarios que contienen las im genes de"
  PRINT "los Personajes"
  PRINT
  PRINT
  PRINT " Opciones:"
  PRINT
  PRINT "  Borrar Archivo"
  PRINT "  Abrir Imagen GIF"
  PRINT "  Editar Imagen"
  PRINT "  Grabar Imagen"
  PRINT "  Leer Imagen"
  PRINT "  Cambiar Imagen"
  PRINT "  Salir"
  PRINT
  PRINT " Imagen Actual:"; NumPkm
  PRINT " Persona Nomb:"
  PRINT "  "; Nombre(NumPkm + 1)
  LOCATE 10 + OpcionMenu, 20
  PRINT "<-"
  LINE (208, 140)-(319, 199), 0, BF
  IF PkmBin1(0) / 8 = 56 AND PkmBin1(1) = 56 THEN PUT (264, 140), PkmBin1, PSET
  Apuntador = NumPkm: a$ = SPACE$(3140)
  GET #1, Apuntador * 3140 + 1, a$
  DQBput VIDEO, 180, 140, VARSEG(a$), SADD(a$)
END SUB

REM $DYNAMIC
SUB QBscanScreen (x1, y1, x2, y2)
  FOR y = y1 TO y2
    FOR x = x1 TO x2
      Col1 = POINT(x, y)
      DQBgetCol Col1, Rojo, Verde, Azul
      Col2 = DQBfindPalCol(PalDefault, Rojo, Verde, Azul)
      PSET (x, y), Col2
    NEXT x
  NEXT y
END SUB

REM $STATIC
SUB QBwriteFile
  ByteQ = 0
  DEF SEG = VARSEG(PkmBin1(0))
  LOCATE 10, 26: PRINT "Grabando..."
  LOCATE 11, 27: PRINT " 0 %"
  DO
    B = PEEK(VARPTR(PkmBin1(0)) + ByteQ)
    a$ = LTRIM$(RTRIM$(CHR$(B)))
    B$ = B$ + a$
    ByteQ = ByteQ + 1
    IF ByteQ MOD 157 = 0 THEN LOCATE 11, 27: PRINT FIX((ByteQ / 3140) * 100); "%"
  LOOP UNTIL ByteQ = 3140
  PkmStr1 = B$
  Apuntador = NumPkm: Apuntador = Apuntador * 3140 + 1
  SEEK #1, Apuntador
  PUT #1, , PkmStr1
  LOCATE 13, 26: PRINT "­Listo!"
  DO: LOOP UNTIL INKEY$ <> ""
  LOCATE 10, 26: PRINT "            "
  LOCATE 11, 27: PRINT "      "
  LOCATE 13, 26: PRINT "       "
END SUB

