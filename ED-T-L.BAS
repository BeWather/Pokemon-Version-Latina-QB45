DECLARE FUNCTION LineaT8$ (p%)
DECLARE SUB PutCur7 ()
DECLARE SUB PutCur6 ()
DECLARE FUNCTION LineaT7$ (p%)
DECLARE SUB PutCur5 ()
DECLARE FUNCTION LineaT6$ (s%)
DECLARE SUB QBdecT6 ()
DECLARE SUB QBincT6 ()
DECLARE SUB PutCur4 ()
DECLARE SUB QBincT5 ()
DECLARE SUB QBdecT5 ()
DECLARE FUNCTION LineaT5$ (mto%)
DECLARE SUB QBputRel (d%)
DECLARE FUNCTION LineaT4$ (l%)
DECLARE SUB PutCur3 ()
DECLARE FUNCTION LineaT3$ (p%)
DECLARE SUB QBclearTab3 ()
DECLARE SUB PutCur2 ()
DECLARE SUB QBturn (a$)
DECLARE SUB QBsearch (cad$)
DECLARE SUB PutCur ()
DECLARE SUB QBcambTec (aa%)
DECLARE FUNCTION QBtec$ (n%, t%)
DECLARE FUNCTION QBexp2! (n%)
DECLARE SUB QBupdateScr ()
DECLARE FUNCTION QBexp# (n%)
DECLARE FUNCTION QBrest# (n%, e!)

DEFINT A-Z

SCREEN 0: WIDTH 80, 50

DIM SHARED Nombres$, Tipos$
DIM SHARED aju1#, aju2#
DIM SHARED Tabl, NX, NY, VX, VY, NX2, NY2, VX2, VY2, NX3, NY3, VX3, VY3
DIM SHARED NX4, NY4, VX4, VY4, NX5, NY5, VX5, VY5, NX6, NY6, VX6, VY6
DIM SHARED NX7, NY7, VX7, VY7, NX8, NY8, VX8, VY8
DIM SHARED NumTablExp
DIM SHARED NumPk
DIM SHARED PokeT2, IndexT2
DIM SHARED PokeT3, IndexT3
DIM SHARED IndexT4, IndexT7, IndexT7b, IndexT8
DIM SHARED Lista6
'aju1=2.3886126#; aju2=.02; res=1100000
'aju1=2.3639435#; aju2=.02; res=1000000
'aju1=2.33674   ; aju2=.02; res= 900000
'aju1=2.306413  ; aju2=.02; res= 800000
aju2# = .02

CLS

Tabl = 1
NumTablExp = 1
VX = 5: VY = 22: NX = 5: NY = 22
VX2 = 12: VY2 = 22: NX2 = 12: NY2 = 22
VX3 = 4: VY3 = 23: NX3 = 4: NY3 = 23
VX4 = 6: VY4 = 22: NX4 = 6: NY4 = 22
VX5 = 6: VY5 = 22: NX5 = 6: NY5 = 22
VX6 = 12: VY6 = 23: NX6 = 12: NY6 = 23
VX7 = 12: VY7 = 23: NX7 = 12: NY7 = 23

FOR i = 0 TO 255
  READ a$
  Nombres$ = Nombres$ + a$
NEXT i

FOR i = 0 TO 18
  READ a$
  Tipos$ = Tipos$ + a$
NEXT i

OPEN "C:\NEWPOKE1\ARCHIVOS\NOMB-OBJ.BIN" FOR BINARY AS #2
OPEN "D:\TABLAS-F.BIN" FOR BINARY AS #1

QBupdateScr
'QBsaveTablasExp
'QBclearTec2
'QBclearTab3
'QBcopyFile
'QBclearTab6
'END

DO
  ink$ = UCASE$(INKEY$)
  SELECT CASE ink$
    CASE "+"
      IF Tabl = 1 THEN
        NumTablExp = NumTablExp + 1: IF NumTablExp > 4 THEN NumTablExp = 1
        QBupdateScr
      ELSEIF Tabl = 2 THEN
        PokeT2 = PokeT2 + 1: IF PokeT2 > 255 THEN PokeT2 = 0
        QBupdateScr
      ELSEIF Tabl = 4 THEN
        QBputRel 1
      ELSEIF Tabl = 6 THEN
        Lista6 = Lista6 + 1: IF Lista6 = 64 THEN Lista6 = 0
        QBupdateScr
      ELSEIF Tabl = 7 THEN
        IndexT7b = IndexT7b + 1: IF IndexT7b = 67 THEN IndexT7b = 0
        QBupdateScr
      END IF
    CASE "-"
      IF Tabl = 1 THEN
        NumTablExp = NumTablExp - 1: IF NumTablExp < 1 THEN NumTablExp = 4
        QBupdateScr
      ELSEIF Tabl = 2 THEN
        PokeT2 = PokeT2 - 1: IF PokeT2 < 0 THEN PokeT2 = 255
        QBupdateScr
      ELSEIF Tabl = 4 THEN
        QBputRel 2
      ELSEIF Tabl = 6 THEN
        Lista6 = Lista6 - 1: IF Lista6 = -1 THEN Lista6 = 63
        QBupdateScr
      ELSEIF Tabl = 7 THEN
        IndexT7b = IndexT7b - 1: IF IndexT7b = -1 THEN IndexT7b = 66
        QBupdateScr
      END IF
    CASE CHR$(0) + ";": IF Tabl <> 1 THEN Tabl = 1: CLS : QBupdateScr
    CASE CHR$(0) + "<": IF Tabl <> 2 THEN Tabl = 2: CLS : QBupdateScr
    CASE CHR$(0) + "=": IF Tabl <> 3 THEN Tabl = 3: CLS : QBupdateScr
    CASE CHR$(0) + ">": IF Tabl <> 4 THEN Tabl = 4: CLS : QBupdateScr
    CASE CHR$(0) + "?": IF Tabl <> 5 THEN Tabl = 5: CLS : QBupdateScr
    CASE CHR$(0) + "@": IF Tabl <> 6 THEN Tabl = 6: CLS : QBupdateScr
    CASE CHR$(0) + "A": IF Tabl <> 7 THEN Tabl = 7: CLS : QBupdateScr
    CASE CHR$(0) + "B": IF Tabl <> 8 THEN Tabl = 8: CLS : QBupdateScr
    CASE CHR$(0) + "C": IF Tabl <> 9 THEN Tabl = 9: CLS : QBupdateScr
    CASE CHR$(0) + "H"
      IF Tabl = 2 AND IndexT2 > 0 AND VY = 22 THEN IndexT2 = IndexT2 - 1: QBupdateScr
      IF Tabl = 2 AND VY > 22 THEN NY = NY - 1: PutCur
      IF Tabl = 3 AND IndexT3 > 0 AND VY2 = 22 THEN IndexT3 = IndexT3 - 1: QBupdateScr
      IF Tabl = 3 AND VY2 > 22 THEN NY2 = NY2 - 1: PutCur2
      IF Tabl = 4 AND VY3 > 23 THEN NY3 = NY3 - 1: PutCur3
      IF Tabl = 5 AND VY4 = 22 AND IndexT4 > 0 THEN IndexT4 = IndexT4 - 1: QBupdateScr
      IF Tabl = 5 AND VY4 > 22 THEN NY4 = NY4 - 1: PutCur4
      IF Tabl = 6 AND VY5 > 22 THEN NY5 = NY5 - 1: PutCur5
      IF Tabl = 7 AND VY6 = 23 AND IndexT7 > 0 THEN IndexT7 = IndexT7 - 1: QBupdateScr
      IF Tabl = 7 AND VY6 > 23 THEN NY6 = NY6 - 1: PutCur6
      IF Tabl = 8 AND VY7 = 23 AND IndexT8 > 0 THEN IndexT8 = IndexT8 - 1: QBupdateScr
      IF Tabl = 8 AND VY7 > 23 THEN NY7 = NY7 - 1: PutCur7
    CASE CHR$(0) + "P"
      IF Tabl = 2 AND IndexT2 < 75 AND VY = 47 THEN IndexT2 = IndexT2 + 1: QBupdateScr
      IF Tabl = 2 AND VY < 47 THEN NY = NY + 1: PutCur
      IF Tabl = 3 AND IndexT3 < 230 AND VY2 = 47 THEN IndexT3 = IndexT3 + 1: QBupdateScr
      IF Tabl = 3 AND VY2 < 47 THEN NY2 = NY2 + 1: PutCur2
      IF Tabl = 4 AND VY3 < 41 THEN NY3 = NY3 + 1: PutCur3
      IF Tabl = 5 AND VY4 = 47 AND IndexT4 < 41 THEN IndexT4 = IndexT4 + 1: QBupdateScr
      IF Tabl = 5 AND VY4 < 47 THEN NY4 = NY4 + 1: PutCur4
      IF Tabl = 6 AND VY5 < 41 THEN NY5 = NY5 + 1: PutCur5
      IF Tabl = 7 AND VY6 = 48 AND IndexT7 < 230 THEN IndexT7 = IndexT7 + 1: QBupdateScr
      IF Tabl = 7 AND VY6 < 48 THEN NY6 = NY6 + 1: PutCur6
      IF Tabl = 8 AND VY7 = 48 AND IndexT8 < 230 THEN IndexT8 = IndexT8 + 1: QBupdateScr
      IF Tabl = 8 AND VY7 < 48 THEN NY7 = NY7 + 1: PutCur7
    CASE CHR$(0) + "K"
      IF Tabl = 2 AND VX > 5 THEN NX = NX - 13: PutCur
      IF Tabl = 3 THEN
        SELECT CASE NX2
          CASE 22: NX2 = 12: PutCur2
          CASE 32: NX2 = 22: PutCur2
          CASE 36: NX2 = 32: PutCur2
          CASE 40: NX2 = 36: PutCur2
          CASE 44: NX2 = 40: PutCur2
          CASE 48: NX2 = 44: PutCur2
          CASE 52: NX2 = 48: PutCur2
        END SELECT
      END IF
      IF Tabl = 4 AND VX3 > 4 THEN NX3 = NX3 - 2: PutCur3
      IF Tabl = 5 THEN QBdecT5
      IF Tabl = 6 THEN QBdecT6
      IF Tabl = 7 THEN
        mto& = IndexT7b
        pk& = IndexT7 + VY6 - 23
        a$ = " "
        GET #1, mto& * 257 + pk& + 83816 + 2, a$
        IF a$ = CHR$(0) THEN a$ = CHR$(1): PUT #1, mto& * 257 + pk& + 83816 + 2, a$ ELSE a$ = CHR$(0): PUT #1, mto& * 257 + pk& + 83816 + 2, a$
        QBupdateScr
      END IF
      IF Tabl = 8 THEN
        pk& = NY7 + IndexT8 - 23
        ap& = pk& * 2 + 100970
        a$ = " "
        GET #1, ap&, a$
        a = ASC(a$) - 1: IF a < 0 THEN a = 255
        a$ = CHR$(a)
        PUT #1, ap&, a$
        QBupdateScr
      END IF
    CASE CHR$(0) + "M"
      IF Tabl = 2 AND VX < 31 THEN NX = NX + 13: PutCur
      IF Tabl = 3 THEN
        SELECT CASE NX2
          CASE 12: NX2 = 22: PutCur2
          CASE 22: NX2 = 32: PutCur2
          CASE 32: NX2 = 36: PutCur2
          CASE 36: NX2 = 40: PutCur2
          CASE 40: NX2 = 44: PutCur2
          CASE 44: NX2 = 48: PutCur2
          CASE 48: NX2 = 52: PutCur2
        END SELECT
      END IF
      IF Tabl = 4 AND VX3 < 40 THEN NX3 = NX3 + 2: PutCur3
      IF Tabl = 5 THEN QBincT5
      IF Tabl = 6 THEN QBincT6
      IF Tabl = 7 THEN
        mto& = IndexT7b
        pk& = IndexT7 + VY6 - 23
        a$ = " "
        GET #1, mto& * 257 + pk& + 83816 + 2, a$
        IF a$ = CHR$(0) THEN a$ = CHR$(1): PUT #1, mto& * 257 + pk& + 83816 + 2, a$ ELSE a$ = CHR$(0): PUT #1, mto& * 257 + pk& + 83816 + 2, a$
        QBupdateScr
      END IF
      IF Tabl = 8 THEN
        pk& = NY7 + IndexT8 - 23
        ap& = pk& * 2 + 100970
        a$ = " "
        GET #1, ap&, a$
        a = ASC(a$) + 1: IF a > 255 THEN a = 0
        a$ = CHR$(a)
        PUT #1, ap&, a$
        QBupdateScr
      END IF
    CASE "["
      IF Tabl = 2 THEN QBcambTec -1: QBupdateScr
    CASE "]"
      IF Tabl = 2 THEN QBcambTec 1: QBupdateScr
    CASE CHR$(0) + "I"
      IF Tabl = 2 THEN
        IndexT2 = IndexT2 - 26: IF IndexT2 < 0 THEN IndexT2 = 0
        QBupdateScr
      END IF
      IF Tabl = 3 THEN
        IndexT3 = IndexT3 - 26: IF IndexT3 < 0 THEN IndexT3 = 0
        QBupdateScr
      END IF
      IF Tabl = 7 THEN
        IndexT7 = IndexT7 - 26: IF IndexT7 < 0 THEN IndexT7 = 0
        QBupdateScr
      END IF
      IF Tabl = 8 THEN
        IndexT8 = IndexT8 - 26: IF IndexT8 < 0 THEN IndexT8 = 0
        QBupdateScr
      END IF
    CASE CHR$(0) + "Q"
      IF Tabl = 2 THEN
        IndexT2 = IndexT2 + 26: IF IndexT2 > 75 THEN IndexT2 = 75
        QBupdateScr
      END IF
      IF Tabl = 3 THEN
        IndexT3 = IndexT3 + 26: IF IndexT3 > 230 THEN IndexT3 = 230
        QBupdateScr
      END IF
      IF Tabl = 7 THEN
        IndexT7 = IndexT7 + 26: IF IndexT7 > 230 THEN IndexT7 = 230
        QBupdateScr
      END IF
      IF Tabl = 8 THEN
        IndexT8 = IndexT8 + 26: IF IndexT8 > 230 THEN IndexT8 = 230
        QBupdateScr
      END IF
    CASE CHR$(0) + "G": IF Tabl = 2 THEN IndexT2 = 0: NY = 22: QBupdateScr
    CASE CHR$(0) + "O": IF Tabl = 2 THEN IndexT2 = 75: NY = 47: QBupdateScr
    CASE "A" TO "Z": IF Tabl = 2 THEN QBsearch ink$: QBupdateScr
    CASE "4" TO "9": IF Tabl = 3 THEN QBturn ink$
    CASE "0": IF Tabl = 4 THEN QBputRel 0
    CASE ".": IF Tabl = 4 THEN QBputRel 3
  END SELECT
LOOP UNTIL ink$ = CHR$(27)
 
CLOSE
SHELL "copy /y d:\tablas-f.bin c:\newpoke1\archivos"

END

DATA "NUM. PERD "
DATA "BULBASAUR ","IVYSAUR   ","VENUSAUR  ","CHARMANDER"
DATA "CHARMELEON","CHARIZARD ","SQUIRTLE  ","WARTORTLE "
DATA "BLASTOISE ","CATERPIE  ","METAPOD   ","BUTTERFREE"
DATA "WEEDLE    ","KAKUNA    ","BEEDRILL  ","PIDGEY    "
DATA "PIDGEOTTO ","PIDGEOT   ","RATTATA   ","RATICATE  "
DATA "SPEAROW   ","FEAROW    ","EKANS     ","ARBOK     "
DATA "PIKACHU   ","RAICHU    ","SANDSHREW ","SANDSLASH "
DATA "NIDORAN HE","NIDORINA  ","NIDOQUEEN ","NIDORAN MA"
DATA "NIDORINO  ","NIDOKING  ","CLEFAIRY  ","CLEFABLE  "
DATA "VULPIX    ","NINETALES ","JIGGLYPUFF","WIGGLYTUFF"
DATA "ZUBAT     ","GOLBAT    ","ODDISH    ","GLOOM     "
DATA "VILEPLUME ","PARAS     ","PARASECT  ","VENONAT   "
DATA "VENOMOTH  ","DIGLETT   ","DUGTRIO   ","MEOWTH    "
DATA "PERSIAN   ","PSYDUCK   ","GOLDUCK   ","MANKEY    "
DATA "PRIMEAPE  ","GROWLITHE ","ARCANINE  ","POLIWAG   "
DATA "POLIWHIRL ","POLIWRATH ","ABRA      ","KADABRA   "
DATA "ALAKAZAM  ","MACHOP    ","MACHOKE   ","MACHAMP   "
DATA "BELLSPROUT","WEEPINBELL","VICTREEBEL","TENTACOOL "
DATA "TENTACRUEL","GEODUDE   ","GRAVELER  ","GOLEM     "
DATA "PONYTA    ","RAPIDASH  ","SLOWPOKE  ","SLOWBRO   "
DATA "MAGNEMITE ","MAGNETON  ","FARFETCH'D","DODUO     "
DATA "DODRIO    ","SEEL      ","DEWGONG   ","GRIMER    "
DATA "MUK       ","SHELLDER  ","CLOYSTER  ","GASTLY    "
DATA "HAUNTER   ","GENGAR    ","ONIX      ","DROWZEE   "
DATA "HYPNO     ","KRABBY    ","KINGLER   ","VOLTORB   "
DATA "ELECTRODE ","EXEGGCUTE ","EXEGUTOR  ","CUBONE    "
DATA "MAROWAK   ","HITMONLEE ","HITMONCHAN","LICKITUNG "
DATA "KOFFING   ","WEEZING   ","RHYHORN   ","RHYDON    "
DATA "CHANSEY   ","TANGELA   ","KANGASKHAN","HORSEA    "
DATA "SEADRA    ","GOLDEEN   ","SEAKING   ","STARYU    "
DATA "STARMIE   ","MR. MIME  ","SCYTHER   ","JYNX      "
DATA "ELECTRABUZ","MAGMAR    ","PINSIR    ","TAUROS    "
DATA "MAGICARP  ","GYARADOS  ","LAPRAS    ","DITTO     "
DATA "EEVEE     ","VAPOREON  ","JOLTEON   ","FLAREON   "
DATA "PORYGON   ","OMANYTE   ","OMASTAR   ","KABUTO    "
DATA "KABUTOPS  ","AERODACTYL","SNORLAX   ","ARTICUNO  "
DATA "ZAPDOS    ","MOLTRES   ","DRATINI   ","DRAGONAIR "
DATA "DRAGONITE ","MEWTWO    ","MEW       ","CHIKORITA "
DATA "BAYLEEF   ","MEGANIUM  ","CYNDAQUIL ","QUILAVA   "
DATA "THPHLOSION","TOTODILE  ","CROCONAW  ","FERALIGATR"
DATA "SENTRET   ","FURRET    ","HOOTHOOT  ","NOCTOWL   "
DATA "LEDYBA    ","LEDIAN    ","SPINARAK  ","ARIADOS   "
DATA "CROBAT    ","CHINCHOU  ","LANTURN   ","PICHU     "
DATA "CLEFFA    ","IGGLYBUFF ","TOGEPI    ","TOGETIC   "
DATA "NATU      ","XATU      ","MAREEP    ","FLAAFFY   "
DATA "AMPHAROS  ","BELLOSOM  ","MARILL    ","AZUMARILL "
DATA "SUDOWOODO ","POLITOED  ","HOPPIP    ","SKIPLOOM  "
DATA "JUMPLUFF  ","AIPOM     ","SUNKERN   ","SUNFLORA  "
DATA "YANMA     ","WOOPER    ","QUAGSIRE  ","ESPEON    "
DATA "UMBREON   ","MURKROW   ","SLOWKING  ","MISDREAVUS"
DATA "UNKNOWN   ","WOBBUFFET ","GIRAFARIG ","PINECO    "
DATA "FORRETRESS","DUNSPARCE ","GLIGAR    ","STEELIX   "
DATA "SNUBBULL  ","GRANBULL  ","QWILFISH  ","SCIZOR    "
DATA "SHUCKLE   ","HERACROSS ","SNEASEL   ","TEDDIURSA "
DATA "URSARING  ","SLUGMA    ","MAGCARGO  ","SWINUB    "
DATA "PILOSWINE ","CORSOLA   ","REMORAID  ","OCTILLERY "
DATA "DELIBIRD  ","MANTINE   ","SKARMORY  ","HOUNDOUR  "
DATA "HOUNDOOM  ","KINGDRA   ","PHANPY    ","DONPHAN   "
DATA "PORYGON2  ","STANTLER  ","SMEARGLE  ","TYROGUE   "
DATA "HITMONTOP ","SMOOCHUM  ","ELEKID    ","MAGBY     "
DATA "MILTANK   ","BLISSEY   ","RAIKOU    ","ENTEI     "
DATA "SUICUNE   ","LARVITAR  ","PUPITAR   ","TYRANITAR "
DATA "LUGIA     ","HO-OH     ","CELEBI    "
DATA "NUM. PERD1","NUM. PERD2","NUM. PERD3","NUM. PERD4"

DATA "----     "
DATA "¨?       "
DATA "ACERO    "
DATA "AGUA     "
DATA "BICHO    "
DATA "DRAG¢N   "
DATA "ELCTRICO"
DATA "FANTASMA "
DATA "FUEGO    "
DATA "HIELO    "
DATA "LUCHA    "
DATA "NORMAL   "
DATA "PLANTA   "
DATA "PS¡QUICO "
DATA "ROCA     "
DATA "SINIESTRO"
DATA "TIERRA   "
DATA "VENENO   "
DATA "VOLADOR  "

FUNCTION LineaT3$ (p)
 
 
 
 
 
  l1& = p
  a$ = " ": GET #1, l1& * 13 + 78781, a$: t1 = ASC(a$)
  a$ = " ": GET #1, l1& * 13 + 78782, a$: t2 = ASC(a$)
  a$ = "  ": GET #1, l1& * 13 + 78783, a$
    d1 = ASC(MID$(a$, 1, 1))
    d2 = ASC(MID$(a$, 2, 1))
    ps = d1 * 256 + d2
  a$ = "  ": GET #1, l1& * 13 + 78785, a$
    d1 = ASC(MID$(a$, 1, 1))
    d2 = ASC(MID$(a$, 2, 1))
    at = d1 * 256 + d2
  a$ = "  ": GET #1, l1& * 13 + 78787, a$
    d1 = ASC(MID$(a$, 1, 1))
    d2 = ASC(MID$(a$, 2, 1))
    df = d1 * 256 + d2
  a$ = "  ": GET #1, l1& * 13 + 78789, a$
    d1 = ASC(MID$(a$, 1, 1))
    d2 = ASC(MID$(a$, 2, 1))
    vel = d1 * 256 + d2
  a$ = "  ": GET #1, l1& * 13 + 78791, a$
    d1 = ASC(MID$(a$, 1, 1))
    d2 = ASC(MID$(a$, 2, 1))
    esp = d1 * 256 + d2
  a$ = " ": GET #1, l1& * 13 + 78793, a$: ta = ASC(a$)
  b$ = SPACE$(59)
  MID$(b$, 2, 10) = MID$(Nombres$, p * 10 + 1, 10)
  MID$(b$, 13, 9) = MID$(Tipos$, t1 * 9 + 1, 9)
  MID$(b$, 23, 9) = MID$(Tipos$, t2 * 9 + 1, 9)
  c$ = LTRIM$(RTRIM$(STR$(ps))):  MID$(b$, 33, 3) = SPACE$(3 - LEN(c$)) + c$
  c$ = LTRIM$(RTRIM$(STR$(at))):  MID$(b$, 37, 3) = SPACE$(3 - LEN(c$)) + c$
  c$ = LTRIM$(RTRIM$(STR$(df))):  MID$(b$, 41, 3) = SPACE$(3 - LEN(c$)) + c$
  c$ = LTRIM$(RTRIM$(STR$(vel))): MID$(b$, 45, 3) = SPACE$(3 - LEN(c$)) + c$
  c$ = LTRIM$(RTRIM$(STR$(esp))): MID$(b$, 49, 3) = SPACE$(3 - LEN(c$)) + c$
  IF ta = 0 THEN c$ = " 800000"
  IF ta = 1 THEN c$ = " 900000"
  IF ta = 2 THEN c$ = "1000000"
  IF ta = 3 THEN c$ = "1100000"
  MID$(b$, 53, 7) = c$
  LineaT3$ = b$
END FUNCTION

FUNCTION LineaT4$ (l)
 
 
 
 
 
  a$ = SPACE$(19): l1& = l: GET #1, l1& * 19 + 82109, a$
  b$ = SPACE$(60)
  FOR e = 0 TO 18
    GOSUB SubSetPoint
    MID$(b$, e * 2 + 5, 1) = c$
    SELECT CASE l
      CASE 0: MID$(b$, 2, 2) = "--"
      CASE 1: MID$(b$, 2, 2) = "¨?"
      CASE 2: MID$(b$, 2, 2) = "Ac"
      CASE 3: MID$(b$, 2, 2) = "Ag"
      CASE 4: MID$(b$, 2, 2) = "Bi"
      CASE 5: MID$(b$, 2, 2) = "Dr"
      CASE 6: MID$(b$, 2, 2) = "El"
      CASE 7: MID$(b$, 2, 2) = "Fa"
      CASE 8: MID$(b$, 2, 2) = "Fu"
      CASE 9: MID$(b$, 2, 2) = "Hi"
      CASE 10: MID$(b$, 2, 2) = "Lu"
      CASE 11: MID$(b$, 2, 2) = "No"
      CASE 12: MID$(b$, 2, 2) = "Pl"
      CASE 13: MID$(b$, 2, 2) = "Ps"
      CASE 14: MID$(b$, 2, 2) = "Ro"
      CASE 15: MID$(b$, 2, 2) = "Si"
      CASE 16: MID$(b$, 2, 2) = "Ti"
      CASE 17: MID$(b$, 2, 2) = "Ve"
      CASE 18: MID$(b$, 2, 2) = "Vo"
    END SELECT
  NEXT e
  LineaT4$ = b$
  EXIT FUNCTION

SubSetPoint:
  a = ASC(MID$(a$, e + 1, 1))
  IF a = 0 THEN c$ = "-"
  IF a = 1 THEN c$ = "B"
  IF a = 2 THEN c$ = "M"
  IF a > 2 THEN c$ = "N"
  RETURN

END FUNCTION

FUNCTION LineaT5$ (mto)
 
 
 
 
 
  l1& = mto: a$ = " ": GET #1, l1& + 82470, a$: t = ASC(a$) + 1
  a$ = SPACE$(12): GET #2, t * 15 + 3841, a$
  a$ = "MT00  " + a$
  IF mto < 60 THEN b$ = LTRIM$(RTRIM$(STR$(mto + 1))) ELSE b$ = LTRIM$(RTRIM$(STR$(mto - 59))): MID$(a$, 2, 1) = "O"
  MID$(a$, 5 - LEN(b$), LEN(b$)) = b$
  LineaT5$ = a$
END FUNCTION

FUNCTION LineaT6$ (s)
 
 
 
 
 
  a$ = LTRIM$(RTRIM$(STR$(s))): b$ = " P 00 ": MID$(b$, 6 - LEN(a$), LEN(a$)) = a$
  a$ = " ": l1& = Lista6 * 20 + s: GET #1, l1& + 82537, a$: obje = ASC(a$)
  IF obje = 0 THEN LineaT6 = b$ + "------" + SPACE$(14): EXIT FUNCTION
  a$ = SPACE$(15): GET #2, obje * 15 + 1, a$: n$ = MID$(a$, 1, 12)
  d2 = ASC(MID$(a$, 14, 1)): d1 = ASC(MID$(a$, 15, 1)): pre = d1 * 256 + d2: a$ = LTRIM$(RTRIM$(STR$(pre))): a$ = SPACE$(5 - LEN(a$)) + a$
  LineaT6$ = b$ + n$ + " $" + a$
END FUNCTION

FUNCTION LineaT7$ (p)
  pon$ = MID$(Nombres$, p * 10 + 1, 10) + "  "
  pk& = p
  mto& = IndexT7b
  ap& = mto& * 257 + pk& + 83816 + 2
  a$ = " "
  GET #1, ap&, a$
  IF a$ = CHR$(0) THEN pon$ = pon$ + "NO PUEDE" ELSE pon$ = pon$ + "PUEDE   "
  LineaT7$ = pon$
END FUNCTION

FUNCTION LineaT8$ (p)
  pon$ = MID$(Nombres$, p * 10 + 1, 10) + "  "
  pk& = p
  ap& = pk& * 2 + 100969
  a$ = "  "
  GET #1, ap&, a$
  d1 = ASC(MID$(a$, 1, 1))
  d2 = ASC(MID$(a$, 2, 1))
  a = d1 * 256 + d2
  a$ = LTRIM$(RTRIM$(STR$(a)))
  b$ = "000"
  MID$(b$, 4 - LEN(a$), LEN(a$)) = a$
  LineaT8$ = pon$ + b$
END FUNCTION

SUB PutCur
  LOCATE VY, VX: PRINT " "
  LOCATE NY, NX: PRINT ">"
  VX = NX: VY = NY
END SUB

SUB PutCur2
  LOCATE VY2, VX2: PRINT " "
  LOCATE NY2, NX2: PRINT ">"
  VX2 = NX2: VY2 = NY2
END SUB

SUB PutCur3
  LOCATE VY3, VX3: PRINT " "
  LOCATE NY3, NX3: PRINT ">"
  VX3 = NX3: VY3 = NY3
END SUB

SUB PutCur4
  LOCATE VY4, VX4: PRINT " "
  LOCATE NY4, NX4: PRINT ">"
  VX4 = NX4: VY4 = NY4
END SUB

SUB PutCur5
  LOCATE VY5, VX5: PRINT " "
  LOCATE NY5, NX5: PRINT ">"
  VX5 = NX5: VY5 = NY5
END SUB

SUB PutCur6
  LOCATE VY6, VX6: PRINT " "
  LOCATE NY6, NX6: PRINT ">"
  VX6 = NX6: VY6 = NY6
END SUB

SUB PutCur7
  LOCATE VY7, VX7: PRINT " "
  LOCATE NY7, NX7: PRINT ">"
  VX7 = NX7: VY7 = NY7
END SUB

SUB QBcambTec (aa)
  y = NY - 22 + IndexT2
  IF NX = 5 THEN x = 0
  IF NX = 18 THEN x = 1
  IF NX = 31 THEN x = 2
  a$ = " "
  lll1! = PokeT2
  lll2! = y * 3 + x + 1213
  GET #1, lll1! * 303 + lll2!, a$
  a = ASC(a$) + aa
  IF a = -1 THEN a = 255
  IF a = 256 THEN a = 0
  a$ = CHR$(a)
  PUT #1, lll1! * 303 + lll2!, a$
END SUB

SUB QBclearTab3
  a$ = CHR$(0)
  FOR i = 1 TO 3328
    PUT #1, i + 78780, a$
  NEXT i
END SUB

SUB QBclearTab6
  a$ = CHR$(0)
  FOR i = 1 TO 1280
    PUT #1, i + 82536, a$
  NEXT i
END SUB

SUB QBclearTec2
  FOR i! = 1 TO 77568
    a$ = CHR$(0)
    PUT #1, i! + 1212, a$
  NEXT i!
END SUB

SUB QBcopyFile
  FOR i& = 1 TO 83816
    a$ = " ": GET #1, i&, a$: PUT #3, i&, a$
    LOCATE 1, 1: PRINT FIX(i& * 100 / 82469)
  NEXT i&
END SUB

SUB QBdecT5
  mto = IndexT4 + NY4 - 22
  l1& = mto: a$ = " ": GET #1, l1& + 82470, a$
  a = ASC(a$) - 1: IF a < 0 THEN a = 253
  a$ = CHR$(a)
  PUT #1, l1& + 82470, a$
  QBupdateScr
END SUB

SUB QBdecT6
  l1& = Lista6 * 20 + NY5 - 22: a$ = " ": GET #1, l1& + 82537, a$
  a = ASC(a$) - 1: IF a < 0 THEN a = 255
  a$ = CHR$(a)
  PUT #1, l1& + 82537, a$
  QBupdateScr
END SUB

FUNCTION QBexp# (n)
  exper# = 4
  FOR x = 0 TO n
    x1# = (x + 50) / 5
    y# = aju1# * (.7 ^ x1# * x1#) + aju2#
    exper# = exper# + exper# * y#
  NEXT x
  QBexp# = exper#
END FUNCTION

FUNCTION QBexp2! (n)
  c$ = "   "
  a! = (NumTablExp - 1) * 303 + n * 3 + 1
  GET #1, a!, c$
  b1! = ASC(MID$(c$, 3, 1))
  b2! = ASC(MID$(c$, 2, 1))
  b3! = ASC(MID$(c$, 1, 1))
  bt! = b3! * 256 * 256 + b2! * 256 + b1!
  QBexp2! = bt!
END FUNCTION

SUB QBincT5
  mto = IndexT4 + NY4 - 22
  l1& = mto: a$ = " ": GET #1, l1& + 82470, a$
  a = ASC(a$) + 1: IF a > 253 THEN a = 0
  a$ = CHR$(a)
  PUT #1, l1& + 82470, a$
  QBupdateScr
END SUB

SUB QBincT6
  l1& = Lista6 * 20 + NY5 - 22: a$ = " ": GET #1, l1& + 82537, a$
  a = ASC(a$) + 1: IF a > 255 THEN a = 0
  a$ = CHR$(a)
  PUT #1, l1& + 82537, a$
  QBupdateScr
END SUB

SUB QBputRel (d)
  y = NY3 - 23: x = (NX3 - 4) / 2
  l1& = y * 19 + x
  a$ = CHR$(d)
  PUT #1, l1& + 82109, a$
  QBupdateScr
END SUB

FUNCTION QBrest# (n, e!)
  exper# = 4
  FOR x = 0 TO n
    x1# = (x + 50) / 5
    y# = aju1# * (.7 ^ x1# * x1#) + aju2#
    exper# = exper# + exper# * y#
  NEXT x
  QBrest# = exper# - e!
END FUNCTION

SUB QBrndTec2
  FOR i! = 1 TO 77568
    a = FIX(RND(1) * 256)
    a$ = CHR$(a)
    PUT #1, i! + 1212, a$
  NEXT i!
END SUB

SUB QBsaveTablasExp
  FOR t = 0 TO 3
    FOR n = 0 TO 100
      IF t = 3 THEN aju1# = 2.3886126#
      IF t = 2 THEN aju1# = 2.3639435#
      IF t = 1 THEN aju1# = 2.33674
      IF t = 0 THEN aju1# = 2.306413
       e! = FIX(QBexp(n))
       a! = t * 303 + n * 3 + 1
      IF n = 0 THEN e! = 0
      PRINT a!; e!;
      b1! = e! MOD 256
       e! = (e! - b1!) / 256
      b2! = e! MOD 256
       e! = (e! - b2!) / 256
      b3! = e!
      PRINT b3!; b2!; b1!
      b1$ = CHR$(b1!)
      b2$ = CHR$(b2!)
      b3$ = CHR$(b3!)
      bt$ = b3$ + b2$ + b1$
      PUT #1, a!, bt$
    NEXT n
  NEXT t
END SUB

SUB QBsearch (cad$)
  y = NY - 22 + IndexT2
  IF NX = 5 THEN x = 0
  IF NX = 18 THEN x = 1
  IF NX = 31 THEN x = 2
  FOR i = 1 TO 255
    a$ = SPACE$(12)
    GET #2, i * 15 + 3841, a$
    IF MID$(a$, 1, 1) = cad$ THEN EXIT FOR
  NEXT i
  IF i < 255 THEN
    a$ = CHR$(i)
    ll1! = PokeT2
    ll2! = y * 3 + x
    ll3! = ll1! * 303 + ll2! + 1213
    PUT #1, ll3!, a$
  END IF
END SUB

FUNCTION QBtec$ (n, t)
  a$ = SPACE$(3)
  l1! = PokeT2
  l2! = n * 3 + 1213
  GET #1, l1! * 303 + l2!, a$
  a = ASC(MID$(a$, t, 1))
  a$ = SPACE$(12)
  GET #2, a * 15 + 3841, a$
  IF a$ = SPACE$(12) THEN a$ = "NINGUNA     "
  QBtec$ = a$
END FUNCTION

SUB QBturn (a$)
  SELECT CASE a$
    CASE "9"
      IF NX2 = 12 THEN
        l1& = IndexT3 + NY2 - 22
        b$ = " ": GET #1, l1& * 13 + 78781, b$: t1 = ASC(b$) + 1: IF t1 > 18 THEN t1 = 0
        b$ = CHR$(t1): PUT #1, l1& * 13 + 78781, b$: QBupdateScr
      END IF
      IF NX2 = 22 THEN
        l1& = IndexT3 + NY2 - 22
        b$ = " ": GET #1, l1& * 13 + 78782, b$: t2 = ASC(b$) + 1: IF t2 > 18 THEN t2 = 0
        b$ = CHR$(t2): PUT #1, l1& * 13 + 78782, b$: QBupdateScr
      END IF
      IF NX2 = 32 THEN
        l1& = IndexT3 + NY2 - 22
        b$ = "  ": GET #1, l1& * 13 + 78783, b$: d1 = ASC(MID$(b$, 1, 1)): d2 = ASC(MID$(b$, 2, 1)): ps = d1 * 256 + d2 + 1: IF ps > 999 THEN ps = ps - 1000
        d2 = ps MOD 256: d1 = (ps - d2) / 256: b$ = CHR$(d1) + CHR$(d2): PUT #1, l1& * 13 + 78783, b$: QBupdateScr
      END IF
      IF NX2 = 36 THEN
        l1& = IndexT3 + NY2 - 22
        b$ = "  ": GET #1, l1& * 13 + 78785, b$: d1 = ASC(MID$(b$, 1, 1)): d2 = ASC(MID$(b$, 2, 1)): at = d1 * 256 + d2 + 1: IF at > 999 THEN at = at - 1000
        d2 = at MOD 256: d1 = (at - d2) / 256: b$ = CHR$(d1) + CHR$(d2): PUT #1, l1& * 13 + 78785, b$: QBupdateScr
      END IF
      IF NX2 = 40 THEN
        l1& = IndexT3 + NY2 - 22
        b$ = "  ": GET #1, l1& * 13 + 78787, b$: d1 = ASC(MID$(b$, 1, 1)): d2 = ASC(MID$(b$, 2, 1)): df = d1 * 256 + d2 + 1: IF df > 999 THEN df = df - 1000
        d2 = df MOD 256: d1 = (df - d2) / 256: b$ = CHR$(d1) + CHR$(d2): PUT #1, l1& * 13 + 78787, b$: QBupdateScr
      END IF
      IF NX2 = 44 THEN
        l1& = IndexT3 + NY2 - 22
        b$ = "  ": GET #1, l1& * 13 + 78789, b$: d1 = ASC(MID$(b$, 1, 1)): d2 = ASC(MID$(b$, 2, 1)): vel = d1 * 256 + d2 + 1: IF vel > 999 THEN vel = vel - 1000
        d2 = vel MOD 256: d1 = (vel - d2) / 256: b$ = CHR$(d1) + CHR$(d2): PUT #1, l1& * 13 + 78789, b$: QBupdateScr
      END IF
      IF NX2 = 48 THEN
        l1& = IndexT3 + NY2 - 22
        b$ = "  ": GET #1, l1& * 13 + 78791, b$: d1 = ASC(MID$(b$, 1, 1)): d2 = ASC(MID$(b$, 2, 1)): esp = d1 * 256 + d2 + 1: IF esp > 999 THEN esp = esp - 1000
        d2 = esp MOD 256: d1 = (esp - d2) / 256: b$ = CHR$(d1) + CHR$(d2): PUT #1, l1& * 13 + 78791, b$: QBupdateScr
      END IF
      IF NX2 = 52 THEN
        l1& = IndexT3 + NY2 - 22
        b$ = " ": GET #1, l1& * 13 + 78793, b$: xp = ASC(b$) + 1: IF xp > 3 THEN xp = 0
        b$ = CHR$(xp): PUT #1, l1& * 13 + 78793, b$: QBupdateScr
      END IF
    CASE "6"
      IF NX2 = 12 THEN
        l1& = IndexT3 + NY2 - 22
        b$ = " ": GET #1, l1& * 13 + 78781, b$: t1 = ASC(b$) - 1: IF t1 < 0 THEN t1 = 18
        b$ = CHR$(t1): PUT #1, l1& * 13 + 78781, b$: QBupdateScr
      END IF
      IF NX2 = 22 THEN
        l1& = IndexT3 + NY2 - 22
        b$ = " ": GET #1, l1& * 13 + 78782, b$: t2 = ASC(b$) - 1: IF t2 < 0 THEN t2 = 18
        b$ = CHR$(t2): PUT #1, l1& * 13 + 78782, b$: QBupdateScr
      END IF
      IF NX2 = 32 THEN
        l1& = IndexT3 + NY2 - 22
        b$ = "  ": GET #1, l1& * 13 + 78783, b$: d1 = ASC(MID$(b$, 1, 1)): d2 = ASC(MID$(b$, 2, 1)): ps = d1 * 256 + d2 - 1: IF ps < 0 THEN ps = ps + 1000
        d2 = ps MOD 256: d1 = (ps - d2) / 256: b$ = CHR$(d1) + CHR$(d2): PUT #1, l1& * 13 + 78783, b$: QBupdateScr
      END IF
      IF NX2 = 36 THEN
        l1& = IndexT3 + NY2 - 22
        b$ = "  ": GET #1, l1& * 13 + 78785, b$: d1 = ASC(MID$(b$, 1, 1)): d2 = ASC(MID$(b$, 2, 1)): at = d1 * 256 + d2 - 1: IF at < 0 THEN at = at + 1000
        d2 = at MOD 256: d1 = (at - d2) / 256: b$ = CHR$(d1) + CHR$(d2): PUT #1, l1& * 13 + 78785, b$: QBupdateScr
      END IF
      IF NX2 = 40 THEN
        l1& = IndexT3 + NY2 - 22
        b$ = "  ": GET #1, l1& * 13 + 78787, b$: d1 = ASC(MID$(b$, 1, 1)): d2 = ASC(MID$(b$, 2, 1)): df = d1 * 256 + d2 - 1: IF df < 0 THEN df = df + 1000
        d2 = df MOD 256: d1 = (df - d2) / 256: b$ = CHR$(d1) + CHR$(d2): PUT #1, l1& * 13 + 78787, b$: QBupdateScr
      END IF
      IF NX2 = 44 THEN
        l1& = IndexT3 + NY2 - 22
        b$ = "  ": GET #1, l1& * 13 + 78789, b$: d1 = ASC(MID$(b$, 1, 1)): d2 = ASC(MID$(b$, 2, 1)): vel = d1 * 256 + d2 - 1: IF vel < 0 THEN vel = vel + 1000
        d2 = vel MOD 256: d1 = (vel - d2) / 256: b$ = CHR$(d1) + CHR$(d2): PUT #1, l1& * 13 + 78789, b$: QBupdateScr
      END IF
      IF NX2 = 48 THEN
        l1& = IndexT3 + NY2 - 22
        b$ = "  ": GET #1, l1& * 13 + 78791, b$: d1 = ASC(MID$(b$, 1, 1)): d2 = ASC(MID$(b$, 2, 1)): esp = d1 * 256 + d2 - 1: IF esp < 0 THEN esp = esp + 1000
        d2 = esp MOD 256: d1 = (esp - d2) / 256: b$ = CHR$(d1) + CHR$(d2): PUT #1, l1& * 13 + 78791, b$: QBupdateScr
      END IF
      IF NX2 = 52 THEN
        l1& = IndexT3 + NY2 - 22
        b$ = " ": GET #1, l1& * 13 + 78793, b$: xp = ASC(b$) - 1: IF xp < 0 THEN xp = 3
        b$ = CHR$(xp): PUT #1, l1& * 13 + 78793, b$: QBupdateScr
      END IF
    CASE "8"
      IF NX2 = 32 THEN
        l1& = IndexT3 + NY2 - 22
        b$ = "  ": GET #1, l1& * 13 + 78783, b$: d1 = ASC(MID$(b$, 1, 1)): d2 = ASC(MID$(b$, 2, 1)): ps = d1 * 256 + d2 + 10: IF ps > 999 THEN ps = ps - 1000
        d2 = ps MOD 256: d1 = (ps - d2) / 256: b$ = CHR$(d1) + CHR$(d2): PUT #1, l1& * 13 + 78783, b$: QBupdateScr
      END IF
      IF NX2 = 36 THEN
        l1& = IndexT3 + NY2 - 22
        b$ = "  ": GET #1, l1& * 13 + 78785, b$: d1 = ASC(MID$(b$, 1, 1)): d2 = ASC(MID$(b$, 2, 1)): at = d1 * 256 + d2 + 10: IF at > 999 THEN at = at - 1000
        d2 = at MOD 256: d1 = (at - d2) / 256: b$ = CHR$(d1) + CHR$(d2): PUT #1, l1& * 13 + 78785, b$: QBupdateScr
      END IF
      IF NX2 = 40 THEN
        l1& = IndexT3 + NY2 - 22
        b$ = "  ": GET #1, l1& * 13 + 78787, b$: d1 = ASC(MID$(b$, 1, 1)): d2 = ASC(MID$(b$, 2, 1)): df = d1 * 256 + d2 + 10: IF df > 999 THEN df = df - 1000
        d2 = df MOD 256: d1 = (df - d2) / 256: b$ = CHR$(d1) + CHR$(d2): PUT #1, l1& * 13 + 78787, b$: QBupdateScr
      END IF
      IF NX2 = 44 THEN
        l1& = IndexT3 + NY2 - 22
        b$ = "  ": GET #1, l1& * 13 + 78789, b$: d1 = ASC(MID$(b$, 1, 1)): d2 = ASC(MID$(b$, 2, 1)): vel = d1 * 256 + d2 + 10: IF vel > 999 THEN vel = vel - 1000
        d2 = vel MOD 256: d1 = (vel - d2) / 256: b$ = CHR$(d1) + CHR$(d2): PUT #1, l1& * 13 + 78789, b$: QBupdateScr
      END IF
      IF NX2 = 48 THEN
        l1& = IndexT3 + NY2 - 22
        b$ = "  ": GET #1, l1& * 13 + 78791, b$: d1 = ASC(MID$(b$, 1, 1)): d2 = ASC(MID$(b$, 2, 1)): esp = d1 * 256 + d2 + 10: IF esp > 999 THEN esp = esp - 1000
        d2 = esp MOD 256: d1 = (esp - d2) / 256: b$ = CHR$(d1) + CHR$(d2): PUT #1, l1& * 13 + 78791, b$: QBupdateScr
      END IF
    CASE "5"
      IF NX2 = 32 THEN
        l1& = IndexT3 + NY2 - 22
        b$ = "  ": GET #1, l1& * 13 + 78783, b$: d1 = ASC(MID$(b$, 1, 1)): d2 = ASC(MID$(b$, 2, 1)): ps = d1 * 256 + d2 - 10: IF ps < 0 THEN ps = ps + 1000
        d2 = ps MOD 256: d1 = (ps - d2) / 256: b$ = CHR$(d1) + CHR$(d2): PUT #1, l1& * 13 + 78783, b$: QBupdateScr
      END IF
      IF NX2 = 36 THEN
        l1& = IndexT3 + NY2 - 22
        b$ = "  ": GET #1, l1& * 13 + 78785, b$: d1 = ASC(MID$(b$, 1, 1)): d2 = ASC(MID$(b$, 2, 1)): at = d1 * 256 + d2 - 10: IF at < 0 THEN at = at + 1000
        d2 = at MOD 256: d1 = (at - d2) / 256: b$ = CHR$(d1) + CHR$(d2): PUT #1, l1& * 13 + 78785, b$: QBupdateScr
      END IF
      IF NX2 = 40 THEN
        l1& = IndexT3 + NY2 - 22
        b$ = "  ": GET #1, l1& * 13 + 78787, b$: d1 = ASC(MID$(b$, 1, 1)): d2 = ASC(MID$(b$, 2, 1)): df = d1 * 256 + d2 - 10: IF df < 0 THEN df = df + 1000
        d2 = df MOD 256: d1 = (df - d2) / 256: b$ = CHR$(d1) + CHR$(d2): PUT #1, l1& * 13 + 78787, b$: QBupdateScr
      END IF
      IF NX2 = 44 THEN
        l1& = IndexT3 + NY2 - 22
        b$ = "  ": GET #1, l1& * 13 + 78789, b$: d1 = ASC(MID$(b$, 1, 1)): d2 = ASC(MID$(b$, 2, 1)): vel = d1 * 256 + d2 - 10: IF vel < 0 THEN vel = vel + 1000
        d2 = vel MOD 256: d1 = (vel - d2) / 256: b$ = CHR$(d1) + CHR$(d2): PUT #1, l1& * 13 + 78789, b$: QBupdateScr
      END IF
      IF NX2 = 48 THEN
        l1& = IndexT3 + NY2 - 22
        b$ = "  ": GET #1, l1& * 13 + 78791, b$: d1 = ASC(MID$(b$, 1, 1)): d2 = ASC(MID$(b$, 2, 1)): esp = d1 * 256 + d2 - 10: IF esp < 0 THEN esp = esp + 1000
        d2 = esp MOD 256: d1 = (esp - d2) / 256: b$ = CHR$(d1) + CHR$(d2): PUT #1, l1& * 13 + 78791, b$: QBupdateScr
      END IF
    CASE "7"
      IF NX2 = 32 THEN
        l1& = IndexT3 + NY2 - 22
        b$ = "  ": GET #1, l1& * 13 + 78783, b$: d1 = ASC(MID$(b$, 1, 1)): d2 = ASC(MID$(b$, 2, 1)): ps = d1 * 256 + d2 + 100: IF ps > 999 THEN ps = ps - 1000
        d2 = ps MOD 256: d1 = (ps - d2) / 256: b$ = CHR$(d1) + CHR$(d2): PUT #1, l1& * 13 + 78783, b$: QBupdateScr
      END IF
      IF NX2 = 36 THEN
        l1& = IndexT3 + NY2 - 22
        b$ = "  ": GET #1, l1& * 13 + 78785, b$: d1 = ASC(MID$(b$, 1, 1)): d2 = ASC(MID$(b$, 2, 1)): at = d1 * 256 + d2 + 100: IF at > 999 THEN at = at - 1000
        d2 = at MOD 256: d1 = (at - d2) / 256: b$ = CHR$(d1) + CHR$(d2): PUT #1, l1& * 13 + 78785, b$: QBupdateScr
      END IF
      IF NX2 = 40 THEN
        l1& = IndexT3 + NY2 - 22
        b$ = "  ": GET #1, l1& * 13 + 78787, b$: d1 = ASC(MID$(b$, 1, 1)): d2 = ASC(MID$(b$, 2, 1)): df = d1 * 256 + d2 + 100: IF df > 999 THEN df = df - 1000
        d2 = df MOD 256: d1 = (df - d2) / 256: b$ = CHR$(d1) + CHR$(d2): PUT #1, l1& * 13 + 78787, b$: QBupdateScr
      END IF
      IF NX2 = 44 THEN
        l1& = IndexT3 + NY2 - 22
        b$ = "  ": GET #1, l1& * 13 + 78789, b$: d1 = ASC(MID$(b$, 1, 1)): d2 = ASC(MID$(b$, 2, 1)): vel = d1 * 256 + d2 + 100: IF vel > 999 THEN vel = vel - 1000
        d2 = vel MOD 256: d1 = (vel - d2) / 256: b$ = CHR$(d1) + CHR$(d2): PUT #1, l1& * 13 + 78789, b$: QBupdateScr
      END IF
      IF NX2 = 48 THEN
        l1& = IndexT3 + NY2 - 22
        b$ = "  ": GET #1, l1& * 13 + 78791, b$: d1 = ASC(MID$(b$, 1, 1)): d2 = ASC(MID$(b$, 2, 1)): esp = d1 * 256 + d2 + 100: IF esp > 999 THEN esp = esp - 1000
        d2 = esp MOD 256: d1 = (esp - d2) / 256: b$ = CHR$(d1) + CHR$(d2): PUT #1, l1& * 13 + 78791, b$: QBupdateScr
      END IF
    CASE "4"
      IF NX2 = 32 THEN
        l1& = IndexT3 + NY2 - 22
        b$ = "  ": GET #1, l1& * 13 + 78783, b$: d1 = ASC(MID$(b$, 1, 1)): d2 = ASC(MID$(b$, 2, 1)): ps = d1 * 256 + d2 - 100: IF ps < 0 THEN ps = ps + 1000
        d2 = ps MOD 256: d1 = (ps - d2) / 256: b$ = CHR$(d1) + CHR$(d2): PUT #1, l1& * 13 + 78783, b$: QBupdateScr
      END IF
      IF NX2 = 36 THEN
        l1& = IndexT3 + NY2 - 22
        b$ = "  ": GET #1, l1& * 13 + 78785, b$: d1 = ASC(MID$(b$, 1, 1)): d2 = ASC(MID$(b$, 2, 1)): at = d1 * 256 + d2 - 100: IF at < 0 THEN at = at + 1000
        d2 = at MOD 256: d1 = (at - d2) / 256: b$ = CHR$(d1) + CHR$(d2): PUT #1, l1& * 13 + 78785, b$: QBupdateScr
      END IF
      IF NX2 = 40 THEN
        l1& = IndexT3 + NY2 - 22
        b$ = "  ": GET #1, l1& * 13 + 78787, b$: d1 = ASC(MID$(b$, 1, 1)): d2 = ASC(MID$(b$, 2, 1)): df = d1 * 256 + d2 - 100: IF df < 0 THEN df = df + 1000
        d2 = df MOD 256: d1 = (df - d2) / 256: b$ = CHR$(d1) + CHR$(d2): PUT #1, l1& * 13 + 78787, b$: QBupdateScr
      END IF
      IF NX2 = 44 THEN
        l1& = IndexT3 + NY2 - 22
        b$ = "  ": GET #1, l1& * 13 + 78789, b$: d1 = ASC(MID$(b$, 1, 1)): d2 = ASC(MID$(b$, 2, 1)): vel = d1 * 256 + d2 - 100: IF vel < 0 THEN vel = vel + 1000
        d2 = vel MOD 256: d1 = (vel - d2) / 256: b$ = CHR$(d1) + CHR$(d2): PUT #1, l1& * 13 + 78789, b$: QBupdateScr
      END IF
      IF NX2 = 48 THEN
        l1& = IndexT3 + NY2 - 22
        b$ = "  ": GET #1, l1& * 13 + 78791, b$: d1 = ASC(MID$(b$, 1, 1)): d2 = ASC(MID$(b$, 2, 1)): esp = d1 * 256 + d2 - 100: IF esp < 0 THEN esp = esp + 1000
        d2 = esp MOD 256: d1 = (esp - d2) / 256: b$ = CHR$(d1) + CHR$(d2): PUT #1, l1& * 13 + 78791, b$: QBupdateScr
      END IF
  END SELECT
END SUB

SUB QBupdateScr
  IF Tabl = 1 THEN
    IF NumTablExp = 1 THEN aju1# = 2.3886126#
    IF NumTablExp = 2 THEN aju1# = 2.3639435#
    IF NumTablExp = 3 THEN aju1# = 2.33674
    IF NumTablExp = 4 THEN aju1# = 2.306413
    LOCATE 19, 9: PRINT "TABLA DE PUNTOS DE EXPERIENCIA"
    LOCATE 20, 1: PRINT "Tabla N§:"; NumTablExp; "de 4"
    LOCATE 21, 1: PRINT 0
    LOCATE 21, 5: PRINT FIX(QBexp2(i))
    FOR i = 1 TO 20
      LOCATE i + 21, 1: PRINT i
      LOCATE i + 21, 5: PRINT FIX(QBexp2(i))
      LOCATE i + 21, 15: PRINT i + 20
      LOCATE i + 21, 20: PRINT FIX(QBexp2(i + 20))
      LOCATE i + 21, 30: PRINT i + 40
      LOCATE i + 21, 35: PRINT FIX(QBexp2(i + 40))
      LOCATE i + 21, 45: PRINT i + 60
      LOCATE i + 21, 50: PRINT FIX(QBexp2(i + 60))
      LOCATE i + 21, 60: PRINT i + 80
      LOCATE i + 21, 65: PRINT FIX(QBexp2(i + 80))
    NEXT i
  ELSEIF Tabl = 2 THEN
    LOCATE 19, 9: PRINT "TABLA DE APRENDIZAJE DE TCNICAS"
    LOCATE 20, 1: PRINT "Poke N§:"; PokeT2; "de 255  "
    LOCATE 20, 30: PRINT MID$(Nombres$, PokeT2 * 10 + 1, 10)
    FOR i = 1 TO 26
      LOCATE i + 21, 1: PRINT IndexT2 + i - 1
      LOCATE i + 21, 6: PRINT QBtec(IndexT2 + i - 1, 1) + " "; QBtec(IndexT2 + i - 1, 2) + " "; QBtec(IndexT2 + i - 1, 3)
    NEXT i
    PutCur
  ELSEIF Tabl = 3 THEN
    LOCATE 19, 9: PRINT "TABLA DE ESPECIFICACIONES DE CARACTER¡STICAS"
    LOCATE 20, 1: PRINT " POKMON    TIPO 1    TIPO 2    PS  AT  DEF VEL ESP EXP    "
    FOR i = 0 TO 25
      LOCATE 22 + i, 1: PRINT LineaT3(IndexT3 + i)
    NEXT i
    PutCur2
  ELSEIF Tabl = 4 THEN
    LOCATE 19, 9: PRINT "TABLA DE RELACI¢N DE LOS TIPOS DE POKMON"
    LOCATE 20, 1: PRINT "    - ¨ A A B D E F F H L N P P R S T V V"
    LOCATE 21, 1: PRINT "    - ? c g i r l a u i u o l s o i i e o"
    FOR i = 23 TO 41
      LOCATE i, 1: PRINT LineaT4(i - 23)
    NEXT i
    LOCATE 43, 1: PRINT "B:Bueno    M:Malo    -:Indiferente    N:No Afecta"
    PutCur3
  ELSEIF Tabl = 5 THEN
    LOCATE 19, 9: PRINT "TABLA DE LAS TCNICAS DE LAS MT/MO"
    FOR i = 22 TO 47
      LOCATE i, 1: PRINT LineaT5(IndexT4 + i - 22)
    NEXT i
    PutCur4
  ELSEIF Tabl = 6 THEN
    LOCATE 19, 9: PRINT "TABLA DE VENTAS DE OBJETOS"
    LOCATE 21, 1: PRINT " POS  OBJETO        PRECIO    Lista N§:"; Lista6
    FOR i = 22 TO 41
      LOCATE i, 1: PRINT LineaT6(i - 22)
    NEXT i
    PutCur5
  ELSEIF Tabl = 7 THEN
    LOCATE 19, 9: PRINT "TABLA DE POKMON COMPATIBLES CON LAS MT/MO"
    LOCATE 21, 1: PRINT " POKMON     COMPATIBILIDAD   MT/MO:"; IndexT7b + 1
      mto& = IndexT7b
      ap& = mto& * 257 + 83816 + 1
      a$ = " "
      GET #1, ap&, a$
    IF a$ = CHR$(0) THEN a$ = "INACTIVO" ELSE a$ = "ACTIVO  "
    LOCATE 22, 1: PRINT "USO EXTERNO "; a$
    FOR i = 0 TO 25
      LOCATE 23 + i, 1: PRINT LineaT7(IndexT7 + i)
    NEXT i
    PutCur6
  ELSEIF Tabl = 8 THEN
    LOCATE 19, 9: PRINT "TABLA DE POKMON - SPRITE PARA CUADRO SELECCION"
    LOCATE 21, 1: PRINT " POKMON     SPRITE"
    FOR i = 0 TO 25
      LOCATE 23 + i, 1: PRINT LineaT8(IndexT8 + i)
    NEXT i
    PutCur7
  ELSEIF Tabl = 9 THEN
  END IF
END SUB

