
DECLARE FUNCTION MSpokeFound$ (np%, nv%, eo$, eps%, eat%, edef%, evel%, eesp%, at1%, at2%, at3%, ay4%, at5%)
DECLARE FUNCTION QBloadDesc$ (dt%)
DECLARE SUB QBinitProg ()
DECLARE FUNCTION NombObj$ (QFno%)

DEFLNG A-Z

DIM SHARED Direccion$, NumPkmInfo AS INTEGER
CLS
QBinitProg

OPEN "C:\NEWPOKE1\ARCHIVOS\POKEMONS.BIN" FOR BINARY AS #1
RESTORE IniciarAqui
DO
  READ dfin
  IF dfin = 0 THEN EXIT DO
  IF dfin = 1 THEN GOSUB PutPkmDef100
  IF dfin = 2 THEN
    READ np%, nv%, no$, eps%, eat%, edef%, evel%, eesp%, at1%, at2%, at3%, at4%, at5%
    pd$ = MSpokeFound(np%, nv%, no$, eps%, eat%, edef%, evel%, eesp%, at1%, at2%, at3%, at4%, at5%)
    PUT #1, , pd$
  END IF
  IF dfin = 3 THEN
    READ puntero
    SEEK #1, puntero
    npg = (puntero - 1) / 53
    LOCATE 1, 1: PRINT "Ultima funci¢n SEEK en:"; npg
  END IF
  LOCATE 2, 1: PRINT "Pok‚mon Slot N§:"; npg, "Pok‚mon N§:"; np%
  IF dfin = 1 OR dfin = 2 THEN npg = npg + 1
LOOP
CLOSE
SHELL "copy /y c:\newpoke1\archivos\pokemons.bin d:\"
END

PutPkmDef100:
  READ NumPoke, NombPoke$, EntrenOrig$, Tipo1, Tipo2, Nivel, Estado, Energia
  READ MaxEnergia, Ataque1, Ataque2, Ataque3, Ataque4, Ataque5, PP1, PP2, PP3
  READ PP4, PP5, MaxPP1, MaxPP2, MaxPP3, MaxPP4, MaxPP5, ATAQUE, DEFENSA
  READ VELOCIDAD, ESPECIAL, Experiencia, Extra

  a$ = CHR$(NumPoke): PUT #1, , a$
  PUT #1, , NombPoke$
  PUT #1, , EntrenOrig$
  a$ = CHR$(Tipo1): PUT #1, , a$
  a$ = CHR$(Tipo2): PUT #1, , a$
  a$ = CHR$(Nivel): PUT #1, , a$
  a$ = CHR$(Estado): PUT #1, , a$
  d2 = Energia MOD 256: d1 = (Energia - d2) / 256: a$ = CHR$(d1) + CHR$(d2): PUT #1, , a$
  d2 = MaxEnergia MOD 256: d1 = (MaxEnergia - d2) / 256: a$ = CHR$(d1) + CHR$(d2): PUT #1, , a$
  a$ = CHR$(Ataque1): PUT #1, , a$
  a$ = CHR$(Ataque2): PUT #1, , a$
  a$ = CHR$(Ataque3): PUT #1, , a$
  a$ = CHR$(Ataque4): PUT #1, , a$
  a$ = CHR$(Ataque5): PUT #1, , a$
  a$ = CHR$(PP1): PUT #1, , a$
  a$ = CHR$(PP2): PUT #1, , a$
  a$ = CHR$(PP3): PUT #1, , a$
  a$ = CHR$(PP4): PUT #1, , a$
  a$ = CHR$(PP5): PUT #1, , a$
  a$ = CHR$(MaxPP1): PUT #1, , a$
  a$ = CHR$(MaxPP2): PUT #1, , a$
  a$ = CHR$(MaxPP3): PUT #1, , a$
  a$ = CHR$(MaxPP4): PUT #1, , a$
  a$ = CHR$(MaxPP5): PUT #1, , a$
  d2 = ATAQUE MOD 256: d1 = (ATAQUE - d2) / 256: a$ = CHR$(d1) + CHR$(d2): PUT #1, , a$
  d2 = DEFENSA MOD 256: d1 = (DEFENSA - d2) / 256: a$ = CHR$(d1) + CHR$(d2): PUT #1, , a$
  d2 = VELOCIDAD MOD 256: d1 = (VELOCIDAD - d2) / 256: a$ = CHR$(d1) + CHR$(d2): PUT #1, , a$
  d2 = ESPECIAL MOD 256: d1 = (ESPECIAL - d2) / 256: a$ = CHR$(d1) + CHR$(d2): PUT #1, , a$
  a$ = CHR$(Extra): PUT #1, , a$
  d2 = Experiencia MOD 256: d1 = (Experiencia - d2) / 256: a$ = CHR$(d1) + CHR$(d2): PUT #1, , a$
  a$ = CHR$(Extra): PUT #1, , a$
  RETURN

'    N§   Nomb         Entren   T1 T2 Niv Es Ene MaE At1 At2 At3 At4 At5 P1 P2 P3 P4 P5 Mp1Mp2Mp3Mp4Mp5 At Def Vel Esp     Exp Extra
DATA 1          : '0
DATA 129,"MAGICARP  ","       ", 3, 0,  6, 0, 25, 25,218,175,  0,  0,  0,40,35, 0, 0, 0,40,35, 0, 0, 0, 10, 15, 17, 12,    106,  0
DATA 1
DATA 118,"GOLDEEN   ","FEDE   ", 3, 0, 11, 0, 38, 38,170,130,225, 55,  0,35,30,20,25, 0,35,30,20,25, 0, 27, 25, 24, 20,      0,  0
DATA 1
DATA  72,"TENTACOOL ","FEDE   ", 3,17, 14, 0, 41, 41,171,225,212,  2,  0,35,20,35,30, 0,35,20,35,30, 0, 28, 23, 32, 25,      0,  0
DATA 1
DATA  72,"TENTACOOL ","FEDE   ", 3,17, 15, 0, 43, 43,171,225,212,  2,  0,35,20,35,30, 0,35,20,35,30, 0, 30, 25, 33, 27,      0,  0
DATA 1
DATA  58,"GROWLITHE ","LADRON ", 8, 0, 15, 0, 45, 45,150,217, 14,138,  0,25,20,25,30, 0,25,20,25,30, 0, 34, 29, 33, 31,      0,  0
DATA 1          : '5
DATA  58,"GROWLITHE ","LADRON ", 8, 0, 17, 0, 49, 49,150,217, 14,138,  0,25,20,25,30, 0,25,20,25,30, 0, 36, 32, 35, 33,      0,  0
DATA 1
DATA  58,"GROWLITHE ","LADRON ", 8, 0, 19, 0, 54, 54,150,217, 14,138,  0,25,20,25,30, 0,25,20,25,30, 0, 38, 35, 37, 34,      0,  0
DATA 1
DATA  58,"GROWLITHE ","LADRON ", 8, 0, 21, 0, 56, 56,150,217, 14,138, 63,25,20,25,30,20,25,20,25,30,20, 40, 38, 39, 37,      0,  0
DATA 1
DATA  59,"ARCANINE  ","SUP.NEC", 8, 0, 16, 0, 47, 47,150,216, 14,138, 63,25,25,25,30,20,25,25,25,30,20, 36, 34, 35, 34,      0,  0
DATA 1
DATA  59,"ARCANINE  ","SUP.NEC", 8, 0, 19, 0, 50, 50,150,216, 14,138, 63,25,25,25,30,20,25,25,25,30,20, 38, 36, 37, 36,      0,  0
DATA 1          : '10
DATA  59,"ARCANINE  ","SUP.NEC", 8, 0, 22, 0, 52, 52,150,216, 14,138, 63,25,25,25,30,20,25,25,25,30,20, 41, 38, 39, 37,      0,  0
DATA 1
DATA  37,"VULPIX    ","LADRON ", 8, 0, 16, 0, 47, 47, 14,130, 22,217,200,25,30,30,20,10,25,30,30,20,10, 35, 33, 34, 33,      0,  0
DATA 1
DATA  37,"VULPIX    ","LADRON ", 8, 0, 18, 0, 49, 49, 14,130, 22,217,200,25,30,30,20,10,25,30,30,20,10, 37, 35, 35, 34,      0,  0
DATA 1
DATA  37,"VULPIX    ","LADRON ", 8, 0, 20, 0, 51, 51, 14,130, 22,217,200,25,30,30,20,10,25,30,30,20,10, 39, 37, 36, 36,      0,  0
DATA 1
DATA  38,"NINETALES ","SUP.NEC", 8, 0, 16, 0, 48, 48, 14,130, 22,217,200,25,30,30,20,10,25,30,30,20,10, 37, 34, 37, 34,      0,  0
DATA 1          : '15
DATA  37,"NINETALES ","SUP.NEC", 8, 0, 18, 0, 50, 50, 14,130, 22,217,200,25,30,30,20,10,25,30,30,20,10, 39, 36, 38, 37,      0,  0
DATA 1
DATA  37,"NINETALES ","SUP.NEC", 8, 0, 20, 0, 53, 53, 14,130, 22,217,200,25,30,30,20,10,25,30,30,20,10, 42, 39, 41, 40,      0,  0
DATA 1
DATA  77,"PONYTA    ","LADRON ", 8, 0, 17, 0, 48, 48,175,115,130, 14,173,35,40,30,25,20,35,40,30,25,20, 35, 33, 34, 33,      0,  0
DATA 1
DATA  77,"PONYTA    ","LADRON ", 8, 0, 20, 0, 52, 52,175,115,130, 14,173,35,40,30,25,20,35,40,30,25,20, 39, 37, 38, 37,      0,  0
DATA 1
DATA  77,"PONYTA    ","LADRON ", 8, 0, 23, 0, 56, 56,175,115,130, 14,173,35,40,30,25,20,35,40,30,25,20, 44, 42, 43, 41,      0,  0
DATA 1          : '20
DATA  78,"RAPIDASH  ","SUP.NEC", 8, 0, 19, 0, 51, 51,175,115,130, 14,173,35,40,30,25,20,35,40,30,25,20, 38, 36, 37, 35,      0,  0
DATA 1
DATA  78,"RAPIDASH  ","SUP.NEC", 8, 0, 24, 0, 58, 58,175,115,130, 14,173,35,40,30,25,20,35,40,30,25,20, 45, 42, 44, 43,      0,  0
DATA 1
DATA   4,"CHARMANDER","SUP.NEC", 8, 0, 18, 0, 46, 46, 13,115, 14,159,101,35,40,25,20,20,35,40,25,20,20, 38, 36, 37, 35,      0,  0
DATA 1
DATA   1,"BULBASAUR ","       ",12,17, 10, 0, 24, 24,175,115, 82,131,  0,35,40,10,10, 0,35,40,10,10, 0, 22, 20, 21, 25,    456,  0
DATA 1
DATA  25,"PIKACHU   ","CHICA  ", 6, 0, 18, 0, 28, 28,124,115, 22,130,179,30,40,30,30,20,30,40,30,30,20, 28, 26, 24, 30,      0,  0
DATA 1          : '25
DATA 209,"SNUBBULL  ","CHICA  ",11, 0, 18, 0, 32, 32,175, 40,130,150,132,35,10,30,25,30,35,10,30,25,30, 30, 27, 25, 26,      0,  0
'     np nv    eo     ps  at def vel esp at1 at2 at3 at4 at5
DATA 2
DATA  10,10,"CAZABIC", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  11,12,"CAZABIC", 5,  5, 10,  5,  5,175,  0,  0,  0,  0
DATA 2
DATA  13,14,"CAZABIC", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 127,14,"CAZABIC", 2,  5,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2          : '30
DATA  11,14,"CAZABIC", 2,  2,  5,  2,  2, 97,175, 74,  0,  0
DATA 2
DATA  14,14,"CAZABIC", 2,  2,  5,  2,  2, 97,175, 74,  0,  0
DATA 2
DATA  12,15,"CAZABIC", 2,  2,  5,  2,  2,  0,175, 74, 50,  0
DATA 2
DATA  15,15,"CAZABIC", 2,  2,  5,  2,  2,  0,175, 74, 19,  0
DATA 2
DATA 123,16,"CAZABIC", 5,  5,  2,  5,  2,  0,  0,  0,  0, 22
DATA 2          : '35
DATA  50,19,"ENTRENJ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  27,20,"ENTRENJ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  50,20,"ENTRENJ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  74,20,"ENTRENJ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  41,20,"ENTRENJ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '40
DATA  74,22,"ENTRENJ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  95,23,"ENTRENJ", 5,  5,  5,  5,  5,251,  0,  0,  0,  0
DATA 2
DATA  60,14,"BELLA  ", 2,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA  72,15,"BELLA  ", 2,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA 116,15,"BELLA  ", 2,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2          : '45
DATA 120,14,"BELLA  ", 2,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA   7,15,"BELLA  ", 2,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA 118,15,"BELLA  ", 2,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA  90,13,"BELLA  ", 2,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA  72,14,"BELLA  ", 2,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2          : '50
DATA 129,15,"BELLA  ", 2,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA  60,16,"BELLA  ", 2,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA  72,17,"BELLA  ", 2,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA 116,17,"BELLA  ", 2,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA 118,17,"BELLA  ", 2,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2          : '55
DATA  90,15,"BELLA  ", 2,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA 120,17,"BELLA  ", 2,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA 120,19,"BELLA  ", 2,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA 116,19,"BELLA  ", 2,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA 118,19,"BELLA  ", 2,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2          : '60
DATA 194,19,"BELLA  ", 2,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA 223,18,"BELLA  ", 2,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA 129,18,"ORNITOL", 2,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA 129,20,"ORNITOL", 2,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA 194,17,"ORNITOL", 2,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2          : '65
DATA  61,18,"ORNITOL", 2,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA  16,16,"ORNITOL", 2,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA  17,18,"ORNITOL", 2,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA  21,18,"ORNITOL", 2,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA  96,20,"MALABAR", 5, 10,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '70
DATA  96,22,"MALABAR", 5, 10,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  96,24,"MALABAR", 5, 10,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  64,20,"MALABAR", 5, 10,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  64,22,"MALABAR", 5, 10,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  64,24,"MALABAR", 5, 10,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '75
DATA  28,22,"MALABAR", 5, 10,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  28,24,"MALABAR", 5, 10,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  24,22,"MALABAR", 5, 10,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  24,24,"MALABAR", 5, 10,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 109,22,"MALABAR", 5, 10,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '80
DATA 110,24,"MALABAR", 5, 10,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  89,26,"MALABAR", 5, 10,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  19,16,"JOVEN  ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  19,18,"JOVEN  ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  23,16,"JOVEN  ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '85
DATA  39,20,"JOVEN  ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  32,16,"JOVEN  ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  30,18,"JOVEN  ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 161,18,"JOVEN  ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  21,18,"JOVEN  ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '90
DATA  56,17,"JOVEN  ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  35,22,"ROCKET ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  81,18,"JOVEN  ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 100,18,"JOVEN  ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  43,16,"JOVEN  ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '95
DATA  69,16,"JOVEN  ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  95,20,"JOVEN  ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  74,18,"JOVEN  ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  41,17,"JOVEN  ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  27,18,"JOVEN  ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '100
DATA  88,18,"JOVEN  ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 109,18,"JOVEN  ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  20,22,"JOVEN  ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  54,21,"MISTY  ",10, 10, 10, 10, 10,  0,  0,  0,  0,  0
DATA 2
DATA 121,24,"MISTY  ",10, 10, 10, 10, 10,  0,  0,  0,  0,  0
DATA 2          : '105
DATA 130,25,"MISTY  ",10, 10, 10, 10, 10,  0,  0,  0,  0,  0
DATA 2
DATA 12, 18, "MONTA¥E", 5, 5, 5, 5, 5, 0, 0, 0, 0, 0
DATA 2
DATA  15,18,"MONTA¥E", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  23,19,"MONTA¥E", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  56,20,"MONTA¥E", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '110
DATA   4,15,"       ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  66,18,"JOVEN  ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  66,20,"JOVEN  ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  66,22,"JOVEN  ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  19,20,"JOVEN  ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '115
DATA  21,22,"JOVEN  ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  16,22,"JOVEN  ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  43,20,"JOVEN  ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  79,24,"JOVEN  ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  27,22,"JOVEN  ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '120
DATA  33,22,"JOVEN  ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  30,22,"JOVEN  ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  81,23,"CIENTIF", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 134,22,"BILL   ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 135,22,"BILL   ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '125
DATA 136,22,"BILL   ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 196,22,"BILL   ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 197,22,"BILL   ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 43, 20, "MOTORIS", 5, 5, 5, 5, 5, 0, 0, 0, 0, 0
DATA 2
DATA  69,20,"MOTORIS", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '130
DATA 114,20,"MOTORIS", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  83,20,"MOTORIS", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  83,22,"MOTORIS", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  83,24,"MOTORIS", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  84,20,"MOTORIS", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '135
DATA  84,22,"MOTORIS", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  84,24,"MOTORIS", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  16,20,"MOTORIS", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  16,24,"MOTORIS", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  17,20,"MOTORIS", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '140
DATA  17,22,"MOTORIS", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  17,24,"MOTORIS", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  85,22,"MOTORIS", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  85,24,"MOTORIS", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  43,22,"MOTORIS", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '145
DATA  69,22,"MOTORIS", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  44,24,"MOTORIS", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA   1,22,"MOTORIS", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA   2,24,"MOTORIS", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  88,20,"MOTORIS", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '150
DATA  88,22,"MOTORIS", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 109,20,"MOTORIS", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  40,22,"MOTORIS", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  25,22,"MOTORIS", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  26,24,"MOTORIS", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '155
DATA  21,20,"MOTORIS", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  22,22,"MOTORIS", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  22,24,"MOTORIS", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  19,22,"MOTORIS", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  35,24,"MOTORIS", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '160
DATA  52,20,"MOTORIS", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  52,22,"MOTORIS", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  52,24,"MOTORIS", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 129,20,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 130,20,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '165
DATA  54,20,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  54,22,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  60,20,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  60,22,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  72,20,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '170
DATA  72,22,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  73,22,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  79,22,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  90,20,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  90,22,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '175
DATA  91,22,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  91,24,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 116,22,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 117,24,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 118,22,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '180
DATA 118,24,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 120,22,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 121,24,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 170,22,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 170,24,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '185
DATA 194,24,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 223,24,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 100,22,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  82,25,"JUGADOR", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  41,24,"JUGADOR", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '190
DATA  25,24,"JUGADOR", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 100,24,"JUGADOR", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  81,26,"JUGADOR", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 135,26,"JUGADOR", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 179,24,"JUGADOR", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '195
DATA  26,27,"JUGADOR", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 180,28,"JUGADOR", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  15,26,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  95,25,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  10,24,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '200
DATA  13,26,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  48,26,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 108,30,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  20,28,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  74,28,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '205
DATA  95,29,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  75,30,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 104,28,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  79,29,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  92,26,"EXORCIS", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '210
DATA  92,28,"EXORCIS", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  93,28,"EXORCIS", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 200,30,"EXORCIS", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  35,27,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  58,28,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '215
DATA  37,28,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  88,25,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 110,28,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  52,27,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  60,28,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '220
DATA  61,30,"ROCKERO", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
'     np nv    eo     ps  at def vel esp at1 at2 at3 at4 at5
DATA 2
DATA  84,30,"JOVEN  ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  85,32,"JOVEN  ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  22,28,"JOVEN  ", 5,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  17,30,"JOVEN  ",10, 15,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '225
DATA  16,20,"JOVEN  ",10, 15,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  58,22,"JOVEN  ",10, 15,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  58,32,"JOVEN  ",10, 15,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  18,40,"JOVEN  ",10, 15,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  59,44,"JOVEN  ",10, 15,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '230
DATA  20,46,"JOVEN  ", 5,  5, 20,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 195,46,"JOVEN  ", 5,  5, 20,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  65,46,"JOVEN  ", 5,  5, 20,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  43,34,"JOVEN  ", 5,  5, 20,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  43,36,"JOVEN  ", 5,  5, 20,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '235
DATA  69,34,"JOVEN  ", 5,  5, 20,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  69,36,"JOVEN  ", 5,  5, 20,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  70,36,"JOVEN  ", 5,  5, 20,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA   1,34,"JOVEN  ", 5,  5, 20,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA   2,36,"JOVEN  ", 5,  5, 20,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '240
DATA  71,36,"JOVEN  ", 5,  5, 20,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 114,37,"JOVEN  ", 5,  5, 20,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  45,38,"JOVEN  ", 5,  5, 20,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 182,38,"JOVEN  ", 5,  5, 20,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 231,32,"JOVEN  ", 5,  5, 20,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '245
DATA  20,30,"ROCKET ",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  20,32,"ROCKET ",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  51,30,"ROCKET ",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  55,32,"ROCKET ",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  64,30,"ROCKET ",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '250
DATA  67,30,"ROCKET ",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 109,30,"ROCKET ",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 100,32,"ROCKET ",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 126,32,"ROCKET ",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  33,32,"ROCKET ",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '255
DATA  88,30,"ROCKET ",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 162,32,"ROCKET ",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 194,30,"ROCKET ",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 195,33,"ROCKET ",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 197,32,"ROCKET ",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '260
DATA 197,35,"ROCKET ",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 209,36,"ROCKET ",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 229, 36, "ROCKET ", 10, 5, 5, 5, 5, 0, 0, 0, 0, 0
DATA 2
DATA 68, 37, "ROCKET ", 10, 5, 5, 5, 5, 0, 0, 0, 0, 0
DATA 2
DATA 115,35,"ROCKET ",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '265
DATA  74,35,"MIEM CL",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  62,36,"MIEM CL",10,  5,  5,  5,  5, 62,  0,  0,  0,  0
DATA 2
DATA  75,37,"MIEM CL",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  57,38,"MIEM CL",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  76,40,"MIEM CL",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '270
DATA  12,34,"ROCKET ",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  24,34,"ROCKET ",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  28,34,"ROCKET ",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  52,36,"ROCKET ",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 108,34,"ROCKET ",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '275
DATA 109,34,"ROCKET ",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 178,34,"ROCKET ",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 198,35,"ROCKET ",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 202,35,"ROCKET ",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  81,34,"ROCKET ",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '280
DATA 100,34,"ROCKET ",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  82,35,"ROCKET ",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 236,25,"ISAAC  ",10,  5,  5,  5,  5,113,  0,  0,  0,  0
DATA 2
DATA 237,35,"ISAAC  ",10,  5,  5,  5,  5,113,  0,  0,  0,  0
DATA 2
DATA 107,40,"ISAAC  ",10,  5,  5,  5,  5,113,  0,  0,  0,  0
DATA 2          : '285
DATA  66,35,"ISAAC  ",10,  5,  5,  5,  5,113,  0,  0,  0,  0
DATA 2
DATA  66,37,"ISAAC  ",10,  5,  5,  5,  5,113,  0,  0,  0,  0
DATA 2
DATA  67,36,"ISAAC  ",10,  5,  5,  5,  5,113,  0,  0,  0,  0
DATA 2
DATA  67,38,"ISAAC  ",10,  5,  5,  5,  5,113,  0,  0,  0,  0
DATA 2
DATA  68,37,"ISAAC  ",10,  5,  5,  5,  5,113,  0,  0,  0,  0
DATA 2          : '290
DATA  68,39,"ISAAC  ",10,  5,  5,  5,  5,113,  0,  0,  0,  0
DATA 2
DATA 106,45,"ISAAC  ",10,  5,  5,  5,  5,113,  0,  0,  0,  0
DATA 2
DATA  56,35,"ISAAC  ",10,  5,  5,  5,  5,113,  0,  0,  0,  0
DATA 2
DATA  56,38,"ISAAC  ",10,  5,  5,  5,  5,113,  0,  0,  0,  0
DATA 2
DATA  57,37,"ISAAC  ",10,  5,  5,  5,  5,113,  0,  0,  0,  0
DATA 2          : '295
DATA  57,39,"ISAAC  ",10,  5,  5,  5,  5,113,  0,  0,  0,  0
DATA 2
DATA  79,36,"SABRINA",10,  5,  5,  5,  5, 50,  0,  0,  0,  0
DATA 2
DATA  79,37,"SABRINA",10,  5,  5,  5,  5, 50,  0,  0,  0,  0
DATA 2
DATA  80,38,"SABRINA",10,  5,  5,  5,  5, 50,  0,  0,  0,  0
DATA 2
DATA 122,38,"SABRINA",10,  5,  5,  5,  5, 50,  0,  0,  0,  0
DATA 2          : '300
DATA  64,40,"SABRINA",10,  5,  5,  5,  5, 50,  0,  0,  0,  0
DATA 2
DATA 203,40,"SABRINA",10,  5,  5,  5,  5, 50,  0,  0,  0,  0
DATA 2
DATA 199,42,"SABRINA",10,  5,  5,  5,  5, 50,  0,  0,  0,  0
DATA 2
DATA 122,44,"SABRINA",10,  5,  5,  5,  5, 50,  0,  0,  0,  0
DATA 2
DATA  92,38,"SABRINA",10,  5,  5,  5,  5, 50,  0,  0,  0,  0
DATA 2          : '305
DATA  93,40,"SABRINA",10,  5,  5,  5,  5, 50,  0,  0,  0,  0
DATA 2
DATA 196,46,"SABRINA",10,  5,  5,  5,  5, 50,  0,  0,  0,  0
DATA 2
DATA  65,42,"SABRINA",10,  5,  5,  5,  5, 50,  0,  0,  0,  0
DATA 2
DATA 122,45,"SABRINA",10,  5,  5,  5,  5, 50,  0,  0,  0,  0
DATA 2
DATA  49,46,"SABRINA",10,  5,  5,  5,  5, 50,  0,  0,  0,  0
DATA 2          : '310
DATA 178,48,"SABRINA",10,  5,  5,  5,  5, 50,  0,  0,  0,  0
DATA 2
DATA  24,36,"GIOVANI",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 128,38,"GIOVANI",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 111,40,"GIOVANI",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  28,38,"GIOVANI",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '315
DATA  51,39,"GIOVANI",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 232,40,"GIOVANI",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 207,42,"GIOVANI",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 111,32,"GIOVANI",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  28,36,"GIOVANI",10,  5,  5,  5,  5,109, 47,  0,  0,  0
DATA 2          : '320
DATA  31,40,"GIOVANI",10,  5,  5,  5,  5, 47,245,  0,  0,  0
DATA 2
DATA  34,44,"GIOVANI",10,  5,  5,  5,  5,245,179,  0,  0,  0
DATA 2
DATA 112,48,"GIOVANI",10,  5,  5,  5,  5,179,129,  0,  0,  0
DATA 2
DATA 208,52,"GIOVANI",10,  5,  5,  5,  5,129,179,245, 47,109
DATA 2
DATA  53,44,"CALLEJE", 5,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2          : '325
DATA  38,45,"CALLEJE", 5,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA   2,42,"CALLEJE", 5,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA   8,43,"CALLEJE", 5,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA   5,44,"CALLEJE", 5,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA   6,45,"CALLEJE", 5,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2          : '330
DATA  97,46,"CALLEJE", 5,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA  55,46,"CALLEJE", 5,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA 122,48,"CALLEJE", 5,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA  91,45,"CALLEJE", 5,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA 103,46,"CALLEJE", 5,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2          : '335
DATA 108,45,"CALLEJE", 5,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA 131,46,"CALLEJE", 5,  2,  2,  2,  2,252,  0,  0,  0,  0
DATA 2
DATA  47,44,"CALLEJE", 5,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA  87,45,"CALLEJE", 5,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA 113,46,"CALLEJE", 5,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2          : '340
DATA  99,44,"CALLEJE", 5,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA  73,45,"CALLEJE", 5,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA   9,46,"CALLEJE", 5,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA 159,44,"CALLEJE", 5,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA 171,45,"CALLEJE", 5,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2          : '345
DATA 195,46,"CALLEJE", 5,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA 226,47,"CALLEJE", 5,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA  83,45,"CALLEJE", 5,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA 123,46,"CALLEJE", 5,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA 202,47,"CALLEJE", 5,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2          : '350
DATA  89,46,"CALLEJE", 5,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA 110,47,"CALLEJE", 5,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA  82,48,"CALLEJE", 5,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA 124,46,"CALLEJE", 5,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA 216,40,"CALLEJE", 5,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2          : '355
DATA  87,51,"LORELEI",10,  5,  5,  5,  5,253,  0,  0,  0,  0
DATA 2
DATA  91,52,"LORELEI",10,  5,  5,  5,  5,253,  0,  0,  0,  0
DATA 2
DATA  80,53,"LORELEI",10,  5,  5,  5,  5,253,  0,  0,  0,  0
DATA 2
DATA 124,54,"LORELEI",10,  5,  5,  5,  5,253,  0,  0,  0,  0
DATA 2
DATA 131,55,"LORELEI",10,  5,  5,  5,  5,253,  0,  0,  0,  0
DATA 2          : '360
DATA 220,50,"LORELEI",10,  5,  5,  5,  5,253,  0,  0,  0,  0
DATA 2
DATA 221,70,"LORELEI",10,  5,  5,  5,  5,252,253,  0,  0,  0
DATA 2
DATA  87,71,"LORELEI",10,  5,  5,  5,  5,252,253,  0,  0,  0
DATA 2
DATA  91,72,"LORELEI",10,  5,  5,  5,  5,252,253,  0,  0,  0
DATA 2
DATA 199,74,"LORELEI",10,  5,  5,  5,  5,252,  0,  0,  0,  0
DATA 2          : '365
DATA 124,76,"LORELEI",10,  5,  5,  5,  5,252,253,  0,  0,  0
DATA 2
DATA 131,78,"LORELEI",10,  5,  5,  5,  5,253,252,  0,  0,  0
DATA 2
DATA  75,52,"BRUNO  ",10,  5,  5,  5,  5,236,  0,  0,  0,  0
DATA 2
DATA  95,53,"BRUNO  ",10,  5,  5,  5,  5,236,  0,  0,  0,  0
DATA 2
DATA 107,54,"BRUNO  ",10,  5,  5,  5,  5,236,  0,  0,  0,  0
DATA 2          : '370
DATA 106,55,"BRUNO  ",10,  5,  5,  5,  5,236,  0,  0,  0,  0
DATA 2
DATA  67,56,"BRUNO  ",10,  5,  5,  5,  5,236,  0,  0,  0,  0
DATA 2
DATA  76,72,"BRUNO  ",10,  5,  5,  5,  5,236,228,  0,  0,  0
DATA 2
DATA 208,73,"BRUNO  ",10,  5,  5,  5,  5,236,228,  0,  0,  0
DATA 2
DATA 107,74,"BRUNO  ",10,  5,  5,  5,  5,236,228,  0,  0,  0
DATA 2          : '375
DATA 106,76,"BRUNO  ",10,  5,  5,  5,  5,236,228,  0,  0,  0
DATA 2
DATA 237,78,"BRUNO  ",10,  5,  5,  5,  5,236,228,  0,  0,  0
DATA 2
DATA  68,80,"BRUNO  ",10,  5,  5,  5,  5,236,228,  0,  0,  0
DATA 2
DATA  93,54,"AGATHA ",10,  5,  5,  5,  5,120,  0,  0,  0,  0
DATA 2
DATA  42,55,"AGATHA ",10,  5,  5,  5,  5,120,  0,  0,  0,  0
DATA 2          : '380
DATA  93,56,"AGATHA ",10,  5,  5,  5,  5,120,  0,  0,  0,  0
DATA 2
DATA  24,57,"AGATHA ",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  94,58,"AGATHA ",10,  5,  5,  5,  5,120,  0,  0,  0,  0
DATA 2
DATA  94,74,"AGATHA ",10,  5,  5,  5,  5,120,187,  0,  0,  0
DATA 2
DATA 169,75,"AGATHA ",10,  5,  5,  5,  5,120,  0,  0,  0,  0
DATA 2          : '385
DATA  94,77,"AGATHA ",10,  5,  5,  5,  5,120,187,  0,  0,  0
DATA 2
DATA  24,78,"AGATHA ",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  94,80,"AGATHA ",10,  5,  5,  5,  5,120,187,  0,  0,  0
DATA 2
DATA 200,82,"AGATHA ",10,  5,  5,  5,  5,120,187,  0,  0,  0
DATA 2
DATA 130,56,"LANCE  ",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '390
DATA 148,57,"LANCE  ",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 148,58,"LANCE  ",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 142,59,"LANCE  ",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 149,60,"LANCE  ",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 130,76,"LANCE  ",10,  5,  5,  5,  5, 64,  0,  0,  0,  0
DATA 2          : '395
DATA 230,77,"LANCE  ",10,  5,  5,  5,  5, 64,  0,  0,  0,  0
DATA 2
DATA 149,78,"LANCE  ",10,  5,  5,  5,  5, 64,  0,  0,  0,  0
DATA 2
DATA 149,80,"LANCE  ",10,  5,  5,  5,  5, 64,  0,  0,  0,  0
DATA 2
DATA 142,82,"LANCE  ",10,  5,  5,  5,  5, 64,  0,  0,  0,  0
DATA 2
DATA 149,84,"LANCE  ",10,  5,  5,  5,  5, 64,  0,  0,  0,  0
IniciarAqui:
DATA 3,21201                    : 'SEEK:400*53+1
DATA 2          : '400
DATA   2,30,"BARCO  ", 5,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA   5,30,"BARCO  ", 5,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA   8,30,"BARCO  ", 5,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA 153,34,"BARCO  ", 5,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA 156,34,"BARCO  ", 5,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2          : '405
DATA 159,34,"BARCO  ", 5,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA 181,45,"BARCO  ", 5,  2,  2,  2,  2,  0,  0,  0,  0,  0
DATA 2
DATA  81,40,"YASMINA",10,  5,  5,  5,  5, 43,  0,  0,  0,  0
DATA 2
DATA  81,42,"YASMINA",10,  5,  5,  5,  5, 43,  0,  0,  0,  0
DATA 2
DATA  82,42,"YASMINA",10,  5,  5,  5,  5, 43,  0,  0,  0,  0
DATA 2          : '410
DATA  82,44,"YASMINA",10,  5,  5,  5,  5, 43,  0,  0,  0,  0
DATA 2
DATA 205,42,"YASMINA",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 227,46,"YASMINA",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 208,48,"YASMINA",10,  5,  5,  5,  5, 47,  0,  0,  0,  0
DATA 2
DATA 164,45,"FARO   ",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '415
DATA 183,40,"FARO   ",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 210,34,"FARO   ",10,  5,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 120,40,"ISLAS  ", 5,  3,  3, 13,  3,  0,  0,  0,  0,  0
DATA 2
DATA 120,42,"ISLAS  ", 5,  3,  3, 13,  3,  0,  0,  0,  0,  0
DATA 2
DATA 121,42,"ISLAS  ", 5,  3,  3, 13,  3,  0,  0,  0,  0,  0
DATA 2          : '420
DATA 121,44,"ISLAS  ", 5,  3,  3, 13,  3,  0,  0,  0,  0,  0
DATA 2
DATA  90,40,"ISLAS  ", 5,  3,  3, 13,  3,  0,  0,  0,  0,  0
DATA 2
DATA  90,42,"ISLAS  ", 5,  3,  3, 13,  3,  0,  0,  0,  0,  0
DATA 2
DATA  72,40,"ISLAS  ", 5,  3,  3, 13,  3,  0,  0,  0,  0,  0
DATA 2
DATA  72,42,"ISLAS  ", 5,  3,  3, 13,  3,  0,  0,  0,  0,  0
DATA 2          : '425
DATA 223,40,"ISLAS  ", 5,  3,  3, 13,  3,  0,  0,  0,  0,  0
DATA 2
DATA 223,44,"ISLAS  ", 5,  3,  3, 13,  3,  0,  0,  0,  0,  0
DATA 2
DATA 118,42,"ISLAS  ", 5,  3,  3, 13,  3,  0,  0,  0,  0,  0
DATA 2
DATA 118,44,"ISLAS  ", 5,  3,  3, 13,  3,  0,  0,  0,  0,  0
DATA 2
DATA 119,44,"ISLAS  ", 5,  3,  3, 13,  3,  0,  0,  0,  0,  0
DATA 2          : '430
DATA 119,45,"ISLAS  ", 5,  3,  3, 13,  3,  0,  0,  0,  0,  0
DATA 2
DATA 129,40,"ISLAS  ", 5,  3,  3, 13,  3,  0,  0,  0,  0,  0
DATA 2
DATA 130,44,"ISLAS  ", 5,  3,  3, 13,  3,  0,  0,  0,  0,  0
DATA 2
DATA 130,46,"ISLAS  ", 5,  3,  3, 13,  3,  0,  0,  0,  0,  0
DATA 2
DATA 211,44,"ISLAS  ", 5,  3,  3, 13,  3,  0,  0,  0,  0,  0
DATA 2          : '435
DATA 211,46,"ISLAS  ", 5,  3,  3, 13,  3,  0,  0,  0,  0,  0
DATA 2
DATA 116,42,"ISLAS  ", 5,  3,  3, 13,  3,  0,  0,  0,  0,  0
DATA 2
DATA 116,44,"ISLAS  ", 5,  3,  3, 13,  3,  0,  0,  0,  0,  0
DATA 2
DATA 236,36,"AN‘BAL ",10,  5, 10,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 237,41,"AN‘BAL ",10,  5, 10,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '440
DATA  62,46,"AN‘BAL ",10,  5, 10,  5,  5,191,  0,  0,  0,  0
DATA 2
DATA  68,48,"AN‘BAL ",10,  5, 10,  5,  5,191,  0,  0,  0,  0
DATA 2
DATA 237,50,"AN‘BAL ",10,  5, 10,  5,  5,191,  0,  0,  0,  0
DATA 2
DATA 187,38,"RUTA 38", 5, 10,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 188,40,"RUTA 38", 5, 10,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2          : '445
DATA 180,42,"RUTA 38", 5, 10,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  54,42,"RUTA 38", 5, 10,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 222,47,"RUTA 38", 5, 10,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  25,42,"RUTA 38", 5, 10,  5,  5,  5, 43,  0,  0,  0,  0
DATA 2
DATA  25,44,"RUTA 38", 5, 10,  5,  5,  5, 84,  0,  0,  0,  0
DATA 2          : '450
DATA  61,38,"RUTA 38", 5, 10,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  20,39,"RUTA 38", 5, 10,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA  98,40,"RUTA 38", 5, 10,  5,  5,  5,  0,  0,  0,  0,  0
DATA 2
DATA 134,45,"DANZA  ",10,  5, 15,  5,  5,117,  0,  0,  0,  0
DATA 2
DATA 196,45,"DANZA  ",10,  5, 15,  5,  5,187,200,150, 58, 42
DATA 2          : '455
DATA 135,45,"DANZA  ",10,  5, 15,  5,  5,246,  0,  0,  0,  0
DATA 2
DATA 197,45,"DANZA  ",10,  5, 15,  5,  5,245,  0,  0,  0,  0
DATA 2
DATA 136,45,"DANZA  ",10,  5, 15,  5,  5, 99,  0,  0,  0,  0
DATA 2
DATA  92,40,"MORTI  ",10,  5,  5,  5,  5,120,  0,  0,  0,  0
DATA 2
DATA  92,44,"MORTI  ",10,  5,  5,  5,  5,120,  0,  0,  0,  0
DATA 2          : '460
DATA  92,48,"MORTI  ",10,  5,  5,  5,  5,120,  0,  0,  0,  0
DATA 2
DATA  92,52,"MORTI  ",10,  5,  5,  5,  5,120,  0,  0,  0,  0
DATA 2
DATA  93,46,"MORTI  ",10,  5,  5,  5,  5,120,  0,  0,  0,  0
DATA 2
DATA  93,50,"MORTI  ",10,  5,  5,  5,  5,120,  0,  0,  0,  0
DATA 2
DATA  93,54,"MORTI  ",10,  5,  5,  5,  5,120,  0,  0,  0,  0
DATA 2          : '465
DATA  94,48,"MORTI  ",10,  5,  5,  5,  5,120,  0,  0,  0,  0
DATA 2
DATA  94,52,"MORTI  ",10,  5,  5,  5,  5,120,  0,  0,  0,  0
DATA 2
DATA  94,56,"MORTI  ",10,  5,  5,  5,  5,120,  0,  0,  0,  0
DATA 2
DATA 200,58,"MORTI  ",10,  5,  5, 20,  5, 49,120,185,186,200
DATA 2
DATA  39,38,"RUTA 36", 8,  3,  3,  3,  3,  0,  0,  0,  0,  0
DATA 2          : '470
DATA  35,38,"RUTA 36", 8,  3,  3,  3,  3,  0,  0,  0,  0,  0
DATA 2
DATA  96,40,"RUTA 36", 8,  3,  3,  3,  3,  0,  0,  0,  0,  0
DATA 2
DATA 140,20,"       ", 8,  3,  3,  3,  3,  0,  0,  0,  0,  0
DATA 2
DATA 138,20,"       ", 8,  3,  3,  3,  3,  0,  0,  0,  0,  0

DATA 0

DEFINT A-Z
FUNCTION MSpokeFound$ (np, nv, eo$, eps, eat, edef, evel, eesp, at1, at2, at3, ay4, at5)
  PkmDat$ = SPACE$(53)
'Encontrar Numero del Pok‚mon
  MID$(PkmDat$, 1, 1) = CHR$(np)
'Encontrar Nombre
  NumPkmInfo = np
  MID$(PkmDat$, 2, 10) = QBloadDesc(0)
'Encontrar Entrenador
  MID$(PkmDat$, 12, 7) = eo$
'Encontrar Elemento
  nm& = ASC(MID$(PkmDat$, 1, 1))
  OPEN Direccion$ + "TABLAS-F.BIN" FOR BINARY AS #2
    tf$ = SPACE$(13)
    GET #2, nm& * 13 + 78781, tf$
  CLOSE #2
  MID$(PkmDat$, 19, 2) = MID$(tf$, 1, 2)
'Encontrar Nivel
  MID$(PkmDat$, 21, 1) = CHR$(nv)
'Estado: OK
  MID$(PkmDat$, 22, 1) = CHR$(0)
'Encontrar Energ¡a y M xEnerg¡a
  d1! = ASC(MID$(tf$, 3, 1)): d2! = ASC(MID$(tf$, 4, 1)): dt! = d1! * 256 + d2!: n! = nv
  en = dt! / 100 * n! + 10 + eps: d2 = en MOD 256: d1 = (en - d2) / 256: a$ = CHR$(d1) + CHR$(d2)
  MID$(PkmDat$, 23, 4) = a$ + a$
'Encontrar Ataques
  pt = 27
  a$ = CHR$(0): MID$(PkmDat$, pt, 5) = a$ + a$ + a$ + a$ + a$
  OPEN Direccion$ + "TABLAS-F.BIN" FOR BINARY AS #2
  FOR n = 0 TO nv
    n& = n: p& = np: ap& = p& * 303 + n& * 3 + 1213: a$ = "   "
    GET #2, ap&, a$
    FOR ts = 1 TO 3
      t = ASC(MID$(a$, ts, 1))
      IF t > 0 AND t < 255 THEN
        MID$(PkmDat$, pt, 1) = CHR$(t)
        pt = pt + 1: IF pt = 32 THEN pt = 27
      END IF
    NEXT ts
  NEXT n
  IF at1 > 0 AND INSTR(1, MID$(PkmDat$, 27, 5), CHR$(at1)) = 0 THEN MID$(PkmDat$, pt, 1) = CHR$(at1): pt = pt + 1: IF pt = 32 THEN pt = 27
  IF at2 > 0 AND INSTR(1, MID$(PkmDat$, 27, 5), CHR$(at2)) = 0 THEN MID$(PkmDat$, pt, 1) = CHR$(at2): pt = pt + 1: IF pt = 32 THEN pt = 27
  IF at3 > 0 AND INSTR(1, MID$(PkmDat$, 27, 5), CHR$(at3)) = 0 THEN MID$(PkmDat$, pt, 1) = CHR$(at3): pt = pt + 1: IF pt = 32 THEN pt = 27
  IF at4 > 0 AND INSTR(1, MID$(PkmDat$, 27, 5), CHR$(at4)) = 0 THEN MID$(PkmDat$, pt, 1) = CHR$(at4): pt = pt + 1: IF pt = 32 THEN pt = 27
  IF at5 > 0 AND INSTR(1, MID$(PkmDat$, 27, 5), CHR$(at5)) = 0 THEN MID$(PkmDat$, pt, 1) = CHR$(at5): pt = pt + 1: IF pt = 32 THEN pt = 27
  CLOSE #2
'Encontrar PP y M xPP
  FOR p = 27 TO 31
    t = ASC(MID$(PkmDat$, p, 1))
    a$ = MID$(NombObj(t + 256), 14, 1)
    MID$(PkmDat$, p + 5, 1) = a$
    MID$(PkmDat$, p + 10, 1) = a$
  NEXT p
'Encontrar ATAQUE
  d1! = ASC(MID$(tf$, 5, 1)): d2! = ASC(MID$(tf$, 6, 1)): dt! = d1! * 256 + d2!: n! = nv
  en = dt! / 100 * n! + 5 + eat: d2 = en MOD 256: d1 = (en - d2) / 256: a$ = CHR$(d1) + CHR$(d2)
  MID$(PkmDat$, 42, 2) = a$
'Encontrar DEFENSA
  d1! = ASC(MID$(tf$, 7, 1)): d2! = ASC(MID$(tf$, 8, 1)): dt! = d1! * 256 + d2!: n! = nv
  en = dt! / 100 * n! + 5 + edef: d2 = en MOD 256: d1 = (en - d2) / 256: a$ = CHR$(d1) + CHR$(d2)
  MID$(PkmDat$, 44, 2) = a$
'Encontrar VELOCIDAD
  d1! = ASC(MID$(tf$, 9, 1)): d2! = ASC(MID$(tf$, 10, 1)): dt! = d1! * 256 + d2!: n! = nv
  en = dt! / 100 * n! + 5 + evel: d2 = en MOD 256: d1 = (en - d2) / 256: a$ = CHR$(d1) + CHR$(d2)
  MID$(PkmDat$, 46, 2) = a$
'Encontrar ESPECIAL
  d1! = ASC(MID$(tf$, 11, 1)): d2! = ASC(MID$(tf$, 12, 1)): dt! = d1! * 256 + d2!: n! = nv
  en = dt! / 100 * n! + 5 + eesp: d2 = en MOD 256: d1 = (en - d2) / 256: a$ = CHR$(d1) + CHR$(d2)
  MID$(PkmDat$, 48, 2) = a$
'Encontrar EXPERIENCIA
  t = ASC(MID$(tf$, 13, 1)): a$ = "   "
  OPEN Direccion$ + "TABLAS-F.BIN" FOR BINARY AS #2
  GET #2, t * 303 + nv * 3 + 1, a$
  CLOSE #2
  MID$(PkmDat$, 50, 3) = a$
  MSpokeFound$ = PkmDat$
END FUNCTION

FUNCTION NombObj$ (QFno)
  a$ = SPACE$(15)
  GET #7, QFno * 15 + 1, a$
  NombObj$ = a$
END FUNCTION

SUB QBinitProg
  Direccion$ = "ARCHIVOS\"
  OPEN Direccion$ + "DESC-PKM.BIN" FOR BINARY AS #6
  OPEN Direccion$ + "NOMB-OBJ.BIN" FOR BINARY AS #7
END SUB

FUNCTION QBloadDesc$ (dt)
  ap& = NumPkmInfo - 1: ap& = ap& * 222 + 1: pd$ = SPACE$(222)
  GET #6, ap&, pd$
  IF dt = 0 THEN QBloadDesc$ = MID$(pd$, 1, 10)
  IF dt = 1 THEN QBloadDesc$ = MID$(pd$, 11, 10)
  IF dt = 2 THEN QBloadDesc$ = MID$(pd$, 21, 192)
  IF dt = 3 THEN QBloadDesc$ = MID$(pd$, 213, 5)
  IF dt = 4 THEN QBloadDesc$ = MID$(pd$, 218, 5)
END FUNCTION

