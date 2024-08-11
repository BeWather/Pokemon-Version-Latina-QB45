DECLARE SUB QBajuste ()
DECLARE SUB QBreadFile (NumOfFileToRead%)
DECLARE SUB QBgrabarPkm ()
DECLARE SUB QBleerPkm ()
DECLARE SUB QBwriteFile (NumOfFileToWrite%)
DECLARE SUB QBeditGIF ()
DECLARE SUB QBinitProg ()
DECLARE SUB QBborrarArchivo ()
DECLARE SUB QBborrar (NumArchToDel%)
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
DIM SHARED Cursor(129), PkmBin1(1569), PkmBin2(1569)
DIM SHARED PkmStr1 AS STRING * 3140, PkmStr2 AS STRING * 3140
DIM SHARED PkmFile1$, PkmFile2$, NumPkm, OpcionMenu, SalirDelPrograma
DIM SHARED OpcionMenu2, Direccion$
DIM SHARED Apuntador AS LONG, NumOfBank AS LONG
DIM SHARED Nombre(1 TO 255) AS STRING
DIM SHARED Num1$, Num2$, Num3$, Num4$

SCREEN 13
IF DQBinit(0, 0, 0) THEN DQBclose: SCREEN 0: WIDTH 80, 25: PRINT DQBerror: END
DQBinitVGA

QBinitProg

  DIM SHARED BigCur(1569)
  DIM SHARED ParaAjuste(4100)
  LINE (0, 0)-(55, 55), 7, B
  GET (0, 0)-(55, 55), BigCur
  PUT (0, 0), BigCur

'NumPkm = 250
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
      CASE 3: QBgrabarPkm
      CASE 4: QBleerPkm
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
DQBclose: SCREEN 0: WIDTH 80, 25: PRINT "Gracias por elegir este programa!": END
'DQBclose: END

PkmList:
DATA "Bulbasaur","Ivysuar","Venusaur","Charmander","Charmeleon","Charizard"
DATA "Squirtle","Wartortle","Blastoise","Caterpie","Metapod","Butterfree"
DATA "Weedle","Kakuna","Beedrill","Pidgey","Pidgeotto","Pidgeot"
DATA "Rattata","Raticate","Spearow","Fearow","Ekans","Arbok","Pikachu"
DATA "Raichu","Sandshrew","Sandslash","Nidoran H","Nidorina","Nidoqueen"
DATA "Nidoran M","Nidorino","Nidoking","Clefairy","Clefable","Vulpix"
DATA "Ninetails","Jigglypuff","Wigglytuff","Zubat","Golbat","Oddish"
DATA "Gloom","Vileplume","Paras","Parasect","Venonat","Venomoth","Diglett"
DATA "Dugtrio","Meowth","Persian","Psyduck","Golduck","Mankey","Primeape"
DATA "Growlithe","Arcanine","Poliwag","Poliwhirl","Poliwrath","Abra"
DATA "Kadabra","Alakazam","Machop","Machoke","Machamp","Bellsprout"
DATA "Weepinbell","Victreebell","Tentacool","Tentacruel","Geodude"
DATA "Graveler","Golem","Ponyta","Rapidash","Slowpoke","Slowbro","Magnemite"
DATA "Magneton","Farfetch'd","Doduo","Dodrio","Seel","Dewgong","Grimer","Muk"
DATA "Shellder","Cloyster","Gastly","Haunter","Gengar","Onix","Drowzee"
DATA "Hypno","Krabby","Kingler","Voltorb","Electrode","Exeggcute"
DATA "Exeggcutor","Cubone","Marowak","Hitmonlee","Hitmonchan","Lickitung"
DATA "Koffing","Weezing","Rhyhorn","Rhydon","Chansey","Tangela","Kangaskhan"
DATA "Horsea","Seadra","Goldeen","Seaking","Staryu","Starmie","Mr.Mime"
DATA "Scyter","Jynx","Electrabuzz","Magmar","Pinsir","Tauros","Magikarp"
DATA "Gyarados","Lapras","Ditto","Eevee","Vaporeon","Jolteon","Flareon"
DATA "Porygon","Omanyte","Omastar","Kabuto","Kabutops","Aerodactyl"
DATA "Snorlax","Articuno","Zapdos","Moltres","Dratini","Dragonair"
DATA "Dragonite","Mewtwo","Mew","Chikorita","Bayleef","Meganium","Cyndaquil"
DATA "Quilava","Typhlosion","Totodile","Croconaw","Feraligator","Sentret"
DATA "Furret","Hoothoot","Noctowl","Ledyba","Ledian","Spinarak","Ariados"
DATA "Crobat","Chinchou","Lanturn","Pichu","Cleffa","Igglybuff","Togepi"
DATA "Togetic","Natu","Xatu","Mareep","Flaaffy","Ampharos","Bellosom"
DATA "Marill","Azumarill","Sudowoodo","Politoed","Hoppip","Skiploom"
DATA "Jumpluff","Aipom","Sunkern","Sunflora","Yanma","Wooper","Quagsire"
DATA "Espeon","Umbreon","Murkrow","Slowking","Misdreavus","Unown"
DATA "Wobbuffet","Girafarig","Pineco","Forretress","Dunsparce","Gligar"
DATA "Steelix","Subbull","Granbull","Qwilfish","Scizor","Shuckle"
DATA "Heracross","Sneasel","Teddiursa","Ursaring","Slugma","Magcargo"
DATA "Swinub", "Piloswine", "Corsola", "Remoraid", "Octillery", "Delibird"
DATA "Mantine","Skarmory","Houndour","Houndoom","Kingdra","Phanpy","Donphan"
DATA "Porygon 2","Stantler","Smeargle","Tyrogue","Hitmontap","Smoochum"
DATA "Elekid","Magby","Milktank","Blissey","Raikou","Entei","Suicune"
DATA "Lervitar","Pupitar","Tyranitar","Lugia","Ho-oh","Celebi","Num. Perd1"
DATA "Num. Perd2","Num. Perd3","Num. Perd4"

PrsList:
DATA "Ash"
DATA "Joven","Cazabichos","Ornit¢logo","Lider Pegaso","Pensador","Dominguera"
DATA "Pescador","Campista","Monta¤ero","Comefuego","Pokeman¡aco","Rocket Hom"
DATA "Rocket Muj","Gemelas","Lider Anton","¨¨??","Pokefan Hom","Super Necio"
DATA "Bella","Chica","Lider Blanca","Malabarista","Pokefan Muj","Colegial"
DATA "M‚dium","Mentalista","Lider Morti","Chica Kimono","Marinero"
DATA "Caballero","Nadadora","Karateka","Lider Ambal","Nadador"
DATA "Lider Yasmina"


DATA "Joven","Cazabichos","Ornit¢logo","Lider Pegaso","Pensador","Dominguera"
DATA "Joven","Cazabichos","Ornit¢logo","Lider Pegaso","Pensador","Dominguera"
DATA "Joven","Cazabichos","Ornit¢logo","Lider Pegaso","Pensador","Dominguera"
DATA "Joven","Cazabichos","Ornit¢logo","Lider Pegaso","Pensador","Dominguera"
DATA "Joven","Cazabichos","Ornit¢logo","Lider Pegaso","Pensador","Dominguera"
DATA "Joven","Cazabichos","Ornit¢logo","Lider Pegaso","Pensador","Dominguera"
DATA "Joven","Cazabichos","Ornit¢logo","Lider Pegaso","Pensador","Dominguera"
DATA "Joven","Cazabichos","Ornit¢logo","Lider Pegaso","Pensador","Dominguera"

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
  GIFfile$ = Num2$ + Num3$ + Num4$ + ".GIF"
  'GIFfile$ = "GMB-" + Num1$ + Num2$ + Num3$ + Num4$ + ".GIF"
  'QBloadGIF "C:\GMB\" + GIFfile$
  QBloadGIF "C:\MIS-DOCS\POKERUBI\" + GIFfile$
  DO
    ink2$ = INKEY$
    IF ink2$ = " " THEN
      DQBscroll VIDEO, 100, 100
      QBajuste
      QBscanScreen 16, 96, 71, 151
      QBscanScreen 96, 56, 151, 111
      DQBsetPal PalDefault
      GET (16, 96)-(71, 151), PkmBin1
      GET (96, 56)-(151, 111), PkmBin2
      EXIT DO
    END IF
    IF UCASE$(ink2$) = "O" THEN
      xx1 = 0: yy1 = 0: PUT (xx1, yy1), Cursor
      DO
        ink3$ = INKEY$
        IF ink3$ = CHR$(0) + "H" AND yy1 > 0 THEN
          PUT (xx1, yy1), Cursor
          yy1 = yy1 - 1
          PUT (xx1, yy1), Cursor
        END IF
        IF ink3$ = CHR$(0) + "P" AND yy1 < 144 THEN
          PUT (xx1, yy1), Cursor
          yy1 = yy1 + 1
          PUT (xx1, yy1), Cursor
        END IF
        IF ink3$ = CHR$(0) + "K" AND xx1 > 0 THEN
          PUT (xx1, yy1), Cursor
          xx1 = xx1 - 1
          PUT (xx1, yy1), Cursor
        END IF
        IF ink3$ = CHR$(0) + "M" AND xx1 < 264 THEN
          PUT (xx1, yy1), Cursor
          xx1 = xx1 + 1
          PUT (xx1, yy1), Cursor
        END IF
        IF ink3$ = " " THEN
          PUT (xx1, yy1), Cursor
          QBscanScreen xx1, yy1, xx1 + 55, yy1 + 55
          DQBsetPal PalDefault
          GET (xx1, yy1)-(xx1 + 55, yy1 + 55), PkmBin1
          GET (xx1, yy1)-(xx1 + 55, yy1 + 55), PkmBin2
          ink3$ = CHR$(27): ink2$ = CHR$(27)
        END IF
      LOOP UNTIL ink3$ = CHR$(27)
    END IF
    IF ink2$ = CHR$(27) THEN EXIT DO
  LOOP
  DQBsetPal PalDefault
  QBrefreshScr1
END SUB

REM $STATIC
SUB QBajuste





  PUT (x, y), BigCur
  DO
    ink$ = INKEY$
    IF ink$ = CHR$(0) + "H" AND y > 0 THEN PUT (x, y), BigCur: y = y - 1: PUT (x, y), BigCur
    IF ink$ = CHR$(0) + "P" AND y < 200 - 56 THEN PUT (x, y), BigCur: y = y + 1: PUT (x, y), BigCur
    IF ink$ = CHR$(0) + "K" AND x > 0 THEN PUT (x, y), BigCur: x = x - 1: PUT (x, y), BigCur
    IF ink$ = CHR$(0) + "M" AND x < 320 - 56 THEN PUT (x, y), BigCur: x = x + 1: PUT (x, y), BigCur
    IF ink$ = CHR$(13) AND tomado = 0 THEN tomado = 1: PUT (x, y), BigCur: GET (x, y)-(x + 63, y + 63), ParaAjuste: DQBsPut VIDEO, 96, 56, VARSEG(ParaAjuste(0)), VARPTR(ParaAjuste(0)), 56, 56: 'PUT (96, 56), ParaAjuste, PSET
    IF ink$ = CHR$(13) AND tomado = 1 THEN EXIT SUB
  LOOP

END SUB

REM $DYNAMIC
SUB QBborrar (NumArchToDel)
  LOCATE 10, 26: PRINT "Borrando..."
  LOCATE 11, 27: PRINT " 0 %"
  Apuntador = 1
  IF NumArchToDel = 0 THEN SEEK #1, Apuntador
  IF NumArchToDel = 1 THEN SEEK #2, Apuntador
  DO
    a$ = " "
    IF NumArchToDel = 0 THEN PUT #1, , a$
    IF NumArchToDel = 1 THEN PUT #2, , a$
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
  LOCATE 10, 25: PRINT "¨Cu l Archivo?"
  LOCATE 12, 26: PRINT PkmFile1$
  LOCATE 13, 26: PRINT PkmFile2$
  OpcionMenu2 = 0
  LOCATE 12 + OpcionMenu2, 23: PRINT "->"
  DO
    ink2$ = INKEY$
    IF ink2$ = CHR$(0) + "H" AND OpcionMenu2 = 1 THEN
      LOCATE 12 + OpcionMenu2, 23: PRINT "  "
      OpcionMenu2 = 0
      LOCATE 12 + OpcionMenu2, 23: PRINT "->"
    END IF
    IF ink2$ = CHR$(0) + "P" AND OpcionMenu2 = 0 THEN
      LOCATE 12 + OpcionMenu2, 23: PRINT "  "
      OpcionMenu2 = 1
      LOCATE 12 + OpcionMenu2, 23: PRINT "->"
    END IF
    IF ink2$ = CHR$(27) THEN LOCATE 12 + OpcionMenu2, 23: PRINT "  ": OpcionMenu2 = -1: EXIT DO
    IF ink2$ = " " THEN EXIT DO
  LOOP
  LOCATE 10, 25: PRINT "              "
  LOCATE 12, 26: PRINT SPACE$(LEN(PkmFile1$))
  LOCATE 13, 26: PRINT SPACE$(LEN(PkmFile2$))
  LOCATE 12 + OpcionMenu2, 23: PRINT "  "
  IF OpcionMenu2 > -1 THEN QBborrar OpcionMenu2
END SUB

SUB QBeditGIF
  CLS
  DQBsetPal PalDefault
  DQBput VIDEO, 16, 96, VARSEG(PkmBin1(0)), VARPTR(PkmBin1(0))
  DQBput VIDEO, 88, 96, VARSEG(PkmBin2(0)), VARPTR(PkmBin2(0))
  DQBput VIDEO, 166, 96, VARSEG(PkmBin1(0)), VARPTR(PkmBin1(0))
  DQBput VIDEO, 238, 96, VARSEG(PkmBin2(0)), VARPTR(PkmBin2(0))
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
      GET (88, 96)-(143, 151), PkmBin2
      EXIT DO
    END IF
    IF UCASE$(ink2$) = "P" THEN PUT (CoorX, CoorY), Cursor: PSET (CoorX + 7, CoorY + 7), 0: PUT (CoorX, CoorY), Cursor
    IF ink2$ = "1" THEN PUT (CoorX, CoorY), Cursor: PSET (CoorX + 7, CoorY + 7), Color1: PUT (CoorX, CoorY), Cursor
    IF ink2$ = "2" THEN PUT (CoorX, CoorY), Cursor: PSET (CoorX + 7, CoorY + 7), Color2: PUT (CoorX, CoorY), Cursor
    IF ink2$ = "3" THEN PUT (CoorX, CoorY), Cursor: PSET (CoorX + 7, CoorY + 7), Color3: PUT (CoorX, CoorY), Cursor
    IF ink2$ = "4" THEN PUT (CoorX, CoorY), Cursor: PSET (CoorX + 7, CoorY + 7), Color4: PUT (CoorX, CoorY), Cursor
    IF ink2$ = "!" THEN PUT (CoorX, CoorY), Cursor: Color1 = POINT(CoorX + 7, CoorY + 7): PUT (CoorX, CoorY), Cursor
    IF ink2$ = "@" THEN PUT (CoorX, CoorY), Cursor: Color2 = POINT(CoorX + 7, CoorY + 7): PUT (CoorX, CoorY), Cursor
    IF ink2$ = "#" THEN PUT (CoorX, CoorY), Cursor: Color3 = POINT(CoorX + 7, CoorY + 7): PUT (CoorX, CoorY), Cursor
    IF ink2$ = "$" THEN PUT (CoorX, CoorY), Cursor: Color4 = POINT(CoorX + 7, CoorY + 7): PUT (CoorX, CoorY), Cursor
    IF ink2$ = "{" THEN PUT (16, 96), PkmBin1
    IF ink2$ = "}" THEN PUT (88, 96), PkmBin2
  LOOP
  QBrefreshScr1
END SUB

SUB QBgrabarPkm
  LOCATE 10, 24: PRINT "¨En Cu l Archivo?"
  LOCATE 12, 26: PRINT PkmFile1$
  LOCATE 13, 26: PRINT PkmFile2$
  OpcionMenu2 = 0
  LOCATE 12 + OpcionMenu2, 23: PRINT "->"
  DO
    ink2$ = INKEY$
    IF ink2$ = CHR$(0) + "H" AND OpcionMenu2 = 1 THEN
      LOCATE 12 + OpcionMenu2, 23: PRINT "  "
      OpcionMenu2 = 0
      LOCATE 12 + OpcionMenu2, 23: PRINT "->"
    END IF
    IF ink2$ = CHR$(0) + "P" AND OpcionMenu2 = 0 THEN
      LOCATE 12 + OpcionMenu2, 23: PRINT "  "
      OpcionMenu2 = 1
      LOCATE 12 + OpcionMenu2, 23: PRINT "->"
    END IF
    IF ink2$ = CHR$(27) THEN LOCATE 12 + OpcionMenu2, 23: PRINT "  ": OpcionMenu2 = -1: EXIT DO
    IF ink2$ = " " THEN EXIT DO
  LOOP
  LOCATE 10, 24: PRINT "                 "
  LOCATE 12, 26: PRINT SPACE$(LEN(PkmFile1$))
  LOCATE 13, 26: PRINT SPACE$(LEN(PkmFile2$))
  LOCATE 12 + OpcionMenu2, 23: PRINT "  "
  IF OpcionMenu2 > -1 THEN QBwriteFile OpcionMenu2
END SUB

SUB QBinitProg
  Num1$ = "0": Num2$ = "0": Num3$ = "0": Num4$ = "0"
  LINE (7, 0)-(7, 14), 255
  LINE (0, 7)-(14, 7), 255
  GET (0, 0)-(15, 15), Cursor
  CLS
  NumOfBank = 255
  RESTORE PkmList
  FOR i = 1 TO NumOfBank
    READ a$
    Nombre(i) = a$
  NEXT i
  QBloadPal "ESPECIAL.PAL"
  PalDefault = PalLoaded
  Direccion$ = "ARCHIVOS\"
  PkmFile1$ = "PKM-AT.BIN"
  PkmFile2$ = "PKM-AD.BIN"
  OPEN Direccion$ + PkmFile1$ FOR BINARY AS #1
  OPEN Direccion$ + PkmFile2$ FOR BINARY AS #2
END SUB

SUB QBleerPkm
  LOCATE 10, 24: PRINT "¨De Cu l Archivo?"
  LOCATE 12, 26: PRINT PkmFile1$
  LOCATE 13, 26: PRINT PkmFile2$
  OpcionMenu2 = 0
  LOCATE 12 + OpcionMenu2, 23: PRINT "->"
  DO
    ink2$ = INKEY$
    IF ink2$ = CHR$(0) + "H" AND OpcionMenu2 = 1 THEN
      LOCATE 12 + OpcionMenu2, 23: PRINT "  "
      OpcionMenu2 = 0
      LOCATE 12 + OpcionMenu2, 23: PRINT "->"
    END IF
    IF ink2$ = CHR$(0) + "P" AND OpcionMenu2 = 0 THEN
      LOCATE 12 + OpcionMenu2, 23: PRINT "  "
      OpcionMenu2 = 1
      LOCATE 12 + OpcionMenu2, 23: PRINT "->"
    END IF
    IF ink2$ = CHR$(27) THEN LOCATE 12 + OpcionMenu2, 23: PRINT "  ": OpcionMenu2 = -1: EXIT DO
    IF ink2$ = " " THEN EXIT DO
  LOOP
  LOCATE 10, 24: PRINT "                 "
  LOCATE 12, 26: PRINT SPACE$(LEN(PkmFile1$))
  LOCATE 13, 26: PRINT SPACE$(LEN(PkmFile2$))
  LOCATE 12 + OpcionMenu2, 23: PRINT "  "
  IF OpcionMenu2 > -1 THEN QBreadFile OpcionMenu2
END SUB

SUB QBloadGIF (GIFfile$)
  FOR a% = 0 TO 7: shiftout%(8 - a%) = 2 ^ a%: NEXT a%
  FOR a% = 0 TO 11: powersof2(a%) = 2 ^ a%: NEXT a%
  OPEN GIFfile$ FOR BINARY AS #3
    a$ = "      "
    GET #3, , a$
    IF a$ <> "GIF89a" AND a$ <> "GIF87a" THEN CLS : CLOSE #3: EXIT SUB
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
SUB QBreadFile (NumOfFileToRead)
  IF NumOfFileToRead = 0 THEN DEF SEG = VARSEG(PkmBin1(0))
  IF NumOfFileToRead = 1 THEN DEF SEG = VARSEG(PkmBin2(0))
  LOCATE 10, 26: PRINT "Leyendo..."
  LOCATE 11, 27: PRINT " 0 %"
  IF NumOfFileToRead = 0 THEN
    Apuntador = NumPkm: Apuntador = Apuntador * 3140 + 1
    SEEK #1, Apuntador
    GET #1, , PkmStr1
    B$ = PkmStr1
  END IF
  IF NumOfFileToRead = 1 THEN
    Apuntador = NumPkm: Apuntador = Apuntador * 3140 + 1
    SEEK #2, Apuntador
    GET #2, , PkmStr2
    B$ = PkmStr2
  END IF
  ByteQ = 0
  DO
    a$ = MID$(B$, ByteQ + 1, 1)
    B = ASC(a$)
    IF NumOfFileToRead = 0 THEN POKE VARPTR(PkmBin1(0)) + ByteQ, B
    IF NumOfFileToRead = 1 THEN POKE VARPTR(PkmBin2(0)) + ByteQ, B
    ByteQ = ByteQ + 1
    IF ByteQ MOD 157 = 0 THEN LOCATE 11, 27: PRINT FIX((ByteQ / 3140) * 100); "%"
  LOOP UNTIL ByteQ = 3140
  LOCATE 13, 26: PRINT "­Listo!"
  LINE (208, 140)-(319, 199), 0, BF
  IF PkmBin1(0) / 8 = 56 AND PkmBin1(1) = 56 THEN PUT (208, 140), PkmBin1, PSET
  IF PkmBin2(0) / 8 = 56 AND PkmBin2(1) = 56 THEN PUT (264, 140), PkmBin2, PSET
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
  PRINT "  PROGRAMA DE UTILIDAD - VERSION 1.0"
  PRINT
  PRINT " Este programa perfecciona los archivos"
  PRINT "binarios que contienen las im genes de"
  PRINT "los Pok‚mon"
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
  PRINT " Pok‚mon N§:"; NumPkm + 1
  PRINT " Pok‚mon Nomb: "; Nombre(NumPkm + 1)
  LOCATE 10 + OpcionMenu, 20
  PRINT "<-"
  LINE (208, 140)-(319, 199), 0, BF
  IF PkmBin1(0) / 8 = 56 AND PkmBin1(1) = 56 THEN PUT (208, 140), PkmBin1, PSET
  IF PkmBin2(0) / 8 = 56 AND PkmBin2(1) = 56 THEN PUT (264, 140), PkmBin2, PSET
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
SUB QBwriteFile (NumOfFileToWrite)
  ByteQ = 0
  IF NumOfFileToWrite = 0 THEN DEF SEG = VARSEG(PkmBin1(0))
  IF NumOfFileToWrite = 1 THEN DEF SEG = VARSEG(PkmBin2(0))
  LOCATE 10, 26: PRINT "Grabando..."
  LOCATE 11, 27: PRINT " 0 %"
  DO
    IF NumOfFileToWrite = 0 THEN B = PEEK(VARPTR(PkmBin1(0)) + ByteQ)
    IF NumOfFileToWrite = 1 THEN B = PEEK(VARPTR(PkmBin2(0)) + ByteQ)
    a$ = LTRIM$(RTRIM$(CHR$(B)))
    B$ = B$ + a$
    ByteQ = ByteQ + 1
    IF ByteQ MOD 157 = 0 THEN LOCATE 11, 27: PRINT FIX((ByteQ / 3140) * 100); "%"
  LOOP UNTIL ByteQ = 3140
  IF NumOfFileToWrite = 0 THEN
    PkmStr1 = B$
    Apuntador = NumPkm: Apuntador = Apuntador * 3140 + 1
    SEEK #1, Apuntador
    PUT #1, , PkmStr1
  END IF
  IF NumOfFileToWrite = 1 THEN
    PkmStr2 = B$
    Apuntador = NumPkm: Apuntador = Apuntador * 3140 + 1
    SEEK #2, Apuntador
    PUT #2, , PkmStr2
  END IF
  LOCATE 13, 26: PRINT "­Listo!"
  DO: LOOP UNTIL INKEY$ <> ""
  LOCATE 10, 26: PRINT "            "
  LOCATE 11, 27: PRINT "      "
  LOCATE 13, 26: PRINT "       "
END SUB

