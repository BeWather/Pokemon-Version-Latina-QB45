DECLARE FUNCTION MSpokeFound$ (np%, nv%, eo$, eps%, eat%, edef%, evel%, eesp%, at1%, at2%, at3%, ay4%, at5%)
DECLARE FUNCTION QBloadDesc$ (dt%)
DECLARE SUB QBinitProg ()
DECLARE FUNCTION NombObj$ (QFno%)

DEFLNG A-Z

DIM SHARED Direccion$, NumPkmInfo AS INTEGER

QBinitProg

OPEN "C:\NEWPOKE1\ARCHIVOS\CENTRO-P.BIN" FOR BINARY AS #1

DO
  READ dfin
  IF dfin = 0 THEN EXIT DO
  IF dfin = 1 THEN GOSUB PutPkmDef100
  IF dfin = 2 THEN
    READ np%, nv%, no$, eps%, eat%, edef%, evel%, eesp%, at1%, at2%, at3%, at4%, at5%
    pd$ = MSpokeFound(np%, nv%, no$, eps%, eat%, edef%, evel%, eesp%, at1%, at2%, at3%, at4%, at5%)
    PUT #1, , pd$
  END IF
  IF dfin = 3 THEN a$ = STRING$(53, 0): PUT #1, , a$
  IF dfin = -1 THEN READ apuntador: SEEK #1, apuntador
LOOP
CLOSE
SHELL "copy /y c:\newpoke1\archivos\centro-p.bin d:\"
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

' Tipo N§  Nv EO        ex-ps,ex-at,ex-def,ex-vel,ex-esp,at1,at2,at3,at4,at5
'CENTRO POKEMON CIUDAD VERDE
DATA 2, 69, 5,"TITO   ",    0,    0,     0,     0,     0,  0,  0,  0,  0,  0
DATA 3
DATA 3
DATA 3
DATA 3
DATA 3
DATA 3
DATA 3
'CENTRO POKEMON CIUDAD PLATEADA
DATA 2, 72, 5,"TITO   ",    0,    0,     0,     0,     0,  0,  0,  0,  0,  0
DATA 3
DATA 3
DATA 3
DATA 3
DATA 3
DATA 3
DATA 3
'CENTRO POKEMON MONTE LUNA
DATA 2,129, 5,"TITO   ",    0,    0,     0,     0,     0,  0,  0,  0,  0,  0
DATA 3
DATA 3
DATA 3
DATA 3
DATA 3
DATA 3
DATA 3
'CENTRO POKEMON CIUDAD CELESTE
DATA 2, 23, 5,"TITO   ",    0,    0,     0,     0,     0,  0,  0,  0,  0,  0
DATA 2,124,10,"ABUELO ",   10,    0,     0,     0,     0,  0,  0,  0,  0,  0
DATA 3
DATA 3
DATA 3
DATA 3
DATA 3
DATA 3
'CENTRO POKEMON PUEBLO LAVANDA
DATA 2, 25, 5,"TITO   ",    0,    0,     0,     0,     0,  0,  0,  0,  0,  0
DATA 3
DATA 3
DATA 3
DATA 3
DATA 3
DATA 3
DATA 3
'CENTRO POKEMON CIUDAD CARMIN
DATA 2,194, 5,"TITO   ",    0,    0,     0,     0,     0,  0,  0,  0,  0,  0
DATA 3
DATA 3
DATA 3
DATA 3
DATA 3
DATA 3
DATA 3
'CENTRO POKEMON CIUDAD AZULONA
DATA 2, 10, 5,"TITO   ",    0,    0,     0,     0,     0,  0,  0,  0,  0,  0
DATA 3
DATA 3
DATA 3
DATA 3
DATA 3
DATA 3
DATA 3
'CENTRO POKEMON CIUDAD AZAFRAN
DATA 2, 32, 5,"TITO   ",    0,    0,     0,     0,     0,  0,  0,  0,  0,  0
DATA 3
DATA 3
DATA 3
DATA 3
DATA 3
DATA 3
DATA 3
'CENTRO POKEMON CIUDAD FUCSIA
DATA 2, 43, 5,"TITO   ",    0,    0,     0,     0,     0,  0,  0,  0,  0,  0
DATA 2, 20,20,"LOLA   ",    0,    0,     0,     0,     0,  0,  0,  0,  0,  0
DATA 3
DATA 3
DATA 3
DATA 3
DATA 3
DATA 3
'CENTRO POKEMON CIUDAD OLIVO
DATA 2,118, 5,"TITO   ",    0,    0,     0,     0,     0,  0,  0,  0,  0,  0
DATA 3
DATA 3
DATA 3
DATA 3
DATA 3
DATA 3
DATA 3
'CENTRO POKEMON CIUDAD ORQUIDEA
DATA 2,116, 5,"TITO   ",    0,    0,     0,     0,     0,  0,  0,  0,  0,  0
DATA 3
DATA 3
DATA 3
DATA 3
DATA 3
DATA 3
DATA 3
'CENTRO POKEMON CIUDAD IRIS
DATA 2,117,10,"TITO   ",    0,    0,     0,     0,     0,  0,  0,  0,  0,  0
DATA 3
DATA 3
DATA 3
DATA 3
DATA 3
DATA 3
DATA 3

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

