'
'                 P O K E M O N     V E R S I O N   L A T I N A
'
'                         VERSION 1.0    07/07/2003
'
'                      PRESIONE SHIFT + F5 PARA JUGAR
'
'                            ARRIBA  =  TECLA W
'                             ABAJO  =  TECLA S
'                         IZQUIERDA  =  TECLA A
'                           DERECHA  =  TECLA D
'
'                           BOTON A  =  TECLA G
'                           BOTON B  =  TECLA H
'                       BOTON START  =  TECLA T
'                      BOTON SELECT  =  TECLA Y
'
'
'                 CONTACTO:  JUAN_MATIAS_OLMOS@HOTMAIL.COM
'
DECLARE FUNCTION MSzonaRoja% (m%, x%, y%)
DECLARE FUNCTION WaterFree% (ns%)
DECLARE FUNCTION QBrevisarMochila% (Obj%)
DECLARE FUNCTION SetTypeWater% (nz%)
DECLARE FUNCTION MSsetData$ (np%, nv%)
DECLARE FUNCTION Edificio% (QBnz%)
DECLARE FUNCTION Externo% (nz%)
DECLARE FUNCTION QBfuerzaGolpe% (pq%, tq%)
DECLARE FUNCTION MSentrenData$ (ne%)
DECLARE FUNCTION QBloadDesc$ (dt%)
DECLARE FUNCTION MShierba% (m%, x%, y%)
DECLARE FUNCTION MSefic% (nt%, np%)
DECLARE FUNCTION MSataqs$ (A$)
DECLARE FUNCTION TipoTecnica% (nt%)
DECLARE FUNCTION MSfindSpr% (np%, ts%)
DECLARE FUNCTION MSsetExp& (pd$)
DECLARE FUNCTION SubirDatos$ (nm%, nv%, sn%, pd$)
DECLARE FUNCTION MSbarPS$ (pd1$, pd2$, p%, r%, i%)
DECLARE FUNCTION MSfig% (m%, x%, y%)
DECLARE FUNCTION MSsetTecPR% (te%, pd$)
DECLARE FUNCTION PokeDentro% (pd1$, pd2$)
DECLARE FUNCTION QBsumarPoke$ (pd$)
DECLARE FUNCTION QBselecPoke% (Cur%, Des%)
DECLARE FUNCTION MSselecTec% (pd$, Cur%)
DECLARE FUNCTION MSpokeFound$ (tpk%)
DECLARE FUNCTION UTILIZAR% (OB%)
DECLARE FUNCTION QBrecivirPoke$ (l&)
DECLARE FUNCTION EntObjMoc% (QFobj%, QFcant%)
DECLARE FUNCTION ContBits% (B1%, B2%, B3%)
DECLARE FUNCTION NombObj$ (QFno%)
DECLARE FUNCTION BolPObj% (QFn5%)
DECLARE FUNCTION SiONO% (QFn6%)
DECLARE FUNCTION QBordCad$ (QBca$, QBlo%)
DECLARE FUNCTION QBloadTabMap$ (QBn4%)
DECLARE FUNCTION Ambiente% (QFx%, QFy%, QFs%)
DECLARE FUNCTION SubirNivel$ (pd$, ec%, xt%, adi%)
DECLARE FUNCTION SearchEvo% (te%, np%)
DECLARE FUNCTION EvoPokemon$ (pkmdt$, np%)
DECLARE FUNCTION Interno% (nz%)
DECLARE FUNCTION AddWater% (QFn2%)
DECLARE FUNCTION CaminoLibre% (QFx3%, QFy3%, QFd3%, QFp3%)
DECLARE FUNCTION PuedeAprender% (np%, mto%)
DECLARE FUNCTION QBapreTecn$ (pkmdt$, twl%)
DECLARE FUNCTION LPoke$ (np%)
DECLARE FUNCTION MSloadPoke$ (np%)
DECLARE FUNCTION QBopcLucha% (x%, y%)
DECLARE FUNCTION EstPkm$ (pq%)
DECLARE FUNCTION PuedeLuchar% (pd$)
DECLARE SUB QBsetPal (p$)
DECLARE SUB QBfinJuego ()
DECLARE SUB QBleerPizarra ()
DECLARE SUB QBgoToCntPkm ()
DECLARE SUB QBopenPCcam ()
DECLARE SUB QBputMsg (nm%, nt%)
DECLARE SUB QBprevLucha (QBn%, QBac%)
DECLARE SUB QBordenarPkm (pkm1%, pkm2%)
DECLARE SUB QBopenBillPC ()
DECLARE SUB QBopenPCCP ()
DECLARE SUB QBmaqCura (op%)
DECLARE SUB QBenfrentar (QBnp%)
DECLARE SUB QBfightEntren ()
DECLARE SUB QBputPF56E (QBx%, QBy%, QBn%, QBe%)
DECLARE SUB QBperdio (pq%, st%)
DECLARE SUB QBclsScr (tc%)
DECLARE SUB QBdoTec ()
DECLARE SUB QBcaerPoke (pq%, np%)
DECLARE SUB QBdebPoke (pd1$, pd2$, pq%)
DECLARE SUB QBplayHits (t1%, t2%, pd1$, pd2$)
DECLARE SUB QBhit (pq%, aq%, np%)
DECLARE SUB QBsetFirstPoke ()
DECLARE SUB QBusar (Objeto%)
DECLARE SUB QBputEscena ()
DECLARE SUB QBofrecer (nl%)
DECLARE SUB QBverEstPkm (PKM%)
DECLARE SUB QBshowBarEner (cx%, cy%, pac&, pto&)
DECLARE SUB QBverPkm (Cur%)
DECLARE SUB QBrestorePkm (QBtr%)
DECLARE SUB QBloadZona ()
DECLARE SUB QBputObj (QBno%)
DECLARE SUB QBwriteTMP ()
DECLARE SUB QBreadTMP ()
DECLARE SUB QBloadFrom (QBa$, nh%, nm%)
DECLARE SUB QBmovPrs (QBnp%)
DECLARE SUB QBhablarConP (QBn%)
DECLARE SUB QBrefreshScreen ()
DECLARE SUB QBshowDescOfPkm (QBn%, QBa$)
DECLARE SUB QBshowPage (QBnp%)
DECLARE SUB QBverPokeDex ()
DECLARE SUB QBshowListPD ()
DECLARE SUB QBshowListM (QBSa%, QBSb%)
DECLARE SUB QBsacarObjeto ()
DECLARE SUB QBdejarObjeto ()
DECLARE SUB QBshowObjPC ()
DECLARE SUB QBopenMiPC ()
DECLARE SUB QBputP16 (QBx%, QBy%, QBn%)
DECLARE SUB QBverMapa ()
DECLARE SUB QBleerCartel ()
DECLARE SUB QBshowPagEst (QBp%)
DECLARE SUB QBverMiEstado ()
DECLARE SUB QBverMochila ()
DECLARE SUB QBseeMenu1 ()
DECLARE SUB QBcambioPos (QBb%)
DECLARE SUB QBchZona ()
DECLARE SUB QBmir (p%)
DECLARE SUB QBcam (p%)
DECLARE SUB QBmovy (d%)
DECLARE SUB QBputPrs (p%)
DECLARE SUB QBdisplayMap ()
DECLARE SUB QBput16 (QBx11%, QBy11%, QBn11%)
DECLARE SUB QBdisplayTxt (QBnt!, QBrng%)
DECLARE SUB QBpre3 ()
DECLARE SUB QBputCursor (QBn%)
DECLARE SUB QBprint (QBx9%, QBy9%, QBt9$)
DECLARE SUB QBputBox (QBt8%, QBx8%, QBy8%, QBlx8%, QBly8%)
DECLARE SUB QBgetSav ()
DECLARE SUB QBputPB56 (QBx%, QBy%, QBn%, QBc%)
DECLARE SUB QBputPF56 (QBx%, QBy%, QBn%, QBc%)
DECLARE SUB QBfadeToWhite ()
DECLARE SUB QBputV16 (QBx%, QBy%, QBn%)
DECLARE SUB QBput8 (QBx%, QBy%, QBn%, Bnc%)
DECLARE SUB QBinitProg ()
DECLARE SUB QBshowPant ()
DECLARE SUB QBputP56 (QBx%, QBy%, QBn%)
DECLARE SUB QBfightPokeSalv ()
DECLARE SUB QBshowBoxEst (A$)
DECLARE SUB QBdispObj (tp1%, np1%, tp2%, np2%)
DECLARE SUB QBretiObj (pq%, tp%, np%)
DECLARE SUB QBsendPoke (prsq%, np%)
DECLARE SUB QBshowDataF2 (pkmdt1$, pkmdt2$, EB%)
DECLARE SUB QBwaitAB ()
DECLARE SUB SPoke (np%, pd$)
DECLARE SUB QBputPB56E (QBx%, QBy%, QBn%, QBe%)
DECLARE SUB QBwritePkmTMP (p1%, p2%, p3%, p4%, p5%, p6%)

DEFINT A-Z

'$INCLUDE: 'DIRECTQB.BI'

TYPE TipoPL
  ATAQ AS SINGLE
  DEFE AS SINGLE
  VELO AS SINGLE
  ESPE AS SINGLE
  PRES AS SINGLE
  EVAD AS SINGLE
  CRIT AS SINGLE
  CONF AS SINGLE
  ACCI AS SINGLE
END TYPE

TYPE TipoCursor
  NX AS INTEGER
  NY AS INTEGER
  VX AS INTEGER
  VY AS INTEGER
  SP AS INTEGER
END TYPE

TYPE TipoPrs
  e AS INTEGER
  t AS INTEGER
  x AS INTEGER
  y AS INTEGER
  c AS INTEGER
  s AS LONG
  p AS LONG
  x1 AS INTEGER
  y1 AS INTEGER
  x2 AS INTEGER
  y2 AS INTEGER
  di AS INTEGER
  rn AS INTEGER
END TYPE

TYPE TipoObj
  e AS INTEGER
  v AS INTEGER
  x AS INTEGER
  y AS INTEGER
  i AS LONG
  o AS INTEGER
  b AS INTEGER
END TYPE

SCREEN 13
IF DQBinit(1, 0, 0) THEN DQBclose: SCREEN 0: WIDTH 80, 25: PRINT DQBerror: END
DQBinitVGA

'$DYNAMIC

DIM SHARED Barr$, Baba$, Bizq$, Bder$, Ba$, Bb$, Bsta$, Bsel$
DIM SHARED Banco, Region, PkmF(3) AS TipoPL
DIM SHARED DoFuerza, ArbolX, ArbolY, PokeEsp, ArbolSP
DIM SHARED Invicibilidad
DIM SHARED Conver1(255), PkmAtaq
DIM SHARED Cursor(5) AS TipoCursor
DIM SHARED NombPers$
DIM SHARED Persona(10) AS TipoPrs
DIM SHARED Objeto(10) AS TipoObj
DIM SHARED TipoFlor
DIM SHARED FlorST
DIM SHARED FlorT(14, 3)
DIM SHARED TipoAgua
DIM SHARED AguaST
DIM SHARED AguaT(2, 3)
DIM SHARED NumZona, NumMapa
DIM SHARED TMapa, TPokedex, TPokemon, TiempoSafari
DIM SHARED MedKanto, MedJohto, MedArgos, NPokeAtra, NPokeVist
DIM SHARED PkmVA$, Cartel$, HablarCon, Entrada
DIM SHARED ContPC$, ContMoch$, MochIndex(2), NumBols, NumSlot1, NumSlot2, NumSlot3
DIM SHARED OpSal, Lugar, LuchoPkm(6), City
DIM SHARED UltCntPkm AS STRING * 6, UltimaTecnica
DIM SHARED IniT AS LONG, FinT AS LONG, TJug AS LONG
DIM SHARED Dinero AS LONG, ShowBox, NumPkmInfo, PalOff, IndexCentro
DIM SHARED IndexPC, NCaja, DexIndex, Escaleras$, PkmAcc, NumTec, SufreEst
DIM SHARED Reng1$, Reng2$, Reng3$, NombVarios$, NombEnem$, Repelente
DIM SHARED VX, VY, ACCION$, CerrarMochila, ObjetoAUsar, Direccion$
DIM SHARED GastoObjeto, NumPkmF, NumPkmR, TotalPR, PkmNoFound, NumEntren
DIM SHARED NumPant

InicioDelPrograma:

QBinitProg

QBgetSav
'QBfadeToWhite

QBdisplayMap
QBloadZona
QBputEscena
DQBcopyLayer 1, VIDEO
QBsetPal "ESPECIAL.PAL"

IniT = TIMER - 50
ACCION$ = "CAMINANDO": ObjetoAUsar = -1

Retraso = 0
DO
  Retraso = Retraso + 1
  IF Retraso = 40 THEN
    QBputEscena
    Retraso = 0
    DQBcopyLayer 1, VIDEO
'    FOR p = 1 TO 10
'      LOCATE p, 1: PRINT p; Persona(p).s; Persona(p).x1; Persona(p).y1; Persona(p).x2; Persona(p).y2
'    NEXT p
    IF ACCION$ = "PERDIO" THEN QBperdio 0, 1: ACCION$ = "CAMINANDO"
  END IF
  IF Retraso = 20 THEN IF Persona(0).s = 36 AND Persona(0).c THEN QBmovy -1
  IF HablarCon > 0 THEN
    ri! = Persona(HablarCon).di
    rl = Persona(HablarCon).rn
    QBdisplayTxt ri!, rl
    HablarCon = -1
  END IF
  IF ShowBox THEN
    ShowBox = FALSE
    QBputBox 1, 0, 9, 18, 5
    QBprint 1, 10, Reng1$
    QBprint 1, 11, Reng2$
    QBprint 1, 12, Reng3$
    DQBcopyLayer 1, VIDEO
    QBwaitAB
    Reng1$ = "": Reng2$ = "": Reng2$ = ""
  END IF
  ink$ = INKEY$
  IF ink$ = "*" THEN CLOSE : RESTORE: GOTO InicioDelPrograma
  IF ink$ = "p" THEN QBsetPal "ESPECIAL.PAL"
  IF ink$ = "]" AND Persona(0).s < 190 THEN Persona(0).s = Persona(0).s + 1
  IF ink$ = "[" AND Persona(0).s > 0 THEN Persona(0).s = Persona(0).s - 1
  IF Persona(0).e THEN
    IF ink$ = Barr$ THEN QBmovy 1
    IF ink$ = Baba$ THEN QBmovy 0
    IF ink$ = Bizq$ THEN QBmovy 2
    IF ink$ = Bder$ THEN QBmovy 3
    IF ink$ = Ba$ THEN QBleerCartel
    IF ink$ = Bsta$ THEN
      QBseeMenu1
      IF ObjetoAUsar > -1 THEN
        QBputEscena
        DQBcopyLayer 1, VIDEO
        QBusar ObjetoAUsar
        ObjetoAUsar = -1
      END IF
      QBputEscena
      IF NumTec > 0 AND PkmAcc > 0 THEN
        QBputBox 1, 0, 10, 18, 4
        pd$ = LPoke(PkmAcc)
        QBprint 1, 11, "≠" + RTRIM$(MID$(pd$, 2, 10)) + " us¢"
        A$ = MID$(NombObj(NumTec + 256), 1, 12)
        QBprint 1, 12, RTRIM$(A$) + "!"
        DQBcopyLayer 1, VIDEO: QBwaitAB: QBdoTec: QBputEscena: PkmAcc = 0: NumTec = 0
      END IF
    END IF
  END IF
LOOP UNTIL ink$ = CHR$(27)

CLOSE
KILL "POKELATI.TMP"
KILL "LUCHA.TMP"
DQBclose
CLEAR
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

DATA 45,46,47,46
DATA 48,49,50,49
DATA 833,834,835,834

DATA "----      ","®?        ","ACERO     ","AGUA      ","BICHO     "
DATA "DRAGíN    ","ELêCTRICO ","FANTASMA  ","FUEGO     ","HIELO     "
DATA "LUCHA     ","NORMAL    ","PLANTA    ","PSëQUICO  ","ROCA      "
DATA "SINIESTRO ","TIERRA    ","VENENO    ","VOLADOR   ","OK        "
DATA "CONGELADO ","DEBILITADO","DORMIDO   ","ENVENENADO","PARALIZADO"
DATA "QUEMADO   "

REM $STATIC
FUNCTION AddWater (QFn2)
  AddWater = FALSE
  OPEN Direccion$ + "TABLAS-F.BIN" FOR BINARY AS #10
  A$ = " ": GET #10, CLNG(QFn2) + 105481, A$
  CLOSE #10
  IF ASC(A$) > 1 THEN AddWater = 1
  SELECT CASE QFn2
    CASE 9:  AddWater = -FlorT(0, FlorST)
    CASE 12: AddWater = -FlorT(1, FlorST)
    CASE 15: AddWater = -FlorT(2, FlorST)
    CASE 18: AddWater = -FlorT(3, FlorST)
    CASE 1434: AddWater = -FlorT(4, FlorST)
    CASE 900: AddWater = -FlorT(5, FlorST)
    CASE 851: AddWater = -FlorT(6, FlorST)
    CASE 853: AddWater = -FlorT(7, FlorST)
    CASE 1852: AddWater = -FlorT(8, FlorST)
    CASE 1864: AddWater = -FlorT(9, FlorST)
    CASE 1873: AddWater = -FlorT(10, FlorST)
    CASE 1551: AddWater = -FlorT(11, FlorST)
    CASE 1552: AddWater = -FlorT(12, FlorST)
    CASE 1546: AddWater = -FlorT(13, FlorST)
    CASE 1547: AddWater = -FlorT(14, FlorST)
  END SELECT
END FUNCTION

FUNCTION Ambiente (QFx, QFy, QFs)
  ns = MSfig(NumMapa, QFx, QFy)
  IF QFs = 1 AND (ns = 488 OR ns = 1051) THEN Ambiente = TRUE: EXIT FUNCTION
  IF QFs = 2 AND ns = 662 AND NumZona = 1 THEN Ambiente = TRUE: EXIT FUNCTION
  IF QFs = 3 AND NumZona = 3 AND QFx = 9 AND QFy = 23 THEN Ambiente = TRUE: EXIT FUNCTION
  IF QFs = 4 AND WaterFree(ns) THEN Ambiente = TRUE: EXIT FUNCTION
END FUNCTION

FUNCTION BolPObj (QFn5)
  SELECT CASE QFn5
    CASE 123 TO 182: BolPObj = 2
    CASE 183 TO 189: BolPObj = -2
    CASE 81 TO 122: BolPObj = 1
    CASE ELSE: BolPObj = 0
  END SELECT
END FUNCTION

FUNCTION CaminoLibre (QFx3, QFy3, QFd3, QFp3)
  CL = FALSE
  ns = MSfig(NumMapa, QFx3, QFy3)
  OPEN Direccion$ + "TABLAS-F.BIN" FOR BINARY AS #10
  A$ = " ": GET #10, CLNG(ns) + 105481, A$
  CLOSE #10
  A = ASC(A$): IF A = 1 THEN CL = TRUE
  SELECT CASE ns
    CASE 130, 152, 174, 889, 1126, 1402, 1441, 1511: IF QFd3 > 0 THEN CL = TRUE
    CASE 113, 105, 121, 839, 1152: IF QFd3 = 2 THEN CL = 2
    CASE 114, 106, 122, 840, 1156: IF QFd3 = 3 THEN CL = 2
    CASE 109 TO 111, 117 TO 119, 125 TO 127, 843 TO 845, 1154, 1310: IF QFd3 = 0 THEN CL = 2
  END SELECT
  ns2 = MSfig(NumMapa, QFx3, QFy3 + 1): IF QFd3 = 1 AND (ns2 = 130 OR ns2 = 152 OR ns2 = 174) THEN CL = FALSE
  IF CL = TRUE AND Persona(QFp3).t = 5 THEN CL = 1
  wf = WaterFree(ns)
  IF Persona(QFp3).t = 5 AND wf THEN CL = TRUE
  IF Persona(QFp3).s = 9 AND wf THEN CL = TRUE
  IF Persona(QFp3).s = 88 AND wf THEN CL = TRUE
  k = 0
  FOR o = 0 TO 10
    IF Persona(o).x = QFx3 AND Persona(o).y = QFy3 AND Persona(o).e AND o <> QFp3 THEN k = k + 1
    IF Persona(o).t = 4 AND DoFuerza THEN
      A$ = " ": GET #8, Persona(o).x2 + Persona(o).y1 + 1, A$: acc = ASC(A$)
      IF acc = 54 THEN Persona(o).x2 = Persona(o).x2 + 1
    END IF
  NEXT o
  IF k > 0 THEN CL = FALSE
  k = 0
  FOR o = 1 TO 10
    IF Objeto(o).x = QFx3 AND Objeto(o).y = QFy3 THEN
      A$ = " ": ap& = Objeto(o).b + (Region - 1) * 256 + 16467
      GET #9, ap&, A$: IF Objeto(o).v AND ASC(A$) THEN k = k + 1
      IF Objeto(o).i = 255 AND DoFuerza AND QFp3 = 0 THEN
        IF QFd3 = 0 THEN cx2 = Objeto(o).x: cy2 = Objeto(o).y + 1
        IF QFd3 = 1 THEN cx2 = Objeto(o).x: cy2 = Objeto(o).y - 1
        IF QFd3 = 2 THEN cx2 = Objeto(o).x - 1: cy2 = Objeto(o).y
        IF QFd3 = 3 THEN cx2 = Objeto(o).x + 1: cy2 = Objeto(o).y
        IF CaminoLibre(cx2, cy2, QFd3, 1) AND CaminoLibre(cx2, cy2, QFd3, 2) THEN Objeto(o).x = cx2: Objeto(o).y = cy2
      END IF
    END IF
  NEXT o
  IF k > 0 THEN CL = FALSE
  CaminoLibre = CL
END FUNCTION

FUNCTION ContBits (B1, B2, B3)
  FOR i = 0 TO 7
    b = B1 AND 2 ^ i
    IF b THEN nb = nb + 1
    b = B2 AND 2 ^ i
    IF b THEN nb = nb + 1
    b = B3 AND 2 ^ i
    IF b THEN nb = nb + 1
  NEXT i
  ContBits = nb
END FUNCTION

FUNCTION Edificio (QBnz)
  A$ = " ": ap& = QBnz - 1
  GET #5, ap& * 560 + 551, A$
  Edificio = ASC(A$)
END FUNCTION

FUNCTION EntObjMoc (QFobj, QFcant)
  A$ = NombObj(QFobj)
  A$ = MID$(A$, 13, 1)
  IF ASC(A$) = 0 THEN LO$ = MID$(ContMoch$, 1, 40): l = 2
  IF ASC(A$) = 1 THEN LO$ = MID$(ContMoch$, 41, 10): l = 1
  IF ASC(A$) = 2 THEN LO$ = MID$(ContMoch$, 51, 60): l = 2
  FOR s = 0 TO LEN(LO$) / l - 1
    o = ASC(MID$(LO$, s * l + 1, 1))
    IF o = QFobj AND ASC(A$) <> 1 THEN
      c = ASC(MID$(LO$, s * l + 2, 1))
      IF c + QFcant < 100 THEN
        MID$(LO$, s * l + 2, 1) = CHR$(c + QFcant)
        EXIT FOR
      END IF
    ELSEIF o = 0 THEN
      MID$(LO$, s * l + 1, 1) = CHR$(QFobj)
      IF ASC(A$) <> 1 THEN
        MID$(LO$, s * l + 2, 1) = CHR$(QFcant)
      END IF
      EXIT FOR
    END IF
    IF s = LEN(LO$) / l - 1 THEN o = -1
  NEXT s
  IF o > -1 THEN
    IF ASC(A$) = 0 THEN MID$(ContMoch$, 1, 40) = LO$
    IF ASC(A$) = 1 THEN MID$(ContMoch$, 41, 10) = LO$
    IF ASC(A$) = 2 THEN MID$(ContMoch$, 51, 60) = LO$
    EntObjMoc = TRUE
  END IF
END FUNCTION

FUNCTION EstPkm$ (pq)
  IF pq = 0 THEN
    A$ = STRING$(6, 178)
    FOR h = 1 TO 6
      pd$ = LPoke(h): GOSUB Correspondiente: MID$(A$, h, 1) = b$
    NEXT h
  END IF
  IF pq = 1 OR pq = 2 THEN
    IF pq = 1 THEN A$ = "      "
    IF pq = 2 THEN A$ = STRING$(6, 178)
    FOR h = 7 TO 12
      pd$ = LPoke(h): GOSUB Correspondiente: MID$(A$, h - 6, 1) = b$
    NEXT h
  END IF
  EstPkm$ = A$
  EXIT FUNCTION

Correspondiente:
  b$ = CHR$(175)
  e = ASC(MID$(pd$, 22, 1))
  IF e = 0 THEN b$ = CHR$(175)
  IF e = 1 OR e = 3 OR e = 4 OR e = 5 OR e = 6 THEN b$ = CHR$(176)
  IF e = 2 THEN b$ = CHR$(177)
  IF ASC(MID$(pd$, 1, 1)) = 0 THEN b$ = CHR$(178)
  IF pq = 1 AND b$ = CHR$(178) THEN b$ = " "
  RETURN

END FUNCTION

FUNCTION EvoPokemon$ (pkmdt$, np)
  DQBboxf 1, VX + 3, VY + 3, VX + 146, VY + 114, 127
  QBputBox 1, 0, 9, 18, 5
  n$ = MID$(pkmdt$, 2, 10)
  QBprint 1, 10, "≠" + n$
  QBprint 1, 11, "est†"
  QBprint 1, 12, "evolucionando!"
  DQBcopyLayer 1, VIDEO
  r = -10: inter = 0
  nm = ASC(MID$(pkmdt$, 1, 1))
  DQBsetTransPut
  DO
    ink$ = INKEY$
    r = r + 1
    IF inter = 0 THEN
      SELECT CASE r
        CASE 1 TO 16, 22 TO 39, 44 TO 56
          ti = 0
          IF nm = np THEN nm = ASC(MID$(pkmdt$, 1, 1)): c = 10 ELSE nm = np: c = 20
        CASE ELSE
          ti = 1
          IF ink$ = Bb$ AND r < 44 THEN inter = 1
      END SELECT
      DQBboxf 1, VX + 47, VY + 11, VX + 102, VY + 66, 127
      IF ti = 0 THEN QBputPF56 44, 8, nm - 1, c ELSE QBputPF56 44, 8, nm - 1, 0
    END IF
    DQBcopyLayer 1, VIDEO
    DQBwait 3
    IF r > 69 THEN EXIT DO
  LOOP
  QBputBox 1, 0, 9, 18, 5
  IF inter = 0 THEN
    n$ = MID$(pkmdt$, 2, 10): NumPkmInfo = nm: n2$ = QBloadDesc(0)
    QBprint 1, 10, "≠" + n$
    QBprint 1, 11, "evolucion¢ en"
    QBprint 1, 12, RTRIM$(n2$) + "!"
    MID$(pkmdt$, 1, 11) = CHR$(nm) + n2$
    IF MID$(PkmVA$, nm, 1) = " " THEN NPokeAtra = NPokeAtra + 1: NPokeVist = NPokeVist + 1: MID$(PkmVA$, nm, 1) = "A"
    IF MID$(PkmVA$, nm, 1) = "V" THEN NPokeAtra = NPokeAtra + 1: MID$(PkmVA$, nm, 1) = "A"
    EvoPokemon$ = pkmdt$
  ELSE
    n$ = MID$(pkmdt$, 2, 10)
    QBprint 1, 10, "®Eh? ®Que pas¢?"
    QBprint 1, 11, "≠" + n$
    QBprint 1, 12, "no evolucion¢!"
    EvoPokemon$ = CHR$(0)
  END IF
  DQBcopyLayer 1, VIDEO
  QBwaitAB
END FUNCTION

FUNCTION Externo (nz)
  A$ = " ": ap& = nz - 1
  GET #5, ap& * 560 + 552, A$
  Externo = ASC(A$)
END FUNCTION

FUNCTION Interno (nz)
  A$ = " ": ap& = nz - 1
  GET #5, ap& * 560 + 553, A$
  Interno = ASC(A$)
END FUNCTION

FUNCTION LPoke$ (np)
  IF np < 7 THEN
    p$ = SPACE$(53)
    GET #9, (np - 1) * 53 + 1, p$
  ELSEIF np > 6 AND np < 13 THEN
    p$ = SPACE$(53)
    GET #14, (np - 7) * 53 + 1, p$
  ELSEIF np > 12 AND np < 37 THEN
    p$ = SPACE$(53)
    GET #9, (NCaja * 24 + np - 7) * 53 + 1, p$
  END IF
  LPoke$ = p$
END FUNCTION

FUNCTION MSataqs$ (A$)
  A = 8: b = 6
  b$ = STRING$(6, 0)
  FOR c = 5 TO 1 STEP -1
    t = ASC(MID$(A$, c, 1))
    IF TipoTecnica(t) THEN MID$(b$, b, 1) = CHR$(t): A = A - 1: b = b - 1
  NEXT c
  MID$(b$, 1, 1) = CHR$(A)
  MSataqs$ = b$
END FUNCTION

FUNCTION MSbarPS$ (pd1$, pd2$, p, r, i)
  IF p = 0 AND r = 0 THEN MSbarPS$ = pd1$: EXIT FUNCTION
  IF p = 1 AND r = 0 THEN MSbarPS$ = pd2$: EXIT FUNCTION
  IF p = 0 THEN d1 = ASC(MID$(pd1$, 25, 1)): d2 = ASC(MID$(pd1$, 26, 1)): A = d1 * 256 + d2
  IF p = 1 THEN d1 = ASC(MID$(pd2$, 25, 1)): d2 = ASC(MID$(pd2$, 26, 1)): A = d1 * 256 + d2
  rs = r
  DO
    IF p = 0 THEN d1 = ASC(MID$(pd1$, 23, 1)): d2 = ASC(MID$(pd1$, 24, 1)): b = d1 * 256 + d2 + i
    IF p = 1 THEN d1 = ASC(MID$(pd2$, 23, 1)): d2 = ASC(MID$(pd2$, 24, 1)): b = d1 * 256 + d2 + i
    IF b - i = 0 THEN b = 0: EXIT DO
    IF b < 0 THEN b = 0
    IF b > A THEN b = A
    IF p = 0 THEN d2 = b MOD 256: d1 = (b - d2) / 256: MID$(pd1$, 23, A) = CHR$(d1): MID$(pd1$, 24, 1) = CHR$(d2)
    IF p = 1 THEN d2 = b MOD 256: d1 = (b - d2) / 256: MID$(pd2$, 23, A) = CHR$(d1): MID$(pd2$, 24, 1) = CHR$(d2)
    QBshowDataF2 pd1$, pd2$, 3
    rs = rs - 1
    IF b = 0 OR b = A THEN EXIT DO
  LOOP UNTIL rs = 0
  IF b = 0 THEN
    IF p = 0 THEN MID$(pd1$, 22, 1) = CHR$(2)
    IF p = 1 THEN MID$(pd2$, 22, 1) = CHR$(2)
  END IF
  IF p = 0 THEN MSbarPS$ = pd1$
  IF p = 1 THEN MSbarPS$ = pd2$
END FUNCTION

FUNCTION MSefic (nt, np)
  OPEN Direccion$ + "TABLAS-F.BIN" FOR BINARY AS #1
  tt = ASC(MID$(NombObj(nt + 256), 13, 1))
  ap& = np: ap& = ap& * 13 + 78781
  A$ = SPACE$(13): GET #1, ap&, A$
  t1 = ASC(MID$(A$, 1, 1)): t2 = ASC(MID$(A$, 2, 1))
  ap& = t1 * 19 + tt: ap& = ap& + 82109
  A$ = " ": GET #1, ap&, A$
  IF ASC(A$) = 0 THEN
    ap& = t2 * 19 + tt: ap& = ap& + 82109
    b$ = " ": GET #1, ap&, b$
    IF ASC(b$) = 1 THEN MSefic = 1
    IF ASC(b$) = 2 THEN MSefic = -1
    IF ASC(b$) = 3 THEN MSefic = 2
  ELSEIF ASC(A$) = 1 THEN
    MSefic = 1
  ELSEIF ASC(A$) = 2 THEN
    MSefic = -1
  ELSEIF ASC(A$) = 3 THEN
    MSefic = 2
  END IF
  CLOSE #1
END FUNCTION

FUNCTION MSentrenData$ (ne)
  OPEN Direccion$ + "TABLA-EN.BIN" FOR BINARY AS #1
  A$ = SPACE$(40)
  GET #1, ne * 40 + 1, A$
  CLOSE #1
  MSentrenData$ = A$
END FUNCTION

FUNCTION MSfig (m, x, y)
  IF ArbolX = x AND ArbolY = y THEN MSfig = ArbolSP: EXIT FUNCTION
  A$ = " ": ap& = y * 32 + x: m& = m: ap& = m& * 2048 + ap& + 1
  GET #4, ap&, A$: A = ASC(A$)
  b$ = " ": ap& = y * 32 + x: m& = m: ap& = m& * 2048 + ap& + 1025
  GET #4, ap&, b$: b = ASC(b$)
  MSfig = A * 256 + b
END FUNCTION

FUNCTION MSfindSpr (np, ts)
  ap& = np: A$ = "  "
  OPEN Direccion$ + "TABLAS-F.BIN" FOR BINARY AS #1
  GET #1, ap& * 2 + 100969, A$
  CLOSE #1
  d1 = ASC(MID$(A$, 1, 1)): d2 = ASC(MID$(A$, 2, 1)): SP = d1 * 256 + d2
  IF ts = 1 THEN SP = 7
  MSfindSpr = SP
END FUNCTION

FUNCTION MShierba (m, x, y)
  n = MSfig(m, x, y)
  SELECT CASE n
    CASE 21, 51, 54 TO 57, 1122, 1123, 1277, 1492: MShierba = 251
    CASE 1823: MShierba = 219
    CASE 1860: MShierba = 217
  END SELECT
END FUNCTION

FUNCTION MSloadPoke$ (np)
  l& = np
  OPEN Direccion$ + "POKEMONS.BIN" FOR BINARY AS #1
    pd$ = SPACE$(53): GET #1, l& * 53 + 1, pd$
  CLOSE #1
  MSloadPoke$ = pd$
END FUNCTION

FUNCTION MSpokeFound$ (tpk)
  IF City > 99 THEN
    MapDat$ = SPACE$(40)
    OPEN Direccion$ + "TABLAS-F.BIN" FOR BINARY AS #1
      GET #1, (City - 100) * 40 + 101481, MapDat$
    CLOSE #1
  ELSE
    MapDat$ = QBloadTabMap(Lugar)
  END IF
  IF tpk = 0 OR tpk = 5 THEN
    IF City < 100 THEN A$ = MID$(MapDat$, 21, 4) ELSE A$ = MID$(MapDat$, 3, 20)
  ELSEIF tpk = 1 OR tpk = 6 THEN
    IF City < 100 THEN A$ = MID$(MapDat$, 25, 4) ELSE A$ = MID$(MapDat$, 23, 10)
  ELSEIF tpk > 1 AND tpk < 5 THEN
    IF City < 100 THEN A$ = MID$(MapDat$, 28 + tpk, 1) ELSE A$ = MID$(MapDat$, 34 + tpk, 2)
  END IF
  IF tpk = 5 OR tpk = 6 THEN
    IF City < 100 THEN A$ = A$ + MID$(MapDat$, 29, 1) ELSE A$ = A$ + MID$(MapDat$, 33, 3)
    DO
      A = INT(RND(1) * LEN(A$)) + 1: intn = intn + 1
      np = ASC(MID$(A$, A, 1))
    LOOP UNTIL (np > 0 OR intn > 20)
  ELSE
    p = INT(RND(1) * LEN(A$)) + 1
    np = ASC(MID$(A$, p, 1))
  END IF
  IF np = 0 THEN PkmNoFound = TRUE: EXIT FUNCTION
  IF City < 100 THEN
    min = ASC(MID$(MapDat$, 19, 1)): max = ASC(MID$(MapDat$, 20, 1)): ran = max - min
  ELSE
    min = ASC(MID$(MapDat$, 1, 1)): max = ASC(MID$(MapDat$, 2, 1)): ran = max - min
  END IF
  nv = RND(1) * ran + min
  PkmDat$ = MSsetData(np, nv)
  MSpokeFound$ = PkmDat$
END FUNCTION

FUNCTION MSselecTec (pd$, Cur)
  A$ = MID$(pd$, 32, 5): b$ = STRING$(5, 0)
  IF A$ = b$ THEN MSselecTec = 48: EXIT FUNCTION
  GOSUB BoxNombTec
  Cursor(Cur).NX = 4: Cursor(Cur).NY = 8
  Cursor(Cur).VX = 4: Cursor(Cur).VY = 8: Cursor(Cur).SP = 87
  IF NumSlot3 = 0 THEN Cursor(Cur).NY = 8: Cursor(Cur).VY = 8 ELSE Cursor(Cur).NY = NumSlot3: Cursor(Cur).VY = NumSlot3
  QBputCursor 0
  GOSUB BoxTipoTec
  DQBcopyLayer 1, VIDEO
  Moving = 0
  DO
    ink$ = INKEY$
    IF ink$ = Barr$ AND Cursor(Cur).SP = 87 THEN
      Cursor(Cur).NY = Cursor(Cur).NY - 1: IF Cursor(Cur).NY < 8 THEN Cursor(Cur).NY = 12
      QBputCursor Cur: GOSUB BoxTipoTec: DQBcopyLayer 1, VIDEO
    END IF
    IF ink$ = Baba$ AND Cursor(Cur).SP = 87 THEN
      Cursor(Cur).NY = Cursor(Cur).NY + 1: IF Cursor(Cur).NY > 12 THEN Cursor(Cur).NY = 8
      QBputCursor Cur: GOSUB BoxTipoTec: DQBcopyLayer 1, VIDEO
    END IF
    IF ink$ = Barr$ AND Cursor(Cur).SP = 88 AND Cursor(Cur).NY > 8 THEN
      s1 = Cursor(Cur).NY - 8: s2 = Cursor(Cur).NY - 9
      A$ = MID$(pd$, 27 + s1, 1): b$ = MID$(pd$, 27 + s2, 1)
      MID$(pd$, 27 + s2, 1) = A$: MID$(pd$, 27 + s1, 1) = b$
      A$ = MID$(pd$, 32 + s1, 1): b$ = MID$(pd$, 32 + s2, 1)
      MID$(pd$, 32 + s2, 1) = A$: MID$(pd$, 32 + s1, 1) = b$
      A$ = MID$(pd$, 37 + s1, 1): b$ = MID$(pd$, 37 + s2, 1)
      MID$(pd$, 37 + s2, 1) = A$: MID$(pd$, 37 + s1, 1) = b$
      Cursor(Cur).NY = Cursor(Cur).NY - 1
      GOSUB BoxNombTec: QBputCursor Cur: GOSUB BoxTipoTec: DQBcopyLayer 1, VIDEO
    END IF
    IF ink$ = Baba$ AND Cursor(Cur).SP = 88 AND Cursor(Cur).NY < 12 THEN
      s1 = Cursor(Cur).NY - 8: s2 = Cursor(Cur).NY - 7
      IF ASC(MID$(pd$, 27 + s2, 1)) > 0 THEN
        A$ = MID$(pd$, 27 + s1, 1): b$ = MID$(pd$, 27 + s2, 1)
        MID$(pd$, 27 + s2, 1) = A$: MID$(pd$, 27 + s1, 1) = b$
        A$ = MID$(pd$, 32 + s1, 1): b$ = MID$(pd$, 32 + s2, 1)
        MID$(pd$, 32 + s2, 1) = A$: MID$(pd$, 32 + s1, 1) = b$
        A$ = MID$(pd$, 37 + s1, 1): b$ = MID$(pd$, 37 + s2, 1)
        MID$(pd$, 37 + s2, 1) = A$: MID$(pd$, 37 + s1, 1) = b$
        Cursor(Cur).NY = Cursor(Cur).NY + 1
        GOSUB BoxNombTec: QBputCursor Cur: GOSUB BoxTipoTec: DQBcopyLayer 1, VIDEO
      END IF
    END IF
    IF ink$ = Bb$ THEN tc = 0: EXIT DO
    IF ink$ = Bsel$ AND ASC(MID$(pd$, Cursor(Cur).NY + 19, 1)) > 0 AND Cursor(Cur).SP = 87 THEN Cursor(Cur).SP = 88: QBputCursor Cur: DQBcopyLayer 1, VIDEO: ink$ = ""
    IF ink$ = Bsel$ AND Cursor(Cur).SP = 88 THEN Cursor(Cur).SP = 87: QBputCursor Cur: DQBcopyLayer 1, VIDEO
    IF ink$ = Ba$ AND Cursor(Cur).SP = 87 THEN
      nt = Cursor(Cur).NY - 8: tc = ASC(MID$(pd$, 27 + nt, 1))
      IF tc > 0 THEN
        pp = ASC(MID$(pd$, 32 + nt, 1))
        IF pp = 0 THEN
          QBputBox 1, 0, 10, 18, 4
          QBprint 1, 11, "No quedan PP    "
          QBprint 1, 12, "para este ataque"
          DQBcopyLayer 1, VIDEO
          QBwaitAB
          GOSUB BoxNombTec
          QBputCursor Cur
          GOSUB BoxTipoTec
          DQBcopyLayer 1, VIDEO
        ELSE
          EXIT DO
        END IF
      END IF
    END IF
  LOOP
  NumSlot3 = Cursor(Cur).NY
  MSselecTec = tc
  EXIT FUNCTION

BoxNombTec:
  QBputBox 1, 3, 7, 15, 7
  FOR tt = 1 TO 5
    A = ASC(MID$(pd$, tt + 26, 1))
    A$ = MID$(NombObj(A + 256), 1, 12)
    QBprint 5, 7 + tt, A$
  NEXT tt
  RETURN

BoxTipoTec:
  QBputBox 1, 3, 3, 12, 5
  QBprint 4, 4, "TIPO:"
  nt = Cursor(Cur).NY - 8: tc = ASC(MID$(pd$, 27 + nt, 1))
  ttc = ASC(MID$(NombObj(tc + 256), 13, 1))
  A$ = MID$(NombVarios$, ttc * 10 + 1, 10)
  QBprint 4, 5, A$
  A$ = "    00/00"
  pp = ASC(MID$(pd$, 32 + nt, 1)): mpp = ASC(MID$(pd$, 37 + nt, 1))
  b$ = LTRIM$(STR$(pp)): c$ = LTRIM$(STR$(mpp))
  MID$(A$, 7 - LEN(b$), LEN(b$)) = b$: MID$(A$, 10 - LEN(c$), LEN(c$)) = c$
  QBprint 4, 6, A$
  RETURN

END FUNCTION

FUNCTION MSsetData$ (np, nv)
  PkmDat$ = SPACE$(53)
  MID$(PkmDat$, 1, 1) = CHR$(np)
  NumPkmInfo = np
  MID$(PkmDat$, 2, 10) = QBloadDesc(0)
  nm& = ASC(MID$(PkmDat$, 1, 1))
  OPEN Direccion$ + "TABLAS-F.BIN" FOR BINARY AS #1
    tf$ = SPACE$(13)
    GET #1, nm& * 13 + 78781, tf$
  CLOSE #1
  MID$(PkmDat$, 19, 2) = MID$(tf$, 1, 2)
  MID$(PkmDat$, 21, 1) = CHR$(nv)
  MID$(PkmDat$, 22, 1) = CHR$(0)
  d1! = ASC(MID$(tf$, 3, 1)): d2! = ASC(MID$(tf$, 4, 1)): dt! = d1! * 256 + d2!: n! = nv
  en = dt! / 100 * n! + 10: d2 = en MOD 256: d1 = (en - d2) / 256: A$ = CHR$(d1) + CHR$(d2)
  MID$(PkmDat$, 23, 4) = A$ + A$
  pt = 27
  A$ = CHR$(0): MID$(PkmDat$, pt, 5) = A$ + A$ + A$ + A$ + A$
  OPEN Direccion$ + "TABLAS-F.BIN" FOR BINARY AS #1
  FOR n = 0 TO nv
    n& = n: p& = np: ap& = p& * 303 + n& * 3 + 1213: A$ = "   "
    GET #1, ap&, A$
    FOR ts = 1 TO 3
      t = ASC(MID$(A$, ts, 1))
      IF t > 0 AND t < 255 THEN
        MID$(PkmDat$, pt, 1) = CHR$(t)
        pt = pt + 1: IF pt = 32 THEN pt = 27
      END IF
    NEXT ts
  NEXT n
  CLOSE #1
  FOR p = 27 TO 31
    t = ASC(MID$(PkmDat$, p, 1))
    A$ = MID$(NombObj(t + 256), 14, 1)
    MID$(PkmDat$, p + 5, 1) = A$
    MID$(PkmDat$, p + 10, 1) = A$
  NEXT p
  d1! = ASC(MID$(tf$, 5, 1)): d2! = ASC(MID$(tf$, 6, 1)): dt! = d1! * 256 + d2!: n! = nv
  en = dt! / 100 * n! + 5: d2 = en MOD 256: d1 = (en - d2) / 256: A$ = CHR$(d1) + CHR$(d2)
  MID$(PkmDat$, 42, 2) = A$
  d1! = ASC(MID$(tf$, 7, 1)): d2! = ASC(MID$(tf$, 8, 1)): dt! = d1! * 256 + d2!: n! = nv
  en = dt! / 100 * n! + 5: d2 = en MOD 256: d1 = (en - d2) / 256: A$ = CHR$(d1) + CHR$(d2)
  MID$(PkmDat$, 44, 2) = A$
  d1! = ASC(MID$(tf$, 9, 1)): d2! = ASC(MID$(tf$, 10, 1)): dt! = d1! * 256 + d2!: n! = nv
  en = dt! / 100 * n! + 5: d2 = en MOD 256: d1 = (en - d2) / 256: A$ = CHR$(d1) + CHR$(d2)
  MID$(PkmDat$, 46, 2) = A$
  d1! = ASC(MID$(tf$, 11, 1)): d2! = ASC(MID$(tf$, 12, 1)): dt! = d1! * 256 + d2!: n! = nv
  en = dt! / 100 * n! + 5: d2 = en MOD 256: d1 = (en - d2) / 256: A$ = CHR$(d1) + CHR$(d2)
  MID$(PkmDat$, 48, 2) = A$
  t = ASC(MID$(tf$, 13, 1)): A$ = "   "
  OPEN Direccion$ + "TABLAS-F.BIN" FOR BINARY AS #1
  GET #1, t * 303 + nv * 3 + 1, A$
  CLOSE #1
  MID$(PkmDat$, 50, 3) = A$
  MSsetData$ = PkmDat$
END FUNCTION

FUNCTION MSsetExp& (pd$)
  d1 = ASC(MID$(pd$, 42, 1)): d2 = ASC(MID$(pd$, 43, 1)): A! = d1 * 256 + d2
  d1 = ASC(MID$(pd$, 44, 1)): d2 = ASC(MID$(pd$, 45, 1)): d! = d1 * 256 + d2
  d1 = ASC(MID$(pd$, 46, 1)): d2 = ASC(MID$(pd$, 47, 1)): v! = d1 * 256 + d2
  d1 = ASC(MID$(pd$, 48, 1)): d2 = ASC(MID$(pd$, 49, 1)): e! = d1 * 256 + d2
  n! = ASC(MID$(pd$, 21, 1))
  p! = (A! + d! + v! + e!) / 8 * n!
  IF p! > 9999 THEN p! = 9999
  MSsetExp& = CLNG(p!)
END FUNCTION

FUNCTION MSsetTecPR (te, pd$)
  A$ = MID$(pd$, 32, 5): b$ = STRING$(5, 0)
  IF A$ = b$ THEN MSsetTecPR = 48: EXIT FUNCTION
  MSsetTecPR = 0
    DO
      A = RND(1) * 4: b = ASC(MID$(pd$, 27 + A, 1)): c = ASC(MID$(pd$, 32 + A, 1))
      IF c > 0 THEN
        IF te = 0 THEN MSsetTecPR = b: EXIT FUNCTION
        A$ = NombObj(b + 256): p = ASC(MID$(A$, 15, 1))
        IF p = 0 AND UltimaTecnica AND te = 1 THEN UltimaTecnica = p: MSsetTecPR = b: EXIT FUNCTION
        IF p AND UltimaTecnica = 0 AND te = 1 THEN UltimaTecnica = p: MSsetTecPR = b: EXIT FUNCTION
        IF i > 30 OR te = 1 THEN UltimaTecnica = p: MSsetTecPR = b: EXIT FUNCTION
        IF p = 0 AND RND(1) < .1 AND te = 2 THEN MSsetTecPR = b: EXIT FUNCTION
        IF p > 0 AND RND(1) > .1 AND te = 2 THEN MSsetTecPR = b: EXIT FUNCTION
      END IF
      A$ = MID$(pd$, 27, 5)
      d = INSTR(A$, CHR$(221)): IF d AND RND(1) < .25 THEN MSsetTecPR = ASC(MID$(pd$, 26 + d, 1)): EXIT FUNCTION
      d = INSTR(A$, CHR$(120)): IF d AND RND(1) < .25 THEN MSsetTecPR = ASC(MID$(pd$, 26 + e, 1)): EXIT FUNCTION
      d = INSTR(A$, CHR$(38)): IF d AND RND(1) < .25 THEN MSsetTecPR = ASC(MID$(pd$, 26 + e, 1)): EXIT FUNCTION
      i = i + 1
      IF i = 41 THEN MSsetTecPR = 0: EXIT FUNCTION
    LOOP
END FUNCTION

FUNCTION MSzonaRoja (m, x, y)
  A = MShierba(m, x, y): b = MSfig(m, x, y): c = WaterFree(b)
  SELECT CASE b: CASE 72, 74 TO 77, 174, 177, 846, 1126, 1135, 1482: d = TRUE: END SELECT
  IF A OR c OR d THEN MSzonaRoja = TRUE
END FUNCTION

FUNCTION NombObj$ (QFno)
  A$ = SPACE$(15)
  GET #7, QFno * 15 + 1, A$
  NombObj$ = A$
END FUNCTION

FUNCTION PokeDentro (pd1$, pd2$)
  np = ASC(MID$(pd2$, 1, 1)): nv = ASC(MID$(pd2$, 21, 1))
  ap& = np * 13: ap& = ap& + 78781 + 12
  OPEN Direccion$ + "TABLAS-F.BIN" FOR BINARY AS #1
  A$ = " ": GET #1, ap&, A$: t = ASC(A$)
  A$ = "   ": GET #1, t * 303 + nv * 3 + 1, A$
  CLOSE #1
  d1! = ASC(MID$(A$, 1, 1)): d2! = ASC(MID$(A$, 2, 1)): d3! = ASC(MID$(A$, 3, 1)): A! = d1! * 265 * 256 + d2! * 256 + d3!: b! = 1
  b! = b! * PkmF(2).ATAQ / 100
  b! = b! * PkmF(2).DEFE / 100
  b! = b! * PkmF(2).VELO / 100
  b! = b! * PkmF(2).ESPE / 100
  IF ASC(MID$(pd2$, 22, 1)) > 0 THEN b! = b! * .8
  d1 = ASC(MID$(pd2$, 23, 1)): d2 = ASC(MID$(pd2$, 24, 1)): ps! = d1 * 256 + d2
  d1 = ASC(MID$(pd2$, 25, 1)): d2 = ASC(MID$(pd2$, 26, 1)): ps2! = d1 * 256 + d2
  r! = A! * b! * ps! / ps2!
  IF ObjetoAUsar = 58 THEN mr = 500 + RND(1) * 500: mps = 20 + RND(1) * 10
  IF ObjetoAUsar = 74 THEN mr = 2000 + RND(1) * 750: mps = 40 + RND(1) * 20
  IF ObjetoAUsar = 78 THEN mr = 4000 + RND(1) * 1000: mps = 60 + RND(1) * 30
  IF r! <= mr AND ps <= mps THEN Z = 1
  IF ObjetoAUsar = 40 THEN Z = 1
  prob! = ASC(MID$(pd2$, 21, 1))
  IF ObjetoAUsar = 72 AND RND(1) * 100 > prob! * .4 + 40 THEN Z = 1
  GOSUB LanzarBall
  IF Z = 1 THEN
    QBputBox 0, 0, 9, 18, 5
    QBprint 1, 10, "≠≠Que Bien!!"
    QBprint 1, 11, "≠" + MID$(pd2$, 2, 10)
    QBprint 1, 12, "fue atrapado!"
    DQBcopyLayer 1, VIDEO
    QBwaitAB
    PokeDentro = TRUE
    s$ = QBsumarPoke(pd2$)
    IF MID$(s$, 11, 1) = "P" THEN
      QBputBox 0, 0, 9, 18, 5
      QBprint 1, 10, "≠" + MID$(pd2$, 2, 10)
      QBprint 1, 11, "fue enviado al"
      QBprint 1, 12, "PC DE BILL!"
      DQBcopyLayer 1, VIDEO
      QBwaitAB
    END IF
  ELSE
    QBputBox 0, 0, 9, 18, 5
    QBprint 1, 10, "≠Oh, no!"
    QBprint 1, 11, "≠" + MID$(pd2$, 2, 10)
    QBprint 1, 12, "se ha escapado!"
    DQBcopyLayer 1, VIDEO
    QBwaitAB
  END IF
  EXIT FUNCTION

LanzarBall:
  LOCATE 1, 1: PRINT r!; mr, ps; mps: QBwaitAB
  RETURN

END FUNCTION

FUNCTION PuedeAprender (np, mto)
  ap& = mto * 257 + np + 1
  OPEN Direccion$ + "TABLAS-F.BIN" FOR BINARY AS #1
  A$ = " ": GET #1, ap& + 83817, A$
  CLOSE #1
  IF ASC(A$) THEN PuedeAprender = TRUE
END FUNCTION

FUNCTION PuedeLuchar (pd$)
  e = ASC(MID$(pd$, 22, 1))
  np = ASC(MID$(pd$, 1, 1))
  IF e <> 2 AND np > 0 THEN PuedeLuchar = TRUE
END FUNCTION

FUNCTION QBapreTecn$ (pkmdt$, twl)
AprenderTecnica:
  DQBboxf 1, VX + 3, VY + 3, VX + 146, VY + 114, 127
  Tecs$ = MID$(pkmdt$, 27, 5)
  IF twl > 0 THEN
    IF INSTR(1, Tecs$, CHR$(twl)) > 0 THEN GOTO FinAprenderTecnica
  ELSE
    twl = -twl
    IF INSTR(1, Tecs$, CHR$(twl)) > 0 THEN GOSUB YaLaSabe: GOTO FinAprenderTecnica
  END IF
  FOR n = 1 TO 5
    IF ASC(MID$(Tecs$, n, 1)) = 0 THEN ta$ = CHR$(twl): EXIT FOR
  NEXT n
  IF n < 6 THEN GOSUB AprendioTecnica
  IF n = 6 THEN GOSUB IntentaAprenderTecnica
FinAprenderTecnica:
  QBapreTecn$ = pkmdt$
  EXIT FUNCTION

AprendioTecnica:
  QBputBox 1, 0, 9, 18, 5
  n$ = RTRIM$(MID$(pkmdt$, 2, 10))
  QBprint 1, 10, "≠" + n$
  QBprint 1, 11, "aprendi¢"
  ss$ = SPACE$(15)
  GET #7, (twl + 256) * 15 + 1, ss$
  s$ = MID$(ss$, 1, 12)
  s$ = RTRIM$(s$) + "!"
  QBprint 1, 12, s$
  na = ASC(MID$(ss$, 14, 1))
  MID$(pkmdt$, 26 + n, 1) = CHR$(twl)
  MID$(pkmdt$, 31 + n, 1) = CHR$(na)
  MID$(pkmdt$, 36 + n, 1) = CHR$(na)
  DQBcopyLayer 1, VIDEO
  QBwaitAB
  RETURN

IntentaAprenderTecnica:
  DQBboxf 1, VX + 3, VY + 3, VX + 146, VY + 114, 127
  QBputBox 1, 0, 9, 18, 5
  n$ = RTRIM$(MID$(pkmdt$, 2, 10))
  QBprint 1, 10, "≠" + n$
  QBprint 1, 11, "intenta aprender"
  ss$ = SPACE$(15)
  GET #7, (twl + 256) * 15 + 1, ss$
  nt$ = MID$(ss$, 1, 12)
  s$ = RTRIM$(nt$) + "!"
  QBprint 1, 12, s$
  DQBcopyLayer 1, VIDEO
  QBwaitAB
  QBprint 1, 10, "≠Pero no puede  "
  QBprint 1, 11, "aprender m†s de "
  QBprint 1, 12, "cinco tÇcnicas! "
  DQBcopyLayer 1, VIDEO
  QBwaitAB
  QBprint 1, 10, "®Hacer espacio  "
  s$ = "a " + RTRIM$(nt$) + "?"
  s$ = s$ + SPACE$(16 - LEN(s$))
  QBprint 1, 11, s$
  QBprint 1, 12, SPACE$(16)
  DQBcopyLayer 1, VIDEO
  IF SiONO(Cur + 2) THEN
    QBprint 1, 10, "®Que tÇcnica    "
    QBprint 1, 11, "deber°a olvidar?"
    GOSUB BoxTecnicas
    Cursor(Cur + 2).NX = 4: Cursor(Cur + 2).NY = 3: Cursor(Cur + 2).VX = 4: Cursor(Cur + 2).VY = 3: Cursor(Cur + 2).SP = 87
    QBputCursor Cur + 2
    DQBcopyLayer 1, VIDEO
    opc2 = 0
    DO
      ink$ = INKEY$
      IF ink$ = Ba$ THEN
        A = Cursor(Cur + 2).NY + 24: b = ASC(MID$(pkmdt$, A, 1))
        IF TipoTecnica(b) < 2 THEN opc2 = -3: GOSUB OlvidoYAprendio: EXIT DO
        QBprint 1, 10, "No se puede     "
        QBprint 1, 11, "olvidar un      "
        QBprint 1, 12, "ataque de una MO"
        DQBcopyLayer 1, VIDEO: QBwaitAB: GOTO IntentaAprenderTecnica
      END IF
      IF ink$ = Barr$ AND Cursor(Cur + 2).NY > 3 THEN Cursor(Cur + 2).NY = Cursor(Cur + 2).NY - 1: QBputCursor Cur + 2: DQBcopyLayer 1, VIDEO
      IF ink$ = Baba$ AND Cursor(Cur + 2).NY < 7 THEN Cursor(Cur + 2).NY = Cursor(Cur + 2).NY + 1: QBputCursor Cur + 2: DQBcopyLayer 1, VIDEO
    LOOP UNTIL ink$ = Bb$
    ink$ = ""
    IF opc2 = 0 THEN GOSUB OlvidarTecnica
    IF opc2 = -2 THEN GOTO IntentaAprenderTecnica
    IF opc2 = -1 THEN
      DQBboxf 1, VX + 3, VY + 3, VX + 146, VY + 114, 127
      QBputBox 1, 0, 9, 18, 5
      n$ = RTRIM$(MID$(pkmdt$, 2, 10))
      n$ = "≠" + n$
      QBprint 1, 10, n$
      QBprint 1, 11, "no aprendi¢"
      A$ = SPACE$(15)
      GET #7, (twl + 256) * 15 + 1, A$
      to$ = MID$(A$, 1, 12)
      s$ = RTRIM$(to$) + "!"
      QBprint 1, 12, s$
      DQBcopyLayer 1, VIDEO
      QBwaitAB
    END IF
  ELSE
    GOSUB OlvidarTecnica
    IF opc2 = -2 THEN GOTO IntentaAprenderTecnica
    IF opc2 = -1 THEN
      DQBboxf 1, VX + 3, VY + 3, VX + 146, VY + 114, 127
      QBputBox 1, 0, 9, 18, 5
      n$ = RTRIM$(MID$(pkmdt$, 2, 10))
      n$ = "≠" + n$
      QBprint 1, 10, n$
      QBprint 1, 11, "no aprendi¢"
      A$ = SPACE$(15)
      GET #7, (twl + 256) * 15 + 1, A$
      to$ = MID$(A$, 1, 12)
      s$ = RTRIM$(to$) + "!"
      QBprint 1, 12, s$
      DQBcopyLayer 1, VIDEO
      QBwaitAB
    END IF
  END IF
  RETURN

OlvidarTecnica:
  DQBboxf 1, VX + 3, VY + 3, VX + 146, VY + 114, 127
  QBputBox 1, 0, 9, 18, 5
  QBprint 1, 10, "®Desea que no   "
  QBprint 1, 11, "aprenda         "
  A$ = SPACE$(15)
  GET #7, (twl + 256) * 15 + 1, A$
  to$ = MID$(A$, 1, 12)
  s$ = RTRIM$(to$) + "?"
  QBprint 1, 12, s$
  DQBcopyLayer 1, VIDEO
  IF SiONO(Cur + 2) THEN opc2 = -1 ELSE opc2 = -2
  RETURN

BoxTecnicas:
  QBputBox 1, 3, 2, 15, 7
  FOR tt = 1 TO 5
    A = ASC(MID$(Tecs$, tt, 1))
    A$ = SPACE$(12)
    GET #7, (A + 256) * 15 + 1, A$
    QBprint 5, 2 + tt, A$
  NEXT tt
  RETURN

OlvidoYAprendio:
  DQBboxf 1, VX + 3, VY + 3, VX + 146, VY + 114, 127
  QBputBox 1, 0, 9, 18, 5
  n$ = RTRIM$(MID$(pkmdt$, 2, 10))
  QBprint 1, 10, "≠" + n$
  QBprint 1, 11, "olvid¢"
  pt = Cursor(Cur + 2).NY - 3
  tol = ASC(MID$(pkmdt$, 27 + pt, 1))
  A$ = SPACE$(15)
  GET #7, (tol + 256) * 15 + 1, A$
  to$ = MID$(A$, 1, 12)
  s$ = RTRIM$(to$) + " y˙"
  QBprint 1, 12, s$
  DQBcopyLayer 1, VIDEO
  QBwaitAB
  QBprint 1, 10, "aprendi¢        "
  A$ = SPACE$(15)
  GET #7, (twl + 256) * 15 + 1, A$
  to$ = MID$(A$, 1, 12)
  s$ = RTRIM$(to$) + "!"
  s$ = s$ + SPACE$(16 - LEN(s$))
  QBprint 1, 11, s$
  QBprint 1, 12, SPACE$(16)
  DQBcopyLayer 1, VIDEO
  QBwaitAB
  MID$(pkmdt$, 27 + pt, 1) = CHR$(twl)
  na = ASC(MID$(A$, 14, 1))
  MID$(pkmdt$, 32 + pt, 1) = CHR$(na)
  MID$(pkmdt$, 37 + pt, 1) = CHR$(na)
  RETURN

YaLaSabe:
  QBputBox 0, 0, 9, 18, 5
  QBprint 1, 10, "≠" + MID$(pkmdt$, 2, 10)
  QBprint 1, 11, "ya sabe"
  A$ = SPACE$(15)
  GET #7, (twl + 256) * 15 + 1, A$
  to$ = MID$(A$, 1, 12)
  s$ = RTRIM$(to$) + "!"
  QBprint 1, 12, s$
  DQBcopyLayer 1, VIDEO
  QBwaitAB
  RETURN

END FUNCTION

SUB QBcaerPoke (pq, np)
  IF pq = 0 THEN x = 0: y = 24
  IF pq = 1 THEN x = 88: y = 0
  DQBsetClipBox VX + x + 3, VY + y + 3, VX + x + 58, VY + y + 58
  DO
    A = A + 4
    DQBboxf 1, VX + x + 3, VY + y + 3, VX + x + 58, VY + y + 58, 127
    IF pq = 0 THEN QBputPB56 x, y + A, np, 0
    IF pq = 1 THEN QBputPF56 x, y + A, np, 0
    DQBcopyLayer 1, VIDEO
    DQBwait 1
  LOOP UNTIL A > 54
  DQBsetClipBox VX + 3, VY + 3, VX + 146, VY + 114
END SUB

SUB QBcam (p)
  IF Persona(p).c = 1 THEN
    SELECT CASE Persona(p).p
      CASE 0, 2:   IF Persona(p).y < 28 AND CaminoLibre(Persona(p).x, Persona(p).y + 1, 0, p) THEN Persona(p).y = Persona(p).y + 1
      CASE 4, 6:   IF Persona(p).y > 3 AND CaminoLibre(Persona(p).x, Persona(p).y - 1, 1, p) THEN Persona(p).y = Persona(p).y - 1
      CASE 8, 10:  IF Persona(p).x > 4 AND CaminoLibre(Persona(p).x - 1, Persona(p).y, 2, p) THEN Persona(p).x = Persona(p).x - 1
      CASE 12, 14: IF Persona(p).x < 27 AND CaminoLibre(Persona(p).x + 1, Persona(p).y, 3, p) THEN Persona(p).x = Persona(p).x + 1
    END SELECT
    Persona(p).c = 2
    Persona(p).p = Persona(p).p + 1
    EXIT SUB
  END IF
  IF Persona(p).c = 2 THEN
    Persona(p).p = Persona(p).p + 1: IF Persona(p).p MOD 4 = 0 THEN Persona(p).p = Persona(p).p - 4
    d = Persona(p).p - (Persona(p).p MOD 4)
    IF RND(1) > .5 THEN
      Persona(p).c = 0
    ELSE
      Persona(p).c = 1
      IF d = 0 AND Persona(p).y = Persona(p).y2 THEN Persona(p).c = 0: A = A
      IF d = 4 AND Persona(p).y = Persona(p).y1 THEN Persona(p).c = 0: A = A
      IF d = 8 AND Persona(p).x = Persona(p).x1 THEN Persona(p).c = 0: A = A
      IF d = 12 AND Persona(p).x = Persona(p).x2 THEN Persona(p).c = 0: A = A
      IF Persona(p).t = 0 THEN Persona(p).c = 1
      IF Persona(p).t = 4 THEN Persona(p).c = 0
    END IF
    IF CaminoLibre(Persona(p).x, Persona(p).y, d / 4, p) = 2 THEN Persona(p).c = 1
  END IF
END SUB

SUB QBcambioPos (QBb)
  A$ = CHR$(Persona(0).x) + CHR$(Persona(0).y)
  IF QBb = 2 THEN
    FOR v = 0 TO 9
      b$ = MID$(Escaleras$, v * 9 + 1, 2)
      ns = MSfig(NumMapa, Persona(0).x, Persona(0).y)
      IF b$ = A$ AND ns <> 900 THEN
        Persona(0).x = ASC(MID$(Escaleras$, v * 9 + 3, 1))
        Persona(0).y = ASC(MID$(Escaleras$, v * 9 + 4, 1))
        Region = ASC(MID$(Escaleras$, v * 9 + 5, 1))
        Lugar = ASC(MID$(Escaleras$, v * 9 + 6, 1))
        A = ASC(MID$(Escaleras$, v * 9 + 7, 1)): NumMapa = A + (Region - 1) * 100
        nd = ASC(MID$(Escaleras$, v * 9 + 9, 1))
        IF nd < 17 THEN
          Persona(0).p = ASC(MID$(Escaleras$, v * 9 + 9, 1))
          Persona(0).c = 1
        END IF
        NumZona = ASC(MID$(Escaleras$, v * 9 + 8, 1)) + (Region - 1) * 256: QBchZona
        EXIT SUB
      END IF
    NEXT v
  ELSEIF QBb = 1 THEN
    IF Persona(0).p = 0 OR Persona(0).p = 2 THEN d = 0
    IF Persona(0).p = 4 OR Persona(0).p = 6 THEN d = 4
    IF Persona(0).p = 8 OR Persona(0).p = 10 THEN d = 8
    IF Persona(0).p = 12 OR Persona(0).p = 14 THEN d = 12
    FOR v = 0 TO 19
      b$ = MID$(Escaleras$, v * 9 + 90 + 1, 2)
      IF b$ = A$ AND d = ASC(MID$(Escaleras$, v * 9 + 90 + 9, 1)) THEN
        Persona(0).x = ASC(MID$(Escaleras$, v * 9 + 90 + 3, 1))
        Persona(0).y = ASC(MID$(Escaleras$, v * 9 + 90 + 4, 1))
        Region = ASC(MID$(Escaleras$, v * 9 + 90 + 5, 1))
        Lugar = ASC(MID$(Escaleras$, v * 9 + 90 + 6, 1))
        A = ASC(MID$(Escaleras$, v * 9 + 90 + 7, 1)): NumMapa = A + (Region - 1) * 100
        NumZona = ASC(MID$(Escaleras$, v * 9 + 90 + 8, 1)) + (Region - 1) * 256: QBchZona
        QBb = -1: EXIT SUB
      END IF
    NEXT v
  END IF
  IF Persona(0).x = 13 AND Persona(0).y = 7 AND NumZona = 41 AND Entrada = 0 AND QBb = 2 THEN VE = 50: nd = 12: GOSUB PagarEntrada
  IF Persona(0).x = 24 AND Persona(0).y = 5 AND NumZona = 67 AND Entrada = 0 AND QBb = 2 THEN VE = 500: nd = 8: GOSUB PagarEntrada
  EXIT SUB

PagarEntrada:
  Persona(0).p = nd: QBputPrs 0
  QBputBox 1, 0, 9, 18, 5
  QBprint 1, 10, "Son $" + LTRIM$(STR$(VE)) + " por una"
  QBprint 1, 11, "entrada.       "
  QBprint 1, 12, "®Aceptas?      "
  IF SiONO(0) THEN
    IF Dinero > VE - 1 THEN
      QBputEscena
      QBputBox 1, 0, 9, 18, 5
      QBprint 1, 10, "≠$" + LTRIM$(STR$(VE)) + "! ≠Vale!"
      QBprint 1, 11, "≠Gracias!"
      Dinero = Dinero - VE: Entrada = TRUE
      IF VE = 500 THEN TiempoSafari = 500
    ELSE
      QBputEscena
      QBputBox 1, 0, 9, 18, 5
      QBprint 1, 10, "≠No te alcanza"
      QBprint 1, 11, "el dinero!"
      Persona(0).p = 0: Persona(0).c = 1
    END IF
  ELSE
    QBputEscena
    QBputBox 1, 0, 9, 18, 5
    QBprint 1, 10, "≠Hasta pronto!"
    Persona(0).p = 0: Persona(0).c = 1
  END IF
  DQBcopyLayer 1, VIDEO
  QBwaitAB
  RETURN

END SUB

SUB QBchZona
  QBwriteTMP
  Persona(0).e = 1
  ap& = NumZona - 1
  ap& = ap& * 560 + 1
  SEEK #5, ap&
  Escaleras$ = SPACE$(270): GET #5, , Escaleras$
  Cartel$ = SPACE$(80): GET #5, , Cartel$
  A$ = SPACE$(130): GET #5, , A$
  FOR Z = 0 TO 9
    Persona(Z + 1).e = ASC(MID$(A$, Z * 13 + 1, 1))
    Persona(Z + 1).t = ASC(MID$(A$, Z * 13 + 2, 1))
    Persona(Z + 1).x = ASC(MID$(A$, Z * 13 + 3, 1))
    Persona(Z + 1).y = ASC(MID$(A$, Z * 13 + 4, 1))
    Persona(Z + 1).c = 0
    Persona(Z + 1).s = ASC(MID$(A$, Z * 13 + 5, 1))
    Persona(Z + 1).p = ASC(MID$(A$, Z * 13 + 6, 1)) * 4
    Persona(Z + 1).x1 = ASC(MID$(A$, Z * 13 + 7, 1))
    IF Persona(Z + 1).t > 4 THEN Persona(Z + 1).x1 = Persona(Z + 1).x1 + (Persona(Z + 1).t - 4) * 256: Persona(Z + 1).t = 4
    Persona(Z + 1).y1 = ASC(MID$(A$, Z * 13 + 8, 1))
    Persona(Z + 1).x2 = ASC(MID$(A$, Z * 13 + 9, 1))
    Persona(Z + 1).y2 = ASC(MID$(A$, Z * 13 + 10, 1))
    A = ASC(MID$(A$, Z * 13 + 11, 1))
    b = ASC(MID$(A$, Z * 13 + 12, 1))
    Persona(Z + 1).di = A * 256 + b
    Persona(Z + 1).rn = ASC(MID$(A$, Z * 13 + 13, 1))
  NEXT Z
  QBreadTMP
  A$ = SPACE$(70): GET #5, , A$
  FOR i = 1 TO 10
    Objeto(i).e = ASC(MID$(A$, (i - 1) * 7 + 1, 1))
    Objeto(i).v = ASC(MID$(A$, (i - 1) * 7 + 2, 1))
    Objeto(i).x = ASC(MID$(A$, (i - 1) * 7 + 3, 1))
    Objeto(i).y = ASC(MID$(A$, (i - 1) * 7 + 4, 1))
    Objeto(i).i = ASC(MID$(A$, (i - 1) * 7 + 5, 1))
    Objeto(i).o = ASC(MID$(A$, (i - 1) * 7 + 6, 1))
    Objeto(i).b = ASC(MID$(A$, (i - 1) * 7 + 7, 1))
  NEXT i
  TipoAgua = SetTypeWater(NumZona)
  IF NumZona = 38 OR NumZona = 66 THEN Entrada = 0: TiempoSafari = 0
  DoFuerza = 0: City = 0
  A$ = "       ": ap& = NumZona - 1
  GET #5, ap& * 560 + 554, A$
  City = ASC(MID$(A$, 7, 1))
  IF MID$(A$, 1, 6) <> STRING$(6, 0) THEN UltCntPkm = MID$(A$, 1, 6)
  IF Lugar = 24 THEN City = 6
  IF City > 0 AND City < 100 THEN ap& = City * 7 + 15636: A$ = CHR$(1): PUT #9, ap&, A$
  IF Edificio(NumZona) AND Persona(0).s = 36 THEN Persona(0).s = 0
  ArbolX = -1: ArbolY = -1
  FOR p = 1 TO 10
    IF Persona(p).t = 4 THEN A$ = " ": GET #8, Persona(p).x2 + Persona(p).y1 + 1, A$: acc = ASC(A$): IF acc = 3 THEN Persona(0).e = 0: SOUND 100, 1
  NEXT p
END SUB

SUB QBclsScr (tc)
  IF tc = 0 THEN
    x = 0: y = 0: px = 1: py = 0: d = 3: r = 0
    DO
      ink$ = INKEY$
      QBput8 x * 8, y * 8, 83, 0
      r = r + 1
      IF r = 10 THEN DQBcopyLayer 1, VIDEO: r = 0
      x = x + px: y = y + py
      IF x = 18 - y AND d = 3 THEN x = x - 1: y = y + 1: px = 0: py = 1: d = 0
      IF y = x - 3 AND d = 0 THEN x = x - 1: y = y - 1: px = -1: py = 0: d = 2
      IF x = 12 - y AND d = 2 THEN x = x + 1: y = y - 1: px = 0: py = -1: d = 1
      IF y = x AND d = 1 THEN x = x + 1: y = y + 1: px = 1: py = 0: d = 3
      IF x = 7 AND y = 7 AND d = 3 THEN DQBcopyLayer 1, VIDEO: EXIT DO
    LOOP
  END IF
END SUB

SUB QBdebPoke (pd1$, pd2$, pq)
  QBprint 1, 11, SPACE$(16): QBprint 1, 12, SPACE$(16)
  IF pq = 0 THEN QBprint 1, 11, MID$(pd1$, 2, 10) ELSE QBprint 1, 11, "Enem. " + MID$(pd2$, 2, 10)
  QBprint 1, 12, "debilitado."
  DQBcopyLayer 1, VIDEO
  IF pq = 0 THEN QBcaerPoke 0, ASC(MID$(pd1$, 1, 1)) - 1
  IF pq = 1 OR pq = 2 THEN QBcaerPoke 1, ASC(MID$(pd2$, 1, 1)) - 1
  QBwaitAB
  IF pq = 1 OR pq = 2 THEN
    SPoke NumPkmF, pd1$
    SPoke NumPkmR + 6, pd2$
    dv& = 0
    FOR p = 1 TO 6
      IF LuchoPkm(p) THEN dv& = dv& + 1
    NEXT p
    IF dv& > 0 THEN eg& = MSsetExp(pd2$) / dv&: GOSUB SubExp
    pd1$ = LPoke(NumPkmF)
    b = 0
    FOR A = 1 TO 6
      pd$ = LPoke(A + 6)
      IF ASC(MID$(pd$, 22, 1)) <> 2 AND ASC(MID$(pd$, 1, 1)) > 0 THEN b = b + 1
    NEXT A
    IF b = 0 THEN pq = -1: EXIT SUB
    NumPkmR = NumPkmR + 1
    pd2$ = LPoke(NumPkmR + 6)
    QBsendPoke pq, NumPkmR
  ELSEIF pq = 0 THEN
    Cur = 0: unp = NumPkmF: LuchoPkm(NumPkmF) = FALSE
    SPoke NumPkmF, pd1$
    b = 0
    FOR A = 1 TO 6
      pd$ = LPoke(A)
      IF ASC(MID$(pd$, 22, 1)) <> 2 AND ASC(MID$(pd$, 1, 1)) > 0 THEN b = b + 1
    NEXT A
    IF b = 0 THEN pq = -1: EXIT SUB
    DO
      QBverPkm 0
      pd1$ = LPoke(NumPkmF)
    LOOP UNTIL ASC(MID$(pd1$, 22, 1)) <> 2
    QBshowDataF2 pd1$, pd2$, 2
    QBsendPoke 0, NumPkmF
    SPoke NumPkmF, pd1$
  END IF
  EXIT SUB

SubExp:
  FOR p = 1 TO 6
    IF LuchoPkm(p) THEN
      pd1$ = LPoke(p): QBputBox 1, 0, 10, 18, 4
      QBprint 1, 11, RTRIM$(MID$(pd1$, 2, 10)) + " gan¢"
      IF MID$(pd1$, 12, LEN(NombPers$)) = NombPers$ THEN l& = eg& ELSE l& = eg& + eg& / 2
      A$ = LTRIM$(STR$(l&))
      QBprint 1, 12, A$ + " puntos EXP"
      DQBcopyLayer 1, VIDEO: QBwaitAB
      eg2& = l&
      DO
        A = ASC(MID$(pd1$, 1, 1)): np$ = STR$(A): A = ASC(MID$(pd1$, 21, 1)): nv$ = STR$(A)
        d1& = ASC(MID$(pd1$, 50, 1)): d2& = ASC(MID$(pd1$, 51, 1)): d3& = ASC(MID$(pd1$, 52, 1)): ex3& = d1& * 256 * 256 + d2& * 256 + d3& + eg2&
        IF VAL(nv$) < 200 THEN
          OPEN Direccion$ + "TABLAS-F.BIN" FOR BINARY AS #1
          A$ = " ": apunt& = VAL(np$): GET #1, apunt& * 13 + 78793, A$: t = ASC(A$)
          A$ = "   ": n = VAL(nv$) + 1: GET #1, t * 303 + n * 3 + 1, A$
          d1& = ASC(MID$(A$, 1, 1)): d2& = ASC(MID$(A$, 2, 1)): d3& = ASC(MID$(A$, 3, 1)): ex2& = d1& * 256 * 256 + d2& * 256 + d3&
          CLOSE #1
          IF eg2& > 0 THEN
            eg2& = ex3&: d3& = eg2& MOD 256: eg2& = (eg2& - d3&) / 256
            d2& = eg2& MOD 256: eg2& = (eg2& - d2&) / 256: d1& = eg2&: eg2& = 0
            MID$(pd1$, 50, 1) = CHR$(d1&): MID$(pd1$, 51, 1) = CHR$(d2&): MID$(pd1$, 52, 1) = CHR$(d3&)
          END IF
          IF ex2& - 1 < ex3& THEN pd1$ = SubirNivel(pd1$, 0, 0, 0) ELSE EXIT DO
        END IF
      LOOP UNTIL ASC(MID$(pd1$, 21, 1)) = 100
      SPoke p, pd1$
    END IF
  NEXT p
  pd1$ = LPoke(NumPkmF)
  QBshowDataF2 pd1$, pd2$, 1
  RETURN

END SUB

SUB QBdejarObjeto
  QBputBox 0, 0, 2, 18, 8
  QBputBox 0, 0, 0, 18, 3
  QBputBox 1, 0, 9, 18, 5
  QBshowListM 9, 5
  Cursor(2).NX = 1: Cursor(2).NY = 3: Cursor(2).VX = 1: Cursor(2).VY = 3: Cursor(2).SP = 87
  QBprint 1, 10, "®QuÇ quieres    "
  QBprint 1, 11, "guardar?        "
  QBputCursor 2
  DQBcopyLayer 1, VIDEO
  DO
    ink$ = INKEY$
    IF ink$ = Barr$ AND Cursor(2).NY > 3 THEN Cursor(2).NY = Cursor(2).NY - 1: QBputCursor 2: ink$ = "": DQBcopyLayer 1, VIDEO
    IF ink$ = Baba$ AND Cursor(2).NY < 8 AND Cursor(2).NY < OpSal THEN Cursor(2).NY = Cursor(2).NY + 1: QBputCursor 2: ink$ = "": DQBcopyLayer 1, VIDEO
    IF ink$ = Barr$ AND Cursor(2).NY = 3 AND MochIndex(NumBols) > 0 THEN MochIndex(NumBols) = MochIndex(NumBols) - 1: QBshowListM 9, 5: DQBcopyLayer 1, VIDEO
    IF ink$ = Baba$ AND Cursor(2).NY = 8 AND Cursor(2).NY < OpSal THEN MochIndex(NumBols) = MochIndex(NumBols) + 1: QBshowListM 9, 5: DQBcopyLayer 1, VIDEO
    IF ink$ = Ba$ AND Cursor(2).NY = OpSal THEN EXIT DO
    IF ink$ = Bizq$ THEN
      NumBols = NumBols - 1: IF NumBols = -1 THEN NumBols = 2
      Cursor(2).NY = 3
      QBshowListM 9, 5
      QBputCursor 2
      DQBcopyLayer 1, VIDEO
    END IF
    IF ink$ = Bder$ THEN
      NumBols = NumBols + 1: IF NumBols = 3 THEN NumBols = 0
      Cursor(2).NY = 3
      QBshowListM 9, 5
      QBputCursor 2
      DQBcopyLayer 1, VIDEO
    END IF
    IF ink$ = Ba$ THEN GOSUB SubGuarObj
  LOOP UNTIL ink$ = Bb$
  QBputBox 0, 0, 0, 15, 6
  QBprint 2, 1, "SACAR OBJETO"
  QBprint 2, 2, "DEJAR OBJETO"
  QBprint 2, 3, "TIRAR OBJETO"
  QBprint 2, 4, "DESCONEXIíN"
  QBprint 1, 10, "®QuÇ quieres    "
  QBprint 1, 11, "hacer?          "
  Cursor(2).SP = 0
  QBputCursor 1
  DQBcopyLayer 1, VIDEO
  EXIT SUB

SubGuarObj:
  IF NumBols = 0 THEN LO$ = MID$(ContMoch$, 1, 40)
  IF NumBols = 1 THEN LO$ = MID$(ContMoch$, 41, 10)
  IF NumBols = 2 THEN LO$ = MID$(ContMoch$, 51, 60)
  NumSlot1 = MochIndex(NumBols) + Cursor(2).NY - 3
  IF NumBols <> 1 THEN o$ = MID$(LO$, NumSlot1 * 2 + 1, 1) ELSE o$ = MID$(LO$, NumSlot1 + 1, 1)
  IF NumBols <> 1 THEN GOSUB SubGetCant ELSE g = 1
  IF g = 0 THEN GOTO SubFinGuar
  FOR i = 0 TO 59
    l$ = MID$(ContPC$, i * 2 + 1, 1)
    IF l$ = o$ THEN
      c = ASC(MID$(ContPC$, i * 2 + 2, 1))
      IF c < 100 - g THEN
        c = c + g: MID$(ContPC$, i * 2 + 2, 1) = CHR$(c)
        EXIT FOR
      END IF
    END IF
    IF l$ = CHR$(0) THEN
      MID$(ContPC$, i * 2 + 1, 2) = o$ + CHR$(g)
      EXIT FOR
    END IF
    IF i = 59 THEN l$ = "NO"
  NEXT i
  IF LEN(l$) = 1 THEN
    IF NumBols = 0 OR NumBols = 2 THEN
      c = ASC(MID$(LO$, NumSlot1 * 2 + 2, 1))
      c = c - g
      MID$(LO$, NumSlot1 * 2 + 2, 1) = CHR$(c)
      IF c = 0 THEN MID$(LO$, NumSlot1 * 2 + 1, 1) = CHR$(0): LO$ = QBordCad(LO$, 2)
      IF NumBols = 0 THEN MID$(ContMoch$, 1, 40) = LO$
      IF NumBols = 2 THEN MID$(ContMoch$, 51, 60) = LO$
    ELSE
      MID$(LO$, NumSlot1 + 1, 1) = CHR$(0): LO$ = QBordCad(LO$, 1)
      MID$(ContMoch$, 41, 10) = LO$
    END IF
    QBprint 1, 10, "El objeto fue   "
    QBprint 1, 11, "guardado v°a PC."
    DQBcopyLayer 1, VIDEO
    QBwaitAB
  ELSE
    QBprint 1, 10, "≠No hay espacio "
    QBprint 1, 11, "para guardar!   "
    DQBcopyLayer 1, VIDEO
    QBwaitAB
  END IF
SubFinGuar:
  QBprint 1, 10, "®QuÇ quieres    "
  QBprint 1, 11, "guardar?        "
  QBshowListM 9, 5
  QBputCursor 2
  DQBcopyLayer 1, VIDEO
  ink$ = ""
  RETURN

SubGetCant:
  g = 1
  QBprint 1, 10, "                "
  g$ = LTRIM$(STR$(g))
  g$ = SPACE$(2 - LEN(g$)) + g$
  QBprint 1, 11, "®Cu†ntos?   *" + g$
  DQBcopyLayer 1, VIDEO
  m = ASC(MID$(LO$, NumSlot1 * 2 + 2, 1))
  DO
    ink$ = INKEY$
    IF ink$ = Bb$ THEN g = 0: EXIT DO
    IF ink$ = Barr$ THEN
      g = g + 1: IF g = m + 1 THEN g = 1
      g$ = LTRIM$(STR$(g))
      g$ = SPACE$(2 - LEN(g$)) + g$
      QBprint 1, 11, "®Cu†ntos?   *" + g$
      DQBcopyLayer 1, VIDEO
    END IF
    IF ink$ = Baba$ THEN
      g = g - 1: IF g = 0 THEN g = m
      g$ = LTRIM$(STR$(g))
      g$ = SPACE$(2 - LEN(g$)) + g$
      QBprint 1, 11, "®Cu†ntos?   *" + g$
      DQBcopyLayer 1, VIDEO
    END IF
  LOOP UNTIL ink$ = Ba$
  RETURN

END SUB

SUB QBdisplayMap
  y2 = -3
  DO
    x2 = -4
    DO
      py = Persona(0).y + y2
      px = Persona(0).x + x2
      IF py < 0 THEN py = 0
      IF py > 31 THEN py = 31
      IF px < 0 THEN px = 0
      IF px > 31 THEN px = 31
      ns = MSfig(NumMapa, px, py)
      cx = (x2 + 4) * 16
      cy = (y2 + 3) * 16
      QBput16 cx, cy, ns
      IF ns = 79 THEN QBputV16 cx, cy, 234
      x2 = x2 + 1
    LOOP UNTIL x2 = 5
    y2 = y2 + 1
  LOOP UNTIL y2 = 4
END SUB

SUB QBdisplayTxt (QBnt!, QBrng)
  QBputBox 0, 0, 9, 18, 5
  GOSUB SubDisTxt
  IF QBrng < 4 AND pa = 0 THEN GOTO SubFinDiag
  IF pa THEN QBnt! = QBnt! + pa - 1: QBrng = QBrng - pa + 1
  Cursor(1).NX = 16: Cursor(1).NY = 13: Cursor(1).VX = 16
  Cursor(1).VY = 13: Cursor(1).SP = 84
  QBputCursor 1
  DQBcopyLayer 1, VIDEO
  IF PalOff > 0 THEN QBsetPal "ESPECIAL.PAL": PalOff = 0
  t# = TIMER
  DO
    IF TIMER > t# + .3 THEN
      IF Cursor(1).SP = 84 THEN Cursor(1).SP = 160 ELSE Cursor(1).SP = 84
      QBputCursor 1
      DQBcopyLayer 1, VIDEO
      t# = TIMER
    END IF
    ink$ = INKEY$
    IF ink$ = Ba$ OR ink$ = Bb$ THEN
      QBnt! = QBnt! + 1: QBrng = QBrng - 1
      GOSUB SubDisTxt
      IF pa THEN QBnt! = QBnt! + pa - 1: QBrng = QBrng - pa + 1
    END IF
    IF QBrng < 4 AND pa = 0 THEN GOTO SubFinDiag
  LOOP
  EXIT SUB

SubFinDiag:
  Cursor(1).NX = 16: Cursor(1).NY = 13: Cursor(1).VX = 16
  Cursor(1).VY = 13: Cursor(1).SP = 160
  QBputCursor 1
  DQBcopyLayer 1, VIDEO
  QBwaitAB
  EXIT SUB

SubDisTxt:
  IF pa THEN QBputBox 0, 0, 9, 18, 5: DQBcopyLayer 1, VIDEO: DQBwait 10
  ap& = QBnt! * 16 + 1: pa = 0
  SEEK #3, ap&
  txt$ = SPACE$(16)
  GOSUB GetTxtReady
  QBprint 1, 10, txt$
  DQBcopyLayer 1, VIDEO: DQBwait 2
  IF INSTR(txt$, CHR$(253)) THEN pa = 1
 
  txt$ = SPACE$(16)
  IF QBrng > 1 AND pa = 0 THEN GOSUB GetTxtReady
  QBprint 1, 11, txt$
  DQBcopyLayer 1, VIDEO: DQBwait 2
  IF pa = 0 AND INSTR(txt$, CHR$(253)) THEN pa = 2

  txt$ = SPACE$(16)
  IF QBrng > 2 AND pa = 0 THEN GOSUB GetTxtReady
  QBprint 1, 12, txt$
  DQBcopyLayer 1, VIDEO: DQBwait 2
  IF pa = 0 AND INSTR(txt$, CHR$(253)) THEN pa = 3
  DO: LOOP UNTIL INKEY$ = ""
  RETURN

GetTxtReady:
  GET #3, , txt$
  p = INSTR(txt$, CHR$(254))
  IF p > 1 AND p < 16 THEN
    A$ = MID$(txt$, 1, p - 1)
    b$ = MID$(txt$, p + 1, 16 - p)
    txt$ = A$ + NombPers$ + b$
    txt$ = MID$(txt$, 1, 16)
  END IF
  RETURN

END SUB

SUB QBdispObj (tp1, np1, tp2, np2)
  IF tp1 > -1 THEN x1 = -56: y1 = 24: px1 = 1
  IF tp2 > -1 THEN x2 = 144: y2 = 0: px2 = -1
  FOR i = 0 TO 55 STEP 2
    IF tp1 > -1 THEN DQBboxf 1, VX + 3, VY + 27, VX + 58, VY + 82, 127
    IF tp2 > -1 THEN DQBboxf 1, VX + 91, VY + 3, VX + 146, VY + 58, 127
    x1 = x1 + px1 * 2
    x2 = x2 + px2 * 2
    IF tp1 = 0 THEN QBputP56 x1, y1, np1
    IF tp1 = 1 THEN QBputPB56 x1, y1, np1, 0
    IF tp2 = 0 OR tp2 = 3 THEN QBputP56 x2, y2, np2
    IF tp2 = 1 THEN QBputPF56 x2, y2, np2, 0
    DQBcopyLayer 1, VIDEO
    IF tp2 = 3 AND x2 < 105 THEN EXIT FOR
  NEXT i
END SUB

SUB QBdoTec
  SELECT CASE NumTec
    CASE 90: IF Interno(NumZona) THEN QBgoToCntPkm
    CASE 232: IF Externo(NumZona) THEN QBgoToCntPkm
    CASE 227
      cx = 0: cy = 0
      IF Persona(0).p = 0 OR Persona(0).p = 2 THEN cx = Persona(0).x: cy = Persona(0).y + 1
      IF Persona(0).p = 4 OR Persona(0).p = 6 THEN cx = Persona(0).x: cy = Persona(0).y - 1
      IF Persona(0).p = 8 OR Persona(0).p = 10 THEN cx = Persona(0).x - 1: cy = Persona(0).y
      IF Persona(0).p = 12 OR Persona(0).p = 14 THEN cx = Persona(0).x + 1: cy = Persona(0).y
      IF cx = 0 AND cy = 0 THEN GOTO FinQBdoTec
      IF Ambiente(cx, cy, 4) THEN
        pd$ = LPoke(PkmAcc): np = ASC(MID$(pd$, 1, 1))
        Persona(0).s = 7
        Persona(0).c = 1: Persona(0).t = 5
        ACCION$ = "NADANDO"
      ELSE
        QBprint 1, 11, "Pero no se puede"
        QBprint 1, 12, "usar SURF aqu°. "
        DQBcopyLayer 1, VIDEO
        QBwaitAB
        NumTec = 0
      END IF
    CASE 100
      QBputBox 0, 0, 9, 18, 5
      IF DoFuerza = 0 THEN
        DoFuerza = TRUE
        QBprint 1, 10, "≠Ahora puedes": QBprint 1, 11, "mover las": QBprint 1, 12, "rocas!"
      ELSE
        QBprint 1, 10, "≠Tu POKêMON ya": QBprint 1, 11, "est† usando": QBprint 1, 12, "FUERZA!"
      END IF
      DQBcopyLayer 1, VIDEO
      QBwaitAB
    CASE 254
      IF Externo(NumZona) THEN
        NumPant = Region
        QBshowPant
        l = 0: es = 320
        GOSUB PutNombLugar
        DQBcopyLayer 1, VIDEO
        DO
          ink$ = INKEY$
          r = r + 1
          IF r = 50 THEN
            r = 0
            IF es = 320 THEN es = 321 ELSE es = 320
            QBshowPant
            GOSUB PutNombLugar
            DQBcopyLayer 1, VIDEO
          END IF
          IF ink$ = Bizq$ OR ink$ = Bder$ THEN
            IF ink$ = Bizq$ THEN ps = -1 ELSE ps = 1
            GOSUB EncontrarOtroLugar
            QBshowPant
            GOSUB PutNombLugar
            DQBcopyLayer 1, VIDEO
          END IF
          IF ink$ = Ba$ THEN
            ap = l * 7 + 15637 + (Region - 1) * 15 * 7: A$ = "      ": GET #9, ap, A$
            Persona(0).x = ASC(MID$(A$, 1, 1)): Persona(0).y = ASC(MID$(A$, 2, 1)): ACCION$ = "CAMINANDO"
            Persona(0).e = 1: Persona(0).t = 0: Persona(0).c = 0: Persona(0).s = 0: Persona(0).p = 0
            Region = ASC(MID$(A$, 3, 1)): Lugar = ASC(MID$(A$, 4, 1))
            NumMapa = ASC(MID$(A$, 5, 1)) + (Region - 1) * 100
            NumZona = ASC(MID$(A$, 6, 1)) + (Region - 1) * 256
            QBchZona
            EXIT DO
          END IF
        LOOP UNTIL ink$ = Bb$
      ELSE
        QBprint 1, 11, "≠Pero fracas¢ en"
        QBprint 1, 12, "el intento!     "
        DQBcopyLayer 1, VIDEO
        QBwaitAB
      END IF
    CASE 83                     'dulc-arom
      IF MSzonaRoja(NumMapa, Persona(0).x, Persona(0).y) THEN
        IF ACCION$ = "CAMINANDO" THEN a1 = 5 ELSE a1 = 1
        IF NumTec = 110 THEN a1 = 1
        QBwritePkmTMP a1, a1, -1, -1, -1, -1: IF PkmNoFound = 0 THEN QBfightPokeSalv
      END IF
    CASE 56, 62, 110, 113, 237  'cort demol golp-cab golp-roc torb
      A = Persona(0).p MOD 4: b = (Persona(0).p - A) / 4
      IF b = 0 THEN x = Persona(0).x: y = Persona(0).y + 1
      IF b = 1 THEN x = Persona(0).x: y = Persona(0).y - 1
      IF b = 2 THEN x = Persona(0).x - 1: y = Persona(0).y
      IF b = 3 THEN x = Persona(0).x + 1: y = Persona(0).y
      IF NumTec = 113 THEN
        FOR o = 1 TO 10
          IF Objeto(o).x = x AND Objeto(o).y = y AND Objeto(o).i = 1 THEN Objeto(o).v = 0
        NEXT o
      END IF
      IF MSfig(NumMapa, x, y) = 836 AND RND(1) > .3 AND NumTec = 110 THEN : QBwritePkmTMP 5, -1, -1, -1, -1, -1: IF PkmNoFound = 0 THEN QBfightPokeSalv
      IF MSfig(NumMapa, x, y) = 86 AND NumTec = 56 THEN ArbolX = x: ArbolY = y: ArbolSP = 4
      IF MSfig(NumMapa, x, y) = 93 AND NumTec = 62 THEN ArbolX = x: ArbolY = y: ArbolSP = 210
      IF MSfig(NumMapa, x, y) = 100 AND NumTec = 62 THEN ArbolX = x: ArbolY = y: ArbolSP = 80
      IF MSfig(NumMapa, x, y) = 102 AND NumTec = 62 THEN ArbolX = x: ArbolY = y: ArbolSP = 25
      IF MSfig(NumMapa, x, y) = 900 AND NumTec = 237 THEN ArbolX = x: ArbolY = y: ArbolSP = 25
  END SELECT
FinQBdoTec:
  EXIT SUB

PutNombLugar:
  ap = l * 7 + 15640 + (Region - 1) * 15 * 7: A$ = " ": GET #9, ap, A$: l3 = ASC(A$)
  TabMap$ = QBloadTabMap(l3)
  cx = ASC(MID$(TabMap$, 1, 1))
  cy = ASC(MID$(TabMap$, 2, 1))
  QBputP16 cx, cy, es
  n$ = MID$(TabMap$, 3, 16)
  QBprint 1, 0, n$
  RETURN

EncontrarOtroLugar:
  DO
    l2 = l2 + ps
    IF l2 = -1 THEN l2 = 14
    IF l2 = 15 THEN l2 = 0
    ap = l2 * 7 + 15636 + (Region - 1) * 15 * 7: A$ = " "
    GET #9, ap, A$
    IF A$ = CHR$(1) THEN l = l2: EXIT DO
  LOOP
  RETURN

END SUB

SUB QBenfrentar (QBnp)
  xc = (Persona(QBnp).x - Persona(0).x + 4) * 16: yc = (Persona(QBnp).y - Persona(0).y + 2) * 16 - 4
  DO
    r = r + 1
    ink$ = INKEY$
    QBputEscena
    QBputV16 xc, yc, 250
    DQBcopyLayer 1, VIDEO
    DQBwait 1
  LOOP UNTIL r > 2
  d = Persona(QBnp).p - (Persona(QBnp).p MOD 4)
  IF d = 0 THEN Persona(0).p = 4: dc = 4
  IF d = 4 THEN Persona(0).p = 0: dc = 0
  IF d = 8 THEN Persona(0).p = 12: dc = 12
  IF d = 12 THEN Persona(0).p = 8: dc = 8
  DO
    IF d = 0 AND Persona(0).y = Persona(QBnp).y + 1 THEN EXIT DO
    IF d = 4 AND Persona(0).y = Persona(QBnp).y - 1 THEN EXIT DO
    IF d = 8 AND Persona(0).x = Persona(QBnp).x - 1 THEN EXIT DO
    IF d = 12 AND Persona(0).x = Persona(QBnp).x + 1 THEN EXIT DO
    IF Persona(QBnp).x = x AND Persona(QBnp).y = y THEN Persona(QBnp).p = dc: QBnp = 0: EXIT SUB
    Persona(QBnp).c = 1: x = Persona(QBnp).x: y = Persona(QBnp).y
    DO
      ink$ = INKEY$
      QBputEscena
      DQBcopyLayer 1, VIDEO
      DQBwait 1
    LOOP UNTIL Persona(QBnp).c = 0
  LOOP
  QBputEscena
  ri! = Persona(QBnp).di
  rl = Persona(QBnp).rn
  QBdisplayTxt ri!, rl
END SUB

SUB QBfadeToWhite
  FOR i = 0 TO 31
    DQBfadeStepTo 63, 63, 63
    DQBfadeStepTo 63, 63, 63
    DQBsetCol 0, 0, 0, 0
  NEXT i
  DO: LOOP UNTIL INKEY$ = ""
END SUB

SUB QBfightEntren
  QBclsScr 0
  UltAcc$ = ACCION$: ACCION$ = "LUCHANDO"
  QBsetFirstPoke
  pkmdt1$ = LPoke(NumPkmF): pkmdt2$ = LPoke(NumPkmR + 6)
  A$ = EstPkm(0): b$ = EstPkm(2)
  NumPant = 28: QBshowPant
  QBprint 11, 8, A$: QBprint 1, 1, b$
  NombEnem$ = MID$(MSentrenData(NumEntren), 2, 12)
  QBprint 1, 11, "≠" + NombEnem$
  QBprint 1, 12, "quiere luchar!"
  DQBcopyLayer 1, VIDEO
  A$ = MID$(MSentrenData(NumEntren), 1, 1)
  QBdispObj 0, 0, 0, ASC(A$)
  QBwaitAB
  QBprint 1, 11, SPACE$(16): QBprint 1, 12, SPACE$(16)
  QBretiObj 1, 0, ASC(A$)
  QBsendPoke 1, NumPkmR
  QBretiObj 0, 0, 0
  QBsendPoke 0, NumPkmF
  QBshowDataF2 pkmdt1$, pkmdt2$, 0
  x = 1: y = 11
  DO
    DO: LOOP UNTIL INKEY$ = ""
    opc = QBopcLucha(x, y)
    LuchoPkm(NumPkmF) = TRUE
    IF opc = 1 THEN
      DO
        ts = MSselecTec(pkmdt1$, 0)
        IF ts = 0 THEN EXIT DO
        IF ts > 0 THEN ts2 = MSsetTecPR(2, pkmdt2$): QBplayHits ts, ts2, pkmdt1$, pkmdt2$: EXIT DO
      LOOP
      GOSUB SubDetFin2
      IF w = -1 OR Z = -1 THEN EXIT DO
      x = 1: y = 11
    END IF
    IF opc = 2 THEN
      SPoke NumPkmF, pkmdt1$
      QBverMochila
      pkmdt1$ = LPoke(NumPkmF)
      QBshowDataF2 pkmdt1$, pkmdt2$, 0
      ObjetoAUsar = -1
      IF GastoObjeto THEN
        ts2 = MSsetTecPR(1, pkmdt2$)
        QBplayHits 0, ts2, pkmdt1$, pkmdt2$
        GOSUB SubDetFin2
        IF w = -1 OR Z = -1 THEN EXIT DO
      END IF
      x = 1: y = 12
    END IF
    IF opc = 3 THEN
      Cur = 0: unp = NumPkmF
      QBverPkm 0
      x = 9: y = 11
      IF NumPkmF <> unp THEN
        QBshowDataF2 pkmdt1$, pkmdt2$, 0
        QBretiObj 0, 1, unp
        pkmdt1$ = LPoke(NumPkmF)
        QBsendPoke 0, NumPkmF
        ts2 = MSsetTecPR(1, pkmdt2$)
        QBplayHits 0, ts2, pkmdt1$, pkmdt2$
        GOSUB SubDetFin2
        IF w = -1 OR Z = -1 THEN EXIT DO
        x = 1: y = 11
      END IF
      QBshowDataF2 pkmdt1$, pkmdt2$, 0
    END IF
    IF opc = 4 THEN
      QBputBox 1, 0, 9, 18, 5
      QBprint 1, 10, "≠No podÇs dejar "
      QBprint 1, 11, "la lucha contra "
      QBprint 1, 12, "otro entrenador!"
      DQBcopyLayer 1, VIDEO
      QBwaitAB
      QBshowDataF2 pkmdt1$, pkmdt2$, 0
      x = 9: y = 12
    END IF
  LOOP
  IF ACCION$ = "LUCHANDO" THEN ACCION$ = UltAcc$
  NombEnem$ = ""
  IF ACCION$ = "CAMINANDO" THEN DQBpalOff
  PalOff = 2
  EXIT SUB

SubDetFin2:
  QBshowDataF2 pkmdt1$, pkmdt2$, 0
  IF PkmAtaq = 1 THEN GOSUB SuCaida1: GOSUB MiCaida1 ELSE GOSUB MiCaida1: GOSUB SuCaida1
  SPoke NumPkmF, pkmdt1$: SPoke NumPkmR + 6, pkmdt2$
  IF Z = -1 THEN QBperdio 0, 0
  IF w = -1 THEN QBperdio 1, 0
  RETURN

SuCaida1:
  IF ASC(MID$(pkmdt2$, 22, 1)) = 2 THEN
    w = 1: QBdebPoke pkmdt1$, pkmdt2$, w
    FOR A = 1 TO 6: LuchoPkm(A) = 0: NEXT A
    IF w > -1 THEN QBshowDataF2 pkmdt1$, pkmdt2$, 0: IF TPokemon > 1 THEN GOSUB SubCambioPL
  END IF
  RETURN

MiCaida1:
  IF ASC(MID$(pkmdt1$, 22, 1)) = 2 THEN Z = 0: QBdebPoke pkmdt1$, pkmdt2$, Z: IF Z > -1 THEN QBshowDataF2 pkmdt1$, pkmdt2$, 0
  RETURN

SubCambioPL:
  QBprint 1, 11, "®Quieres cambiar"
  QBprint 1, 12, "de POKêMON?     "
  IF SiONO(1) THEN
    Cur = 0: unp = NumPkmF
    QBverPkm 0
    IF NumPkmF <> unp THEN
      QBshowDataF2 pkmdt1$, pkmdt2$, 0
      QBretiObj 0, 1, unp
      pkmdt1$ = LPoke(NumPkmF)
      QBsendPoke 0, NumPkmF
    END IF
  END IF
  Cursor(1).SP = 0
  QBshowDataF2 pkmdt1$, pkmdt2$, 0
  RETURN

END SUB

SUB QBfightPokeSalv
  'IF Invicibilidad = 0 THEN QBputPrs 0
  QBclsScr 0
  UltAcc$ = ACCION$: ACCION$ = "LUCHANDO"
  QBsetFirstPoke
  pkmdt1$ = LPoke(NumPkmF): pkmdt2$ = LPoke(NumPkmR + 6)
  A$ = EstPkm(0): b$ = EstPkm(1)
  NumPant = 28: QBshowPant
  QBprint 11, 8, A$: QBprint 1, 1, b$
  IF TotalPR = 1 THEN
    QBprint 1, 11, "Un " + MID$(pkmdt2$, 2, 10)
    QBprint 1, 12, "salvaje apareci¢"
  ELSE
    QBprint 1, 11, "≠≠Es un grupo de"
    QBprint 1, 12, "POKêMON!!"
  END IF
  A = ASC(MID$(pkmdt2$, 1, 1))
  IF MID$(PkmVA$, A, 1) = " " THEN NPokeVist = NPokeVist + 1: MID$(PkmVA$, A, 1) = "V"
  DQBcopyLayer 1, VIDEO
  QBdispObj 0, 0, 1, ASC(MID$(pkmdt2$, 1, 1)) - 1
  QBwaitAB
  QBprint 1, 11, SPACE$(16): QBprint 1, 12, SPACE$(16)
  QBretiObj 0, 0, 0
  QBsendPoke 0, NumPkmF
  QBshowDataF2 pkmdt1$, pkmdt2$, 0
  x = 1: y = 11: NombEnem$ = ""
  DO
    DO: LOOP UNTIL INKEY$ = ""
    opc = QBopcLucha(x, y)
    LuchoPkm(NumPkmF) = TRUE
    IF opc = 1 THEN
      DO
        ts = MSselecTec(pkmdt1$, 0)
        IF ts = 0 THEN EXIT DO
        IF ts > 0 THEN ts2 = MSsetTecPR(1, pkmdt2$): QBplayHits ts, ts2, pkmdt1$, pkmdt2$: EXIT DO
      LOOP
      GOSUB SubDetFin
      IF w = -1 OR Z = -1 THEN EXIT DO
      x = 1: y = 11
      QBshowDataF2 pkmdt1$, pkmdt2$, 0
    END IF
    IF opc = 2 THEN
      SPoke NumPkmF, pkmdt1$
      QBverMochila
      pkmdt1$ = LPoke(NumPkmF)
      QBshowDataF2 pkmdt1$, pkmdt2$, 0
      IF ObjetoAUsar = 58 OR ObjetoAUsar = 40 OR ObjetoAUsar = 74 OR ObjetoAUsar = 78 OR ObjetoAUsar = 72 THEN
        IF PokeDentro(pkmdt1$, pkmdt2$) THEN
          SPoke NumPkmR + 6, STRING$(53, 0)
          b = 0
          FOR A = 1 TO 6
            pd$ = LPoke(A + 6)
            IF ASC(MID$(pd$, 22, 1)) <> 2 AND ASC(MID$(pd$, 1, 1)) > 0 THEN b = b + 1
          NEXT A
          IF b = 0 THEN ObjetoAUsar = -1: EXIT DO
          NumPkmR = NumPkmR + 1
          pkmdt2$ = LPoke(NumPkmR + 6)
          QBsendPoke 2, NumPkmR
          QBshowDataF2 pkmdt1$, pkmdt2$, 0
        END IF
      END IF
      ObjetoAUsar = -1
      IF GastoObjeto THEN
        ts2 = MSsetTecPR(0, pkmdt2$)
        QBplayHits 0, ts2, pkmdt1$, pkmdt2$
        GOSUB SubDetFin
        IF w = -1 OR Z = -1 THEN EXIT DO
      END IF
      x = 1: y = 12
    END IF
    IF opc = 3 THEN
      Cur = 0: unp = NumPkmF
      QBverPkm 0
      x = 9: y = 11
      IF NumPkmF <> unp THEN
        QBshowDataF2 pkmdt1$, pkmdt2$, 0
        QBretiObj 0, 1, unp
        pkmdt1$ = LPoke(NumPkmF)
        QBsendPoke 0, NumPkmF
        ts2 = MSsetTecPR(0, pkmdt2$)
        QBplayHits 0, ts2, pkmdt1$, pkmdt2$
        GOSUB SubDetFin
        IF w = -1 OR Z = -1 THEN EXIT DO
        x = 1: y = 11
      END IF
      QBshowDataF2 pkmdt1$, pkmdt2$, 0
    END IF
    IF opc = 4 THEN
      n2! = ASC(MID$(pkmdt2$, 21, 1))
      IF RND(1) * 100 > n2! THEN
        ts = -1
      ELSE
        QBprint 1, 11, "≠No podÇs       "
        QBprint 1, 12, "escapar!        "
        DQBcopyLayer 1, VIDEO
        QBwaitAB
        ts2 = MSsetTecPR(0, pkmdt2$)
        QBplayHits 0, ts2, pkmdt1$, pkmdt2$
        GOSUB SubDetFin
        IF w = -1 OR Z = -1 THEN EXIT DO
        x = 9: y = 12
        QBshowDataF2 pkmdt1$, pkmdt2$, 0
      END IF
    END IF
    IF ts = -1 THEN NombEnem$ = "PERDIO": QBprint 1, 11, "≠Escapaste      ": QBprint 1, 12, "sano y salvo!   ": DQBcopyLayer 1, VIDEO: QBwaitAB: EXIT DO
    IF ts2 = -1 THEN QBprint 1, 11, "≠POKêMON enem.  ": QBprint 1, 12, "dej¢ la batalla!": DQBcopyLayer 1, VIDEO: QBwaitAB: EXIT DO
  LOOP
  IF ACCION$ = "LUCHANDO" THEN ACCION$ = UltAcc$
  IF ACCION$ = "CAMINANDO" THEN DQBpalOff
  PalOff = 2
  EXIT SUB

SubDetFin:
  QBshowDataF2 pkmdt1$, pkmdt2$, 0
  IF PkmAtaq = 1 THEN GOSUB SuCaida2: GOSUB MiCaida2 ELSE GOSUB MiCaida2: GOSUB SuCaida2
  SPoke NumPkmF, pkmdt1$: SPoke NumPkmR + 6, pkmdt2$
  IF Z = -1 THEN QBperdio 0, 0
  IF w = -1 THEN QBperdio 2, 0
  RETURN

SuCaida2:
  IF ASC(MID$(pkmdt2$, 22, 1)) = 2 THEN
    w = 2: QBdebPoke pkmdt1$, pkmdt2$, w
    FOR A = 1 TO 6: LuchoPkm(A) = 0: NEXT A
    IF w > -1 THEN QBshowDataF2 pkmdt1$, pkmdt2$, 0: IF TPokemon > 2 THEN GOSUB SubCambioPL2
  END IF
  RETURN

MiCaida2:
  IF ASC(MID$(pkmdt1$, 22, 1)) = 2 THEN Z = 0: QBdebPoke pkmdt1$, pkmdt2$, Z: IF Z > -1 THEN QBshowDataF2 pkmdt1$, pkmdt2$, 0
  RETURN

SubCambioPL2:
  QBprint 1, 11, "®Quieres cambiar"
  QBprint 1, 12, "de POKêMON?     "
  IF SiONO(1) THEN
    Cur = 0: unp = NumPkmF
    QBverPkm 0
    IF NumPkmF <> unp THEN
      QBshowDataF2 pkmdt1$, pkmdt2$, 0
      QBretiObj 0, 1, unp
      pkmdt1$ = LPoke(NumPkmF)
      QBsendPoke 0, NumPkmF
    END IF
  END IF
  Cursor(1).SP = 0
  QBshowDataF2 pkmdt1$, pkmdt2$, 0
  RETURN

END SUB

SUB QBfinJuego
  QBputPrs 0
  QBputBox 0, 0, 9, 18, 5
  QBprint 1, 10, "≠Ding! ≠Dong!..."
  QBprint 1, 11, "≠Tu tiempo se ha"
  QBprint 1, 12, "acabado!"
  DQBcopyLayer 1, VIDEO
  QBwaitAB
  IF NumZona > 67 OR (NumZona = 67 AND Persona(0).y < 6) THEN
    IF NumZona > 67 THEN
      QBfadeToWhite
      Persona(0).e = 1: Persona(0).t = 0: Persona(0).x = 24
      Persona(0).y = 3: Persona(0).p = 0: Persona(0).s = 0
      NumZona = 67: NumMapa = 26
      QBchZona
    END IF
    QBputEscena
    DQBcopyLayer 1, VIDEO
    QBsetPal "ESPECIAL.PAL"
    DO
      IF Persona(0).c = 0 THEN Persona(0).c = 1
      QBputEscena
      DQBcopyLayer 1, VIDEO
      IF Persona(0).y = 6 AND Persona(0).c = 0 THEN EXIT DO
      ink$ = INKEY$
      DQBwait 5
    LOOP
  END IF
  Entrada = 0
  DO: LOOP UNTIL INKEY$ = ""
END SUB

FUNCTION QBfuerzaGolpe (pq, tq)
  pd1$ = LPoke(NumPkmF): pd2$ = LPoke(NumPkmR + 6)
  A$ = NombObj(tq + 256)
  IF pq = 0 THEN
    d1 = ASC(MID$(pd1$, 42, 1)): d2 = ASC(MID$(pd1$, 43, 1)): A! = d1 * 256 + d2
    d1 = ASC(MID$(pd2$, 44, 1)): d2 = ASC(MID$(pd2$, 45, 1)): b! = d1 * 256 + d2
    d1 = ASC(MID$(pd1$, 25, 1)): d2 = ASC(MID$(pd1$, 26, 1)): c! = d1 * 256 + d2
    w = MSefic(tq, ASC(MID$(pd2$, 1, 1)))
    f! = PkmF(1).ATAQ: IF RND(1) < PkmF(1).PRES / PkmF(2).EVAD * .9 THEN h! = 1 ELSE h! = 0
    g! = PkmF(2).DEFE: IF RND(1) < PkmF(1).CRIT / 100 THEN i! = 1.5 ELSE i! = 1
    IF ASC(MID$(A$, 13, 1)) <> 11 THEN d1 = ASC(MID$(pd2$, 48, 1)): d2 = ASC(MID$(pd2$, 49, 1)): b! = (b! + (d1 * 256 + d2)) / 2
    IF ASC(MID$(A$, 13, 1)) = 13 THEN d1 = ASC(MID$(pd2$, 48, 1)): d2 = ASC(MID$(pd2$, 49, 1)): b! = d1 * 256 + d2
  ELSE
    d1 = ASC(MID$(pd2$, 42, 1)): d2 = ASC(MID$(pd2$, 43, 1)): A! = d1 * 256 + d2
    d1 = ASC(MID$(pd1$, 44, 1)): d2 = ASC(MID$(pd1$, 45, 1)): b! = d1 * 256 + d2
    d1 = ASC(MID$(pd2$, 25, 1)): d2 = ASC(MID$(pd2$, 26, 1)): c! = d1 * 256 + d2
    w = MSefic(tq, ASC(MID$(pd1$, 1, 1)))
    f! = PkmF(2).ATAQ: IF RND(1) < PkmF(2).PRES / PkmF(1).EVAD * .9 THEN h! = 1 ELSE h! = 0
    g! = PkmF(1).DEFE: IF RND(1) < PkmF(2).CRIT / 100 THEN i! = 1.5 ELSE i! = 1
    IF ASC(MID$(A$, 13, 1)) <> 11 THEN d1 = ASC(MID$(pd1$, 48, 1)): d2 = ASC(MID$(pd1$, 49, 1)): b! = (b! + (d1 * 256 + d2)) / 2
    IF ASC(MID$(A$, 13, 1)) = 13 THEN d1 = ASC(MID$(pd1$, 48, 1)): d2 = ASC(MID$(pd1$, 49, 1)): b! = d1 * 256 + d2
  END IF
  IF (tq = 112 OR tq = 121) AND RND(1) < .3 AND i! = 1 THEN i! = 1.5
  d! = ASC(MID$(A$, 15, 1))
  IF tq = 25 THEN
    IF pq = 0 THEN d1 = ASC(MID$(pd1$, 23, 1)): d2 = ASC(MID$(pd1$, 24, 1))
    IF pq = 1 THEN d1 = ASC(MID$(pd2$, 23, 1)): d2 = ASC(MID$(pd2$, 24, 1))
    d! = c! - (d1 * 256 + d2) + 10
  END IF
  IF tq = 135 OR tq = 185 THEN d! = RND(1) * 80 + 30
  IF w = 0 THEN e! = 1
  IF w = 1 THEN e! = 1.8
  IF w = -1 THEN e! = .5
  Z = d! / 100 * c! * A! / b! * e! * f! / g! * h! * i! * .7
  IF tq = 102 THEN Z = 40
  IF (tq = 152 OR tq = 235) AND pq = 0 THEN Z = ASC(MID$(pd1$, 21, 1))
  IF (tq = 152 OR tq = 235) AND pq = 1 THEN Z = ASC(MID$(pd2$, 21, 1))
  IF w < 2 AND h! = 1 AND Z < 1 AND d! > 0 THEN Z = 1
  IF tq = 9 OR tq = 203 THEN Z = -c! / 2
  tq = 0
  IF e! = 1 AND Z > 0 THEN tq = 0: IF i! = 1.5 THEN tq = 5
  IF e! = 1.8 AND Z > 0 AND d! > 0 THEN tq = 1: IF i! = 1.5 THEN tq = 6
  IF e! = .5 AND Z > 0 AND d! > 0 THEN tq = 2: IF i! = 1.5 THEN tq = 7
  IF h! = 0 THEN Z = 0: tq = 4
  IF w = 2 THEN Z = 0: tq = 3
  QBfuerzaGolpe = Z
END FUNCTION

SUB QBgetSav
IniSubGS:
  Banco = 0
  DQBboxf 1, VX + 3, VY + 3, VX + 146, VY + 114, 127
  QBputBox 0, 0, 0, 14, 6
  QBprint 2, 1, "CONTINUAR"
  QBprint 2, 3, "NUEVO JUEGO"
  Cursor(0).NX = 1: Cursor(0).NY = 1: Cursor(0).VX = 1: Cursor(0).VY = 1: Cursor(0).SP = 87
  QBputCursor 0
  DQBcopyLayer 1, VIDEO
  DO
    ink$ = INKEY$
    IF ink$ = Barr$ AND Cursor(0).NY = 3 THEN Cursor(0).NY = 1: QBputCursor 0: DQBcopyLayer 1, VIDEO
    IF ink$ = Baba$ AND Cursor(0).NY = 1 THEN Cursor(0).NY = 3: QBputCursor 0: DQBcopyLayer 1, VIDEO
    IF ink$ = CHR$(27) THEN DQBclose: END
    IF ink$ = Ba$ AND Cursor(0).NY = 1 THEN EXIT DO
    IF ink$ = Ba$ AND Cursor(0).NY = 3 THEN GOTO JuegoNuevo
  LOOP
  QBloadFrom "POKELATI.SAV", nm, nh
  IF NombPers$ = STRING$(7, 0) THEN GOTO JuegoNuevo
  QBputBox 1, 2, 5, 16, 9
  QBprint 3, 6, "JUGAD. " + NombPers$
  m = ContBits(MedKanto, MedJohto, MedArgos)
  m$ = LTRIM$(STR$(m))
  m$ = SPACE$(2 - LEN(m$)) + m$
  QBprint 3, 8, "MEDALLAS    " + m$
  m$ = LTRIM$(STR$(NPokeAtra))
  m$ = SPACE$(3 - LEN(m$)) + m$
  QBprint 3, 10, "POKêDEX    " + m$
  h$ = LTRIM$(STR$(nh))
  h$ = SPACE$(3 - LEN(h$)) + h$
  m$ = LTRIM$(STR$(nm))
  IF LEN(m$) = 1 THEN m$ = "0" + m$
  QBprint 3, 12, "TIEMPO  " + h$ + ":" + m$
  Cursor(0).SP = 88
  QBputCursor 0
  DQBcopyLayer 1, VIDEO
  DO
    ink$ = INKEY$
    IF ink$ = Ba$ THEN
      IF MID$(PokeLati$, 1, 1) = CHR$(0) THEN GOTO JuegoNuevo
      EXIT SUB
    END IF
    IF ink$ = Bb$ THEN GOTO IniSubGS
  LOOP
  EXIT SUB
JuegoNuevo:
  QBloadFrom "POKELATI.INI", nh, nm
  QBpre3
END SUB

SUB QBgoToCntPkm
  QBfadeToWhite
  Persona(0).x = ASC(MID$(UltCntPkm, 1, 1)): Persona(0).y = ASC(MID$(UltCntPkm, 2, 1))
  Persona(0).e = 1: Persona(0).t = 0: Persona(0).c = 0: Persona(0).s = 0: Persona(0).p = 0
  Region = ASC(MID$(UltCntPkm, 3, 1)): Lugar = ASC(MID$(UltCntPkm, 4, 1))
  NumMapa = ASC(MID$(UltCntPkm, 5, 1)) + (Region - 1) * 100
  NumZona = ASC(MID$(UltCntPkm, 6, 1)) + (Region - 1) * 256
  QBchZona
  DO: LOOP UNTIL INKEY$ = ""
  QBputEscena
  DQBcopyLayer 1, VIDEO
  QBsetPal "ESPECIAL.PAL"
END SUB

SUB QBhablarConP (QBn)
  d1 = Persona(0).p - (Persona(0).p MOD 4)
  d2 = Persona(QBn).p
  IF d1 = 0 THEN Persona(QBn).p = 4
  IF d1 = 4 THEN Persona(QBn).p = 0
  IF d1 = 8 THEN Persona(QBn).p = 12
  IF d1 = 12 THEN Persona(QBn).p = 8
  QBrefreshScreen
  ri! = Persona(QBn).di
  rl = Persona(QBn).rn
  QBdisplayTxt ri!, rl
  Persona(QBn).p = d2
  IF Persona(QBn).t < 4 THEN EXIT SUB
  A$ = " ": GET #8, Persona(QBn).x2 + Persona(QBn).y1 + 1, A$: acc = ASC(A$)
  IF acc = 0 THEN Persona(QBn).x2 = Persona(QBn).x2 + 1
  IF acc = 20 OR acc = 22 OR acc = 31 THEN QBprevLucha QBn, acc
  IF Persona(QBn).x2 = 38 AND Persona(QBn).x1 = 0 THEN QBrestorePkm 0
END SUB

SUB QBhit (pq, aq, np)
  IF pq = 1 THEN x = 88: y = 0
  IF pq = 0 THEN x = 0: y = 24
  DQBsetClipBox VX + x + 3, VY + y + 3, VX + x + 58, VY + y + 58
  IF aq = 0 THEN
    DO
      ink$ = INKEY$
      A = NOT A: b = b + 1
      DQBboxf 1, VX + x + 3, VY + y + 3, VX + x + 58, VY + y + 58, 127
      IF pq = 0 AND A THEN QBputPB56 x, y, np, 0
      IF pq = 1 AND A THEN QBputPF56 x, y, np, 0
      DQBcopyLayer 1, VIDEO
      DQBwait 2
    LOOP UNTIL b = 17
  ELSEIF aq = 1 THEN
    DO
      ink$ = INKEY$
      A = A + 1
      DQBboxf 1, VX + x + 3, VY + y + 3, VX + x + 58, VY + y + 58, 127
      SELECT CASE A
        CASE 1 TO 4: x2 = x2 + 1
        CASE 5 TO 12: x2 = x2 - 1
        CASE 13 TO 16: x2 = x2 + 1: IF A > 15 THEN b = b + 1: A = 0
      END SELECT
      IF pq = 0 THEN QBputPB56 x + x2, y, np, 0
      IF pq = 1 THEN QBputPF56 x + x2, y, np, 0
      DQBcopyLayer 1, VIDEO
    LOOP UNTIL b = 2
  END IF
  DQBsetClipBox VX + 3, VY + 3, VX + 146, VY + 114
END SUB

SUB QBinitProg
  Direccion$ = "C:\NEWPOKE1\"
  Banco = 0: VX = 65: VY = 70
  Barr$ = "w": Baba$ = "s": Bizq$ = "a": Bder$ = "d": Ba$ = "g": Bb$ = "h": Bsta$ = "t": Bsel$ = "y"
  DQBsetClipBox VX + 3, VY + 3, VX + 146, VY + 114
  DEF SEG = VARSEG(Conver1(0))
  BLOAD "CONVER1.BIN", VARPTR(Conver1(0))
  DEF SEG
  FOR i = 0 TO 14: FOR j = 0 TO 3
    READ s1
    FlorT(i, j) = s1
  NEXT j, i
  FOR i = 0 TO 2: FOR j = 0 TO 3
    READ s2
    AguaT(i, j) = s2
  NEXT j, i
  FOR i = 0 TO 25
    READ A$
    NombVarios$ = NombVarios$ + A$
  NEXT i
  OPEN Direccion$ + "PANT40.BIN" FOR BINARY AS #2
  OPEN Direccion$ + "DIALOGO.BIN" FOR BINARY AS #3
  OPEN Direccion$ + "MAPAS40.BIN" FOR BINARY AS #4
  OPEN Direccion$ + "AMBIENTE.BIN" FOR BINARY AS #5
  OPEN Direccion$ + "DESC-PKM.BIN" FOR BINARY AS #6
  OPEN Direccion$ + "NOMB-OBJ.BIN" FOR BINARY AS #7
  OPEN Direccion$ + "SUB-CNTR.BIN" FOR BINARY AS #8
  OPEN "POKELATI.TMP" FOR BINARY AS #9
  OPEN Direccion$ + "SPRITE8.BIN" FOR BINARY AS #11
  OPEN Direccion$ + "SPRITE16.BIN" FOR BINARY AS #12
  OPEN Direccion$ + "PEOPLE16.BIN" FOR BINARY AS #13
  OPEN "LUCHA.TMP" FOR BINARY AS #14
  QBwritePkmTMP -1, -1, -1, -1, -1, -1
  QBsetPal "ESPECIAL.PAL"
END SUB


SUB QBleerCartel
  cx = 0: cy = 0
  IF Persona(0).p = 0 OR Persona(0).p = 2 THEN cx = Persona(0).x: cy = Persona(0).y + 1
  IF Persona(0).p = 4 OR Persona(0).p = 6 THEN cx = Persona(0).x: cy = Persona(0).y - 1
  IF Persona(0).p = 8 OR Persona(0).p = 10 THEN cx = Persona(0).x - 1: cy = Persona(0).y
  IF Persona(0).p = 12 OR Persona(0).p = 14 THEN cx = Persona(0).x + 1: cy = Persona(0).y
  IF cx = 0 AND cy = 0 THEN EXIT SUB
  b$ = CHR$(cx) + CHR$(cy)
  FOR e = 0 TO 9
    IF MID$(Cartel$, e * 8 + 1, 2) = b$ THEN
      di = ASC(MID$(Cartel$, e * 8 + 3, 1))
      ri! = ASC(MID$(Cartel$, e * 8 + 4, 1)) * 256 + ASC(MID$(Cartel$, e * 8 + 5, 1))
      rl = ASC(MID$(Cartel$, e * 8 + 6, 1)): le = 0
      IF (di AND 1) AND (Persona(0).p = 0 OR Persona(0).p = 2) THEN QBdisplayTxt ri!, rl: le = TRUE
      IF (di AND 2) AND (Persona(0).p = 4 OR Persona(0).p = 6) THEN QBdisplayTxt ri!, rl: le = TRUE
      IF (di AND 4) AND (Persona(0).p = 8 OR Persona(0).p = 10) THEN QBdisplayTxt ri!, rl: le = TRUE
      IF (di AND 8) AND (Persona(0).p = 12 OR Persona(0).p = 14) THEN QBdisplayTxt ri!, rl: le = TRUE
      IF le THEN
        IF MID$(Cartel$, e * 8 + 7, 1) = CHR$(1) THEN nl = ASC(MID$(Cartel$, e * 8 + 8, 1)): QBofrecer nl
        IF MID$(Cartel$, e * 8 + 7, 1) = CHR$(2) THEN QBmaqCura 2
        IF MID$(Cartel$, e * 8 + 7, 1) = CHR$(3) THEN QBopenPCCP
        IF MID$(Cartel$, e * 8 + 7, 1) = CHR$(4) THEN IndexCentro = ASC(MID$(Cartel$, e * 8 + 8, 1)): QBopenPCcam
        IF MID$(Cartel$, e * 8 + 7, 1) = CHR$(5) THEN QBleerPizarra
        IF MID$(Cartel$, e * 8 + 7, 1) = CHR$(6) THEN
          np = ASC(MID$(Cartel$, e * 8 + 8, 1))
          QBputBox 1, 5, 2, 9, 9
          NumPant = np
          QBshowPant
          DQBcopyLayer 1, VIDEO
          QBwaitAB
          Banco = 0
        END IF
        IF MID$(Cartel$, e * 8 + 7, 1) = CHR$(7) THEN
          np = ASC(MID$(Cartel$, e * 8 + 8, 1))
          IF MID$(PkmVA$, np, 1) = " " THEN NPokeVist = NPokeVist + 1: MID$(PkmVA$, np, 1) = "V"
          QBputBox 1, 5, 2, 9, 9
          QBputPF56 48, 24, np - 1, 0
          DQBcopyLayer 1, VIDEO
          QBwaitAB
        END IF
        IF MID$(Cartel$, e * 8 + 7, 1) = CHR$(8) THEN
          FOR ap& = 15583 TO 15635
            A$ = " ": GET #9, ap&, A$
            IF ASC(A$) > 0 THEN OB = ASC(A$): EXIT FOR
          NEXT ap&
          IF OB THEN
            A$ = RTRIM$(MID$(NombObj(OB), 1, 12))
            r1$ = "≠Muy Bien!      ": r2$ = "≠Lleg¢ un/a     "
            r3$ = A$ + "!" + SPACE$(15 - LEN(A$))
          ELSE
            r1$ = "≠No llegaron    ": r2$ = "paquetes para   ": r3$ = "usted!          "
          END IF
          QBprint 1, 10, r1$: QBprint 1, 11, r2$: QBprint 1, 12, r3$
          DQBcopyLayer 1, VIDEO: QBwaitAB
          IF OB THEN
            QBputBox 0, 0, 9, 18, 5
            IF EntObjMoc(OB, 1) THEN
              r1$ = NombPers$ + " puso": r2$ = A$ + " en": r3$ = "la mochila."
              A$ = CHR$(0): PUT #9, ap&, A$
            ELSE
              r1$ = "≠No hay espacio": r2$ = "en la mochila!": r3$ = ""
            END IF
            QBprint 1, 10, r1$: QBprint 1, 11, r2$: QBprint 1, 12, r3$
            DQBcopyLayer 1, VIDEO: QBwaitAB
          END IF
        END IF
        IF MID$(Cartel$, e * 8 + 7, 1) = CHR$(9) THEN QBrestorePkm ASC(MID$(Cartel$, e * 8 + 8, 1)): IF NumMapa = 116 THEN QBdisplayTxt 7844, 3
        IF MID$(Cartel$, e * 8 + 7, 1) = CHR$(10) THEN QBmaqCura 4
      END IF
      EXIT SUB
    ELSEIF MID$(Cartel$, e * 8 + 1, 2) = CHR$(0) + CHR$(0) THEN
      EXIT FOR
    END IF
  NEXT e
  FOR e = 1 TO 10
    IF Persona(e).e AND Persona(e).x = cx AND Persona(e).y = cy THEN QBhablarConP e: EXIT SUB
    IF Persona(e).t = 4 THEN
      A$ = " ": GET #8, Persona(e).x2 + Persona(e).y1 + 1, A$: acc = ASC(A$)
      IF acc = 53 THEN
        A$ = "  ": GET #8, Persona(e).x2 + Persona(e).y1 + 2, A$
        IF cx = ASC(MID$(A$, 1, 1)) AND cy = ASC(MID$(A$, 2, 1)) THEN Persona(e).x2 = Persona(e).x2 + 3
      END IF
    END IF
  NEXT e
  FOR e = 1 TO 10
    IF (Objeto(e).i > 5 AND Objeto(e).i < 9) OR Objeto(e).i = 233 THEN tmo = TRUE
    IF Objeto(e).x = cx AND Objeto(e).y = cy AND tmo THEN
      b$ = " ": ap& = Objeto(e).b + (Region - 1) * 256 + 16467: GET #9, ap&, b$
      IF (Objeto(e).i = 6 OR Objeto(e).i = 7) AND ASC(b$) THEN ag = 1: sr$ = "encontr¢"
      IF (Objeto(e).i = 8 AND Objeto(e).o > 0) OR Objeto(e).i = 233 THEN ag = 1: sr$ = "sac¢"
      IF ag = 1 THEN
        A$ = MID$(NombObj(Objeto(e).o), 1, 12)
        QBputBox 0, 0, 9, 18, 5: QBprint 1, 10, "≠" + NombPers$
        QBprint 1, 11, sr$: QBprint 1, 12, RTRIM$(A$) + "!"
        DQBcopyLayer 1, VIDEO: QBwaitAB
        IF EntObjMoc(Objeto(e).o, 1) THEN
          QBputBox 0, 0, 9, 18, 5: QBprint 1, 10, NombPers$ + " puso"
          QBprint 1, 11, RTRIM$(A$) + " en": QBprint 1, 12, "la mochila."
          DQBcopyLayer 1, VIDEO: QBwaitAB
          IF Objeto(e).i = 6 OR Objeto(e).i = 7 THEN b$ = CHR$(0): PUT #9, ap&, b$
          IF Objeto(e).i = 8 THEN Objeto(e).o = 0
          EXIT SUB
        ELSE
          QBputBox 0, 0, 9, 18, 5: QBprint 1, 10, "≠No hay espacio"
          QBprint 1, 11, "en la mochila!": DQBcopyLayer 1, VIDEO: QBwaitAB
        END IF
      END IF
    END IF
    tmo = 0: ag = 0
  NEXT e
  IF Ambiente(cx, cy, 1) AND (Persona(0).p = 4 OR Persona(0).p = 6) THEN QBdisplayTxt 50, 2: QBverMapa: EXIT SUB
  IF Ambiente(cx, cy, 2) AND (Persona(0).p = 4 OR Persona(0).p = 6) THEN QBopenMiPC: EXIT SUB
  IF Ambiente(cx, cy, 3) THEN QBputBox 1, 0, 9, 18, 5: A$ = "CASA DE " + NombPers$: QBprint 1, 10, A$: DQBcopyLayer 1, VIDEO: QBwaitAB
END SUB

SUB QBleerPizarra
  Cursor(0).NX = 1: Cursor(0).NY = 1: Cursor(0).VX = 1: Cursor(0).VY = 1: Cursor(0).SP = 87: Cursor(1).SP = 0
RPutPiz:
  NumPant = 34
  QBshowPant
  QBputCursor 0
  DQBcopyLayer 1, VIDEO
  DO
    ink$ = INKEY$
    IF ink$ = Barr$ AND Cursor(0).NY > 1 THEN Cursor(0).NY = Cursor(0).NY - 1: QBputCursor 0: DQBcopyLayer 1, VIDEO
    IF ink$ = Baba$ AND Cursor(0).NY < 6 THEN Cursor(0).NY = Cursor(0).NY + 1: QBputCursor 0: DQBcopyLayer 1, VIDEO
    IF ink$ = Ba$ AND Cursor(0).NY = 1 THEN QBdisplayTxt 916, 10: GOTO RPutPiz
    IF ink$ = Ba$ AND Cursor(0).NY = 2 THEN QBdisplayTxt 926, 10: GOTO RPutPiz
    IF ink$ = Ba$ AND Cursor(0).NY = 3 THEN QBdisplayTxt 936, 10: GOTO RPutPiz
    IF ink$ = Ba$ AND Cursor(0).NY = 4 THEN QBdisplayTxt 946, 11: GOTO RPutPiz
    IF ink$ = Ba$ AND Cursor(0).NY = 5 THEN QBdisplayTxt 957, 9: GOTO RPutPiz
    IF ink$ = Bb$ OR (ink$ = Ba$ AND Cursor(0).NY = 6) THEN EXIT DO
  LOOP
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

SUB QBloadFrom (QBa$, nm, nh)
  OPEN QBa$ FOR BINARY AS #1
    NombPers$ = SPACE$(7): GET #1, , NombPers$: NombPers$ = RTRIM$(NombPers$)
    A$ = " ": GET #1, , A$: MedKanto = ASC(A$)
    A$ = " ": GET #1, , A$: MedJohto = ASC(A$)
    A$ = " ": GET #1, , A$: MedArgos = ASC(A$)
    A$ = " ": GET #1, , A$: TPokedex = ASC(A$)
    A$ = " ": GET #1, , A$: TPokemon = ASC(A$)
    A$ = " ": GET #1, , A$: TMapa = ASC(A$)
    A$ = " ": GET #1, , A$: NPokeAtra = ASC(A$)
    A$ = " ": GET #1, , A$: NPokeVist = ASC(A$)
    A$ = " ": GET #1, , A$: Persona(0).x = ASC(A$)
    A$ = " ": GET #1, , A$: Persona(0).y = ASC(A$)
    A$ = " ": GET #1, , A$: Region = ASC(A$)
    A$ = " ": GET #1, , A$: Lugar = ASC(A$)
    A$ = " ": GET #1, , A$: NumMapa = ASC(A$) + (Region - 1) * 100
    A$ = " ": GET #1, , A$: NumZona = ASC(A$) + (Region - 1) * 256
    A$ = " ": GET #1, , A$: nh = ASC(A$)
    A$ = " ": GET #1, , A$: nm = ASC(A$)
    d$ = SPACE$(6): GET #1, , d$: Dinero = VAL(d$)
    PkmVA$ = SPACE$(251): GET #1, , PkmVA$
    PkmVA$ = PkmVA$ + "    "
    ContMoch$ = SPACE$(110): GET #1, , ContMoch$
    ContPC$ = SPACE$(120): GET #1, , ContPC$
    UltCntPkm$ = SPACE$(6): GET #1, , UltCntPkm$
  Persona(0).e = 1
  TJug = nh: TJug = TJug * 60 + nm: TJug = TJug * 60
  SEEK #9, 1
  SEEK #1, 517
  FOR i = 1 TO 104
    A$ = SPACE$(311)
    GET #1, , A$
    PUT #9, , A$
  NEXT i
  CLOSE #1
  A = MSfig(NumMapa, Persona(0).x, Persona(0).y)
  IF WaterFree(A) THEN Persona(0).t = 5: Persona(0).s = 7
  IF QBa$ = "POKELATI.INI" THEN NumZona = 1
END SUB

FUNCTION QBloadTabMap$ (QBn4)
  OPEN Direccion$ + "TAB-MAPA.BIN" FOR BINARY AS #1
    TabMap$ = SPACE$(32)
    ap& = (Region - 1) * 1600 + QBn4 * 32 + 1
    GET #1, ap&, TabMap$
  CLOSE #1
  QBloadTabMap$ = TabMap$
END FUNCTION

SUB QBloadZona
  ap& = NumZona - 1
  ap& = ap& * 560 + 1
  SEEK #5, ap&
  Escaleras$ = SPACE$(270): GET #5, , Escaleras$
  Cartel$ = SPACE$(80): GET #5, , Cartel$
  A$ = SPACE$(130): GET #5, , A$
  FOR Z = 0 TO 9
    Persona(Z + 1).e = ASC(MID$(A$, Z * 13 + 1, 1))
    Persona(Z + 1).t = ASC(MID$(A$, Z * 13 + 2, 1))
    Persona(Z + 1).x = ASC(MID$(A$, Z * 13 + 3, 1))
    Persona(Z + 1).y = ASC(MID$(A$, Z * 13 + 4, 1))
    Persona(Z + 1).c = 0
    Persona(Z + 1).s = ASC(MID$(A$, Z * 13 + 5, 1))
    Persona(Z + 1).p = ASC(MID$(A$, Z * 13 + 6, 1)) * 4
    Persona(Z + 1).x1 = ASC(MID$(A$, Z * 13 + 7, 1))
    IF Persona(Z + 1).t > 4 THEN Persona(Z + 1).x1 = Persona(Z + 1).x1 + (Persona(Z + 1).t - 4) * 256: Persona(Z + 1).t = 4
    Persona(Z + 1).y1 = ASC(MID$(A$, Z * 13 + 8, 1))
    Persona(Z + 1).x2 = ASC(MID$(A$, Z * 13 + 9, 1))
    Persona(Z + 1).y2 = ASC(MID$(A$, Z * 13 + 10, 1))
    A = ASC(MID$(A$, Z * 13 + 11, 1))
    b = ASC(MID$(A$, Z * 13 + 12, 1))
    Persona(Z + 1).di = A * 256 + b
    Persona(Z + 1).rn = ASC(MID$(A$, Z * 13 + 13, 1))
  NEXT Z
  QBreadTMP
  A$ = SPACE$(70): GET #5, , A$
  FOR i = 1 TO 10
    Objeto(i).e = ASC(MID$(A$, (i - 1) * 7 + 1, 1))
    Objeto(i).v = ASC(MID$(A$, (i - 1) * 7 + 2, 1))
    Objeto(i).x = ASC(MID$(A$, (i - 1) * 7 + 3, 1))
    Objeto(i).y = ASC(MID$(A$, (i - 1) * 7 + 4, 1))
    Objeto(i).i = ASC(MID$(A$, (i - 1) * 7 + 5, 1))
    Objeto(i).o = ASC(MID$(A$, (i - 1) * 7 + 6, 1))
    Objeto(i).b = ASC(MID$(A$, (i - 1) * 7 + 7, 1))
  NEXT i
  Entrada = 0
  TipoAgua = SetTypeWater(NumZona)
  IF NumZona = 41 OR NumZona = 42 THEN Entrada = -1
  IF NumZona = 67 THEN Entrada = -1: TiempoSafari = 100
  IF NumZona > 74 AND NumZona < 84 THEN Entrada = -1: TiempoSafari = 2
  ArbolX = -1: ArbolY = -1
  A$ = " ": ap& = NumZona - 1: GET #5, ap& * 560 + 560, A$: City = ASC(A$)
END SUB

SUB QBmaqCura (op)
  IF SiONO(0) THEN
    QBputBox 0, 0, 9, 18, 5: QBprint 1, 10, "Muy bien. DÇjame": QBprint 1, 11, "tus POKêMON.": DQBcopyLayer 1, VIDEO
    QBwaitAB
    Persona(1).p = 8: QBputEscena: QBrestorePkm op
    Persona(1).p = 0: QBputEscena: DQBcopyLayer 1, VIDEO
    Persona(1).e = 0: QBputEscena: QBputV16 64, 12, 12: DQBcopyLayer 1, VIDEO
    Persona(1).e = 1: QBputEscena
    QBputBox 0, 0, 9, 18, 5: QBprint 1, 10, "≠Gracias! ≠Tus": QBprint 1, 11, "POKêMON est†n": QBprint 1, 12, "en plena forma!"
    DQBcopyLayer 1, VIDEO: QBwaitAB
  ELSE
    QBputEscena
  END IF
  QBputBox 0, 0, 9, 18, 5
  QBprint 1, 10, "≠Vuelve siempre"
  QBprint 1, 11, "que quieras!   "
  DQBcopyLayer 1, VIDEO
  QBwaitAB
END SUB

SUB QBmir (p)
  IF RND(1) > .7 AND Persona(p).t < 3 THEN
    nd = FIX(RND(1) * 4)
    Persona(p).p = nd * 4
  END IF
  IF RND(1) > .9 AND Persona(p).t < 2 THEN
    Persona(p).c = 0
    d = Persona(p).p - (Persona(p).p MOD 4)
    IF d = 0 AND Persona(p).y < Persona(p).y2 THEN Persona(p).c = 1: A = A
    IF d = 4 AND Persona(p).y > Persona(p).y1 THEN Persona(p).c = 1: A = A
    IF d = 8 AND Persona(p).x > Persona(p).x1 THEN Persona(p).c = 1: A = A
    IF d = 12 AND Persona(p).x < Persona(p).x2 THEN Persona(p).c = 1: A = A
    IF Persona(p).t = 0 THEN Persona(p).c = 1
  END IF
END SUB

SUB QBmovPrs (QBnp)
  A$ = " ": GET #8, Persona(QBnp).x2 + Persona(QBnp).y1 + 1, A$: acc = ASC(A$)
  IF (acc = 4 OR acc = 5) AND Persona(0).c > 0 THEN EXIT SUB
  IF (acc = 11 OR acc = 6) AND Persona(QBnp).c > 0 THEN EXIT SUB
  DO
    A$ = " "
    GET #8, Persona(QBnp).x2 + Persona(QBnp).y1 + 1, A$
    acc = ASC(A$)
    SELECT CASE acc
      CASE 0, 13, 20, 31, 53, 54: EXIT SUB
      CASE 1
        Persona(QBnp).y2 = Persona(QBnp).y2 + 3
        A$ = "   ": GET #8, Persona(QBnp).y2 + Persona(QBnp).y1 + 1, A$
        A = ASC(MID$(A$, 1, 1)): b = ASC(MID$(A$, 2, 1))
        Persona(QBnp).di = A * 256 + b
        Persona(QBnp).rn = ASC(MID$(A$, 3, 1))
        Persona(QBnp).x2 = Persona(QBnp).x2 + 1
      CASE 2: Persona(QBnp).x2 = Persona(QBnp).x2 - 1
      CASE 3: Persona(0).e = 0: Persona(QBnp).x2 = Persona(QBnp).x2 + 1
      CASE 4: Persona(0).c = 1: Persona(QBnp).x2 = Persona(QBnp).x2 + 1: A = 1: QBcambioPos A: IF A = -1 THEN EXIT DO
      CASE 5
        A$ = " ": GET #8, Persona(QBnp).x2 + Persona(QBnp).y1 + 2, A$
        Persona(0).p = ASC(A$): Persona(0).c = 0
        Persona(QBnp).x2 = Persona(QBnp).x2 + 2
      CASE 6
        A$ = " ": GET #8, Persona(QBnp).x2 + Persona(QBnp).y1 + 2, A$
        Persona(QBnp).p = ASC(A$)
        Persona(QBnp).x2 = Persona(QBnp).x2 + 2
      CASE 7
        IF HablarCon = 0 THEN HablarCon = QBnp: EXIT DO
        IF HablarCon = -1 THEN Persona(QBnp).x2 = Persona(QBnp).x2 + 1: HablarCon = 0
      CASE 8
        A$ = " ": GET #8, Persona(QBnp).x2 + Persona(QBnp).y1 + 2, A$
        OB = ASC(A$)
        Persona(QBnp).x2 = Persona(QBnp).x2 + 2
        A$ = NombObj(OB)
        A$ = RTRIM$(MID$(A$, 1, 12))
        IF EntObjMoc(OB, 1) THEN
          Reng1$ = "≠" + NombPers$ + " recivi¢"
          Reng2$ = A$ + "!"
          ShowBox = 1
        ELSE
          Reng1$ = "≠" + A$
          Reng2$ = "ser† enviado por"
          Reng3$ = "correo!"
          ShowBox = 1
          FOR ap& = 15583 TO 15635
            A$ = " ": GET #9, ap&, A$
            IF A$ = CHR$(0) THEN A$ = CHR$(OB): PUT #9, ap&, A$: EXIT FOR
          NEXT ap&
        END IF
        EXIT DO
      CASE 9, 37
        A$ = " ": GET #8, Persona(QBnp).x2 + Persona(QBnp).y1 + 2, A$
        b$ = " ": GET #8, Persona(QBnp).x2 + Persona(QBnp).y1 + 3, b$
        p = ASC(A$): IF acc = 37 THEN p = p + 256
        PUT #9, p * 12 + 16984 + 10, b$
        Persona(QBnp).x2 = Persona(QBnp).x2 + 3
        FOR pp = 1 TO 10
          IF Persona(pp).x1 = p THEN Persona(pp).x2 = ASC(b$)
        NEXT pp
      CASE 10: Persona(QBnp).x2 = Persona(QBnp).x2 + 1: EXIT DO
      CASE 11: Persona(QBnp).c = 1: Persona(QBnp).x2 = Persona(QBnp).x2 + 1
      CASE 12: Persona(QBnp).e = 0: Persona(QBnp).x2 = Persona(QBnp).x2 + 1
      CASE 14
        A$ = " ": GET #8, Persona(QBnp).x2 + Persona(QBnp).y1 + 2, A$
        dg = ASC(A$) * 1000
        Dinero = Dinero + dg
        Reng1$ = "≠" + NombPers$ + " recivi¢"
        Reng2$ = "$" + LTRIM$(STR$(dg)) + "!"
        Persona(QBnp).x2 = Persona(QBnp).x2 + 2
        ShowBox = 1
      CASE 15, 52
        A$ = "    ": GET #8, Persona(QBnp).x2 + Persona(QBnp).y1 + 2, A$
        IF Persona(0).x = ASC(MID$(A$, 1, 1)) AND Persona(0).y = ASC(MID$(A$, 2, 1)) THEN
          IF acc = 52 THEN Persona(QBnp).x2 = ASC(MID$(A$, 4, 1)) ELSE Persona(QBnp).x2 = Persona(QBnp).x2 + 3
        ELSE
          IF acc = 52 THEN Persona(QBnp).x2 = ASC(MID$(A$, 3, 1)) ELSE EXIT DO
        END IF
      CASE 16: Persona(0).e = 1: Persona(QBnp).x2 = Persona(QBnp).x2 + 1
      CASE 17: Persona(QBnp).e = 1: Persona(QBnp).x2 = Persona(QBnp).x2 + 1
      CASE 18
        A$ = " ": GET #8, Persona(QBnp).x2 + Persona(QBnp).y1 + 2, A$: d1& = ASC(A$)
        A$ = " ": GET #8, Persona(QBnp).x2 + Persona(QBnp).y1 + 3, A$: d2& = ASC(A$)
        dt& = d1& * 256 + d2&
        n$ = QBrecivirPoke(dt&)
        No$ = RTRIM$(MID$(n$, 1, 10))
        IF MID$(n$, 11, 1) = "A" THEN
          Reng1$ = "≠" + NombPers$ + " recivi¢"
          Reng2$ = "un " + No$ + "!"
        ELSE
          Reng1$ = "≠" + NombPers$ + " recivi¢"
          Reng2$ = "un " + No$ + ","
          Reng3$ = "enviado al PC."
        END IF
        ShowBox = 1
        Persona(QBnp).x2 = Persona(QBnp).x2 + 3
        EXIT DO
      CASE 19
        A$ = " ": GET #8, Persona(QBnp).x2 + Persona(QBnp).y1 + 2, A$
        Persona(QBnp).y2 = ASC(A$)
        A$ = "   ": GET #8, Persona(QBnp).y2 + Persona(QBnp).y1 + 1, A$
        A = ASC(MID$(A$, 1, 1)): b = ASC(MID$(A$, 2, 1))
        Persona(QBnp).di = A * 256 + b
        Persona(QBnp).rn = ASC(MID$(A$, 3, 1))
        Persona(QBnp).x2 = Persona(QBnp).x2 + 2
      CASE 21
        IF Persona(0).e = 1 THEN
          d = -1
          IF Persona(0).x = Persona(QBnp).x AND Persona(0).y = Persona(QBnp).y + 1 THEN d = 0
          IF Persona(0).x = Persona(QBnp).x AND Persona(0).y = Persona(QBnp).y - 1 AND d = -1 THEN d = 4
          IF Persona(0).x = Persona(QBnp).x - 1 AND Persona(0).y = Persona(QBnp).y AND d = -1 THEN d = 8
          IF d = -1 THEN d = 12
          Persona(QBnp).p = d: Persona(0).e = 0: EXIT DO
        ELSE
          Persona(0).e = 1: Persona(QBnp).x2 = Persona(QBnp).x2 + 1
        END IF
      CASE 22, 48
        IF Persona(0).e = 1 THEN
          A = Persona(QBnp).p MOD 4: b = (Persona(QBnp).p - A) / 4
          IF b = 0 THEN x = Persona(QBnp).x: y = Persona(QBnp).y + 1: px = 0: py = 1
          IF b = 1 THEN x = Persona(QBnp).x: y = Persona(QBnp).y - 1: px = 0: py = -1
          IF b = 2 THEN x = Persona(QBnp).x - 1: y = Persona(QBnp).y: px = -1: py = 0
          IF b = 3 THEN x = Persona(QBnp).x + 1: y = Persona(QBnp).y: px = 1: py = 0
          A$ = " ": GET #8, Persona(QBnp).x2 + Persona(QBnp).y1 + 2, A$: l = ASC(A$): p = 0
          FOR r = 1 TO l
            IF Persona(0).x = x AND Persona(0).y = y THEN p = r: EXIT FOR
            x = x + px: y = y + py
          NEXT r
          IF p = 0 THEN
            IF acc = 48 THEN Persona(QBnp).p = (b + 1) * 4 MOD 16
            EXIT DO
          END IF
          Persona(0).e = 0: QBnp2 = QBnp
          QBenfrentar QBnp2
          IF QBnp2 THEN QBprevLucha QBnp, acc
          Persona(0).e = 1
          IF ACCION$ = "PERDIO" THEN EXIT DO
        ELSE
          EXIT DO
        END IF
      CASE 23: TMapa = 1: Persona(QBnp).x2 = Persona(QBnp).x2 + 1
      CASE 24: Persona(QBnp).x2 = Persona(QBnp).x2 + 1
      CASE 25
        TPokedex = 1: Persona(QBnp).x2 = Persona(QBnp).x2 + 1
        QBputBox 0, 0, 9, 18, 5
        QBprint 1, 10, "≠" + NombPers$ + " recivi¢"
        QBprint 1, 11, "la POKêDEX del": QBprint 1, 12, "PROFESOR OAK!"
        DQBcopyLayer 1, VIDEO: QBwaitAB
      CASE 26
        A$ = " ": GET #8, Persona(QBnp).x2 + Persona(QBnp).y1 + 2, A$
        ex = ASC(A$) - 1
        SELECT CASE ex
         CASE 0 TO 7: MedKanto = MedKanto + (2 ^ ex)
         CASE 8 TO 15: MedJohto = MedJohto + (2 ^ (ex - 8))
         CASE 16 TO 23: MedArgos = MedArgos + (2 ^ (ex - 16))
        END SELECT
        Persona(QBnp).x2 = Persona(QBnp).x2 + 2
      CASE 27
        A$ = " ": GET #8, Persona(QBnp).x2 + Persona(QBnp).y1 + 2, A$
        Persona(QBnp).x2 = Persona(QBnp).x2 - ASC(A$)
      CASE 28
        Persona(QBnp).y2 = Persona(QBnp).y2 - 3
        A$ = "   ": GET #8, Persona(QBnp).y2 + Persona(QBnp).y1 + 1, A$
        A = ASC(MID$(A$, 1, 1)): b = ASC(MID$(A$, 2, 1))
        Persona(QBnp).di = A * 256 + b
        Persona(QBnp).rn = ASC(MID$(A$, 3, 1))
        Persona(QBnp).x2 = Persona(QBnp).x2 + 1
      CASE 29: QBfadeToWhite: Persona(QBnp).x2 = Persona(QBnp).x2 + 1
      CASE 30: QBsetPal "ESPECIAL.PAL": Persona(QBnp).x2 = Persona(QBnp).x2 + 1
      CASE 32
        A$ = "   ": GET #8, Persona(QBnp).y1 + Persona(QBnp).x2 + 2, A$: m = ASC(MID$(A$, 1, 1)): A = 2
        IF Region = 1 AND (MedKanto AND m) = m THEN A = 3
        IF Region = 2 AND (MedJohto AND m) = m THEN A = 3
        IF Region = 3 AND (MedArgos AND m) = m THEN A = 3
        Persona(QBnp).x2 = ASC(MID$(A$, A, 1))
      CASE 33
        A$ = "  ": GET #8, Persona(QBnp).y1 + Persona(QBnp).x2 + 2, A$: b = ASC(MID$(A$, 1, 1)): v = ASC(MID$(A$, 2, 1))
        b$ = CHR$(v): ap& = b + (Region - 1) * 256 + 16467
        PUT #9, ap&, b$
        Persona(QBnp).x2 = Persona(QBnp).x2 + 3
      CASE 34
        A$ = "   ": GET #8, Persona(QBnp).y1 + Persona(QBnp).x2 + 2, A$: A = ASC(MID$(A$, 1, 1))
        b = QBrevisarMochila(A)
        IF b THEN Persona(QBnp).x2 = ASC(MID$(A$, 3, 1)) ELSE Persona(QBnp).x2 = ASC(MID$(A$, 2, 1))
      CASE 35
        A$ = " ": GET #8, Persona(QBnp).y1 + Persona(QBnp).x2 + 2, A$: A = ASC(A$)
        b = QBrevisarMochila(A)
        SELECT CASE b
          CASE 1 TO 20
            A$ = MID$(ContMoch$, 1, 40)
            c = ASC(MID$(A$, b * 2, 1)) - 1
            MID$(A$, b * 2, 1) = CHR$(c)
            IF c = 0 THEN MID$(A$, b * 2 - 1, 1) = CHR$(0): A$ = QBordCad(A$, 2)
            MID$(ContMoch$, 1, 40) = A$
          CASE 101 TO 110
            MID$(ContMoch$, b - 60, 1) = CHR$(0)
            A$ = MID$(ContMoch$, 41, 10): A$ = QBordCad(A$, 1)
            MID$(ContMoch$, 41, 10) = A$
          CASE 201 TO 230
            A$ = MID$(ContMoch$, 51, 60)
            c = ASC(MID$(A$, (b - 200) * 2, 1)) - 1
            MID$(A$, (b - 200) * 2, 1) = CHR$(c)
            IF c = 0 THEN MID$(A$, (b - 200) * 2 - 1, 1) = CHR$(0): A$ = QBordCad(A$, 2)
            MID$(ContMoch$, 51, 60) = A$
        END SELECT
        Persona(QBnp).x2 = Persona(QBnp).x2 + 2
      CASE 36
        A$ = " ": GET #8, Persona(QBnp).y1 + Persona(QBnp).x2 + 2, A$
        PUT #9, Persona(QBnp).x1 * 12 + 16985 + 11, A$
        Persona(QBnp).x2 = Persona(QBnp).x2 + 2
      CASE 38
        A$ = " ": GET #8, Persona(QBnp).y1 + Persona(QBnp).x2 + 2, A$
        IF MID$(PkmVA$, ASC(A$), 1) = " " THEN NPokeVist = NPokeVist + 1: MID$(PkmVA$, ASC(A$), 1) = "V"
        Persona(QBnp).x2 = Persona(QBnp).x2 + 2
      CASE 39, 46
        A$ = SPACE$(14): GET #8, Persona(QBnp).y1 + Persona(QBnp).x2 + 2, A$
        Persona(QBnp).e = ASC(MID$(A$, 1, 1)): Persona(QBnp).t = ASC(MID$(A$, 2, 1))
        IF ASC(MID$(A$, 3, 1)) THEN Persona(QBnp).x = ASC(MID$(A$, 3, 1))
        IF ASC(MID$(A$, 4, 1)) THEN Persona(QBnp).y = ASC(MID$(A$, 4, 1))
        IF acc = 39 THEN
          Persona(QBnp).c = ASC(MID$(A$, 5, 1)): Persona(QBnp).s = ASC(MID$(A$, 6, 1))
          Persona(QBnp).p = ASC(MID$(A$, 7, 1)): Persona(QBnp).x1 = ASC(MID$(A$, 8, 1))
          Persona(QBnp).y1 = ASC(MID$(A$, 9, 1)): Persona(QBnp).x2 = ASC(MID$(A$, 10, 1))
          Persona(QBnp).y2 = ASC(MID$(A$, 11, 1)): Persona(QBnp).rn = ASC(MID$(A$, 14, 1))
          Persona(QBnp).di = ASC(MID$(A$, 12, 1)) * 256 + ASC(MID$(A$, 13, 1))
          EXIT SUB
        END IF
        Persona(QBnp).s = ASC(MID$(A$, 5, 1)): Persona(QBnp).p = ASC(MID$(A$, 6, 1))
        Persona(QBnp).x2 = Persona(QBnp).x2 + 7
        IF Persona(QBnp).t < 4 THEN EXIT DO
      CASE 40: QBrestorePkm 0: Persona(QBnp).x2 = Persona(QBnp).x2 + 1
      CASE 41: A$ = " ": GET #8, Persona(QBnp).x2 + Persona(QBnp).y1 + 2, A$: Persona(QBnp).x2 = ASC(A$)
      CASE 42: Persona(QBnp).x2 = Persona(QBnp).x2 + 1: QBgoToCntPkm
      CASE 43
        A$ = "  ": GET #8, Persona(QBnp).y1 + Persona(QBnp).x2 + 2, A$
        d1 = ASC(MID$(A$, 1, 1)): d2 = ASC(MID$(A$, 2, 1)): Persona(QBnp).y1 = d1 * 256 + d2
        Persona(QBnp).x2 = 0: Persona(QBnp).y2 = 0
      CASE 44: QBrestorePkm 3: Persona(QBnp).x2 = Persona(QBnp).x2 + 1
      CASE 45
        A$ = " ": GET #8, Persona(QBnp).x2 + Persona(QBnp).y1 + 2, A$
        b$ = " ": GET #8, Persona(QBnp).x2 + Persona(QBnp).y1 + 3, b$
        c$ = " ": GET #8, Persona(QBnp).x2 + Persona(QBnp).y1 + 4, c$
        p = ASC(A$) * 256 + ASC(b$)
        PUT #9, p * 12 + 16984 + 10, c$
        Persona(QBnp).x2 = Persona(QBnp).x2 + 4
        FOR pp = 1 TO 10
          IF Persona(pp).x1 = p THEN Persona(pp).x2 = ASC(c$)
        NEXT pp
      CASE 47: QBsetPal "BLANCO.PAL": Persona(QBnp).x2 = Persona(QBnp).x2 + 1
      CASE 49
        IF SiONO(1) THEN A = 1 ELSE A = 2
        A$ = "  ": GET #8, Persona(QBnp).y1 + Persona(QBnp).x2 + 2, A$
        Persona(QBnp).x2 = ASC(MID$(A$, A, 1))
      CASE 50
        A$ = "   ": GET #8, Persona(QBnp).y1 + Persona(QBnp).x2 + 2, A$
        c = ASC(MID$(A$, 1, 1)) * 100
        IF Dinero < c THEN A = 2 ELSE A = 3: Dinero = Dinero - c
        Persona(QBnp).x2 = ASC(MID$(A$, A, 1))
      CASE 51
        xc = (Persona(QBnp).x - Persona(0).x + 4) * 16
        yc = (Persona(QBnp).y - Persona(0).y + 2) * 16 - 4
        QBputV16 xc, yc, 250
        DQBcopyLayer 1, VIDEO
        DQBwait 20
        DO: LOOP UNTIL INKEY$ = ""
        Persona(QBnp).x2 = Persona(QBnp).x2 + 1
      CASE ELSE: LOCATE 1, 1: PRINT QBnp; acc: STOP: EXIT DO
    END SELECT
  LOOP
END SUB

SUB QBmovy (d)
  IF Persona(0).c > 0 AND d = -1 THEN
    IF Persona(0).c = 1 THEN
      SELECT CASE Persona(0).p
        CASE 0 TO 3: x2 = 0: y2 = 1: d2 = 0
        CASE 4 TO 7: x2 = 0: y2 = -1: d2 = 1
        CASE 8 TO 11: x2 = -1: y2 = 0: d2 = 2
        CASE 12 TO 15: x2 = 1: y2 = 0: d2 = 3
      END SELECT
      CL = CaminoLibre(Persona(0).x + x2, Persona(0).y + y2, d2, 0)
      IF Persona(0).y < 28 AND CL AND d2 = 0 THEN Persona(0).y = Persona(0).y + 1
      IF Persona(0).y > 3 AND CL AND d2 = 1 THEN Persona(0).y = Persona(0).y - 1
      IF Persona(0).x > 4 AND CL AND d2 = 2 THEN Persona(0).x = Persona(0).x - 1
      IF Persona(0).x < 27 AND CL AND d2 = 3 THEN Persona(0).x = Persona(0).x + 1
      IF CL = 1 THEN Persona(0).s = 0: Persona(0).t = 0: NumTec = 0: ACCION$ = "CAMINANDO"
      Persona(0).c = 2
      Persona(0).p = Persona(0).p + 1
      EXIT SUB
    END IF
    IF Persona(0).c = 2 THEN
      Persona(0).p = Persona(0).p + 1: IF Persona(0).p MOD 4 = 0 THEN Persona(0).p = Persona(0).p - 4
      Persona(0).c = 0
      QBcambioPos 2
      IF Persona(0).p = 0 OR Persona(0).p = 2 THEN d2 = 0
      IF Persona(0).p = 4 OR Persona(0).p = 6 THEN d2 = 1
      IF Persona(0).p = 8 OR Persona(0).p = 10 THEN d2 = 2
      IF Persona(0).p = 12 OR Persona(0).p = 14 THEN d2 = 3
      ns = MShierba(NumMapa, Persona(0).x, Persona(0).y)
      ns2 = MSfig(NumMapa, Persona(0).x, Persona(0).y)
      IF CaminoLibre(Persona(0).x, Persona(0).y, d2, 0) = 2 OR ns2 = 1480 THEN Persona(0).c = 1
      IF Persona(0).t = 5 AND RND(1) > .9 AND Repelente = 0 THEN QBwritePkmTMP 1, -1, -1, -1, -1, -1: IF PkmNoFound = 0 THEN QBfightPokeSalv: d = -2
      IF (ns2 = 900 AND d2 = 0) OR ns2 = 366 THEN Persona(0).p = 4: Persona(0).c = 1
      IF (ns2 = 900 AND d2 = 1) OR ns2 = 367 THEN Persona(0).p = 0: Persona(0).c = 1
      IF (ns2 = 900 AND d2 = 2) OR ns2 = 369 THEN Persona(0).p = 12: Persona(0).c = 1
      IF (ns2 = 900 AND d2 = 3) OR ns2 = 368 THEN Persona(0).p = 8: Persona(0).c = 1
      IF ns2 = 1434 THEN Persona(0).p = 0: Persona(0).c = 1
      IF Repelente > 0 THEN Repelente = Repelente - 1
      IF TiempoSafari > 0 THEN TiempoSafari = TiempoSafari - 1: IF TiempoSafari = 0 THEN QBfinJuego
      IF MSzonaRoja(NumMapa, Persona(0).x, Persona(0).y) AND Repelente = 0 THEN
        IF ACCION$ = "CAMINANDO" THEN A = 0 ELSE A = 1
        a1 = -1: a2 = -1: a3 = -1: a4 = -1: a5 = -1: a6 = -1
        IF RND(1) > .9 THEN a1 = A
        IF RND(1) > .85 AND a1 = A THEN a2 = 0
        IF RND(1) > .8 AND a2 = A THEN a3 = 0
        IF RND(1) > .75 AND a3 = A THEN a4 = 0
        IF RND(1) > .7 AND a4 = A THEN a5 = 0
        IF RND(1) > .65 AND a5 = A THEN a6 = 0
        IF a1 > -1 THEN QBwritePkmTMP a1, a2, a3, a4, a5, a6: IF PkmNoFound = 0 THEN QBfightPokeSalv
      END IF
      EXIT SUB
    END IF
  END IF
  IF d = -1 OR Persona(0).c > 0 THEN EXIT SUB
  SELECT CASE Persona(0).p
    CASE 0, 2:   IF d = 0 THEN Persona(0).c = 1: QBcambioPos 1 ELSE Persona(0).p = Persona(0).p MOD 4 + d * 4
    CASE 4, 6:   IF d = 1 THEN Persona(0).c = 1: QBcambioPos 1 ELSE Persona(0).p = Persona(0).p MOD 4 + d * 4
    CASE 8, 10:  IF d = 2 THEN Persona(0).c = 1: QBcambioPos 1 ELSE Persona(0).p = Persona(0).p MOD 4 + d * 4
    CASE 12, 14: IF d = 3 THEN Persona(0).c = 1: QBcambioPos 1 ELSE Persona(0).p = Persona(0).p MOD 4 + d * 4
  END SELECT
  SufreEst = SufreEst - 1
  IF SufreEst < 1 THEN
    SufreEst = RND(1) * 4 + 5
    FOR i = 1 TO 6
      pd$ = LPoke(i)
      IF MID$(pd$, 22, 1) = CHR$(4) OR MID$(pd$, 22, 1) = CHR$(6) THEN
        d1 = ASC(MID$(pd$, 23, 1)): d2 = ASC(MID$(pd$, 24, 1)): ps = d1 * 256 + d2 - 1
        IF ps < 1 THEN
          ps = 0: MID$(pd$, 22, 1) = CHR$(2): QBputBox 1, 0, 9, 18, 5
          QBprint 1, 10, "≠" + MID$(pd$, 2, 10): QBprint 1, 11, "debilitado!"
          DQBcopyLayer 1, VIDEO: QBwaitAB
        ELSE
          PalOff = 1: DQBpalOff
        END IF
        d2 = ps MOD 256: d1 = (ps - d2) / 256: MID$(pd$, 23, 1) = CHR$(d1): MID$(pd$, 24, 1) = CHR$(d2)
        SPoke i, pd$
      END IF
    NEXT i
  END IF
END SUB

SUB QBofrecer (nl)
  OPEN Direccion$ + "TABLAS-F.BIN" FOR BINARY AS #1
    menu$ = SPACE$(20): l& = nl: GET #1, l& * 20 + 82537, menu$
  CLOSE #1
  menu$ = menu$ + CHR$(0) + CHR$(0)
  GOSUB BoxDin
  GOSUB BoxIni
  Cursor(0).NX = 1: Cursor(0).NY = 1: Cursor(0).VX = 1: Cursor(0).VY = 1: Cursor(0).SP = 87
  QBputCursor 0
  DQBcopyLayer 1, VIDEO
  DO
    ink$ = INKEY$
    IF ink$ = Barr$ AND Cursor(0).NY > 1 THEN Cursor(0).NY = Cursor(0).NY - 1: QBputCursor 0: DQBcopyLayer 1, VIDEO
    IF ink$ = Baba$ AND Cursor(0).NY < 3 THEN Cursor(0).NY = Cursor(0).NY + 1: QBputCursor 0: DQBcopyLayer 1, VIDEO
    IF ink$ = Ba$ AND Cursor(0).NY = 1 THEN ACCION$ = "COMPRANDO": GOSUB SubComprar
    IF ink$ = Ba$ AND Cursor(0).NY = 2 THEN ACCION$ = "VENDIENDO": GOSUB SubVender
    IF ink$ = Ba$ AND Cursor(0).NY = 3 THEN EXIT DO
  LOOP UNTIL ink$ = Bb$
  QBprint 1, 10, "≠Gracias!       "
  QBprint 1, 11, "                "
  QBprint 1, 12, "                "
  DQBcopyLayer 1, VIDEO
  QBwaitAB
  ACCION$ = "CAMINANDO"
  EXIT SUB

SubComprar:
  indice = 0: MaxNo& = 99
  GOSUB BoxProd
  Cursor(0).SP = 88: QBputCursor 0
  Cursor(1).NX = 4: Cursor(1).NY = 3: Cursor(1).VX = 4: Cursor(1).VY = 3: Cursor(1).SP = 87
  QBputCursor 1
  QBprint 1, 10, "  "
  QBprint 1, 11, "  "
  QBprint 1, 12, "No hay prisa.   "
  DQBcopyLayer 1, VIDEO
  DO
    ink$ = INKEY$
    IF ink$ = Barr$ AND Cursor(1).NY = 3 AND indice > 0 THEN indice = indice - 1: GOSUB BoxProd: QBputCursor 1: DQBcopyLayer 1, VIDEO
    IF ink$ = Barr$ AND Cursor(1).NY > 3 THEN Cursor(1).NY = Cursor(1).NY - 2: QBputCursor 1: DQBcopyLayer 1, VIDEO
    IF ink$ = Baba$ AND Cursor(1).NY = 9 THEN
      i = (Cursor(1).NY - 3) / 2 + indice
      IF ASC(MID$(menu$, i + 1, 1)) > 0 THEN
        indice = indice + 1
        GOSUB BoxProd
        QBputCursor 1
        DQBcopyLayer 1, VIDEO
      END IF
    END IF
    IF ink$ = Baba$ AND Cursor(1).NY < 9 THEN
      i = (Cursor(1).NY - 3) / 2 + indice
      IF ASC(MID$(menu$, i + 1, 1)) > 0 THEN
        Cursor(1).NY = Cursor(1).NY + 2
        QBputCursor 1
        DQBcopyLayer 1, VIDEO
      END IF
    END IF
    IF ink$ = Ba$ THEN
      i = (Cursor(1).NY - 3) / 2 + indice
      IF ASC(MID$(menu$, i + 1, 1)) > 0 THEN
        ac = 1
        GOSUB BoxCant
        GOSUB BoxProd
        QBputCursor 1
        IF CantObj > 0 THEN
          IF Dinero + 1 > Total& THEN
            IF EntObjMoc(ObjCom, CantObj) THEN
              QBputBox 0, 0, 9, 18, 5
              QBprint 1, 10, "≠Aqu° tienes!"
              QBprint 1, 11, "≠Gracias!"
              Dinero = Dinero - Total&
              GOSUB BoxDin
              DQBcopyLayer 1, VIDEO
              QBwaitAB
              GOSUB BoxProd
              QBputCursor 1
              QBprint 1, 10, "  "
              QBprint 1, 11, "  "
              QBprint 1, 12, "No hay prisa.   "
              DQBcopyLayer 1, VIDEO
            ELSE
              QBputBox 0, 0, 9, 18, 5
              QBprint 1, 10, "≠No tienes"
              QBprint 1, 11, "espacio en la"
              QBprint 1, 12, "mochila!"
              DQBcopyLayer 1, VIDEO
              QBwaitAB
              GOSUB BoxProd
              QBputCursor 1
              QBprint 1, 10, "  "
              QBprint 1, 11, "  "
              QBprint 1, 12, "No hay prisa.   "
              DQBcopyLayer 1, VIDEO
            END IF
          ELSE
            QBputBox 0, 0, 9, 18, 5
            QBprint 1, 10, "≠No tienes"
            QBprint 1, 11, "suficiente"
            QBprint 1, 12, "dinero!"
            DQBcopyLayer 1, VIDEO
            QBwaitAB
            GOSUB BoxProd
            QBputCursor 1
            QBprint 1, 10, "  "
            QBprint 1, 11, "  "
            QBprint 1, 12, "No hay prisa.   "
            DQBcopyLayer 1, VIDEO
          END IF
        END IF
        DQBcopyLayer 1, VIDEO
      ELSE
        EXIT DO
      END IF
    END IF
  LOOP UNTIL ink$ = Bb$
  ink$ = ""
  QBputEscena
  GOSUB BoxDin
  GOSUB BoxIni
  Cursor(0).SP = 87: QBputCursor 0
  QBputBox 0, 0, 9, 18, 5
  QBprint 1, 10, "≠Hola! ®Puedo"
  QBprint 1, 11, "ayudarte en"
  QBprint 1, 12, "algo?"
  DQBcopyLayer 1, VIDEO
  RETURN

BoxDin:
  QBputBox 0, 9, 0, 9, 3
  A$ = "$" + SPACE$(6)
  b$ = LTRIM$(STR$(Dinero))
  MID$(A$, 8 - LEN(b$), LEN(b$)) = b$
  QBprint 10, 1, A$
  RETURN

BoxIni:
  QBputBox 0, 0, 0, 10, 5
  QBprint 2, 1, "COMPRAR"
  QBprint 2, 2, "VENDER"
  QBprint 2, 3, "≠ADIíS!"
  RETURN

BoxProd:
  QBputBox 0, 3, 2, 15, 10
  FOR s = 1 TO 4
    IF ASC(MID$(menu$, indice + s, 1)) > 0 THEN
      OB = ASC(MID$(menu$, indice + s, 1))
      A$ = SPACE$(15): GET #7, OB * 15 + 1, A$
      n$ = MID$(A$, 1, 12)
      d1& = ASC(MID$(A$, 14, 1)): d2& = ASC(MID$(A$, 15, 1)): prec& = d2& * 256 + d1&
      p$ = "$" + LTRIM$(STR$(prec&)): p$ = SPACE$(12 - LEN(p$)) + p$
      QBprint 5, s * 2 + 1, n$
      QBprint 5, s * 2 + 2, p$
    ELSE
      QBprint 5, s * 2 + 1, "SALIR       "
      QBprint 5, s * 2 + 2, "            "
      EXIT FOR
    END IF
  NEXT s
  RETURN

BoxCant:
  No& = 1
  GOSUB BoxPrec
  QBprint 1, 12, "®Cu†ntos?       "
  DQBcopyLayer 1, VIDEO
  DO
    ink$ = INKEY$
    IF ink$ = Barr$ THEN
      No& = No& + 1: IF No& > MaxNo& THEN No& = 1
      GOSUB BoxPrec
      DQBcopyLayer 1, VIDEO
    END IF
    IF ink$ = Baba$ THEN
      No& = No& - 1: IF No& < 1 THEN No& = MaxNo&
      GOSUB BoxPrec
      DQBcopyLayer 1, VIDEO
    END IF
    IF ink$ = Ba$ THEN
      IF ACCION$ = "COMPRANDO" THEN
        A$ = "Son:            ": MID$(A$, 6, LEN(c$)) = c$
        QBprint 1, 12, A$
      ELSE
        QBputBox 0, 0, 9, 18, 5
        QBprint 1, 10, "Puedo darte"
        QBprint 1, 11, c$
        QBprint 1, 12, "por eso."
      END IF
      DQBcopyLayer 1, VIDEO
      IF SiONO(2) = 0 THEN
        No& = 0
      END IF
      Total& = prec&
      ObjCom = OB
      CantObj = No&
      EXIT DO
    END IF
    IF ink$ = Bb$ THEN CantObj = 0: EXIT DO
  LOOP
  ink$ = ""
  QBprint 1, 12, "No hay prisa.   "
  RETURN

BoxPrec:
  QBputBox 0, 4, 9, 14, 3
  b$ = "*00         "
  c$ = LTRIM$(STR$(No&))
  MID$(b$, 4 - LEN(c$), LEN(c$)) = c$
  IF ACCION$ = "COMPRANDO" THEN
    y = (Cursor(1).NY - 3) / 2 + indice + 1
    OB = ASC(MID$(menu$, y, 1))
  ELSE
    ns = Cursor(1).NY - 3 + MochIndex(NumBols)
    OB = ASC(MID$(OB$, ns * 2 + 1, 1))
  END IF
  A$ = SPACE$(15): GET #7, OB * 15 + 1, A$
  d1 = ASC(MID$(A$, 14, 1)): d2 = ASC(MID$(A$, 15, 1)): prec& = (d2 * 256 + d1) / ac: prec& = prec& * No&
  c$ = "$" + LTRIM$(STR$(prec&))
  MID$(b$, 13 - LEN(c$), LEN(c$)) = c$
  QBprint 5, 10, b$
  RETURN

SubVender:
  IF NumBols = 1 THEN NumBols = 0
  QBputBox 0, 0, 2, 18, 8
  QBputBox 0, 0, 0, 18, 3
  QBputBox 0, 0, 9, 18, 5
  QBshowListM 9, 5
  Cursor(1).NX = 1: Cursor(1).NY = 3: Cursor(1).VX = 1: Cursor(1).VY = 3: Cursor(1).SP = 87
  QBprint 1, 10, "®QuÇ quieres    "
  QBprint 1, 11, "vender?         "
  QBputCursor 1
  DQBcopyLayer 1, VIDEO
  DO
    ink$ = INKEY$
    IF ink$ = Barr$ AND Cursor(1).NY > 3 THEN Cursor(1).NY = Cursor(1).NY - 1: QBputCursor 1: ink$ = "": DQBcopyLayer 1, VIDEO
    IF ink$ = Baba$ AND Cursor(1).NY < 8 AND Cursor(1).NY < OpSal THEN Cursor(1).NY = Cursor(1).NY + 1: QBputCursor 1: ink$ = "": DQBcopyLayer 1, VIDEO
    IF ink$ = Barr$ AND Cursor(1).NY = 3 AND MochIndex(NumBols) > 0 THEN MochIndex(NumBols) = MochIndex(NumBols) - 1: QBshowListM 9, 5: DQBcopyLayer 1, VIDEO
    IF ink$ = Baba$ AND Cursor(1).NY = 8 AND Cursor(1).NY < OpSal THEN MochIndex(NumBols) = MochIndex(NumBols) + 1: QBshowListM 9, 5: DQBcopyLayer 1, VIDEO
    IF ink$ = Ba$ AND Cursor(1).NY = OpSal THEN EXIT DO
    IF ink$ = Bizq$ THEN
      IF NumBols = 0 THEN NumBols = 2 ELSE NumBols = 0
      Cursor(1).NY = 3
      QBshowListM 9, 5
      QBputCursor 1
      DQBcopyLayer 1, VIDEO
    END IF
    IF ink$ = Bder$ THEN
      IF NumBols = 0 THEN NumBols = 2 ELSE NumBols = 0
      Cursor(1).NY = 3
      QBshowListM 9, 5
      QBputCursor 1
      DQBcopyLayer 1, VIDEO
    END IF
    IF ink$ = Ba$ THEN
      ac = 2: ns = Cursor(1).NY - 3 + MochIndex(NumBols)
      IF NumBols = 0 THEN OB$ = MID$(ContMoch$, 1, 40)
      IF NumBols = 2 THEN OB$ = MID$(ContMoch$, 51, 60)
      o = ASC(MID$(OB$, ns * 2 + 1, 1))
      IF BolPObj(o) = 0 OR BolPObj(o) = 2 THEN
        MaxNo& = ASC(MID$(OB$, ns * 2 + 2, 1))
        QBprint 1, 10, "   ": QBprint 1, 11, "   "
        GOSUB BoxCant
        IF CantObj > 0 OR No& = 1 THEN
          MaxNo& = MaxNo& - CantObj: Dinero = Dinero + Total&: IF Dinero > 999999 THEN Dinero = 999999
          MID$(OB$, ns * 2 + 2, 1) = CHR$(MaxNo&)
          IF MaxNo& = 0 THEN
            MID$(OB$, ns * 2 + 1, 1) = CHR$(0)
            OB$ = QBordCad(OB$, 2)
          END IF
          IF NumBols = 0 THEN MID$(ContMoch$, 1, 40) = OB$
          IF NumBols = 2 THEN MID$(ContMoch$, 51, 60) = OB$
          QBputBox 0, 0, 2, 18, 8
          QBputBox 0, 0, 0, 18, 3
          QBshowListM 9, 5
        END IF
      ELSE
        QBprint 1, 10, "No puedo        "
        QBprint 1, 11, "ponerle precio  "
        QBprint 1, 12, "a eso.          "
        DQBcopyLayer 1, VIDEO
        QBwaitAB
      END IF
      QBputBox 0, 0, 9, 18, 5
      QBprint 1, 10, "®QuÇ quieres    "
      QBprint 1, 11, "vender?         "
      QBputCursor 1
      DQBcopyLayer 1, VIDEO
    END IF
  LOOP UNTIL ink$ = Bb$
  ink$ = ""
  QBputEscena
  GOSUB BoxDin
  GOSUB BoxIni
  Cursor(0).SP = 87: QBputCursor 0
  QBputBox 0, 0, 9, 18, 5
  QBprint 1, 10, "≠Hola! ®Puedo"
  QBprint 1, 11, "ayudarte en"
  QBprint 1, 12, "algo?"
  DQBcopyLayer 1, VIDEO
  RETURN

END SUB

FUNCTION QBopcLucha (x, y)
  Cursor(0).VX = x: Cursor(0).NX = x: Cursor(1).SP = 0
  Cursor(0).VY = y: Cursor(0).NY = y: Cursor(0).SP = 87
  QBputCursor 0
  DQBcopyLayer 1, VIDEO
  DO
    ink$ = INKEY$
    IF ink$ = Barr$ AND Cursor(0).NY > 11 THEN Cursor(0).NY = 11: QBputCursor 0: DQBcopyLayer 1, VIDEO
    IF ink$ = Baba$ AND Cursor(0).NY < 12 THEN Cursor(0).NY = 12: QBputCursor 0: DQBcopyLayer 1, VIDEO
    IF ink$ = Bizq$ AND Cursor(0).NX > 1 THEN Cursor(0).NX = 1: QBputCursor 0: DQBcopyLayer 1, VIDEO
    IF ink$ = Bder$ AND Cursor(0).NX < 9 THEN Cursor(0).NX = 9: QBputCursor 0: DQBcopyLayer 1, VIDEO
    IF ink$ = Ba$ THEN EXIT DO
  LOOP
  Cursor(0).SP = 82: QBputCursor 0: DQBcopyLayer 1, VIDEO
  IF Cursor(0).NX = 1 AND Cursor(0).NY = 11 THEN QBopcLucha = 1
  IF Cursor(0).NX = 1 AND Cursor(0).NY = 12 THEN QBopcLucha = 2
  IF Cursor(0).NX = 9 AND Cursor(0).NY = 11 THEN QBopcLucha = 3
  IF Cursor(0).NX = 9 AND Cursor(0).NY = 12 THEN QBopcLucha = 4
END FUNCTION

SUB QBopenBillPC
  Cursor(0).NX = 1: Cursor(0).NY = 1: Cursor(0).VX = 1: Cursor(0).NY = 1: Cursor(0).SP = 87: Cursor(1).SP = 0
  GOSUB PutList2
  DQBcopyLayer 1, VIDEO
  DO
    ink$ = INKEY$
    IF ink$ = Barr$ AND Cursor(0).NY > 1 THEN Cursor(0).NY = Cursor(0).NY - 1: QBputCursor 0: DQBcopyLayer 1, VIDEO
    IF ink$ = Baba$ AND Cursor(0).NY < 4 THEN Cursor(0).NY = Cursor(0).NY + 1: QBputCursor 0: DQBcopyLayer 1, VIDEO
    IF ink$ = Ba$ AND Cursor(0).NY = 1 THEN po$ = "SACAR": MaxInd = 17: MaxPkm = 6: FstPkm = 13: IndexLst = 0: GOSUB SubSelectPkm
    IF ink$ = Ba$ AND Cursor(0).NY = 2 THEN po$ = "DEJAR": MaxInd = 0: MaxPkm = 5: FstPkm = 1: IndexLst = 0: GOSUB SubSelectPkm
    IF ink$ = Ba$ AND Cursor(0).NY = 3 THEN po$ = "SOLTAR": MaxInd = 17: MaxPkm = 6: FstPkm = 13: IndexLst = 0: GOSUB SubSelectPkm
    IF ink$ = Ba$ AND Cursor(0).NY = 4 THEN EXIT DO
  LOOP UNTIL ink$ = Bb$
  EXIT SUB

PutList2:
  QBputBox 0, 0, 0, 18, 9
  QBprint 2, 1, "SACAR POKêMON"
  QBprint 2, 2, "DEJAR POKêMON"
  QBprint 2, 3, "SOLTAR POKêMON"
  QBprint 2, 4, "DESCONEXIíN"
  QBputBox 0, 0, 9, 18, 5
  QBprint 1, 10, "®QuÇ hacer?"
  QBprint 8, 12, "CAJA â" + STR$(NCaja)
  QBputCursor 0
  RETURN

SubSelectPkm:
  Cursor(0).NX = 1: Cursor(0).NY = 1: Cursor(0).VX = 1: Cursor(0).NY = 1: Cursor(0).SP = 87: Cursor(1).SP = 0
  GOSUB SubPutLstPkm
  DQBcopyLayer 1, VIDEO
  opc = 0
  DO
    ink$ = INKEY$
    IF ink$ = Barr$ AND Cursor(0).NY = 1 AND IndexLst > 0 THEN ink$ = "": IndexLst = IndexLst - 1: GOSUB SubPutLstPkm: DQBcopyLayer 1, VIDEO
    IF ink$ = Barr$ AND Cursor(0).NY > 1 THEN Cursor(0).NY = Cursor(0).NY - 1: QBputCursor 0: DQBcopyLayer 1, VIDEO
    IF ink$ = Baba$ AND Cursor(0).NY = MaxPkm + 1 AND IndexLst < MaxInd THEN ink$ = "": IndexLst = IndexLst + 1: GOSUB SubPutLstPkm: DQBcopyLayer 1, VIDEO
    IF ink$ = Baba$ AND Cursor(0).NY < MaxPkm + 1 THEN Cursor(0).NY = Cursor(0).NY + 1: QBputCursor 0: DQBcopyLayer 1, VIDEO
    IF ink$ = Bizq$ AND MaxPkm = 6 THEN
      NCaja = NCaja - 1: IF NCaja = -1 THEN NCaja = 11
      GOSUB PutList2
      GOSUB SubPutLstPkm
      DQBcopyLayer 1, VIDEO
      DO: LOOP UNTIL INKEY$ = ""
    END IF
    IF ink$ = Bder$ AND MaxPkm = 6 THEN
      NCaja = NCaja + 1: IF NCaja = 12 THEN NCaja = 0
      GOSUB PutList2
      GOSUB SubPutLstPkm
      DQBcopyLayer 1, VIDEO
      DO: LOOP UNTIL INKEY$ = ""
    END IF
    IF ink$ = Bb$ THEN opc = -1: EXIT DO
    IF ink$ = Ba$ THEN
      IF MaxPkm = 5 THEN np = Cursor(0).NY
      IF MaxPkm = 6 THEN np = IndexLst + Cursor(0).NY + 12
      pd$ = LPoke(np)
      IF ASC(MID$(pd$, 1, 1)) = 0 THEN GOTO NoBox
      Cursor(0).SP = 88: Cursor(1).NX = 10: Cursor(1).NY = 5: Cursor(1).VX = 10: Cursor(1).VY = 5: Cursor(1).SP = 87
      QBputBox 0, 9, 4, 9, 5
      QBprint 11, 5, po$
      QBprint 11, 6, "ESTADO"
      QBprint 11, 7, "SALIR"
      QBputCursor 0: QBputCursor 1
      DQBcopyLayer 1, VIDEO
      DO
        ink$ = INKEY$
        IF ink$ = Barr$ AND Cursor(1).NY > 5 THEN Cursor(1).NY = Cursor(1).NY - 1: QBputCursor 1: DQBcopyLayer 1, VIDEO
        IF ink$ = Baba$ AND Cursor(1).NY < 7 THEN Cursor(1).NY = Cursor(1).NY + 1: QBputCursor 1: DQBcopyLayer 1, VIDEO
        IF ink$ = Bb$ THEN Cursor(1).NY = 7: EXIT DO
      LOOP UNTIL ink$ = Ba$
      opc = Cursor(1).NY - 5
      IF opc = 0 THEN
        GOSUB SubPutLstPkm
        IF po$ = "DEJAR" THEN
          IF TPokemon > 1 THEN
            pkd$ = LPoke(np): c = -1
            FOR p = 0 TO 287
              A$ = " ": GET #9, p * 53 + 319, A$
              IF A$ = CHR$(0) THEN PUT #9, p * 53 + 319, pkd$: c = (p - (p MOD 24)) / 24: EXIT FOR
            NEXT p
            IF c > -1 THEN
              SPoke np, STRING$(53, 0)
              QBordenarPkm 1, 6
              GOSUB SubPutLstPkm
              QBprint 1, 10, MID$(pkd$, 2, 10) + "      "
              QBprint 1, 11, "fue guardado en "
              A$ = LTRIM$(STR$(c)): A$ = A$ + SPACE$(2 - LEN(A$))
              QBprint 1, 12, "la CAJA â " + A$ + "    "
              TPokemon = TPokemon - 1
            ELSE
              QBprint 1, 10, "Tu Sistema de   "
              QBprint 1, 11, "Almacenamiento  "
              QBprint 1, 12, "de ÖÜ est† lleno"
            END IF
          ELSE
            QBprint 1, 10, "No podÇs dejar  "
            QBprint 1, 11, "tu £ltimo       "
            QBprint 1, 12, "POKêMON.        "
          END IF
          DQBcopyLayer 1, VIDEO
          QBwaitAB
          GOSUB PutList2
        ELSEIF po$ = "SACAR" THEN
          IF TPokemon < 6 THEN
            pkd$ = LPoke(np)
            TPokemon = TPokemon + 1
            SPoke TPokemon, pkd$
            SPoke np, STRING$(53, 0)
            QBordenarPkm 13, 36
            GOSUB SubPutLstPkm
            QBprint 1, 10, MID$(pkd$, 2, 10) + "      "
            QBprint 1, 11, "fue retirado y  "
            QBprint 1, 12, "recivido.       "
          ELSE
            QBprint 1, 10, "Tu equipo ya    "
            QBprint 1, 11, "est† completo.  "
            QBprint 1, 12, "                "
          END IF
          DQBcopyLayer 1, VIDEO
          QBwaitAB
          GOSUB PutList2
        ELSEIF po$ = "SOLTAR" THEN
          pkd$ = LPoke(np)
          QBprint 1, 10, "Si lo sueltas no"
          QBprint 1, 11, "volver†s a ver a"
          QBprint 1, 12, MID$(pkd$, 2, 10) + "      "
          DQBcopyLayer 1, VIDEO: QBwaitAB
          IF SiONO(1) THEN
            SPoke np, STRING$(53, 0)
            QBordenarPkm 13, 36
            GOSUB SubPutLstPkm
            A$ = RTRIM$(MID$(pkd$, 2, 10)) + " fue": A$ = A$ + SPACE$(16 - LEN(A$))
            b$ = RTRIM$(MID$(pkd$, 2, 10)) + "!": b$ = b$ + SPACE$(16 - LEN(b$))
            QBprint 1, 10, A$
            QBprint 1, 11, "liberado. ≠Adi¢s"
            QBprint 1, 12, b$
            DQBcopyLayer 1, VIDEO
            QBwaitAB
          END IF
          GOSUB PutList2
        END IF
      END IF
      IF opc = 1 THEN
        QBverEstPkm np
        GOSUB PutList2
      END IF
      Cursor(0).SP = 87: Cursor(1).SP = 0
      GOSUB SubPutLstPkm
      DQBcopyLayer 1, VIDEO
    END IF
NoBox:
  LOOP
  ink$ = ""
  Cursor(0).NX = 1: Cursor(0).NY = 1: Cursor(0).VX = 1: Cursor(0).NY = 1: Cursor(0).SP = 87: Cursor(1).SP = 0
  GOSUB PutList2
  DQBcopyLayer 1, VIDEO
  RETURN

SubPutLstPkm:
  QBputBox 0, 0, 0, 18, 9
  FOR p = 0 TO MaxPkm
    pd$ = LPoke(IndexLst + p + FstPkm)
    IF ASC(MID$(pd$, 1, 1)) > 0 THEN
      n = ASC(MID$(pd$, 21, 1)): n$ = STR$(n): n$ = SPACE$(3 - LEN(n$)) + n$
      QBprint 2, p + 1, MID$(pd$, 2, 10) + " á" + n$
    ELSE
      QBprint 2, p + 1, "------"
    END IF
  NEXT p
  QBputCursor 0
  RETURN

END SUB

SUB QBopenMiPC
  QBputBox 0, 0, 0, 15, 6
  QBprint 2, 1, "SACAR OBJETO"
  QBprint 2, 2, "DEJAR OBJETO"
  QBprint 2, 3, "DESCONEXIíN"
  QBputBox 1, 0, 9, 18, 4
  QBprint 1, 10, "®QuÇ quieres    "
  QBprint 1, 11, "hacer?          "
  Cursor(1).NX = 1: Cursor(1).VX = 1: Cursor(1).NY = 1: Cursor(1).VY = 1: Cursor(1).SP = 87: Cursor(2).SP = 0
  QBputCursor 1
  DQBcopyLayer 1, VIDEO
  DO
    ink$ = INKEY$
    IF ink$ = Barr$ AND Cursor(1).NY > 1 THEN Cursor(1).NY = Cursor(1).NY - 1: QBputCursor 1: DQBcopyLayer 1, VIDEO
    IF ink$ = Baba$ AND Cursor(1).NY < 3 THEN Cursor(1).NY = Cursor(1).NY + 1: QBputCursor 1: DQBcopyLayer 1, VIDEO
    IF ink$ = Ba$ AND Cursor(1).NY = 1 THEN QBsacarObjeto
    IF ink$ = Ba$ AND Cursor(1).NY = 2 THEN QBdejarObjeto
    IF ink$ = Ba$ AND Cursor(1).NY = 3 THEN EXIT DO
  LOOP UNTIL ink$ = Bb$
END SUB

SUB QBopenPCcam
Sopen:
  GOSUB PBoxIni
  IF opc = 1 THEN GOSUB DonarPoke: GOTO Sopen
  IF opc = 2 THEN GOSUB CambiPoke: GOTO Sopen
  EXIT SUB

DonarPoke:
  pk = 0: GOSUB SPutLst
  Cursor(0).NX = 1: Cursor(0).NY = 1: Cursor(0).VX = 1: Cursor(0).VY = 1: Cursor(0).SP = 87
  QBputCursor 0
  QBprint 1, 10, "®QuÇ POKêMON    "
  QBprint 1, 11, "quieres donar?  "
  QBprint 1, 12, "                "
  DQBcopyLayer 1, VIDEO
  DO
    ink$ = INKEY$
    IF ink$ = Barr$ AND Cursor(0).NY > 1 THEN Cursor(0).NY = Cursor(0).NY - 1: QBputCursor 0: DQBcopyLayer 1, VIDEO
    IF ink$ = Baba$ AND Cursor(0).NY < 6 THEN Cursor(0).NY = Cursor(0).NY + 1: QBputCursor 0: DQBcopyLayer 1, VIDEO
    IF ink$ = Ba$ THEN
      po$ = "DONAR": GOSUB SGetOpc
      IF opc = 1 THEN
        OPEN Direccion$ + "CENTRO-P.BIN" FOR BINARY AS #1
        sl = 0
        FOR i = 1 TO 8
          ap = (IndexCentro * 8 + i - 1) * 53 + 1: pd$ = SPACE$(53): GET #1, ap, pd$
          IF MID$(pd$, 1, 1) = CHR$(0) THEN sl = i: EXIT FOR
        NEXT i
        CLOSE #1
        QBputBox 0, 0, 9, 18, 5
        IF sl > 0 THEN
          pd$ = LPoke(Cursor(0).NY)
          OPEN Direccion$ + "CENTRO-P.BIN" FOR BINARY AS #1
          PUT #1, ap, pd$
          CLOSE #1
          SPoke Cursor(0).NY, STRING$(53, 0)
          QBprint 1, 10, "≠" + RTRIM$(MID$(pd$, 2, 10)) + " fue"
          QBprint 1, 11, "donado al"
          QBprint 1, 12, "CENTRO POKêMON!"
          FOR i = 1 TO 5
            pd$ = LPoke(i)
            IF MID$(pd$, 1, 1) = CHR$(0) THEN pd$ = LPoke(i + 1): SPoke i, pd$: SPoke i + 1, STRING$(53, 0)
          NEXT i
          TPokemon = TPokemon - 1
        ELSE
          QBprint 1, 10, "≠No hay lugar"
          QBprint 1, 11, "en el"
          QBprint 1, 12, "CENTRO POKêMON!"
        END IF
        DQBcopyLayer 1, VIDEO
        QBwaitAB
      END IF
      GOSUB SPutLst
      QBputCursor 0
      QBprint 1, 10, "®QuÇ POKêMON    "
      QBprint 1, 11, "quieres donar?  "
      QBprint 1, 12, "                "
      DQBcopyLayer 1, VIDEO
    END IF
  LOOP UNTIL ink$ = Bb$
  ink$ = ""
  QBputEscena
  QBputBox 0, 0, 9, 18, 5
  RETURN

CambiPoke:
  pk = 1: GOSUB SPutLst
  Cursor(0).NX = 1: Cursor(0).NY = 1: Cursor(0).VX = 1: Cursor(0).VY = 1: Cursor(0).SP = 87
  QBputCursor 0
  QBprint 1, 10, "®QuÇ POKêMON    "
  QBprint 1, 11, "te gustar°a     "
  QBprint 1, 12, "tener?          "
  DQBcopyLayer 1, VIDEO
  DO
    ink$ = INKEY$
    IF ink$ = Barr$ AND Cursor(0).NY > 1 THEN Cursor(0).NY = Cursor(0).NY - 1: QBputCursor 0: DQBcopyLayer 1, VIDEO
    IF ink$ = Baba$ AND Cursor(0).NY < 8 THEN Cursor(0).NY = Cursor(0).NY + 1: QBputCursor 0: DQBcopyLayer 1, VIDEO
    IF ink$ = Ba$ THEN
      po$ = "CAMBIAR": GOSUB SGetOpc
      IF opc = 1 THEN
        OPEN Direccion$ + "CENTRO-P.BIN" FOR BINARY AS #1
        ap = (IndexCentro * 8 + Cursor(0).NY - 1) * 53 + 1: pdc$ = SPACE$(53): GET #1, ap, pdc$
        CLOSE #1
        IF ASC(MID$(pdc$, 1, 1)) > 0 THEN
          NumSlot = Cursor(0).NY
          QBputBox 0, 0, 9, 18, 5
          QBprint 1, 10, "®Por quÇ POKêMON"
          QBprint 1, 11, "quieres cambiar"
          QBprint 1, 12, "a " + RTRIM$(MID$(pdc$, 2, 10)) + "?"
          pk = 0: IF Cursor(0).NY > 6 THEN Cursor(0).NY = 6
          GOSUB SPutLst
          QBputCursor 0
          DQBcopyLayer 1, VIDEO
          DO
            ink$ = INKEY$
            IF ink$ = Barr$ AND Cursor(0).NY > 1 THEN Cursor(0).NY = Cursor(0).NY - 1: QBputCursor 0: DQBcopyLayer 1, VIDEO
            IF ink$ = Baba$ AND Cursor(0).NY < 6 THEN Cursor(0).NY = Cursor(0).NY + 1: QBputCursor 0: DQBcopyLayer 1, VIDEO
            IF ink$ = Ba$ THEN
              GOSUB SGetOpc
              IF opc = 1 THEN
                pda$ = LPoke(Cursor(0).NY)
                IF MID$(pdc$, 50, 3) = CHR$(0) + CHR$(0) + CHR$(0) THEN
                  OPEN Direccion$ + "TABLAS-F.BIN" FOR BINARY AS #1
                  ap& = ASC(MID$(pdc$, 1, 1))
                  A$ = " ": GET #1, ap& * 13 + 78781 + 12, A$
                  t = ASC(A$): n = ASC(MID$(pdc$, 21, 1))
                  A$ = "   ": GET #1, t * 303 + n * 3 + 1, A$
                  MID$(pdc$, 50, 3) = A$
                  CLOSE #1
                END IF
                n = ASC(MID$(pdc$, 1, 1))
                IF MID$(PkmVA$, n, 1) = " " THEN NPokeVist = NPokeVist + 1: NPokeAtra = NPokeAtra + 1: MID$(PkmVA$, n, 1) = "A"
                IF MID$(PkmVA$, n, 1) = "V" THEN NPokeAtra = NPokeAtra + 1: MID$(PkmVA$, n, 1) = "A"
                A = ASC(MID$(pdc$, 1, 1)): np2 = SearchEvo(-1, A)
                IF np2 THEN pdc$ = SubirNivel(pdc$, 0, 0, -1)
                SPoke Cursor(0).NY, pdc$
                OPEN Direccion$ + "CENTRO-P.BIN" FOR BINARY AS #1
                ap = (IndexCentro * 8 + NumSlot - 1) * 53 + 1: PUT #1, ap, pda$
                CLOSE #1
                QBputBox 0, 0, 9, 18, 5
                QBprint 1, 10, "≠Tu " + MID$(pda$, 2, 10)
                QBprint 1, 11, "fue cambiado por"
                QBprint 1, 12, RTRIM$(MID$(pdc$, 2, 10)) + "!"
                DQBcopyLayer 1, VIDEO
                QBwaitAB
                EXIT DO
              END IF
            END IF
          LOOP UNTIL ink$ = Bb$
          ink$ = "": Cursor(0).NY = NumSlot: pk = 1
        END IF
      END IF
      GOSUB SPutLst
      QBputCursor 0
      QBprint 1, 10, "®QuÇ POKêMON    "
      QBprint 1, 11, "te gustar°a     "
      QBprint 1, 12, "tener?          "
      DQBcopyLayer 1, VIDEO
    END IF
  LOOP UNTIL ink$ = Bb$
  ink$ = ""
  QBputEscena
  QBputBox 0, 0, 9, 18, 5
  RETURN

SGetOpc:
  QBputBox 0, 8, 6, 10, 4
  QBprint 10, 7, po$
  QBprint 10, 8, "SALIR"
  Cursor(1).NX = 9: Cursor(1).NY = 7: Cursor(1).VX = 9: Cursor(1).VY = 7
  Cursor(1).SP = 87: Cursor(0).SP = 88: Cursor(2).SP = 0
  QBputCursor 0
  QBputCursor 1
  DQBcopyLayer 1, VIDEO
  DO
    ink$ = INKEY$
    IF ink$ = Barr$ AND Cursor(1).NY = 8 THEN Cursor(1).NY = 7: QBputCursor 1: DQBcopyLayer 1, VIDEO
    IF ink$ = Baba$ AND Cursor(1).NY = 7 THEN Cursor(1).NY = 8: QBputCursor 1: DQBcopyLayer 1, VIDEO
    IF ink$ = Ba$ THEN opc = Cursor(1).NY - 6: EXIT DO
    IF ink$ = Bb$ THEN opc = 2: EXIT DO
  LOOP
  ink$ = "": Cursor(0).SP = 87: Cursor(1).SP = 0
  RETURN

SPutLst:
  QBputBox 0, 0, 0, 18, 10
  OPEN Direccion$ + "CENTRO-P.BIN" FOR BINARY AS #1
  FOR i = 1 TO 8
    IF i = 7 AND pk = 0 THEN EXIT FOR
    IF pk = 0 THEN pd$ = LPoke(i)
    IF pk = 1 THEN ap = (IndexCentro * 8 + i - 1) * 53 + 1: pd$ = SPACE$(53): GET #1, ap, pd$
    IF ASC(MID$(pd$, 1, 1)) > 0 THEN
      n = ASC(MID$(pd$, 21, 1)): n$ = LTRIM$(STR$(n))
      QBprint 2, i, MID$(pd$, 2, 10) + " á" + n$
    ELSE
      QBprint 2, i, "------"
    END IF
  NEXT i
  CLOSE #1
  RETURN

PBoxIni:
  QBprint 1, 10, "®Que quieres   "
  QBprint 1, 11, "hacer?         "
  QBprint 1, 12, "               "
  QBputBox 0, 0, 0, 18, 4
  QBprint 2, 1, "DONAR POKêMON"
  QBprint 2, 2, "CAMBIAR POKêMON"
  Cursor(0).NX = 1: Cursor(0).NY = 1: Cursor(0).VX = 1: Cursor(0).VY = 1: Cursor(0).SP = 87: Cursor(1).SP = 0
  QBputCursor 0
  DQBcopyLayer 1, VIDEO
  DO
    ink$ = INKEY$
    IF ink$ = Barr$ AND Cursor(0).NY = 2 THEN Cursor(0).NY = 1: QBputCursor 0: DQBcopyLayer 1, VIDEO
    IF ink$ = Baba$ AND Cursor(0).NY = 1 THEN Cursor(0).NY = 2: QBputCursor 0: DQBcopyLayer 1, VIDEO
    IF ink$ = Bb$ THEN opc = 0: EXIT DO
    IF ink$ = Ba$ THEN opc = Cursor(0).NY: EXIT DO
  LOOP
  RETURN

END SUB

SUB QBopenPCCP
IniPC:
  QBputBox 0, 0, 9, 18, 5
  QBprint 1, 10, "®QuÇ quieres": QBprint 1, 11, "hacer?"
  Cursor(0).NX = 1: Cursor(0).NY = 1: Cursor(0).VX = 1: Cursor(0).VY = 1: Cursor(0).SP = 87: Cursor(1).SP = 0
  GOSUB PutList
  DQBcopyLayer 1, VIDEO
  DO
    ink$ = INKEY$
    IF ink$ = Barr$ AND Cursor(0).NY > 1 THEN Cursor(0).NY = Cursor(0).NY - 1: QBputCursor 0: DQBcopyLayer 1, VIDEO
    IF ink$ = Baba$ AND Cursor(0).NY < 4 + LigaPkm THEN Cursor(0).NY = Cursor(0).NY + 1: QBputCursor 0: DQBcopyLayer 1, VIDEO
    IF ink$ = Ba$ AND Cursor(0).NY = 1 THEN Cursor(0).SP = 88: QBputCursor 0: QBdisplayTxt 523, 6: QBopenBillPC: GOTO IniPC
    IF ink$ = Ba$ AND Cursor(0).NY = 2 THEN Cursor(0).SP = 88: QBputCursor 0: QBdisplayTxt 529, 5: QBopenMiPC: GOTO IniPC
    IF ink$ = Ba$ AND Cursor(0).NY = 3 THEN EXIT DO
  LOOP UNTIL ink$ = Bb$
  EXIT SUB

PutList:
  QBputBox 0, 0, 0, 18, 9
  QBprint 2, 1, "PC DE BILL"
  QBprint 2, 2, "PC DE " + NombPers$
  QBprint 2, 3, "DESCONEXIíN"
  QBputCursor 0
  RETURN

END SUB

FUNCTION QBordCad$ (QBca$, QBlo)
  FOR w = 0 TO LEN(QBca$) / QBlo - 1
    e$ = MID$(QBca$, w * QBlo + 1, 1)
    IF e$ = CHR$(0) AND w < LEN(QBca$) / QBlo - 1 THEN
      MID$(QBca$, w * QBlo + 1, QBlo) = MID$(QBca$, w * QBlo + QBlo + 1, QBlo)
      MID$(QBca$, w * QBlo + QBlo + 1, QBlo) = CHR$(0)
      IF QBlo = 2 THEN MID$(QBca$, w * QBlo + QBlo + 2, QBlo) = CHR$(0)
    END IF
  NEXT w
  QBordCad$ = QBca$
END FUNCTION

SUB QBordenarPkm (pkm1, pkm2)
  p1 = pkm1: p2 = pkm2
  DO
    pd$ = LPoke(p1)
    IF MID$(pd$, 1, 1) = CHR$(0) AND p1 < p2 THEN pd$ = LPoke(p1 + 1): SPoke p1, pd$: SPoke p1 + 1, STRING$(53, 0)
    p1 = p1 + 1
  LOOP UNTIL p1 > p2
END SUB

SUB QBperdio (pq, st)
  IF pq = 0 THEN
    IF st = 0 THEN
      QBputBox 1, 0, 9, 18, 5
      QBprint 1, 10, "≠Ya no tienes": QBprint 1, 11, "un POKêMON que": QBprint 1, 12, "pueda pelear!"
      DQBcopyLayer 1, VIDEO
      QBwaitAB
      QBrestorePkm 1
      ACCION$ = "PERDIO"
    ELSE
      Persona(0).x = ASC(MID$(UltCntPkm, 1, 1)): Persona(0).y = ASC(MID$(UltCntPkm, 2, 1))
      Persona(0).e = 1: Persona(0).t = 0: Persona(0).c = 0: Persona(0).s = 0: Persona(0).p = 0
      Region = ASC(MID$(UltCntPkm, 3, 1)): Lugar = ASC(MID$(UltCntPkm, 4, 1))
      NumMapa = ASC(MID$(UltCntPkm, 5, 1)) + (Region - 1) * 100
      NumZona = ASC(MID$(UltCntPkm, 6, 1)) + (Region - 1) * 256
      Dinero = Dinero / 2 + 1
      QBchZona
      DO: LOOP UNTIL INKEY$ = ""
    END IF
  END IF
  IF pq = 1 THEN
    QBputBox 1, 0, 9, 18, 5
    QBprint 1, 10, "≠" + RTRIM$(NombEnem$)
    QBprint 1, 11, "ha perdido!"
    DQBcopyLayer 1, VIDEO
    QBwaitAB
    A$ = MSentrenData(NumEntren)
    d1 = ASC(MID$(A$, 26, 1)): d2 = ASC(MID$(A$, 27, 1)): d = d1 * 256 + d2
    Dinero = Dinero + d
    QBputBox 1, 0, 9, 18, 5
    QBprint 1, 10, "≠" + NombPers$
    QBprint 1, 11, "gan¢ $" + LTRIM$(STR$(d)) + "!"
    DQBcopyLayer 1, VIDEO
    QBdispObj -1, 0, 3, ASC(MID$(A$, 1, 1))
    QBwaitAB
    d1 = ASC(MID$(A$, 28, 1)): d2 = ASC(MID$(A$, 29, 1)): d = d1 * 256 + d2: r = ASC(MID$(A$, 30, 1))
    QBdisplayTxt CSNG(d), r
  END IF
  IF pq = 2 AND TotalPR > 1 THEN
    QBputBox 1, 0, 10, 18, 4
    QBprint 1, 11, "≠No aparecen"
    QBprint 1, 12, "m†s POKêMON!"
    DQBcopyLayer 1, VIDEO
    QBwaitAB
  END IF
  IF pq = 2 THEN NombEnem$ = "PERDIO"
END SUB

SUB QBplayHits (tec1, tec2, pd1$, pd2$)
  QBshowDataF2 pd1$, pd2$, 0
  QBputBox 1, -1, 10, 20, 5
  d1 = ASC(MID$(pd1$, 46, 1)): d2 = ASC(MID$(pd1$, 47, 1)): A! = d1 * 256 + d2: A = A! * PkmF(1).VELO
  d1 = ASC(MID$(pd2$, 46, 1)): d2 = ASC(MID$(pd2$, 47, 1)): b! = d1 * 256 + d2: b = b! * PkmF(2).VELO
  IF MID$(pd1$, 22, 1) = CHR$(5) THEN A = A * .7
  IF MID$(pd2$, 22, 1) = CHR$(5) THEN b = b * .7
  IF A >= b THEN d = 1 ELSE d = 2
  IF tec1 = 22 AND tec2 <> 22 THEN d = 1
  IF tec2 = 22 AND tec1 <> 22 THEN d = 2
  PkmAtaq = d
  IF d = 1 THEN
    IF tec1 > 0 THEN GOSUB MiGolpe
    IF ASC(MID$(pd1$, 22, 1)) <> 2 AND ASC(MID$(pd2$, 22, 1)) <> 2 AND tec2 > 0 THEN GOSUB SuGolpe
  END IF
  IF d = 2 THEN
    IF tec2 > 0 THEN GOSUB SuGolpe
    IF ASC(MID$(pd1$, 22, 1)) <> 2 AND ASC(MID$(pd2$, 22, 1)) <> 2 AND tec1 > 0 THEN GOSUB MiGolpe
  END IF
  EXIT SUB

MiGolpe:
  pda$ = pd1$: pdv$ = pd2$: tec = tec1: pa = 1: pv = 2
  GOSUB Golpe
  pd1$ = pda$: pd2$ = pdv$
  RETURN

SuGolpe:
  pda$ = pd2$: pdv$ = pd1$: tec = tec2: pa = 2: pv = 1
  GOSUB Golpe
  pd2$ = pda$: pd1$ = pdv$
  RETURN

Golpe:
  m0 = 0: m1 = 0: m2 = 9: m3 = 0: m4 = 0: m5 = 0: m6 = 0: m7 = 0: m8 = 0: ng = 1: ng2 = 0: ani1 = 0
  IF tec = 48 THEN m0 = 1
  IF PkmF(pa).CONF > 0 THEN
    PkmF(pa).CONF = PkmF(pa).CONF - 1: m1 = 2
    IF PkmF(pa).CONF > 0 AND RND(1) < PkmF(pa).CONF / 6 THEN m2 = 10
    IF PkmF(pa).CONF = 0 THEN m1 = 3
  END IF
  IF MID$(pda$, 22, 1) = CHR$(3) THEN PkmF(pa).ACCI = PkmF(pa).ACCI - 1: IF PkmF(pa).ACCI = 0 THEN m1 = 4: MID$(pda$, 22, 1) = CHR$(0)
  IF MID$(pda$, 22, 1) = CHR$(1) THEN PkmF(pa).ACCI = PkmF(pa).ACCI - 1: IF PkmF(pa).ACCI = 0 THEN m1 = 5: MID$(pda$, 22, 1) = CHR$(0)
  IF MID$(pda$, 22, 1) = CHR$(5) THEN PkmF(pa).ACCI = PkmF(pa).ACCI - 1: IF PkmF(pa).ACCI = 0 THEN m1 = 66: MID$(pda$, 22, 1) = CHR$(0)
  IF m2 = 9 THEN
    IF MID$(pda$, 22, 1) = CHR$(3) AND m2 = 9 AND tec <> 222 AND tec <> 215 THEN m2 = 6
    IF MID$(pda$, 22, 1) = CHR$(1) AND m2 = 9 THEN m2 = 7
    IF MID$(pda$, 22, 1) = CHR$(5) AND m2 = 9 AND RND(1) < PkmF(pa).ACCI / 6 THEN m2 = 11
    IF m2 = 11 AND (tec = 94 OR tec = 196) THEN m2 = 9
  END IF
  IF m2 = 9 THEN
    t1 = tec: re = QBfuerzaGolpe(pa - 1, t1): re2 = 0
    IF t1 = 1 THEN m4 = 18
    IF t1 = 2 THEN m4 = 17
    IF t1 = 3 THEN m4 = -19
    IF t1 = 4 THEN m4 = 16
    IF t1 = 5 OR t1 = 6 OR t1 = 7 THEN m3 = 13
    IF t1 = 0 OR t1 = 1 OR t1 = 2 OR t1 = 5 OR t1 = 6 OR t1 = 7 THEN
      ani1 = 1: tpm6 = tec
      SELECT CASE tec
        CASE 72: Dinero = Dinero + ASC(MID$(pda$, 21, 1)) / 2
        CASE 212: IF RND(1) < .2 AND PkmF(pv).VELO > 35 THEN m5 = -28: ani1 = 2: PkmF(pv).VELO = PkmF(pv).VELO - 10
        CASE 40, 74: IF PkmF(pv).VELO > 35 THEN m5 = -28: ani1 = 2: PkmF(pv).VELO = PkmF(pv).VELO - 10 ELSE m5 = -56: ani1 = 0
        CASE 18, 83, 159: IF PkmF(pv).PRES > 35 THEN m5 = -36: ani1 = 2: PkmF(pv).PRES = PkmF(pv).PRES - 10 ELSE m5 = -60: ani1 = 0
        CASE 130, 138: IF PkmF(pv).DEFE > 35 THEN m5 = -20: ani1 = 2: PkmF(pv).DEFE = PkmF(pv).DEFE - 10 ELSE m5 = -52: ani1 = 0
        CASE 85: IF PkmF(pv).ATAQ > 35 THEN m5 = -25: ani1 = 2: PkmF(pv).ATAQ = PkmF(pv).ATAQ - 20 ELSE m5 = -54: ani1 = 0
        CASE 42: IF PkmF(pv).DEFE > 35 THEN m5 = -21: ani1 = 2: PkmF(pv).DEFE = PkmF(pv).DEFE - 20 ELSE m5 = -52: ani1 = 0
        CASE 115: IF PkmF(pv).ATAQ > 35 THEN m5 = -24: ani1 = 2: PkmF(pv).ATAQ = PkmF(pv).ATAQ - 10 ELSE m5 = -54: ani1 = 0
        CASE 15, 19, 20, 46, 57, 77, 86, 107, 109, 114, 172, 181, 190, 210, 233, 237: ng = RND(1) * 3 + 2: m6 = 12
        CASE 76, 80, 122: ng = 2: m6 = 12
        CASE 244: ng = 3: m6 = 12
        CASE 178: IF MID$(pdv$, 22, 1) = CHR$(0) THEN MID$(pdv$, 22, 1) = CHR$(4): m4 = -46 ELSE m4 = -19
        CASE 171: IF RND(1) < .2 AND MID$(pdv$, 22, 1) = CHR$(0) THEN MID$(pdv$, 22, 1) = CHR$(4): m5 = -46
        CASE 38, 120, 221: IF MID$(pdv$, 22, 1) = CHR$(0) THEN MID$(pdv$, 22, 1) = CHR$(3): m4 = -44: PkmF(pv).ACCI = INT(RND(1) * 5 + 2) ELSE m4 = -19
        CASE 2: IF RND(1) < .2 THEN A = 0: IF PkmF(pv).DEFE > 35 THEN m5 = -20: ani1 = 2: PkmF(pv).DEFE = PkmF(pv).DEFE - 10
        CASE 218: m4 = -19
        CASE 29, 191, 200, 225: m3 = 0: IF RND(1) < .8 AND PkmF(pv).CONF = 0 THEN PkmF(pv).CONF = INT(RND(1) * 5 + 2): m4 = -48 ELSE m4 = 16
        CASE 82
          m4 = -65
          IF pv = 1 AND PkmF(0).CONF = 0 THEN PkmF(0).CONF = 1 ELSE IF pv = 1 THEN m4 = -19
          IF pv = 2 AND PkmF(3).CONF = 0 THEN PkmF(3).CONF = 1 ELSE IF pv = 2 THEN m4 = -19
        CASE 84: IF MID$(pdv$, 22, 1) = CHR$(0) THEN MID$(pdv$, 22, 1) = CHR$(5): PkmF(pv).ACCI = INT(RND(1) * 4 + 3): m4 = -45 ELSE m4 = 16
        CASE 156, 161: IF RND(1) < .8 AND MID$(pdv$, 22, 1) = CHR$(0) THEN MID$(pdv$, 22, 1) = CHR$(5): PkmF(pv).ACCI = INT(RND(1) * 4 + 3): m4 = -45 ELSE m4 = 16
        CASE 50: IF RND(1) < .2 AND PkmF(pa).CONF = 0 THEN PkmF(pv).CONF = INT(RND(1) * 5 + 2): m5 = -48
        CASE 43, 124, 132, 197, 246: IF RND(1) < .2 AND MID$(pdv$, 22, 1) = CHR$(0) THEN MID$(pdv$, 22, 1) = CHR$(5): m5 = -45: PkmF(pv).ACCI = INT(RND(1) * 5 + 2)
        CASE 14, 99, 128, 133, 192, 216: IF RND(1) < .1 AND MID$(pdv$, 22, 1) = CHR$(0) THEN MID$(pdv$, 22, 1) = CHR$(6): m5 = -47: PkmF(pv).ACCI = INT(RND(1) * 5 + 2)
        CASE 155, 193, 201, 252: IF RND(1) < .1 AND MID$(pdv$, 22, 1) = CHR$(0) THEN MID$(pdv$, 22, 1) = CHR$(1): m5 = -44: PkmF(pv).ACCI = INT(RND(1) * 3 + 4)
        CASE 78: IF PkmF(pa).EVAD < 155 THEN m5 = 42: ani1 = 3: PkmF(pa).EVAD = PkmF(pa).EVAD + 10 ELSE m5 = 63: ani1 = 0
        CASE 97, 206, 214: IF PkmF(pa).DEFE < 155 THEN m5 = 22: ani1 = 3: PkmF(pa).DEFE = PkmF(pa).DEFE + 10 ELSE m5 = 53: ani1 = 0
        CASE 13: IF PkmF(pa).DEFE < 155 THEN m5 = 23: ani1 = 3: PkmF(pa).DEFE = PkmF(pa).DEFE + 20 ELSE m5 = 53: ani1 = 0
        CASE 96: IF PkmF(pa).CRIT < 90 THEN PkmF(pa).CRIT = PkmF(pa).CRIT + 10: ani1 = 3
        CASE 1, 44, 143, 106, 143: m5 = -67
        CASE 208, 217, 232: IF NombEnem$ = "" THEN ani1 = 4 ELSE m4 = 16
        CASE 48, 63, 223: m6 = 68: d1 = ASC(MID$(pda$, 25, 1)): d2 = ASC(MID$(pda$, 26, 1)): re2 = (d1 * 256 + d2) * .12 + 1
        CASE 23, 91: d1 = ASC(MID$(pda$, 25, 1)): d2 = ASC(MID$(pda$, 26, 1)): re2 = d1 * 256 + d2
        CASE 116, 166: IF RND(1) > .5 THEN d1 = ASC(MID$(pdv$, 25, 1)): d2 = ASC(MID$(pdv$, 26, 1)): re = d1 * 256 + d2: m4 = 69 ELSE m4 = 16
        CASE 224: d1 = ASC(MID$(pdv$, 23, 1)): d2 = ASC(MID$(pdv$, 24, 1)): re = (d1 * 256 + d2) / 2 + 1
        CASE 92: d1 = ASC(MID$(pdv$, 23, 1)): d2 = ASC(MID$(pdv$, 24, 1)): re = (d1 * 256 + d2) - 1: IF re > 50 THEN re = 50
        CASE 49, 168: IF MID$(pdv$, 22, 1) <> CHR$(3) THEN m3 = 0: m4 = 16: re = 0 ELSE IF tec = 49 THEN m5 = -67
        CASE 215, 222: IF MID$(pda$, 22, 1) <> CHR$(3) THEN m3 = 0: m4 = 16: re = 0
        CASE 209
          m3 = 70: rpp = FALSE
          FOR i = 32 TO 36
            IF rpp = FALSE AND ASC(MID$(pdv$, i, 1)) > 0 THEN
              rpp = TRUE: crpp = ASC(MID$(pdv$, i, 1)) - 4: IF crpp < 0 THEN crpp = 0
              MID$(pdv$, i, 1) = CHR$(crpp)
            END IF
          NEXT i
      END SELECT
    END IF
  END IF
  IF MID$(pda$, 22, 1) = CHR$(4) THEN m7 = 50
  IF MID$(pda$, 22, 1) = CHR$(6) THEN m7 = 49
  IF pa = 1 AND PkmF(0).CONF = 1 THEN m8 = 64
  IF pa = 2 AND PkmF(3).CONF = 1 THEN m8 = 64
  IF pa = 2 THEN m0 = -m0: m1 = -m1: m2 = -m2: m3 = -m3: m4 = -m4: m5 = -m5: m6 = -m6: m7 = -m7: m8 = -m8
  IF m0 THEN QBputMsg m0, tec: DQBcopyLayer 1, VIDEO: QBwaitAB
  IF (m1 = 4 OR m1 = 5 OR m1 = 66) AND pa = 1 THEN QBshowDataF2 pda$, pdv$, 3
  IF (m1 = -4 OR m1 = -5 OR m1 = -66) AND pa = 2 THEN QBshowDataF2 pdv$, pda$, 3
  IF m1 THEN QBputMsg m1, tec: DQBcopyLayer 1, VIDEO: QBwaitAB
  IF m2 THEN QBputMsg m2, tec
  IF ABS(m2) = 9 AND re > 0 AND ani1 = 1 THEN
    DO
      QBhit pv - 1, 0, ASC(MID$(pdv$, 1, 1)) - 1
      IF pa = 1 THEN pdv$ = MSbarPS(pda$, pdv$, pv - 1, re, -1)
      IF pa = 2 THEN pdv$ = MSbarPS(pdv$, pda$, pv - 1, re, -1)
      ng2 = ng2 + 1
      IF MID$(pdv$, 22, 1) = CHR$(2) THEN EXIT DO
    LOOP UNTIL ng2 = ng
    IF ABS(m6) = 12 THEN tpm6 = ng2
  ELSEIF ABS(m2) = 9 AND re = 0 AND ani1 = 2 THEN
    QBhit pv - 1, 1, ASC(MID$(pdv$, 1, 1)) - 1
  ELSEIF ABS(m2) = 9 AND re = 0 AND ani1 = 3 THEN
    QBhit pa - 1, 1, ASC(MID$(pda$, 1, 1)) - 1
  ELSEIF ABS(m2) = 9 AND (tec = 9 OR tec = 203) AND re < 0 THEN
    QBhit pa - 1, 0, ASC(MID$(pda$, 1, 1)) - 1
    IF pa = 1 THEN pda$ = MSbarPS(pda$, pdv$, pa - 1, ABS(re), 1)
    IF pa = 2 THEN pda$ = MSbarPS(pdv$, pda$, pa - 1, ABS(re), 1)
  ELSEIF ABS(m2) = 10 THEN
    d1 = ASC(MID$(pda$, 25, 1)): d2 = ASC(MID$(pda$, 26, 1)): re = (d1 * 256 + d2) * .12
    IF pa = 1 THEN pda$ = MSbarPS(pda$, pdv$, pa - 1, re, -1)
    IF pa = 2 THEN pda$ = MSbarPS(pdv$, pda$, pa - 1, re, -1)
  END IF
  IF pa = 1 THEN QBshowDataF2 pda$, pdv$, 3
  IF pa = 2 THEN QBshowDataF2 pdv$, pda$, 3
  DQBcopyLayer 1, VIDEO
  IF m2 <> 9 OR (m2 = 9 AND m4 = 16) OR (m2 = 9 AND re = 0) THEN QBwaitAB
  IF m3 THEN QBputMsg m3, tec: DQBcopyLayer 1, VIDEO: QBwaitAB
  IF m4 THEN QBputMsg m4, tec: DQBcopyLayer 1, VIDEO: QBwaitAB
  IF ABS(m5) = 67 THEN
    IF pa = 1 THEN pda$ = MSbarPS(pda$, pdv$, pa - 1, re / 2, 1)
    IF pa = 2 THEN pda$ = MSbarPS(pdv$, pda$, pa - 1, re / 2, 1)
  END IF
  IF m5 THEN QBputMsg m5, tec: DQBcopyLayer 1, VIDEO: QBwaitAB
  IF re2 > 0 THEN
    d1 = ASC(MID$(pda$, 23, 1)): d2 = ASC(MID$(pda$, 24, 1))
    IF pa = 1 AND (d1 OR d2) THEN pda$ = MSbarPS(pda$, pdv$, pa - 1, re2, -1)
    IF pa = 2 AND (d1 OR d2) THEN pda$ = MSbarPS(pdv$, pda$, pa - 1, re2, -1)
  END IF
  IF m6 THEN QBputMsg m6, tpm6: DQBcopyLayer 1, VIDEO: QBwaitAB
  d1 = ASC(MID$(pda$, 25, 1)): d2 = ASC(MID$(pda$, 26, 1))
  IF ABS(m7) = 50 OR ABS(m7) = 49 THEN
    IF pa = 1 THEN pda$ = MSbarPS(pda$, pdv$, pa - 1, (d1 * 256 + d2) / 10 + 1, -1)
    IF pa = 2 THEN pda$ = MSbarPS(pdv$, pda$, pa - 1, (d1 * 256 + d2) / 10 + 1, -1)
  END IF
  IF m7 THEN QBputMsg m7, tec: DQBcopyLayer 1, VIDEO: QBwaitAB
  IF ABS(m8) = 64 THEN
    IF pa = 1 THEN pda$ = MSbarPS(pda$, pdv$, pa - 1, (d1 * 256 + d2) / 8, -1): pdv$ = MSbarPS(pda$, pdv$, pv - 1, (d1 * 256 + d2) / 6, 1)
    IF pa = 2 THEN pda$ = MSbarPS(pdv$, pda$, pa - 1, (d1 * 256 + d2) / 8, -1): pdv$ = MSbarPS(pdv$, pda$, pv - 1, (d1 * 256 + d2) / 6, 1)
  END IF
  IF m8 THEN QBputMsg m8, tec: DQBcopyLayer 1, VIDEO: QBwaitAB
  IF MID$(pda$, 22, 1) = CHR$(1) OR MID$(pda$, 22, 1) = CHR$(3) THEN tec = 0
  IF tec <> 48 AND tec > 0 THEN
    A$ = MID$(pda$, 27, 5): A = INSTR(1, A$, CHR$(tec)) - 1
    b = ASC(MID$(pda$, 32 + A, 1)) - 1: IF b < 0 THEN b = 0
    MID$(pda$, 32 + A, 1) = CHR$(b)
  END IF
  IF ABS(m2) = 9 AND ani1 = 4 THEN
    IF pa = 1 THEN tec1 = -1
    IF pa = 2 THEN tec2 = -1
    EXIT SUB
  END IF
  RETURN

END SUB

SUB QBpre3
  Banco = 0
  DQBboxf 1, VX + 3, VY + 3, VX + 146, VY + 114, 127
  QBputP56 44, 16, 2
  QBdisplayTxt 0, 9
  DQBboxf 1, VX + 47, VY + 19, VX + 102, VY + 74, 127
  PKX = 144: PKY = 16: NPK = 243
  QBputP56 PKX, PKY, NPK
  DQBcopyLayer 1, VIDEO
  FOR Q = 0 TO 23
    x1 = VX + PKX + 3: x2 = VX + PKX + 58
    IF x2 > VX + 146 THEN x2 = VX + 146
    IF x1 > x2 THEN x1 = x2
    DQBboxf 1, x1, VY + 19, x2, VY + 74, 127
    PKX = PKX - 4
    QBputPF56 PKX, PKY, NPK, 0
    DQBcopyLayer 1, VIDEO
  NEXT Q
  DO: LOOP UNTIL INKEY$ = ""
  QBdisplayTxt 9, 10
  DQBboxf 1, VX + PKX + 3, VY + 19, VX + PKX + 58, VY + 74, 127
  QBputP56 44, 16, 2
  DQBcopyLayer 1, VIDEO
  QBdisplayTxt 19, 4
  DQBboxf 1, VX + 47, VY + 19, VX + 102, VY + 74, 127
  PKX = 144: PKY = 16: NPK = 1
  QBputP56 PKX, PKY, NPK
  DQBcopyLayer 1, VIDEO
  FOR Q = 0 TO 23
    x1 = VX + PKX + 3: x2 = VX + PKX + 58
    IF x2 > VX + 146 THEN x2 = VX + 146
    IF x1 > x2 THEN x1 = x2
    DQBboxf 1, x1, VY + 19, x2, VY + 74, 127
    PKX = PKX - 4
    QBputP56 PKX, PKY, NPK
    DQBcopyLayer 1, VIDEO
  NEXT Q
  DO: LOOP UNTIL INKEY$ = ""
  NombPers$ = "AQUILES"
  QBputBox 0, 0, 9, 18, 5
  QBprint 1, 10, "≠Bien! ≠Tu"
  QBprint 1, 11, "nombre es"
  QBprint 1, 12, NombPers$ + "!"
  DQBcopyLayer 1, VIDEO
  QBwaitAB
  QBdisplayTxt 26, 9
  t# = TIMER
  DO: LOOP UNTIL TIMER > t# + .3
  DQBboxf 1, VX + PKX + 3, VY + PKY + 3, VX + PKX + 58, VY + PKY + 58, 127
  QBputP56 PKX, PKY, 55
  DQBcopyLayer 1, VIDEO
  t# = TIMER
  DO: LOOP UNTIL TIMER > t# + .3
  DQBboxf 1, VX + PKX + 3, VY + PKY + 3, VX + PKX + 58, VY + PKY + 58, 127
  QBputP56 PKX, PKY, 56
  DQBcopyLayer 1, VIDEO
  t# = TIMER
  DO: LOOP UNTIL TIMER > t# + .3
  DQBboxf 1, VX + PKX + 3, VY + PKY + 3, VX + PKX + 58, VY + PKY + 58, 127
  DQBcopyLayer 1, VIDEO
  DO: LOOP UNTIL INKEY$ = ""
END SUB

SUB QBprevLucha (QBn, QBac)
  IF QBac <> 31 THEN
    ap& = Persona(QBn).x2 + Persona(QBn).y1 + 2: ape& = 0
    IF QBac = 22 OR QBac = 48 THEN ape& = 1
    A$ = "  ": GET #8, ap& + ape&, A$: d1 = ASC(MID$(A$, 1, 1)): d2 = ASC(MID$(A$, 2, 1))
    A$ = " ": GET #9, Persona(QBn).x1 * 12 + 16985 + 11, A$
    NumEntren = d1 * 256 + d2 + ASC(A$)
    A$ = MSentrenData(NumEntren)
    d1 = ASC(MID$(A$, 14, 1)): d2 = ASC(MID$(A$, 15, 1)): a1 = d1 * 256 + d2: IF a1 = 0 THEN a1 = -1 ELSE a1 = a1 + 10
    d1 = ASC(MID$(A$, 16, 1)): d2 = ASC(MID$(A$, 17, 1)): a2 = d1 * 256 + d2: IF a2 = 0 THEN a2 = -1 ELSE a2 = a2 + 10
    d1 = ASC(MID$(A$, 18, 1)): d2 = ASC(MID$(A$, 19, 1)): a3 = d1 * 256 + d2: IF a3 = 0 THEN a3 = -1 ELSE a3 = a3 + 10
    d1 = ASC(MID$(A$, 20, 1)): d2 = ASC(MID$(A$, 21, 1)): a4 = d1 * 256 + d2: IF a4 = 0 THEN a4 = -1 ELSE a4 = a4 + 10
    d1 = ASC(MID$(A$, 22, 1)): d2 = ASC(MID$(A$, 23, 1)): a5 = d1 * 256 + d2: IF a5 = 0 THEN a5 = -1 ELSE a5 = a5 + 10
    d1 = ASC(MID$(A$, 24, 1)): d2 = ASC(MID$(A$, 25, 1)): a6 = d1 * 256 + d2: IF a6 = 0 THEN a6 = -1 ELSE a6 = a6 + 10
    QBwritePkmTMP a1, a2, a3, a4, a5, a6
    QBfightEntren
    IF ACCION$ = "PERDIO" THEN Persona(QBn).x2 = Persona(QBn).x2 + 3 + ape&: QBgoToCntPkm ELSE Persona(QBn).x2 = Persona(QBn).x2 + 13 + ape&
    QBsetPal "ESPECIAL.PAL"
  ELSE
    A$ = "  ": GET #8, Persona(QBn).y1 + Persona(QBn).x2 + 2, A$
    d1 = ASC(MID$(A$, 1, 1)): d2 = ASC(MID$(A$, 2, 1))
    QBwritePkmTMP -2, d1, d2, -1, -1, -1
    QBfightPokeSalv
    A$ = "  ": GET #8, Persona(QBn).y1 + Persona(QBn).x2 + 4, A$
    IF NombEnem$ = "PERDIO" THEN d1 = 1 ELSE d1 = 2
    Persona(QBn).x2 = ASC(MID$(A$, d1, 1))
    QBsetPal "ESPECIAL.PAL"
  END IF
END SUB

SUB QBprint (QBx9, QBy9, QBt9$)
  FOR j = 1 TO LEN(QBt9$)
    n = Conver1(ASC(MID$(QBt9$, j, 1)))
    x = (QBx9 + j) * 8 - 8
    y = QBy9 * 8
    QBput8 x, y, n, Banco
  NEXT j
END SUB

SUB QBput16 (QBx11, QBy11, QBn11)
  DQBsetTransPut
  AW = AddWater(QBn11)
  IF AW < 0 THEN QBn11 = ABS(AW)
  IF AW = 1 THEN
    ap& = AguaT(TipoAgua, AguaST)
    ap& = ap& * 260 + 1
    A$ = SPACE$(260)
    GET #12, ap&, A$
    DQBput 1, VX + QBx11 + 3, VY + QBy11 + 3, VARSEG(A$), SADD(A$)
  END IF
  ap& = QBn11
  ap& = ap& * 260 + 1
  A$ = SPACE$(260)
  GET #12, ap&, A$
  DQBput 1, VX + QBx11 + 3, VY + QBy11 + 3, VARSEG(A$), SADD(A$)
END SUB

SUB QBput8 (QBx, QBy, QBn, Bnc)
  IF QBn = 0 THEN EXIT SUB
  DQBsetSolidPut
  ap& = QBn + Bnc * 256: ap& = ap& * 68 + 1: A$ = SPACE$(68)
  GET #11, ap&, A$
  DQBput 1, QBx + 68, QBy + 73, VARSEG(A$), SADD(A$)
END SUB

SUB QBputBox (QBt8, QBx8, QBy8, QBlx8, QBly8)
  IF QBt8 = 1 THEN QBt8 = 153 ELSE QBt8 = 159
  FOR y8 = 0 TO QBly8 - 1
    FOR x8 = 0 TO QBlx8 - 1
      IF QBt8 = 153 THEN QBn8 = -71 ELSE QBn8 = -77
      IF x8 = 0 AND y8 = 0 THEN QBn8 = 0
      IF x8 > 0 AND x8 < QBlx8 - 1 AND (y8 = 0 OR y8 = QBly8 - 1) THEN QBn8 = 1
      IF x8 = QBlx8 - 1 AND y8 = 0 THEN QBn8 = 2
      IF (x8 = 0 OR x8 = QBlx8 - 1) AND y8 > 0 AND y8 < QBly8 - 1 THEN QBn8 = 3
      IF x8 = 0 AND y8 = QBly8 - 1 THEN QBn8 = 4
      IF x8 = QBlx8 - 1 AND y8 = QBly8 - 1 THEN QBn8 = 5
      x = (QBx8 + x8) * 8
      y = (QBy8 + y8) * 8
      QBput8 x, y, QBt8 + QBn8, Banco
    NEXT x8
  NEXT y8
END SUB

SUB QBputCursor (QBn)
  QBput8 Cursor(QBn).VX * 8, Cursor(QBn).VY * 8, 82, Banco
  IF QBn < 5 THEN
    IF Cursor(QBn).VX = Cursor(QBn + 1).VX AND Cursor(QBn).VY = Cursor(QBn + 1).VY THEN QBput8 Cursor(QBn + 1).VX * 8, Cursor(QBn + 1).VY * 8, Cursor(QBn + 1).SP, Banco
  END IF
  QBput8 Cursor(QBn).NX * 8, Cursor(QBn).NY * 8, Cursor(QBn).SP, Banco
  Cursor(QBn).VX = Cursor(QBn).NX
  Cursor(QBn).VY = Cursor(QBn).NY
END SUB

SUB QBputEscena
  FlorST = FlorST + 1: IF FlorST = 4 THEN FlorST = 0
  AguaST = AguaST + 1: IF AguaST = 4 THEN AguaST = 0
  FOR p = 1 TO 10
    IF Persona(p).t = 4 THEN QBmovPrs p
    IF Persona(p).e THEN : IF Persona(p).c = 0 THEN QBmir p ELSE QBcam p
  NEXT p
  A = -1: QBmovy A
  QBdisplayMap
  FOR p = 1 TO 10
    IF Persona(p).e THEN QBputPrs p
    IF Objeto(p).e THEN QBputObj p
  NEXT p
  QBputObj 0
  IF NOT Invicibilidad AND A = -1 THEN QBputPrs 0
  IF PalOff > 0 THEN PalOff = PalOff - 1: IF PalOff = 0 THEN QBsetPal "ESPECIAL.PAL"
END SUB

SUB QBputMsg (nm, nt)
  IF nm = 0 THEN EXIT SUB
  IF nm > 0 THEN pq = 0: pd$ = LPoke(NumPkmF) ELSE pq = 1: pd$ = LPoke(NumPkmR + 6)
  nm = ABS(nm)
  n$ = RTRIM$(MID$(pd$, 2, 10))
  t$ = RTRIM$(MID$(NombObj(nt + 256), 1, 12))
  SELECT CASE nm
    CASE 1 TO 9, 11, 12, 44 TO 51, 64 TO 66, 68, 70: IF pq = 0 THEN r1$ = "≠" + n$ ELSE r1$ = "≠Enem. " + n$
    CASE 10: r1$ = "≠Tan confundido"
    CASE 13: r1$ = "≠Es un golpe"
    CASE 16: r1$ = "≠Pero fall¢!"
    CASE 17: r1$ = "≠No es muy"
    CASE 18: r1$ = "≠Es s£per"
    CASE 19: r1$ = "≠No afecta a"
    CASE 20 TO 23, 52, 53: r1$ = "≠DEFENSA de"
    CASE 24 TO 27, 54, 55: r1$ = "≠ATAQUE de"
    CASE 28 TO 31, 56, 57: r1$ = "≠VELOCIDAD de"
    CASE 32 TO 35, 58, 59: r1$ = "≠ESPECIAL de"
    CASE 36 TO 39, 60, 61: r1$ = "≠PRECISIíN de"
    CASE 40 TO 43, 62, 63: r1$ = "≠EVACIíN de"
    CASE 67: r1$ = "≠Tom¢ vida de"
    CASE 69: r1$ = "≠KO en 1 ataque!"
  END SELECT
  SELECT CASE nm
    CASE 1: r2$ = "ya no tiene m†s"
    CASE 2, 6, 7: r2$ = "est†"
    CASE 3, 66: r2$ = "ya no est†"
    CASE 4, 5: r2$ = "se ha"
    CASE 8: r2$ = "no puede ver"
    CASE 9: r2$ = "us¢"
    CASE 10: r2$ = "que se golpe¢"
    CASE 11: r2$ = "est† totalmente"
    CASE 12: r2$ = "atac¢"
    CASE 13: r2$ = "cr°tico!"
    CASE 17, 18: r2$ = "efectivo!"
    CASE 19, 67: IF pq = 0 THEN r2$ = n$ + "!" ELSE r2$ = "enem. " + n$ + "!"
    CASE 20 TO 43, 52 TO 63: IF pq = 0 THEN r2$ = n$ ELSE r2$ = "enem. " + n$
    CASE 44 TO 48: r2$ = "qued¢"
    CASE 49, 50: r2$ = "es da§ado por"
    CASE 51: r2$ = "es re-golpeado!"
    CASE 64: r2$ = "est† perdiendo"
    CASE 65: r2$ = "fue infectado!"
    CASE 68: r2$ = "es re-golpeado!"
    CASE 70: r2$ = "redujo PP de"
  END SELECT
  SELECT CASE nm
    CASE 1: r3$ = "Puntos de Poder!"
    CASE 2, 3, 48: r3$ = "confundido!"
    CASE 4: r3$ = "despertado!"
    CASE 5: r3$ = "descongelado!"
    CASE 6, 44: r3$ = "dormido!"
    CASE 7, 44: r3$ = "congelado!"
    CASE 8: r3$ = "a su rival!"
    CASE 9: r3$ = t$ + "!"
    CASE 10: r3$ = "solo!"
    CASE 11, 45, 66: r3$ = "paralizado!"
    CASE 12: nv$ = LTRIM$(STR$(nt)): IF nt > 1 THEN r3$ = nv$ + " veces!" ELSE r3$ = nv$ + " vez!"
    CASE 20, 24, 28, 32, 36, 40: r3$ = "baj¢!"
    CASE 21, 25, 29, 33, 37, 41: r3$ = "baj¢ mucho!"
    CASE 22, 26, 30, 34, 38, 42: r3$ = "subi¢!"
    CASE 23, 27, 31, 35, 39, 43: r3$ = "subi¢ mucho!"
    CASE 46: r3$ = "envenenado!"
    CASE 47: r3$ = "quemado!"
    CASE 49: r3$ = "la quemadura!"
    CASE 50: r3$ = "el veneno!"
    CASE 52, 54, 56, 58, 60, 62: r3$ = "no bajar† m†s!"
    CASE 53, 55, 57, 59, 61, 63: r3$ = "no subir† m†s!"
    CASE 64: r3$ = "energ°a!"
    CASE 70: r3$ = "enemigo!"
  END SELECT
  QBprint 0, 11, SPACE$(18)
  QBprint 0, 12, SPACE$(18)
  QBprint 0, 13, SPACE$(18)
  QBprint 0, 11, r1$
  QBprint 0, 12, r2$
  QBprint 0, 13, r3$
END SUB

SUB QBputObj (QBno)
  A$ = " ": ap& = Objeto(QBno).b + (Region - 1) * 256 + 16467
  GET #9, ap&, A$
  e = ASC(A$)
  DQBsetTransPut
  x = Objeto(QBno).x - Persona(0).x + 4
  y = Objeto(QBno).y - Persona(0).y + 3
  l = Objeto(QBno).i
  IF e AND Objeto(QBno).v THEN
    QBputV16 x * 16, y * 16 - 4, l
    ns = MShierba(NumMapa, Objeto(QBno).x, Objeto(QBno).y)
    IF ns THEN QBputV16 x * 16, y * 16 - 1, ns
  END IF
END SUB

SUB QBputP16 (QBx, QBy, QBn)
  DQBsetTransPut
  ap& = QBn: ap& = ap& * 260 + 1: A$ = SPACE$(260)
  GET #13, ap&, A$
  DQBput 1, QBx + 68, QBy + 73, VARSEG(A$), SADD(A$)
END SUB

SUB QBputP56 (QBx, QBy, QBn)
  DQBsetTransPut
  OPEN Direccion$ + "PEOPLE56.BIN" FOR BINARY AS #1
  ap& = QBn: ap& = ap& * 3140 + 1: A$ = SPACE$(3140)
  GET #1, ap&, A$
  DQBput 1, QBx + 68, QBy + 73, VARSEG(A$), SADD(A$)
  CLOSE #1
END SUB

SUB QBputPB56 (QBx, QBy, QBn, QBc)
  DQBsetTransPut
  OPEN Direccion$ + "PKM-AT.BIN" FOR BINARY AS #1
  ap& = QBn: ap& = ap& * 3140 + 1: A$ = SPACE$(3140)
  GET #1, ap&, A$
  IF QBc = 0 THEN DQBput 1, QBx + 68, QBy + 73, VARSEG(A$), SADD(A$)
  IF QBc > 0 THEN DQBhPut 1, QBx + 68, QBy + 73, VARSEG(A$), SADD(A$), QBc
  CLOSE #1
END SUB

SUB QBputPB56E (QBx, QBy, QBn, QBe)
  DQBsetTransPut
  OPEN Direccion$ + "PKM-AT.BIN" FOR BINARY AS #1
  ap& = QBn: ap& = ap& * 3140 + 1: A$ = SPACE$(3140)
  GET #1, ap&, A$
  IF QBe = 0 THEN DQBput 1, QBx + 68, QBy + 73, VARSEG(A$), SADD(A$)
  IF QBe > 0 THEN DQBrPut 1, QBx + 68, QBy + 73, VARSEG(A$), SADD(A$), 0, QBe
  CLOSE #1
END SUB

SUB QBputPF56 (QBx, QBy, QBn, QBc)
  DQBsetTransPut
  OPEN Direccion$ + "PKM-AD.BIN" FOR BINARY AS #1
  ap& = QBn: ap& = ap& * 3140 + 1: A$ = SPACE$(3140)
  GET #1, ap&, A$
  IF QBc = 0 THEN DQBput 1, QBx + 68, QBy + 73, VARSEG(A$), SADD(A$)
  IF QBc > 0 THEN DQBhPut 1, QBx + 68, QBy + 73, VARSEG(A$), SADD(A$), QBc
  CLOSE #1
END SUB

SUB QBputPF56E (QBx, QBy, QBn, QBe)
  DQBsetTransPut
  OPEN Direccion$ + "PKM-AD.BIN" FOR BINARY AS #1
  ap& = QBn: ap& = ap& * 3140 + 1: A$ = SPACE$(3140)
  GET #1, ap&, A$
  IF QBe = 0 THEN DQBput 1, QBx + 68, QBy + 73, VARSEG(A$), SADD(A$)
  IF QBe > 0 THEN DQBrPut 1, QBx + 68, QBy + 73, VARSEG(A$), SADD(A$), 0, QBe
  CLOSE #1
END SUB

SUB QBputPrs (p)
  DQBsetTransPut
  x = Persona(p).x - Persona(0).x + 4
  y = Persona(p).y - Persona(0).y + 3
    d2 = (Persona(p).p - (Persona(p).p MOD 4)) / 4
    'IF Persona(p).p = 0 OR Persona(p).p = 2 THEN d2 = 0
    'IF Persona(p).p = 4 OR Persona(p).p = 6 THEN d2 = 1
    'IF Persona(p).p = 8 OR Persona(p).p = 10 THEN d2 = 2
    'IF Persona(p).p = 12 OR Persona(p).p = 14 THEN d2 = 3
    IF CaminoLibre(Persona(p).x, Persona(p).y, d2, p) = 2 THEN sal = TRUE: QBputV16 x * 16, y * 16 - 4, 242
  QBputP16 x * 16, y * 16 - 4 + sal * 4, Persona(p).s * 16 + Persona(p).p
  ns = MShierba(NumMapa, Persona(p).x, Persona(p).y)
  IF ns THEN QBputV16 x * 16, y * 16 - 1, ns + (Persona(p).p MOD 2)
END SUB

SUB QBputV16 (QBx, QBy, QBn)
  DQBsetTransPut
  OPEN Direccion$ + "VARIOS16.BIN" FOR BINARY AS #1
  ap& = QBn: ap& = ap& * 260 + 1: A$ = SPACE$(260)
  GET #1, ap&, A$
  DQBput 1, QBx + 68, QBy + 73, VARSEG(A$), SADD(A$)
  CLOSE #1
END SUB

SUB QBreadTMP
  SEEK #9, 319
  FOR p = 1 TO 10
    IF Persona(p).t = 4 THEN
      ap = Persona(p).x1 * 12 + 16985
      A$ = SPACE$(12)
      GET #9, ap, A$
      Persona(p).e = ASC(MID$(A$, 2, 1))
      Persona(p).x = ASC(MID$(A$, 3, 1))
      Persona(p).y = ASC(MID$(A$, 4, 1))
      Persona(p).c = ASC(MID$(A$, 5, 1))
      Persona(p).s = ASC(MID$(A$, 6, 1))
      Persona(p).p = ASC(MID$(A$, 7, 1))
      A = ASC(MID$(A$, 8, 1))
      b = ASC(MID$(A$, 9, 1))
      Persona(p).y1 = A * 256 + b
      Persona(p).x2 = ASC(MID$(A$, 10, 1))
      Persona(p).y2 = ASC(MID$(A$, 11, 1))
      A$ = "   "
      GET #8, Persona(p).y2 + Persona(p).y1 + 1, A$
      A = ASC(MID$(A$, 1, 1))
      b = ASC(MID$(A$, 2, 1))
      Persona(p).di = A * 256 + b
      Persona(p).rn = ASC(MID$(A$, 3, 1))
    END IF
  NEXT p
END SUB

FUNCTION QBrecivirPoke$ (l&)
  OPEN Direccion$ + "POKEMONS.BIN" FOR BINARY AS #1
    pd$ = SPACE$(53): GET #1, l& * 53 + 1, pd$
  CLOSE #1
  s$ = QBsumarPoke(pd$)
  QBrecivirPoke$ = s$
END FUNCTION

SUB QBrefreshScreen
  QBdisplayMap
  FOR p = 0 TO 10
    IF Invicibilidad = 0 AND p = 0 THEN QBputPrs p
    IF p > 0 AND Persona(p).e = 1 THEN QBputPrs p
    IF Objeto(p).e THEN QBputObj p
  NEXT p
  DQBcopyLayer 1, VIDEO
END SUB

SUB QBrestorePkm (QBtr)
  IF QBtr = 0 THEN
    QBfadeToWhite
    QBsetPal "ESPECIAL.PAL"
  ELSEIF QBtr = 1 THEN
    QBfadeToWhite
  ELSEIF QBtr > 1 THEN
    IF QBtr = 2 THEN x = 43: y = 17
    IF QBtr = 3 THEN x = 75: y = 28
    IF QBtr = 4 THEN x = 27: y = 12
    pd$ = LPoke(1): IF ASC(MID$(pd$, 1, 1)) > 0 THEN p1 = 1
    pd$ = LPoke(2): IF ASC(MID$(pd$, 1, 1)) > 0 THEN p1 = 2
    pd$ = LPoke(3): IF ASC(MID$(pd$, 1, 1)) > 0 THEN p1 = 3
    pd$ = LPoke(4): IF ASC(MID$(pd$, 1, 1)) > 0 THEN p1 = 4
    pd$ = LPoke(5): IF ASC(MID$(pd$, 1, 1)) > 0 THEN p1 = 5
    pd$ = LPoke(6): IF ASC(MID$(pd$, 1, 1)) > 0 THEN p1 = 6
    SP = 244: GOSUB SubPutBall
    DO
      r = r + 1
      SELECT CASE r
        CASE 100: SP = 245: GOSUB SubPutBall
        CASE 200: SP = 246: GOSUB SubPutBall
        CASE 400: SP = 245: GOSUB SubPutBall
        CASE 500: SP = 244: GOSUB SubPutBall
      END SELECT
      ink$ = INKEY$
      IF r = 600 THEN r = 0: c = c + 1
    LOOP UNTIL c = 6
  END IF
  FOR i = 1 TO 6
    pd$ = LPoke(i)
    IF ASC(MID$(pd$, 1, 1)) > 0 THEN
      MID$(pd$, 22, 1) = CHR$(0)
      MID$(pd$, 23, 2) = MID$(pd$, 25, 2)
      MID$(pd$, 32, 5) = MID$(pd$, 37, 5)
    END IF
    SPoke i, pd$
  NEXT i
  EXIT SUB

SubPutBall:
  IF p1 > 0 THEN QBputV16 x, y, SP
  IF p1 > 1 THEN QBputV16 x + 6, y, SP
  IF p1 > 2 THEN QBputV16 x, y + 4, SP
  IF p1 > 3 THEN QBputV16 x + 6, y + 4, SP
  IF p1 > 4 THEN QBputV16 x, y + 8, SP
  IF p1 > 5 THEN QBputV16 x + 6, y + 8, SP
  DQBcopyLayer 1, VIDEO
  RETURN

END SUB

SUB QBretiObj (pq, tp, np)
  IF tp = 1 THEN
    QBprint 1, 11, SPACE$(16): QBprint 1, 12, SPACE$(16)
    IF prsq = 0 THEN
      pd$ = LPoke(np)
      QBprint 1, 11, "≠Para, vuelve!"
      QBprint 1, 12, "≠" + RTRIM$(MID$(pd$, 2, 10)) + "!"
      x = 0: y = 24: nmp = ASC(MID$(pd$, 1, 1)) - 1
    END IF
    IF pq = 1 THEN
      pd$ = LPoke(np + 6)
      QBprint 1, 11, RTRIM$(NombEnem$) + " sac¢"
      QBprint 1, 12, "a " + RTRIM$(MID$(pd$, 2, 10)) + Bb$
      x = 88: y = 0: nmp = ASC(MID$(pd$, 1, 1)) - 1
    END IF
    DQBsetClipBox VX + x + 3, VY + y + 3, VX + x + 58, VY + y + 58
    x2 = 100
    DO
      DQBboxf 1, VX + x + 3, VY + y + 3, VX + x + 58, VY + y + 58, 127
      x2 = x2 - 5: y2 = y2 + 2
      QBputPB56E x, y + y2, nmp, x2
      DQBcopyLayer 1, VIDEO
    LOOP UNTIL x2 <= 30
    DQBsetClipBox VX + 3, VY + 3, VX + 146, VY + 114
    DQBboxf 1, VX + x + 3, VY + y + 3, VX + x + 58, VY + y + 58, 127
    DQBcopyLayer 1, VIDEO
  END IF
  IF tp = 0 THEN
    IF pq = 0 THEN x = 0: y = 24: px = -1
    IF pq = 1 THEN x = 88: y = 0: px = 1
    x2 = x
    FOR i = 0 TO 55 STEP 4
      DQBboxf 1, VX + x + 3, VY + y + 3, VX + x + 58, VY + y + 58, 127
      x2 = x2 + px * 4
      QBputP56 x2, y, np
      DQBcopyLayer 1, VIDEO
    NEXT i
    DQBboxf 1, VX + x + 3, VY + y + 3, VX + x + 58, VY + y + 58, 127
    DQBcopyLayer 1, VIDEO
  END IF
  DQBwait 10
END SUB

FUNCTION QBrevisarMochila (Obj)
  FOR i = 0 TO 19
    IF MID$(ContMoch$, i * 2 + 1, 1) = CHR$(Obj) THEN QBrevisarMochila = 1 + i: EXIT FUNCTION
  NEXT i
  FOR i = 0 TO 9
    IF MID$(ContMoch$, i + 41, 1) = CHR$(Obj) THEN QBrevisarMochila = 101 + i: EXIT FUNCTION
  NEXT i
  FOR i = 0 TO 29
    IF MID$(ContMoch$, i * 2 + 51, 1) = CHR$(Obj) THEN QBrevisarMochila = 201 + i: EXIT FUNCTION
  NEXT i
END FUNCTION

SUB QBsacarObjeto
  QBputBox 0, 0, 0, 18, 9
  QBshowObjPC
  Cursor(2).NX = 1: Cursor(2).NY = 1: Cursor(2).VX = 1: Cursor(2).VY = 1: Cursor(2).SP = 87
  QBprint 1, 10, "®QuÇ quieres    "
  QBprint 1, 11, "retirar?        "
  QBputCursor 2
  DQBcopyLayer 1, VIDEO
  DO
    ink$ = INKEY$
    IF ink$ = Barr$ AND Cursor(2).NY > 1 THEN Cursor(2).NY = Cursor(2).NY - 1: QBputCursor 2: ink$ = "": DQBcopyLayer 1, VIDEO
    IF ink$ = Baba$ AND Cursor(2).NY < 7 AND Cursor(2).NY < OpSal THEN Cursor(2).NY = Cursor(2).NY + 1: QBputCursor 2: ink$ = "": DQBcopyLayer 1, VIDEO
    IF ink$ = Barr$ AND Cursor(2).NY = 1 AND IndexPC > 0 THEN IndexPC = IndexPC - 1: QBshowObjPC: DQBcopyLayer 1, VIDEO
    IF ink$ = Baba$ AND Cursor(2).NY = 7 AND Cursor(2).NY < OpSal THEN IndexPC = IndexPC + 1: QBshowObjPC: DQBcopyLayer 1, VIDEO
    IF ink$ = Ba$ AND Cursor(2).NY = OpSal THEN EXIT DO
    IF ink$ = Ba$ THEN GOSUB SubSacObj
  LOOP UNTIL ink$ = Bb$
  QBputBox 0, 0, 0, 15, 6
  QBprint 2, 1, "SACAR OBJETO"
  QBprint 2, 2, "DEJAR OBJETO"
  QBprint 2, 3, "TIRAR OBJETO"
  QBprint 2, 4, "DESCONEXIíN"
  QBprint 1, 10, "®QuÇ quieres    "
  QBprint 1, 11, "hacer?          "
  Cursor(2).SP = 0
  QBputCursor 1
  DQBcopyLayer 1, VIDEO
  EXIT SUB

SubSacObj:
  NumSlot1 = IndexPC + Cursor(2).NY - 1
  No = ASC(MID$(ContPC$, NumSlot1 * 2 + 1, 1))
  ah = ABS(BolPObj(No))
  IF ah = 0 THEN LO$ = MID$(ContMoch$, 1, 40)
  IF ah = 2 THEN LO$ = MID$(ContMoch$, 51, 60)
  IF ah = 0 OR ah = 2 THEN
    GOSUB SubGetCant3
    IF g = 0 THEN GOTO SubFinSac
    b$ = CHR$(No)
    FOR e = 0 TO LEN(LO$) / 2 - 1
      e$ = MID$(LO$, e * 2 + 1, 1)
      c = ASC(MID$(LO$, e * 2 + 2, 1))
      IF e$ = b$ AND c < 100 - g THEN
        MID$(LO$, e * 2 + 2, 1) = CHR$(c + g)
        EXIT FOR
      ELSEIF e$ = CHR$(0) THEN
        MID$(LO$, e * 2 + 1, 2) = b$ + CHR$(g)
        EXIT FOR
      END IF
      IF e = LEN(LO$) / 2 - 1 THEN e$ = "NO"
    NEXT e
    IF LEN(e$) = 1 THEN
      IF ah = 0 THEN MID$(ContMoch$, 1, 40) = LO$
      IF ah = 2 THEN MID$(ContMoch$, 51, 60) = LO$
      c = ASC(MID$(ContPC$, NumSlot1 * 2 + 2, 1))
      c = c - g
      MID$(ContPC$, NumSlot1 * 2 + 2, 1) = CHR$(c)
      IF c = 0 THEN MID$(ContPC$, NumSlot1 * 2 + 1, 1) = CHR$(0): ContPC$ = QBordCad(ContPC$, 2)
      QBprint 1, 10, "El objeto fuÇ   "
      QBprint 1, 11, "retirado.       "
      DQBcopyLayer 1, VIDEO
      QBwaitAB
      QBputBox 0, 0, 0, 18, 9
      QBshowObjPC
      QBputCursor 2
      DQBcopyLayer 1, VIDEO
    END IF
  ELSE
    FOR i = 0 TO 9
      A$ = MID$(ContMoch$, i + 41, 1)
      IF A$ = CHR$(0) THEN
        MID$(ContMoch$, i + 41, 1) = CHR$(No)
        MID$(ContPC$, NumSlot1 * 2 + 1, 1) = CHR$(0)
        ContPC$ = QBordCad(ContPC$, 2)
        EXIT FOR
      END IF
      IF i = 9 THEN A$ = "NO"
    NEXT i
    IF LEN(A$) = 1 THEN
      QBprint 1, 10, "Objeto retirado."
      QBprint 1, 11, "                "
      DQBcopyLayer 1, VIDEO
      QBwaitAB
      QBshowObjPC
    END IF
  END IF
SubFinSac:
  QBprint 1, 10, "®QuÇ quieres    "
  QBprint 1, 11, "retirar?        "
  QBputCursor 2
  DQBcopyLayer 1, VIDEO
  RETURN

SubGetCant3:
  g = 1
  QBprint 1, 10, "                "
  g$ = LTRIM$(STR$(g))
  g$ = SPACE$(2 - LEN(g$)) + g$
  QBprint 1, 11, "®Cu†ntos?   *" + g$
  DQBcopyLayer 1, VIDEO
  m = ASC(MID$(ContPC$, NumSlot1 * 2 + 2, 1))
  DO
    ink$ = INKEY$
    IF ink$ = Bb$ THEN g = 0: EXIT DO
    IF ink$ = Barr$ THEN
      g = g + 1: IF g = m + 1 THEN g = 1
      g$ = LTRIM$(STR$(g))
      g$ = SPACE$(2 - LEN(g$)) + g$
      QBprint 1, 11, "®Cu†ntos?   *" + g$
      DQBcopyLayer 1, VIDEO
    END IF
    IF ink$ = Baba$ THEN
      g = g - 1: IF g = 0 THEN g = m
      g$ = LTRIM$(STR$(g))
      g$ = SPACE$(2 - LEN(g$)) + g$
      QBprint 1, 11, "®Cu†ntos?   *" + g$
      DQBcopyLayer 1, VIDEO
    END IF
  LOOP UNTIL ink$ = Ba$
  RETURN

END SUB

SUB QBseeMenu1
  IF Repelente > 0 THEN
    QBputBox 1, 0, 0, 7, 4
    QBprint 1, 1, "REPEL"
    QBprint 1, 2, STR$(Repelente)
  END IF
  IF Entrada AND TiempoSafari THEN
    QBputBox 1, 0, 10, 8, 4
    QBprint 1, 11, "TIEMPO"
    QBprint 1, 12, STR$(TiempoSafari)
  END IF
  A = 6
  IF TPokedex THEN A = A + 1
  IF TPokemon THEN A = A + 1
  IF TMapa THEN A = A + 1
  QBputBox 1, 8, 0, 10, A
  A = 1
  IF TPokedex THEN QBprint 10, A, "POKêDEX": A = A + 1
  IF TPokemon THEN QBprint 10, A, "POKêMON": A = A + 1
  IF TMapa THEN QBprint 10, A, "MAPA": A = A + 1
  QBprint 10, A, NombPers$: A = A + 1
  QBprint 10, A, "MOCHILA": A = A + 1
  QBprint 10, A, "GUARDAR": A = A + 1
  QBprint 10, A, "SALIR": A = A + 1
  Cursor(0).NX = 9: Cursor(0).NY = 1: Cursor(0).VX = 9: Cursor(0).VY = 1: Cursor(0).SP = 87
  QBputCursor 0
  DQBcopyLayer 1, VIDEO
  DO
    ink$ = INKEY$
    IF ink$ = Barr$ AND Cursor(0).NY > 1 THEN Cursor(0).NY = Cursor(0).NY - 1: QBputCursor 0: DQBcopyLayer 1, VIDEO
    IF ink$ = Baba$ AND Cursor(0).NY < A - 1 THEN Cursor(0).NY = Cursor(0).NY + 1: QBputCursor 0: DQBcopyLayer 1, VIDEO
    IF ink$ = Ba$ THEN
      IF Cursor(0).NY = 1 AND TPokedex > 0 THEN QBverPokeDex: EXIT DO
      IF Cursor(0).NY = 1 AND TPokedex = 0 AND TPokemon > 0 THEN QBverPkm 0: EXIT DO
      IF Cursor(0).NY = 1 AND TPokedex = 0 AND TPokemon = 0 AND TMapa > 0 THEN QBverMapa: EXIT DO
      IF Cursor(0).NY = 2 AND TPokedex = 0 AND TPokemon > 0 AND TMapa > 0 THEN QBverMapa: EXIT DO
      IF Cursor(0).NY = 2 AND TPokedex > 0 AND TPokemon > 0 THEN QBverPkm 0: EXIT DO
      IF Cursor(0).NY = 2 AND TPokedex > 0 AND TPokemon = 0 AND TMapa > 0 THEN QBverMapa: EXIT DO
      IF Cursor(0).NY = 3 AND TPokedex > 0 AND TPokemon > 0 AND TMapa > 0 THEN QBverMapa: EXIT DO
      IF Cursor(0).NY = A - 4 THEN QBverMiEstado: EXIT DO
      IF Cursor(0).NY = A - 3 THEN QBverMochila: EXIT DO
      IF Cursor(0).NY = A - 2 THEN
        QBputBox 1, 0, A - 1, 14, 4
        QBprint 1, A, "GUARDANDO..."
        DQBcopyLayer 1, VIDEO
        FinT = TIMER
        IF FinT < IniT THEN FinT = FinT + 86400
        TJ! = TJug + FinT - IniT
        la! = TJ! MOD 60
        TJ! = (TJ! - la!) / 60
        nm! = TJ! MOD 60
        nh! = (TJ! - nm!) / 60
        QBwriteTMP
        OPEN "POKELATI.SAV" FOR BINARY AS #1
        A$ = NombPers$ + SPACE$(7 - LEN(NombPers$)): PUT #1, , A$
        A$ = CHR$(MedKanto): PUT #1, , A$
        A$ = CHR$(MedJohto): PUT #1, , A$
        A$ = CHR$(MedArgos): PUT #1, , A$
        A$ = CHR$(TPokedex): PUT #1, , A$
        A$ = CHR$(TPokemon): PUT #1, , A$
        A$ = CHR$(TMapa): PUT #1, , A$
        A$ = CHR$(NPokeAtra): PUT #1, , A$
        A$ = CHR$(NPokeVist): PUT #1, , A$
        A$ = CHR$(Persona(0).x): PUT #1, , A$
        A$ = CHR$(Persona(0).y): PUT #1, , A$
        A$ = CHR$(Region): PUT #1, , A$
        A$ = CHR$(Lugar): PUT #1, , A$
        A$ = CHR$(NumMapa - (Region - 1) * 100): PUT #1, , A$
        A$ = CHR$(NumZona - (Region - 1) * 256): PUT #1, , A$
        A$ = CHR$(nh!): PUT #1, , A$
        A$ = CHR$(nm!): PUT #1, , A$
        A$ = LTRIM$(STR$(Dinero))
        A$ = SPACE$(6 - LEN(A$)) + A$: PUT #1, , A$
        A$ = MID$(PkmVA$, 1, 251)
        PUT #1, , A$
        PUT #1, , ContMoch$
        PUT #1, , ContPC$
        PUT #1, , UltCntPkm$
        SEEK #9, 1
        SEEK #1, 517
        FOR i = 1 TO 104
          A$ = SPACE$(311)
          GET #9, , A$
          PUT #1, , A$
        NEXT i
        CLOSE #1
        EXIT DO
      END IF
      IF Cursor(0).NY = A - 1 THEN EXIT DO
    END IF
  LOOP UNTIL ink$ = Bb$
END SUB

FUNCTION QBselecPoke (Cur, Des)
  QBputCursor Cur + 1
  QBputCursor Cur
  DQBcopyLayer 1, VIDEO
  rr = 59
  DO
    ink$ = INKEY$
    rr = rr + 1
    IF rr > 10 THEN
      rr = 0
      IF BN = 0 THEN BN = 1 ELSE BN = 0
      FOR ppp = 0 TO 5
        pkmdt$ = LPoke(ppp + 1)
        y = ppp * 2
        IF ASC(MID$(pkmdt$, 1, 1)) > 0 THEN
          PF = ASC(MID$(pkmdt$, 1, 1)): SP = MSfindSpr(PF, 0)
          DQBboxf 1, VX + 11, VY + y * 8 + 3, VX + 26, VY + y * 8 + 18, 127
          QBputV16 8, y * 8, SP + BN
          n = ASC(MID$(pkmdt$, 21, 1)): n$ = LTRIM$(STR$(n)): n$ = n$ + SPACE$(3 - LEN(n$))
          n$ = MID$(pkmdt$, 2, 10) + " " + CHR$(135) + n$
          st = ASC(MID$(pkmdt$, 22, 1))
          IF st > 0 THEN est$ = MID$(NombVarios$, (st + 19) * 10 + 1, 3): MID$(n$, 13, 3) = LEFT$(est$, 4)
          QBprint 3, y, n$
          IF Des = 0 THEN
            d1 = ASC(MID$(pkmdt$, 23, 1)): d2 = ASC(MID$(pkmdt$, 24, 1)): en = d1 * 256 + d2
            d1 = ASC(MID$(pkmdt$, 25, 1)): d2 = ASC(MID$(pkmdt$, 26, 1)): men = d1 * 256 + d2
            QBput8 80, (y + 1) * 8, 177, Banco: QBput8 136, (y + 1) * 8, 181, Banco: QBshowBarEner 11, y + 1, CLNG(en), CLNG(men)
            A$ = "000/000": b$ = LTRIM$(STR$(en)): c$ = LTRIM$(STR$(men))
            MID$(A$, 4 - LEN(b$), LEN(b$)) = b$: MID$(A$, 8 - LEN(c$), LEN(c$)) = c$
            QBprint 3, y + 1, A$
          ELSEIF Des = 1 THEN
            nmpkm = ASC(MID$(pkmdt$, 1, 1))
            mto = ObjetoAUsar - 123
            IF PuedeAprender(nmpkm, mto) THEN QBprint 10, y + 1, "PUEDE" ELSE QBprint 10, y + 1, "NO PUEDE"
          ELSEIF Des = 2 THEN
            nmpkm = ASC(MID$(pkmdt$, 1, 1))
            IF SearchEvo(ObjetoAUsar, nmpkm) THEN QBprint 10, y + 1, "PUEDE" ELSE QBprint 10, y + 1, "NO PUEDE"
          END IF
        ELSE
          EXIT FOR
        END IF
      NEXT ppp
    END IF
    IF ink$ = Barr$ AND Cursor(Cur).NY > 1 THEN Cursor(Cur).NY = Cursor(Cur).NY - 2: QBputCursor Cur + 1: QBputCursor Cur
    IF ink$ = Baba$ AND Cursor(Cur).NY < TPokemon * 2 - 1 THEN Cursor(Cur).NY = Cursor(Cur).NY + 2: QBputCursor Cur + 1: QBputCursor Cur
    IF ink$ = Ba$ THEN QBselecPoke = (Cursor(Cur).NY - 1) / 2 + 1: EXIT FUNCTION
    IF ink$ = Bb$ THEN QBselecPoke = 10: EXIT FUNCTION
    DQBcopyLayer 1, VIDEO
  LOOP
END FUNCTION

SUB QBsendPoke (prsq, np)
  QBputBox 1, 0, 10, 18, 4
  IF prsq = 0 THEN
    pd$ = LPoke(np)
    pr$ = "≠Ve " + RTRIM$(MID$(pd$, 2, 10)) + "!"
    QBprint 1, 11, pr$
    x = 0: y = 24: nmp = ASC(MID$(pd$, 1, 1)) - 1
    PkmF(1).ATAQ = 95: PkmF(1).DEFE = 95: PkmF(1).VELO = 95
    PkmF(1).ESPE = 95: PkmF(1).PRES = 95: PkmF(1).EVAD = 95
    PkmF(1).CRIT = 10: PkmF(1).CONF = 0: PkmF(0).CONF = 0: PkmF(1).ACCI = 0
    IF MID$(pd$, 22, 1) = CHR$(1) OR MID$(pd$, 22, 1) = CHR$(3) OR MID$(pd$, 22, 1) = CHR$(5) THEN PkmF(1).ACCI = 6
  END IF
  IF prsq = 1 OR prsq = 2 THEN
    pd$ = LPoke(np + 6)
    IF prsq = 1 THEN
      QBputBox 1, -1, 10, 20, 4
      pr$ = RTRIM$(NombEnem$) + " envi¢"
      QBprint 0, 11, pr$
      QBprint 0, 12, "a " + RTRIM$(MID$(pd$, 2, 10))
    ELSE
      QBprint 1, 11, "≠Apareci¢ un"
      QBprint 1, 12, RTRIM$(MID$(pd$, 2, 10)) + "!"
    END IF
    x = 88: y = 0: nmp = ASC(MID$(pd$, 1, 1)) - 1
    IF MID$(PkmVA$, nmp + 1, 1) = " " THEN NPokeVist = NPokeVist + 1: MID$(PkmVA$, nmp + 1, 1) = "V"
    PkmF(2).ATAQ = 95: PkmF(2).DEFE = 95: PkmF(2).VELO = 95
    PkmF(2).ESPE = 95: PkmF(2).PRES = 95: PkmF(2).EVAD = 95
    PkmF(2).CRIT = 10: PkmF(2).CONF = 0: PkmF(3).CONF = 0: PkmF(2).ACCI = 0
    IF MID$(pd$, 22, 1) = CHR$(1) OR MID$(pd$, 22, 1) = CHR$(3) OR MID$(pd$, 22, 1) = CHR$(5) THEN PkmF(2).ACCI = 6
    IF prsq = 2 THEN QBdispObj -1, 0, 1, nmp: EXIT SUB
  END IF
  DQBsetClipBox VX + x + 3, VY + y + 3, VX + x + 58, VY + y + 58
  x2 = 30
  DO
    ink$ = INKEY$
    DQBboxf 1, VX + x + 3, VY + y + 3, VX + x + 58, VY + y + 58, 127
    x2 = x2 + 5
    IF prsq = 0 THEN QBputPB56E x, y, nmp, x2
    IF prsq = 1 THEN QBputPF56E x, y, nmp, x2
    IF shap < 13 THEN
      shap = shap + 1
      IF shap >= 1 AND shap <= 4 THEN nh = 0
      IF shap >= 5 AND shap <= 8 THEN nh = 1
      IF shap >= 9 AND shap <= 12 THEN nh = 2
      QBputV16 x + 20 - shap, y + 20 - shap, 42 + nh
      QBputV16 x + 28 + shap, y + 20 - shap, 45 + nh
      QBputV16 x + 20 - shap, y + 28 + shap, 48 + nh
      QBputV16 x + 28 + shap, y + 28 + shap, 51 + nh
    END IF
    DQBcopyLayer 1, VIDEO
  LOOP UNTIL x2 >= 100
  DQBsetClipBox VX + 3, VY + 3, VX + 146, VY + 114
  DQBwait 10
  DO: LOOP UNTIL INKEY$ = ""
END SUB

SUB QBsetFirstPoke
  FOR A = 1 TO 6
    LuchoPkm(A) = FALSE
  NEXT A
  IF PuedeLuchar(LPoke(6)) THEN NumPkmF = 6
  IF PuedeLuchar(LPoke(5)) THEN NumPkmF = 5
  IF PuedeLuchar(LPoke(4)) THEN NumPkmF = 4
  IF PuedeLuchar(LPoke(3)) THEN NumPkmF = 3
  IF PuedeLuchar(LPoke(2)) THEN NumPkmF = 2
  IF PuedeLuchar(LPoke(1)) THEN NumPkmF = 1
  IF PuedeLuchar(LPoke(12)) THEN NumPkmR = 6
  IF PuedeLuchar(LPoke(11)) THEN NumPkmR = 5
  IF PuedeLuchar(LPoke(10)) THEN NumPkmR = 4
  IF PuedeLuchar(LPoke(9)) THEN NumPkmR = 3
  IF PuedeLuchar(LPoke(8)) THEN NumPkmR = 2
  IF PuedeLuchar(LPoke(7)) THEN NumPkmR = 1
END SUB

SUB QBsetPal (p$)
  Paleta$ = SPACE$(768)
  OPEN p$ FOR BINARY AS #1
    GET #1, , Paleta$
  CLOSE #1
  DQBsetPal Paleta$
END SUB

SUB QBshowBarEner (cx, cy, pac&, pto&)
  QBput8 cx * 8, cy * 8, 173, Banco
  QBput8 cx * 8 + 8, cy * 8, 173, Banco
  QBput8 cx * 8 + 16, cy * 8, 173, Banco
  QBput8 cx * 8 + 24, cy * 8, 173, Banco
  QBput8 cx * 8 + 32, cy * 8, 173, Banco
  QBput8 cx * 8 + 40, cy * 8, 173, Banco
  pc& = pac&: IF pc& > pto& THEN pc& = pto& ELSE pc& = pac&
  an& = pc& * 48 / pto&
  IF pc& > 0 AND an& < 1 THEN an& = 1
  x = VX + cx * 8 + 3
  y = VY + cy * 8 + 3
  DQBboxf 1, x, y + 3, x + an& - 1, y + 4, 10
END SUB

SUB QBshowBoxEst (A$)
  QBputBox 0, 7, 2, 11, 10
  QBprint 8, 3, "ATAQUE": QBprint 8, 5, "DEFENSA"
  QBprint 8, 7, "VELOCIDAD": QBprint 8, 9, "ESPECIAL"
  d1 = ASC(MID$(A$, 42, 1)): d2 = ASC(MID$(A$, 43, 1)): ataqu$ = LTRIM$(STR$(d1 * 256 + d2))
  d1 = ASC(MID$(A$, 44, 1)): d2 = ASC(MID$(A$, 45, 1)): defen$ = LTRIM$(STR$(d1 * 256 + d2))
  d1 = ASC(MID$(A$, 46, 1)): d2 = ASC(MID$(A$, 47, 1)): veloc$ = LTRIM$(STR$(d1 * 256 + d2))
  d1 = ASC(MID$(A$, 48, 1)): d2 = ASC(MID$(A$, 49, 1)): espec$ = LTRIM$(STR$(d1 * 256 + d2))
  QBprint 14, 4, ataqu$: QBprint 14, 6, defen$
  QBprint 14, 8, veloc$: QBprint 14, 10, espec$
  DQBcopyLayer 1, VIDEO
  QBwaitAB
END SUB

SUB QBshowDataF2 (pkmdt1$, pkmdt2$, EB)
  IF EB < 3 THEN
    NumPant = 27
    QBshowPant
    IF (EB = 0 OR EB = 2) AND MID$(pkmdt2$, 22, 1) <> CHR$(2) THEN QBputPF56 88, 0, ASC(MID$(pkmdt2$, 1, 1)) - 1, 0
    IF EB = 0 OR EB = 1 THEN QBputPB56 0, 24, ASC(MID$(pkmdt1$, 1, 1)) - 1, 0
  END IF
  nm = ASC(MID$(pkmdt2$, 1, 1)): IF MID$(PkmVA$, nm, 1) = "A" THEN QBprint 0, 1, CHR$(175)
  d1 = ASC(MID$(pkmdt1$, 23, 1)): d2 = ASC(MID$(pkmdt1$, 24, 1)): en = d1 * 256 + d2
  d1 = ASC(MID$(pkmdt1$, 25, 1)): d2 = ASC(MID$(pkmdt1$, 26, 1)): men = d1 * 256 + d2
  QBshowBarEner 11, 8, CLNG(en), CLNG(men)
  A$ = "á00 000/000": b$ = LTRIM$(STR$(en)): c$ = LTRIM$(STR$(men))
  n = ASC(MID$(pkmdt1$, 21, 1)): d$ = LTRIM$(STR$(n))
  e = ASC(MID$(pkmdt1$, 22, 1)): IF e > 0 THEN d$ = MID$(NombVarios$, (e + 19) * 10 + 1, 3)
  MID$(A$, 4 - LEN(d$), LEN(d$)) = d$: MID$(A$, 8 - LEN(b$), LEN(b$)) = b$: MID$(A$, 12 - LEN(c$), LEN(c$)) = c$
  QBprint 7, 9, A$
  n$ = MID$(pkmdt1$, 2, 10)
  QBprint 7, 7, n$
  d1 = ASC(MID$(pkmdt2$, 23, 1)): d2 = ASC(MID$(pkmdt2$, 24, 1)): en = d1 * 256 + d2
  d1 = ASC(MID$(pkmdt2$, 25, 1)): d2 = ASC(MID$(pkmdt2$, 26, 1)): men = d1 * 256 + d2
  QBshowBarEner 4, 1, CLNG(en), CLNG(men)
  A$ = "á00"
  n = ASC(MID$(pkmdt2$, 21, 1)): d$ = LTRIM$(STR$(n))
  e = ASC(MID$(pkmdt2$, 22, 1)): IF e > 0 THEN d$ = MID$(NombVarios$, (e + 19) * 10 + 1, 3)
  MID$(A$, 4 - LEN(d$), LEN(d$)) = d$
  QBprint 0, 2, A$
  n$ = MID$(pkmdt2$, 2, 10)
  QBprint 0, 0, n$
  DQBcopyLayer 1, VIDEO
END SUB

SUB QBshowDescOfPkm (QBn, QBa$)
QBsDOP1:
  NumPant = 0
  QBshowPant
  QBputPF56 8, 8, QBn - 1, 0
  QBprint 2, 8, LTRIM$(STR$(QBn))
  NumPkmInfo = QBn
  SELECT CASE QBa$
    CASE "A"
      Pag = 0
      QBprint 7, 8, QBloadDesc(1)
      QBprint 11, 4, QBloadDesc(3)
      QBprint 11, 5, QBloadDesc(4)
      QBshowPage Pag
    CASE "V"
      QBprint 11, 4, "  ???"
      QBprint 11, 5, "  ???"
  END SELECT
  Cursor(1).VX = 8: Cursor(1).NX = 8: Cursor(1).VY = 1: Cursor(1).NY = 1: Cursor(1).SP = 87
  QBputCursor 1
  DQBcopyLayer 1, VIDEO
  DO
    ink2$ = INKEY$
    IF ink2$ = Barr$ AND Cursor(1).NY = 1 THEN Cursor(1).NY = 2: QBputCursor 1: DQBcopyLayer 1, VIDEO ELSE IF ink2$ = Barr$ THEN Cursor(1).NY = 1: QBputCursor 1: DQBcopyLayer 1, VIDEO
    IF ink2$ = Baba$ AND Cursor(1).NY = 1 THEN Cursor(1).NY = 2: QBputCursor 1: DQBcopyLayer 1, VIDEO ELSE IF ink2$ = Baba$ THEN Cursor(1).NY = 1: QBputCursor 1: DQBcopyLayer 1, VIDEO
    IF ink2$ = Ba$ AND Cursor(1).NY = 1 AND QBa$ = "A" THEN Pag = Pag + 1: Pag = Pag MOD 4: QBshowPage Pag: DQBcopyLayer 1, VIDEO
    IF ink2$ = Ba$ AND Cursor(1).NY = 2 THEN
      DO
        ink$ = INKEY$
        IF rt > 20 THEN
          rt = 0
          NumPant = Region
          QBshowPant
          QBprint 0, 0, "NIDO DE " + QBloadDesc(0)
          A$ = CHR$(QBn)
          FOR i = 0 TO 49
            b$ = QBloadTabMap(i): c$ = MID$(b$, 21, 8)
            IF INSTR(1, c$, A$) > 0 THEN
              QBputV16 ASC(MID$(b$, 1, 1)), ASC(MID$(b$, 2, 1)), 35
            END IF
          NEXT i
          DQBcopyLayer 1, VIDEO
        END IF
        IF rt = 10 THEN
          NumPant = Region
          QBshowPant
          QBprint 0, 0, "NIDO DE " + QBloadDesc(0)
          DQBcopyLayer 1, VIDEO
        END IF
        rt = rt + 1
      LOOP UNTIL ink$ = Ba$ OR ink$ = Bb$
      GOTO QBsDOP1
    END IF
  LOOP UNTIL ink2$ = Bb$
  NumPant = 20
  QBshowPant
  QBshowListPD
  QBputCursor 0
  DQBcopyLayer 1, VIDEO
END SUB

SUB QBshowListM (QBSa, QBSb)
  IF NumBols = 0 THEN LO$ = MID$(ContMoch$, 1, 40):  QBprint 2, 1, " OBJETOS      "
  IF NumBols = 1 THEN LO$ = MID$(ContMoch$, 41, 10): QBprint 2, 1, " OBJ. CLAVE   "
  IF NumBols = 2 THEN LO$ = MID$(ContMoch$, 51, 60): QBprint 2, 1, " MT/MO        "
  OpSal = QBSa: b = 0
  FOR i = 0 TO QBSb
    NumSlot1 = MochIndex(NumBols) + i
    IF (NumSlot1 < 20 AND NumBols = 0) OR (NumSlot1 < 10 AND NumBols = 1) OR (NumSlot1 < 30 AND NumBols = 2) THEN
      IF NumBols <> 1 THEN NumObj = ASC(MID$(LO$, NumSlot1 * 2 + 1, 1)) ELSE NumObj = ASC(MID$(LO$, NumSlot1 + 1, 1))
      IF NumObj = 0 AND OpSal = QBSa THEN OpSal = i + 3: Bb = 1
      txt1$ = NombObj(NumObj): txt1$ = MID$(txt1$, 1, 12)
      IF NumBols <> 1 THEN
        CantObj = ASC(MID$(LO$, NumSlot1 * 2 + 2, 1))
        c$ = LTRIM$(STR$(CantObj)): c$ = c$ + SPACE$(2 - LEN(c$))
        txt2$ = "*" + c$
      ELSE
        txt2$ = "   "
      END IF
      txt$ = txt1$ + txt2$
      IF Bb = 2 THEN txt$ = SPACE$(15)
      IF Bb = 1 THEN txt$ = "SALIR          ": Bb = 2
    ELSE
      txt$ = "SALIR          "
      OpSal = QBSb + 3
    END IF
    QBprint 2, i + 3, txt$
  NEXT i
END SUB

SUB QBshowListPD
  FOR i = 0 TO 8
    NumPkm = DexIndex + i + 1
    IF MID$(PkmVA$, NumPkm, 1) <> " " THEN
      NumPkmInfo = NumPkm
      txt1$ = QBloadDesc(0)
    ELSE
      txt1$ = "------    "
    END IF
    txt2$ = LTRIM$(STR$(NumPkm))
    txt2$ = txt2$ + SPACE$(5 - LEN(txt2$))
    txt$ = txt2$ + txt1$
    IF MID$(PkmVA$, NumPkm, 1) = "A" THEN MID$(txt$, 5, 1) = "`"
    QBprint 2, i + 1, txt$
  NEXT i
  txt$ = STR$(NPokeVist)
  QBprint 8, 11, txt$
  txt$ = STR$(NPokeAtra)
  QBprint 8, 12, txt$
END SUB

SUB QBshowObjPC
  OpSal = 9: b = 0
  FOR i = 0 TO 6
    NumSlot1 = IndexPC + i
    NumObj = ASC(MID$(ContPC$, NumSlot1 * 2 + 1, 1))
    IF NumObj = 0 AND OpSal = 9 THEN OpSal = i + 1: Bb = 1
    txt1$ = NombObj(NumObj): txt1$ = MID$(txt1$, 1, 12)
    CantObj = ASC(MID$(ContPC$, NumSlot1 * 2 + 2, 1))
    txt2$ = "*" + LTRIM$(STR$(CantObj))
    txt2$ = txt2$ + SPACE$(3 - LEN(txt2$))
    txt$ = txt1$ + txt2$
    IF Bb = 2 THEN txt$ = SPACE$(15)
    IF Bb = 1 THEN txt$ = "SALIR          ": Bb = 2
    QBprint 2, i + 1, txt$
  NEXT i
END SUB

SUB QBshowPage (QBnp)
  QBprint 1, 10, MID$(QBloadDesc(2), QBnp * 48 + 1, 16)
  QBprint 1, 11, MID$(QBloadDesc(2), QBnp * 48 + 17, 16)
  QBprint 1, 12, MID$(QBloadDesc(2), QBnp * 48 + 33, 16)
  QBprint 13, 1, STR$(QBnp + 1)
END SUB

SUB QBshowPagEst (QBp)
  IF QBp = 1 THEN NumPant = 21 ELSE NumPant = 33 + QBp
  QBshowPant
  QBputP56 80, 8, 1
  Banco = 0
  QBprint 2, 2, NombPers$
  A$ = NombPers$ + SPACE$(7 - LEN(NombPers$))
  A = ASC(MID$(A$, 1, 1)): b = ASC(MID$(A$, 2, 1)): c = ASC(MID$(A$, 3, 1))
  d = ASC(MID$(A$, 4, 1)): e = ASC(MID$(A$, 5, 1)): f = ASC(MID$(A$, 6, 1))
  g = ASC(MID$(A$, 7, 1))
  id! = A * 3 ^ 6 + b * 3 ^ 5 + c * 3 ^ 4 + d * 3 ^ 3 + e * 3 ^ 2 + f * 3 ^ 1 + g
  id$ = LTRIM$(STR$(id!))
  QBprint 2, 4, "âà" + id$
  A$ = LTRIM$(STR$(Dinero)): A$ = SPACE$(6 - LEN(A$)) + A$
  QBprint 2, 6, "DINERO"
  QBprint 2, 7, "$" + A$
  SELECT CASE QBp
    CASE 1
      QBprint 2, 10, "POKêDEX:" + STR$(NPokeAtra)
      FinT = TIMER
      IF FinT < IniT THEN FinT = FinT + 86400
      TJ! = TJug + FinT - IniT
      la! = TJ! MOD 60
      TJ! = (TJ! - la!) / 60
      nm! = TJ! MOD 60
      nh! = (TJ! - nm!) / 60
      NHoras = nh!
      h$ = LTRIM$(STR$(NHoras))
      h$ = SPACE$(3 - LEN(h$)) + h$
      m$ = LTRIM$(STR$(nm!))
      IF LEN(m$) = 1 THEN m$ = "0" + m$
      QBprint 2, 12, "TIEMPO J." + h$ + ":" + m$
    CASE 2 TO 5, 8 TO 10: nm = QBp + 11
    CASE 6: nm = 18
    CASE 7: nm = 17
    CASE 10 TO 17: nm = QBp + 15
  END SELECT
  SELECT CASE QBp
    CASE 2 TO 9: IF MedJohto AND 2 ^ (QBp - 2) THEN QBp = nm ELSE QBp = 0
    CASE 10 TO 17: IF MedKanto AND 2 ^ (QBp - 10) THEN QBp = nm ELSE QBp = 0
  END SELECT
END SUB

SUB QBshowPant
  ap& = NumPant * 253 + 1
  Pantalla$ = SPACE$(253)
  GET #2, ap&, Pantalla$
  Banco = ASC(MID$(Pantalla$, 1, 1))
  QBx = 0: QBy = 0
  DQBbox 1, VX + 1, VY + 1, VX + 148, VY + 116, 15
  s = 0
  DO
    QBput8 QBx, QBy, ASC(MID$(Pantalla$, s + 2, 1)), Banco
    QBx = QBx + 8: IF QBx = 144 THEN QBx = 0: QBy = QBy + 8
    s = s + 1
  LOOP UNTIL s = 252
END SUB

FUNCTION QBsumarPoke$ (pd$)
  IF MID$(pd$, 12, 7) = SPACE$(7) THEN MID$(pd$, 12, LEN(NombPers$)) = NombPers$
  IF TPokemon < 6 THEN
    TPokemon = TPokemon + 1
    SPoke TPokemon, pd$
  ELSE
    FOR p = 0 TO 287
      A$ = " ": GET #9, p * 53 + 319, A$
      IF A$ = CHR$(0) THEN PUT #9, p * 53 + 319, pd$: p = -1: EXIT FOR
    NEXT p
  END IF
  s$ = MID$(pd$, 2, 10)
  IF p = -1 THEN s$ = s$ + "P" ELSE s$ = s$ + "A"
  n = ASC(MID$(pd$, 1, 1))
  IF MID$(PkmVA$, n, 1) = " " THEN NPokeAtra = NPokeAtra + 1: NPokeVist = NPokeVist + 1
  IF MID$(PkmVA$, n, 1) = "V" THEN NPokeAtra = NPokeAtra + 1
  MID$(PkmVA$, n, 1) = "A"
  QBsumarPoke$ = s$
END FUNCTION

SUB QBusar (Objeto)
  RANDOMIZE TIMER
  GastoObjeto = FALSE
  SELECT CASE Objeto
    CASE 85                                     'BICICLETA
      IF ACCION$ = "CAMINANDO" AND Edificio(NumZona) = 0 THEN
        IF Persona(0).s = 0 THEN Persona(0).s = 36 ELSE Persona(0).s = 0
      ELSE
        QBputBox 1, 0, 9, 18, 5
        QBprint 1, 10, "≠En este lugar  "
        QBprint 1, 11, "no se puede usar"
        QBprint 1, 12, "la BICICLETA!   "
        DQBcopyLayer 1, VIDEO: QBwaitAB
      END IF
    CASE 42, 69, 76                     'MAX REPEL, REPELENTE, SUPER REPEL
      QBputBox 0, 0, 10, 18, 4
      QBprint 1, 11, "≠" + NombPers$ + " us¢"
      A$ = NombObj(Objeto): A$ = RTRIM$(MID$(A$, 1, 12))
      QBprint 1, 12, A$ + "!"
      DQBcopyLayer 1, VIDEO
      QBwaitAB
      IF Objeto = 69 THEN Repelente = Repelente + 100
      IF Objeto = 76 THEN Repelente = Repelente + 200
      IF Objeto = 42 THEN Repelente = Repelente + 300
      GastoObjeto = TRUE
      CerrarMochila = TRUE
    CASE 22                             'CUERDA HUIDA
      IF Interno(NumZona) THEN QBgoToCntPkm
    CASE 2 TO 7, 11, 13, 14, 16, 23, 25, 60     'ANTIX
      tp = 0
      GOSUB SubSelecPoke
      IF ps > 0 AND ps < 7 THEN
        IF Objeto = 23 OR Objeto = 14 OR Objeto = 60 THEN ct = TRUE ELSE ct = FALSE
        pd$ = LPoke(ps)
        y = ps * 2 - 1
        st = ASC(MID$(pd$, 22, 1))
        r2$ = "se repuso!"
        IF st = 1 AND (Objeto = 3 OR Objeto = 11 OR ct) THEN u = TRUE
        IF st = 3 AND (Objeto = 13 OR Objeto = 25 OR ct) THEN u = TRUE
        IF st = 4 AND (Objeto = 2 OR Objeto = 16 OR ct) THEN u = TRUE
        IF st = 5 AND (Objeto = 4 OR Objeto = 5 OR ct) THEN u = TRUE
        IF st = 6 AND (Objeto = 6 OR Objeto = 7 OR ct) THEN u = TRUE
        IF u THEN
          n = ASC(MID$(pd$, 21, 1)): n$ = LTRIM$(STR$(n)): n$ = n$ + SPACE$(3 - LEN(n$))
          QBprint 15, y - 1, n$
          QBputBox 1, 0, 9, 18, 5
          n$ = "≠" + RTRIM$(MID$(pd$, 2, 10))
          QBprint 1, 10, n$
          QBprint 1, 11, r2$
          MID$(pd$, 22, 1) = CHR$(0)
          SPoke ps, pd$
          GastoObjeto = TRUE
        ELSE
          QBputBox 1, 0, 9, 18, 5
          n$ = RTRIM$(MID$(pd$, 2, 10)) + "!"
          QBprint 1, 10, "≠No tendr†"
          QBprint 1, 11, "efecto en"
          QBprint 1, 12, n$
        END IF
        DQBcopyLayer 1, VIDEO
        QBwaitAB
      END IF
    CASE 18                             'CARAMELORARO
      tp = 0
      GOSUB SubSelecPoke
      IF ps > 0 AND ps < 7 THEN
        pd$ = LPoke(ps): y = ps * 2 - 1: nv = ASC(MID$(pd$, 21, 1))
        IF nv < 200 THEN
          pd$ = SubirNivel(pd$, 1, y, 0): SPoke ps, pd$: GastoObjeto = TRUE
        ELSE
          QBputBox 1, 0, 9, 18, 5: n$ = RTRIM$(MID$(pd$, 2, 10)) + "!"
          QBprint 1, 10, "≠No tendr†": QBprint 1, 11, "efecto en"
          QBprint 1, 12, n$: DQBcopyLayer 1, VIDEO: QBwaitAB
        END IF
      END IF
    CASE 50 TO 55                       'PIEDRAS
      tp = 2
      GOSUB SubSelecPoke
      IF ps > 0 AND ps < 7 THEN
        pd$ = LPoke(ps)
        np1 = ASC(MID$(pd$, 1, 1))
        np2 = SearchEvo(Objeto, np1)
        IF np2 THEN
          pd$ = SubirNivel(pd$, 0, 0, Objeto)
          IF MID$(pd$, 22, 1) = CHR$(2) THEN MID$(pd$, 22, 1) = CHR$(0)
          SPoke ps, pd$
          GastoObjeto = TRUE
        ELSE
          QBputBox 1, 0, 9, 18, 5: n$ = RTRIM$(MID$(pd$, 2, 10)) + "!"
          QBprint 1, 10, "≠No tendr†": QBprint 1, 11, "efecto en"
          QBprint 1, 12, n$: DQBcopyLayer 1, VIDEO: QBwaitAB
        END IF
      END IF
    CASE 1, 9, 10, 15, 19, 34, 36, 37, 41, 56, 57, 62, 67, 68, 70, 75, 80, 121, 122
'                                                               /\ POCIONES
      tp = 0
      GOSUB SubSelecPoke
      IF ps > 0 AND ps < 7 THEN
        pd$ = LPoke(ps)
        y = ps * 2 - 1
        d1 = ASC(MID$(pd$, 23, 1)): d2 = ASC(MID$(pd$, 24, 1)): en = d1 * 256 + d2
        d1 = ASC(MID$(pd$, 25, 1)): d2 = ASC(MID$(pd$, 26, 1)): men = d1 * 256 + d2
        IF ASC(MID$(pd$, 22, 1)) <> 2 AND en < men THEN
          IF Objeto = 1 OR Objeto = 62 OR Objeto = 75 THEN subi = 49
          IF Objeto = 9 THEN subi = 9
          IF Objeto = 37 THEN subi = 79
          IF Objeto = 68 OR Objeto = 121 THEN subi = 59
          IF Objeto = 56 OR Objeto = 19 OR Objeto = 80 THEN subi = 19
          IF Objeto = 34 OR Objeto = 67 THEN subi = 199
          IF Objeto = 41 OR Objeto = 15 OR Objeto = 57 OR Objeto = 70 THEN subi = men - 1
          IF Objeto = 10 OR Objeto = 122 THEN subi = 29
          IF Objeto = 36 THEN subi = 99
          FOR s = 0 TO subi
            en = en + 1
            QBput8 80, y * 8, 177, Banco: QBput8 136, y * 8, 181, Banco: QBshowBarEner 11, y, CLNG(en), CLNG(men)
            A$ = "000/000": b$ = LTRIM$(STR$(en)): c$ = LTRIM$(STR$(men))
            MID$(A$, 4 - LEN(b$), LEN(b$)) = b$: MID$(A$, 8 - LEN(c$), LEN(c$)) = c$
            QBprint 3, y, A$
            DQBcopyLayer 1, VIDEO
            DQBwait 2
            IF en = men THEN s = s + 1: EXIT FOR
          NEXT s
          d2 = en MOD 256: d1 = (en - d2) / 256: MID$(pd$, 23, 1) = CHR$(d1): MID$(pd$, 24, 1) = CHR$(d2)
          IF Objeto = 70 OR Objeto = 57 THEN MID$(pd$, 22, 1) = CHR$(0)
          SPoke ps, pd$
          s$ = "≠Subi¢ " + LTRIM$(STR$(s)) + " PS!"
          s$ = s$ + SPACE$(18 - LEN(s$))
          QBprint 0, 13, s$
          DQBcopyLayer 1, VIDEO
          QBwaitAB
          GastoObjeto = TRUE
        ELSE
          QBprint 0, 13, "No tendr† efecto  "
          DQBcopyLayer 1, VIDEO
          QBwaitAB
        END IF
      END IF
    CASE 32, 71, 43           'REVIVIR
      tp = 0
      GOSUB SubSelecPoke
      IF ps > 0 AND ps < 7 THEN
        pd$ = LPoke(ps)
        y = ps * 2 - 1
        d1 = ASC(MID$(pd$, 23, 1)): d2 = ASC(MID$(pd$, 24, 1)): en = d1 * 256 + d2
        d1 = ASC(MID$(pd$, 25, 1)): d2 = ASC(MID$(pd$, 26, 1)): men = d1 * 256 + d2
        IF ASC(MID$(pd$, 22, 1)) = 2 THEN
          IF Objeto = 32 OR Objeto = 71 THEN subi = men / 2 + 1
          IF Objeto = 43 THEN subi = men
          FOR s = 0 TO subi
            en = en + 1
            QBput8 80, y * 8, 177, Banco: QBput8 136, y * 8, 181, Banco: QBshowBarEner 11, y, CLNG(en), CLNG(men)
            A$ = "000/000": b$ = LTRIM$(STR$(en)): c$ = LTRIM$(STR$(men))
            MID$(A$, 4 - LEN(b$), LEN(b$)) = b$: MID$(A$, 8 - LEN(c$), LEN(c$)) = c$
            QBprint 3, y, A$
            DQBcopyLayer 1, VIDEO
            DQBwait 2
            IF en = men THEN s = s + 1: EXIT FOR
          NEXT s
          d2 = en MOD 256: d1 = (en - d2) / 256: MID$(pd$, 23, 1) = CHR$(d1): MID$(pd$, 24, 1) = CHR$(d2)
          MID$(pd$, 22, 1) = CHR$(0)
          SPoke ps, pd$
          s$ = "≠Subi¢ " + LTRIM$(STR$(s)) + " PS!"
          s$ = s$ + SPACE$(18 - LEN(s$))
          QBprint 0, 13, s$
          DQBcopyLayer 1, VIDEO
          QBwaitAB
          GastoObjeto = TRUE
        ELSE
          QBprint 0, 13, "No tendr† efecto  "
          DQBcopyLayer 1, VIDEO
          QBwaitAB
        END IF
      END IF
    CASE 94, 93, 119                    'CA•AS
      cx = 0: cy = 0
      IF Persona(0).p = 0 OR Persona(0).p = 2 THEN cx = Persona(0).x: cy = Persona(0).y + 1
      IF Persona(0).p = 4 OR Persona(0).p = 6 THEN cx = Persona(0).x: cy = Persona(0).y - 1
      IF Persona(0).p = 8 OR Persona(0).p = 10 THEN cx = Persona(0).x - 1: cy = Persona(0).y
      IF Persona(0).p = 12 OR Persona(0).p = 14 THEN cx = Persona(0).x + 1: cy = Persona(0).y
      IF cx = 0 AND cy = 0 THEN EXIT SUB
      IF Ambiente(cx, cy, 4) THEN
        Invicibilidad = TRUE
        Retraso = 0
        SELECT CASE Persona(0).p
          CASE 0 TO 3:   nspr = 1
          CASE 4 TO 7:   nspr = 2
          CASE 8 TO 11:  nspr = 3
          CASE 12 TO 15: nspr = 4
        END SELECT
        xx = 16 * 4: yy = 16 * 3 - 4: oport = 0
        DO
          ink$ = INKEY$
          IF ink$ <> "" THEN ut$ = ink$
          Retraso = Retraso + 1
          IF Retraso = 80 THEN
            QBputEscena
            SELECT CASE nspr
              CASE 1: QBputV16 xx, yy, 96: QBputV16 xx, yy + 16, 97
              CASE 2: QBputV16 xx, yy, 98: QBputV16 xx, yy - 16, 99
              CASE 3: QBputV16 xx, yy, 100: QBputV16 xx - 16, yy, 101
              CASE 4: QBputV16 xx, yy, 102: QBputV16 xx + 16, yy, 103
            END SELECT
            Retraso = 0: oport = oport + 1
            DQBcopyLayer 1, VIDEO
            DQBwait 1
            IF ut$ = Barr$ THEN prob! = .1 ELSE prob! = .01
            IF RND(1) < prob! THEN EXIT DO
          END IF
          IF oport = 30 THEN EXIT DO
          IF ink$ = Bb$ THEN oport = 31: EXIT DO
        LOOP
        IF oport = 30 THEN
          QBputBox 1, 0, 11, 18, 3
          QBprint 1, 12, "≠No pican!"
          DQBcopyLayer 1, VIDEO
          QBwaitAB
        ELSEIF oport < 30 THEN
          QBputBox 1, 0, 10, 18, 4
          QBprint 1, 11, "≠Bien! ≠Ha"
          QBprint 1, 12, "picado!"
          DQBcopyLayer 1, VIDEO
          QBwaitAB
          IF Objeto = 94 THEN g = 2
          IF Objeto = 93 THEN g = 3
          IF Objeto = 119 THEN g = 4
          QBwritePkmTMP g, -1, -1, -1, -1, -1
          IF PkmNoFound = 0 THEN QBfightPokeSalv
        ELSEIF oport > 30 THEN
          QBputBox 1, 0, 10, 18, 4
          QBprint 1, 11, "Probemos en"
          QBprint 1, 12, "otro lado."
          DQBcopyLayer 1, VIDEO
          QBwaitAB
        END IF
        Invicibilidad = 0
      ELSE
        QBputBox 1, 0, 11, 18, 3
        QBprint 1, 12, "®Donde pescar?"
        DQBcopyLayer 1, VIDEO
        QBwaitAB
      END IF
    CASE 196                    'CEBO
      IF MSzonaRoja(NumMapa, Persona(0).x, Persona(0).y) THEN
        IF ACCION$ = "CAMINANDO" THEN a1 = 5 ELSE a1 = 1
        QBwritePkmTMP a1, a1, a1, -1, -1, -1: IF PkmNoFound = 0 THEN GastoObjeto = TRUE: QBfightPokeSalv
      END IF
    CASE 123 TO 189             'MT/MO
      tp = 1: mto = Objeto - 123
      ap& = mto: ap& = ap& + 82470
      A$ = " "
      OPEN Direccion$ + "TABLAS-F.BIN" FOR BINARY AS #1
      GET #1, ap&, A$
      CLOSE #1
      tm = ASC(A$) + 1
      nt$ = NombObj(tm + 256): nt$ = MID$(nt$, 1, 12)
      IF Objeto < 183 THEN MS$ = "≠MT escogida!" ELSE MS$ = "≠MO escogida!"
      QBputBox 0, 0, 9, 18, 5
      QBprint 1, 10, MS$
      QBprint 1, 11, "≠êsta contiene"
      QBprint 1, 12, RTRIM$(nt$) + "!"
      DQBcopyLayer 1, VIDEO
      QBwaitAB
      QBputBox 0, 0, 9, 18, 5
      QBprint 1, 10, "®Desea ense§ar"
      QBprint 1, 11, nt$
      QBprint 1, 12, "a un POKêMON?"
      DQBcopyLayer 1, VIDEO
      IF SiONO(2) THEN
        GOSUB SubSelecPoke
        IF ps > 0 AND ps < 7 THEN
          pd$ = LPoke(ps)
          y = ps * 2 - 1
          nmpkm = ASC(MID$(pd$, 1, 1))
          IF PuedeAprender(nmpkm, mto) THEN
            pd$ = QBapreTecn(pd$, -tm)
            IF Objeto < 183 THEN GastoObjeto = TRUE
          ELSE
            QBputBox 1, 0, 9, 18, 5
            QBprint 1, 10, "≠" + RTRIM$(MID$(pd$, 2, 10)) + " no es"
            QBprint 1, 11, "compatible con"
            QBprint 1, 12, RTRIM$(nt$) + "!"
            DQBcopyLayer 1, VIDEO
            QBwaitAB
            QBputBox 1, 0, 9, 18, 5
            QBprint 1, 10, "≠" + RTRIM$(MID$(pd$, 2, 10)) + " no"
            QBprint 1, 11, "pudo aprender"
            QBprint 1, 12, RTRIM$(nt$) + "!"
            DQBcopyLayer 1, VIDEO
            QBwaitAB
          END IF
          SPoke ps, pd$
        END IF
      END IF
    CASE 38                             'MAS PP
      tp = 0
      GOSUB SubSelecPoke
      IF ps > 0 AND ps < 7 THEN
        pd$ = LPoke(ps): y = ps * 2 - 1
        FOR i = 37 TO 41
          d1 = ASC(MID$(pd$, i, 1)) + 3: IF d1 > 999 THEN d1 = 999
          MID$(pd$, i, 1) = CHR$(d1)
        NEXT i
        SPoke ps, pd$: GastoObjeto = TRUE
      END IF
    CASE 27, 28, 30, 31                 'ELIXIR, êTER
      tp = 0
      GOSUB SubSelecPoke
      IF ps > 0 AND ps < 7 THEN
        pd$ = LPoke(ps): y = ps * 2 - 1
        MID$(pd$, 32, 5) = MID$(pd$, 37, 5)
        SPoke ps, pd$: GastoObjeto = TRUE
      END IF
    CASE 17, 20, 33, 39, 66            'CALCIO,CARBURANTE,HIERRO,PROTEINAS,PS
      tp = 0
      GOSUB SubSelecPoke
      IF ps > 0 AND ps < 7 THEN
        pd$ = LPoke(ps): y = ps * 2 - 1
        IF Objeto = 17 THEN A = 48
        IF Objeto = 20 THEN A = 46
        IF Objeto = 33 THEN A = 44
        IF Objeto = 39 THEN A = 25
        IF Objeto = 66 THEN A = 42
        d1 = ASC(MID$(pd$, A, 1)): d2 = ASC(MID$(pd$, A + 1, 1)): nv = d1 * 256 + d2
        IF nv < 999 THEN
          nv = nv + 4: IF nv > 999 THEN nv = 999
          d2 = nv MOD 256: d1 = (nv - d2) / 256: A$ = CHR$(d1) + CHR$(d2)
          MID$(pd$, A, 2) = A$
          np1 = ASC(MID$(pd$, 1, 1)): np2 = SearchEvo(Objeto, np1)
          IF np2 THEN pd$ = SubirNivel(pd$, 0, 0, Objeto): IF MID$(pd$, 22, 1) = CHR$(2) THEN MID$(pd$, 22, 1) = CHR$(0)
          SPoke ps, pd$: GastoObjeto = TRUE
        ELSE
          QBputBox 1, 0, 9, 18, 5: n$ = RTRIM$(MID$(pd$, 2, 10)) + "!"
          QBprint 1, 10, "≠No tendr†": QBprint 1, 11, "efecto en"
          QBprint 1, 12, n$: DQBcopyLayer 1, VIDEO: QBwaitAB
        END IF
      END IF
    CASE 203                            'PALA
      A = Persona(0).p MOD 4: b = (Persona(0).p - A) / 4
      IF b = 0 THEN x = Persona(0).x: y = Persona(0).y + 1
      IF b = 1 THEN x = Persona(0).x: y = Persona(0).y - 1
      IF b = 2 THEN x = Persona(0).x - 1: y = Persona(0).y
      IF b = 3 THEN x = Persona(0).x + 1: y = Persona(0).y
      IF MSfig(NumMapa, x, y) = 1311 THEN ArbolX = x: ArbolY = y: ArbolSP = 1312
    CASE 88                             'BUSCAOBJETOS
      FOR o = 1 TO 10
        IF Objeto(o).x > Persona(0).x - 5 AND Objeto(o).x < Persona(0).x + 5 THEN
          IF Objeto(o).y > Persona(0).y - 4 AND Objeto(o).y < Persona(0).y + 4 THEN
            A$ = " ": ap& = Objeto(o).b + (Region - 1) * 256 + 16467: GET #9, ap&, A$
            IF Objeto(o).e = 1 AND Objeto(o).v = 0 AND Objeto(o).i = 7 AND ASC(A$) THEN SOUND 100, 1
          END IF
        END IF
      NEXT o
    CASE 26: GastoObjeto = TRUE: PkmF(1).CRIT = 100
    CASE 8, 24, 29, 61, 64, 79
      IF ObjetoAUsar = 8 THEN PkmF(1).ATAQ = PkmF(1).ATAQ + 20: m = 27
      IF ObjetoAUsar = 24 THEN PkmF(1).DEFE = PkmF(1).DEFE + 20: m = 23
      IF ObjetoAUsar = 29 THEN PkmF(1).ESPE = PkmF(1).ESPE + 20: m = 35
      IF ObjetoAUsar = 61 THEN PkmF(2).PRES = PkmF(2).PRES - 20: m = -37
      IF ObjetoAUsar = 64 THEN PkmF(1).PRES = PkmF(1).PRES + 20: m = 39
      IF ObjetoAUsar = 79 THEN PkmF(1).VELO = PkmF(1).VELO + 20: m = 31
      QBputBox 1, -1, 10, 20, 5: QBputMsg m, 0: DQBcopyLayer 1, VIDEO
      GastoObjeto = TRUE: QBwaitAB
  END SELECT
  IF GastoObjeto AND ACCION$ = "LUCHANDO" THEN CerrarMochila = TRUE
  EXIT SUB

SubSelecPoke:
  Cur = 2
  DQBboxf 1, VX + 3, VY + 3, VX + 146, VY + 114, 127
  DQBbox 1, VX + 1, VY + 1, VX + 148, VY + 116, 15
  QBprint 0, 12, "||||||||||||||||||"
  QBprint 0, 13, "Elige un POKêMON  "
  DQBcopyLayer 1, 0
  Cursor(Cur + 1).NX = 0: Cursor(Cur + 1).NY = 1: Cursor(Cur + 1).VX = 0: Cursor(Cur + 1).VY = 1: Cursor(Cur + 1).SP = 0
  Cursor(Cur).NX = 0: Cursor(Cur).NY = 1: Cursor(Cur).VX = 0: Cursor(Cur).VY = 1: Cursor(Cur).SP = 87
  ps = QBselecPoke(Cur, tp)
  RETURN

END SUB

SUB QBverEstPkm (PKM)
  PG = 1
IniQBverEstPkm:
  SELECT CASE PKM
    CASE 0: BEEP: EXIT SUB
    CASE 1 TO 6, 13 TO 36: pd$ = LPoke(PKM)
    CASE ELSE: BEEP: EXIT SUB
  END SELECT
' N£mero del PokÇmon
    np$ = "000": np = ASC(MID$(pd$, 1, 1)): A$ = LTRIM$(STR$(np)): MID$(np$, 4 - LEN(A$), LEN(A$)) = A$
' Nombre del PokÇmon
    nomb$ = MID$(pd$, 2, 10)
' Nombre del Entrenador Original
    eo$ = MID$(pd$, 12, 7)
' N£mero de Identificaci¢n
    A$ = MID$(pd$, 12, 7)
    A = ASC(MID$(A$, 1, 1)): b = ASC(MID$(A$, 2, 1)): c = ASC(MID$(A$, 3, 1))
    d = ASC(MID$(A$, 4, 1)): e = ASC(MID$(A$, 5, 1)): f = ASC(MID$(A$, 6, 1))
    g = ASC(MID$(A$, 7, 1))
    id& = A * 3 ^ 6 + b * 3 ^ 5 + c * 3 ^ 4 + d * 3 ^ 3 + e * 3 ^ 2 + f * 3 ^ 1 + g
    id$ = LTRIM$(STR$(id&))
' Nivel del PokÇmon
    A = ASC(MID$(pd$, 21, 1)): nv$ = LTRIM$(STR$(A))

  GOSUB SubShowPage
  DO
    ink$ = INKEY$
    IF ink$ = Bizq$ THEN
      PG = PG - 1: IF PG = 0 THEN PG = 4
      GOSUB SubShowPage
    END IF
    IF ink$ = Bder$ THEN
      PG = PG + 1: IF PG = 5 THEN PG = 1
      GOSUB SubShowPage
    END IF
    IF ink$ = Barr$ THEN
      PKM = PKM - 1
      IF PKM = 0 OR PKM = 12 THEN
        PKM = PKM + 1
      ELSE
        GOTO IniQBverEstPkm
      END IF
    END IF
    IF ink$ = Baba$ THEN
      PKM = PKM + 1
      IF PKM = TPokemon + 1 OR PKM = 37 THEN
        PKM = PKM - 1
      ELSE
        pd2$ = LPoke(PKM)
        IF ASC(MID$(pd2$, 1, 1)) = 0 THEN PKM = PKM - 1 ELSE GOTO IniQBverEstPkm
      END IF
    END IF
  LOOP UNTIL ink$ = Bb$
  EXIT SUB

SubShowPage:
  SELECT CASE PG
    CASE 1
      NumPant = 22
      QBshowPant
      QBputV16 72, 43, 33
        A = ASC(MID$(pd$, 22, 1)): A$ = MID$(NombVarios$, (A + 19) * 10 + 1, 10)
      QBprint 8, 10, A$
        A = ASC(MID$(pd$, 19, 1)): A$ = MID$(NombVarios$, A * 10 + 1, 10)
        A = ASC(MID$(pd$, 20, 1)): b$ = MID$(NombVarios$, A * 10 + 1, 10)
      QBprint 6, 11, A$
      QBprint 6, 12, b$
        d1 = ASC(MID$(pd$, 23, 1)): d2 = ASC(MID$(pd$, 24, 1)): A$ = LTRIM$(STR$(d1 * 256 + d2))
        d1 = ASC(MID$(pd$, 25, 1)): d2 = ASC(MID$(pd$, 26, 1)): b$ = LTRIM$(STR$(d1 * 256 + d2))
        c$ = "000/000": MID$(c$, 4 - LEN(A$), LEN(A$)) = A$: MID$(c$, 8 - LEN(b$), LEN(b$)) = b$
      QBshowBarEner 3, 8, VAL(A$), VAL(b$)
      QBprint 10, 8, c$
    CASE 2
      NumPant = 23
      QBshowPant
      QBputV16 88, 43, 33
        d1& = ASC(MID$(pd$, 50, 1)): d2& = ASC(MID$(pd$, 51, 1)): d3& = ASC(MID$(pd$, 52, 1)): ex3& = d1& * 256 * 256 + d2& * 256 + d3&
      QBprint 8, 9, LTRIM$(STR$(ex3&))
        A = VAL(nv$) + 1
      QBprint 13, 10, LTRIM$(STR$(A))
        OPEN Direccion$ + "TABLAS-F.BIN" FOR BINARY AS #1
        A$ = " ": ap& = VAL(np$): GET #1, ap& * 13 + 78793, A$: t = ASC(A$)
        A$ = "   ": n = VAL(nv$): GET #1, t * 303 + n * 3 + 1, A$
        d1& = ASC(MID$(A$, 1, 1)): d2& = ASC(MID$(A$, 2, 1)): d3& = ASC(MID$(A$, 3, 1)): ex1& = d1& * 256 * 256 + d2& * 256 + d3&
        CLOSE #1
        IF VAL(nv$) + 1 < 101 THEN
          OPEN Direccion$ + "TABLAS-F.BIN" FOR BINARY AS #1
          A$ = " ": apunt& = VAL(np$): GET #1, apunt& * 13 + 78793, A$: t = ASC(A$)
          A$ = "   ": n = VAL(nv$) + 1: GET #1, t * 303 + n * 3 + 1, A$
          d1& = ASC(MID$(A$, 1, 1)): d2& = ASC(MID$(A$, 2, 1)): d3& = ASC(MID$(A$, 3, 1)): ex2& = d1& * 256 * 256 + d2& * 256 + d3&
          CLOSE #1
        ELSE
          ex2& = ex3&
        END IF
      QBprint 8, 11, LTRIM$(STR$(ex2& - ex3&))
      IF VAL(nv$) < 100 THEN QBshowBarEner 6, 12, ex2& - ex3&, ex2& - ex1&
    CASE 3
      NumPant = 24
      QBshowPant
      QBputV16 104, 43, 33
        d1 = ASC(MID$(pd$, 42, 1)): d2 = ASC(MID$(pd$, 43, 1)): A$ = LTRIM$(STR$(d1 * 256 + d2))
      QBprint 12, 8, A$
        d1 = ASC(MID$(pd$, 44, 1)): d2 = ASC(MID$(pd$, 45, 1)): A$ = LTRIM$(STR$(d1 * 256 + d2))
      QBprint 12, 9, A$
        d1 = ASC(MID$(pd$, 46, 1)): d2 = ASC(MID$(pd$, 47, 1)): A$ = LTRIM$(STR$(d1 * 256 + d2))
      QBprint 12, 10, A$
        d1 = ASC(MID$(pd$, 48, 1)): d2 = ASC(MID$(pd$, 49, 1)): A$ = LTRIM$(STR$(d1 * 256 + d2))
      QBprint 12, 11, A$
    CASE 4
      NumPant = 25
      QBshowPant
      QBputV16 120, 43, 33
        A = ASC(MID$(pd$, 27, 1)): ap& = A + 256: A$ = SPACE$(12): GET #7, ap& * 15 + 1, A$
        A = ASC(MID$(pd$, 32, 1)): b$ = LTRIM$(STR$(A)): b$ = SPACE$(2 - LEN(b$)) + b$
        A = ASC(MID$(pd$, 37, 1)): c$ = LTRIM$(STR$(A)): c$ = SPACE$(2 - LEN(c$)) + c$
      QBprint 0, 8, A$ + " " + b$ + "/" + c$
        A = ASC(MID$(pd$, 28, 1)): ap& = A + 256: A$ = SPACE$(12): GET #7, ap& * 15 + 1, A$
        A = ASC(MID$(pd$, 33, 1)): b$ = LTRIM$(STR$(A)): b$ = SPACE$(2 - LEN(b$)) + b$
        A = ASC(MID$(pd$, 38, 1)): c$ = LTRIM$(STR$(A)): c$ = SPACE$(2 - LEN(c$)) + c$
      QBprint 0, 9, A$ + " " + b$ + "/" + c$
        A = ASC(MID$(pd$, 29, 1)): ap& = A + 256: A$ = SPACE$(12): GET #7, ap& * 15 + 1, A$
        A = ASC(MID$(pd$, 34, 1)): b$ = LTRIM$(STR$(A)): b$ = SPACE$(2 - LEN(b$)) + b$
        A = ASC(MID$(pd$, 39, 1)): c$ = LTRIM$(STR$(A)): c$ = SPACE$(2 - LEN(c$)) + c$
      QBprint 0, 10, A$ + " " + b$ + "/" + c$
        A = ASC(MID$(pd$, 30, 1)): ap& = A + 256: A$ = SPACE$(12): GET #7, ap& * 15 + 1, A$
        A = ASC(MID$(pd$, 35, 1)): b$ = LTRIM$(STR$(A)): b$ = SPACE$(2 - LEN(b$)) + b$
        A = ASC(MID$(pd$, 40, 1)): c$ = LTRIM$(STR$(A)): c$ = SPACE$(2 - LEN(c$)) + c$
      QBprint 0, 11, A$ + " " + b$ + "/" + c$
        A = ASC(MID$(pd$, 31, 1)): ap& = A + 256: A$ = SPACE$(12): GET #7, ap& * 15 + 1, A$
        A = ASC(MID$(pd$, 36, 1)): b$ = LTRIM$(STR$(A)): b$ = SPACE$(2 - LEN(b$)) + b$
        A = ASC(MID$(pd$, 41, 1)): c$ = LTRIM$(STR$(A)): c$ = SPACE$(2 - LEN(c$)) + c$
      QBprint 0, 12, A$ + " " + b$ + "/" + c$
  END SELECT
  QBputPF56 0, 0, VAL(np$) - 1, 0
  QBprint 9, 0, np$
  QBprint 9, 1, nv$
  QBprint 8, 2, nomb$
  QBprint 11, 3, eo$
  QBprint 11, 4, id$
  DQBcopyLayer 1, VIDEO
  RETURN

END SUB

SUB QBverMapa
  NumPant = Region
  QBshowPant
  lu = Lugar
  GOSUB SubPutDat
  DQBcopyLayer 1, VIDEO
  re2 = 0
  DO
    ink$ = INKEY$
    re2 = re2 + 1
    IF re2 > 10 THEN
      re2 = 0
      es = es + 1: es = es MOD 4
      NumPant = Region
      QBshowPant
      GOSUB SubPutDat
      DQBcopyLayer 1, VIDEO
    END IF
    IF ink$ = Bder$ THEN
      lu = lu + 1: IF lu = 50 THEN lu = 0
      NumPant = Region
      QBshowPant
      GOSUB SubPutDat
      DQBcopyLayer 1, VIDEO
    END IF
    IF ink$ = Bizq$ THEN
      lu = lu - 1
      IF lu = -1 AND Region = 1 THEN lu = 49
      IF lu = -1 AND Region = 2 THEN lu = 44
      IF lu = -1 AND Region = 3 THEN lu = 44
      NumPant = Region
      QBshowPant
      GOSUB SubPutDat
      DQBcopyLayer 1, VIDEO
    END IF
  LOOP UNTIL ink$ = Bb$ OR ink$ = Ba$
  EXIT SUB

SubPutDat:
  TabMap$ = QBloadTabMap(Lugar)
  cx = ASC(MID$(TabMap$, 1, 1))
  cy = ASC(MID$(TabMap$, 2, 1))
  QBputP16 cx, cy, es
  l = lu
  TabMap$ = QBloadTabMap(l)
  cx = ASC(MID$(TabMap$, 1, 1))
  cy = ASC(MID$(TabMap$, 2, 1))
  IF cx = 0 AND cy = 0 THEN
    lu = 0: l = lu: TabMap$ = QBloadTabMap(l)
    cx = ASC(MID$(TabMap$, 1, 1)): cy = ASC(MID$(TabMap$, 2, 1))
  END IF
  n$ = MID$(TabMap$, 3, 16)
  QBprint 1, 0, n$
  IF es < 3 THEN QBputV16 cx, cy, 34
  RETURN

END SUB

SUB QBverMiEstado
  Rotation = 1: Pag = 1: QBshowPagEst Pag: DQBcopyLayer 1, VIDEO
  DO
    ink$ = INKEY$
    IF ink$ = Bder$ AND Pag < 17 THEN Pag = Pag + 1: nm = Pag: QBshowPagEst nm: DQBcopyLayer 1, VIDEO
    IF ink$ = Bizq$ AND Pag > 1 THEN Pag = Pag - 1: nm = Pag: QBshowPagEst nm: DQBcopyLayer 1, VIDEO
    IF nm > 0 THEN ShowMed = 1 ELSE ShowMed = 0
    ret = ret + 1: IF ret > 3 THEN ret = 0: Rotation = Rotation + 1: IF Rotation = 5 THEN Rotation = 1
    IF ShowMed AND Pag > 1 THEN
      SELECT CASE Rotation
        CASE 1: rm = 22
        CASE 2: rm = 21
        CASE 3: rm = nm
        CASE 4: rm = 23
      END SELECT
      DQBboxf 1, VX + 119, VY + 83, VX + 137, VY + 98, 127
      QBputV16 116, 80, rm
      DQBcopyLayer 1, VIDEO
    END IF
  LOOP UNTIL ink$ = Bb$ OR ink$ = Ba$
END SUB

SUB QBverMochila
  NumPant = 26
  QBshowPant
  QBshowListM 13, 9
  Cursor(0).NX = 1: Cursor(0).NY = 3: Cursor(0).VX = 1: Cursor(0).VY = 3: Cursor(0).SP = 87
  Cursor(1).NX = 1: Cursor(1).NY = 3: Cursor(1).VX = 1: Cursor(1).VY = 3: Cursor(1).SP = 0
  QBputCursor 1
  QBputCursor 0
  DQBcopyLayer 1, VIDEO
  ns1 = -1: ns2 = -1: GastoObjeto = FALSE: CerrarMochila = FALSE: ObjetoAUsar = -1
  DO
    ink$ = INKEY$
    IF ink$ = Barr$ AND Cursor(0).NY > 3 THEN
      Cursor(0).NY = Cursor(0).NY - 1
      IF Cursor(1).VY > 2 AND Cursor(1).VY < 13 AND Cursor(1).SP = 88 THEN QBput8 Cursor(1).VX * 8, Cursor(1).VY * 8, Cursor(1).SP, Banco
      QBputCursor 0: ink$ = "": DQBcopyLayer 1, VIDEO
    END IF
    IF ink$ = Baba$ AND Cursor(0).NY < 12 AND Cursor(0).NY < OpSal THEN
      Cursor(0).NY = Cursor(0).NY + 1
      IF Cursor(1).VY > 2 AND Cursor(1).VY < 13 AND Cursor(1).SP = 88 THEN QBput8 Cursor(1).VX * 8, Cursor(1).VY * 8, Cursor(1).SP, Banco
      QBputCursor 0: ink$ = "": DQBcopyLayer 1, VIDEO
    END IF
    IF ink$ = Barr$ AND Cursor(0).NY = 3 AND MochIndex(NumBols) > 0 THEN
      MochIndex(NumBols) = MochIndex(NumBols) - 1
      IF Cursor(1).VY > 3 AND Cursor(1).VY < 13 AND Cursor(1).SP = 88 THEN QBput8 Cursor(1).VX * 8, Cursor(1).VY * 8, 82, Banco
      Cursor(1).VY = Cursor(1).VY + 1
      IF Cursor(1).VY > 3 AND Cursor(1).VY < 13 AND Cursor(1).SP = 88 THEN QBput8 Cursor(1).VX * 8, Cursor(1).VY * 8, Cursor(1).SP, Banco
      QBshowListM 13, 9
      DQBcopyLayer 1, VIDEO
    END IF
    IF ink$ = Baba$ AND Cursor(0).NY = 12 AND Cursor(0).NY < OpSal THEN
      MochIndex(NumBols) = MochIndex(NumBols) + 1
      IF Cursor(1).VY > 2 AND Cursor(1).VY < 12 AND Cursor(1).SP = 88 THEN QBput8 Cursor(1).VX * 8, Cursor(1).VY * 8, 82, Banco
      Cursor(1).VY = Cursor(1).VY - 1
      IF Cursor(1).VY > 2 AND Cursor(1).VY < 12 AND Cursor(1).SP = 88 THEN QBput8 Cursor(1).VX * 8, Cursor(1).VY * 8, Cursor(1).SP, Banco
      QBshowListM 13, 9
      DQBcopyLayer 1, VIDEO
    END IF
    IF ink$ = Ba$ AND Cursor(0).NY = OpSal THEN EXIT DO
    IF ink$ = Ba$ AND Cursor(0).NY < OpSal THEN GOSUB BoxUti
    IF ink$ = Bizq$ THEN
      NumBols = NumBols - 1: IF NumBols = -1 THEN NumBols = 2
      Cursor(0).NY = 3: ns1 = -1: ns2 = -1
      QBshowListM 13, 9
      QBputCursor 1
      QBputCursor 0
      DQBcopyLayer 1, VIDEO
    END IF
    IF ink$ = Bder$ THEN
      NumBols = NumBols + 1: IF NumBols = 3 THEN NumBols = 0
      Cursor(0).NY = 3: ns1 = -1: ns2 = -1
      QBshowListM 13, 9
      QBputCursor 1
      QBputCursor 0
      DQBcopyLayer 1, VIDEO
    END IF
    IF ink$ = Bsel$ AND ns1 > -1 AND Cursor(0).NY < OpSal THEN
      ns2 = MochIndex(NumBols) + Cursor(0).NY - 2
      IF NumBols = 0 THEN la = 2: fs = 0
      IF NumBols = 1 THEN la = 1: fs = 41
      IF NumBols = 2 THEN la = 2: fs = 50
      A$ = MID$(ContMoch$, ns1 * la + fs - 1, la)
      b$ = MID$(ContMoch$, ns2 * la + fs - 1, la)
      MID$(ContMoch$, ns1 * la + fs - 1, la) = b$
      MID$(ContMoch$, ns2 * la + fs - 1, la) = A$
      ns1 = -1: ns2 = -1: Cursor(1).SP = 0
      ink$ = ""
      QBshowListM 13, 9
      QBputCursor 1
      QBputCursor 0
      DQBcopyLayer 1, VIDEO
    END IF
    IF ink$ = Bsel$ AND ns1 = -1 AND Cursor(0).NY < OpSal THEN ns1 = MochIndex(NumBols) + Cursor(0).NY - 2: Cursor(1).SP = 88: Cursor(1).VY = Cursor(0).NY
    IF ink$ = Bb$ AND Cursor(1).SP = 88 THEN
      IF Cursor(1).VY > 2 AND Cursor(1).VY < 13 THEN QBput8 Cursor(1).VX * 8, Cursor(1).VY * 8, 82, Banco: QBputCursor 0: DQBcopyLayer 1, VIDEO
      Cursor(1).SP = 0: ns1 = -1: ns2 = -1
      ink$ = ""
    END IF
  LOOP UNTIL ink$ = Bb$ OR CerrarMochila
  EXIT SUB

BoxUti:
  Cursor(0).SP = 88
  Cursor(1).VX = 10: Cursor(1).VY = 10: Cursor(1).NX = 10: Cursor(1).NY = 10: Cursor(1).SP = 87
  QBputBox 0, 9, 9, 8, 4
  QBprint 11, 10, "USAR"
  QBprint 11, 11, "SALIR"
  QBputCursor 1
  QBputCursor 0
  DQBcopyLayer 1, VIDEO
  opc = 0
  DO
    ink$ = INKEY$
    IF ink$ = Barr$ AND Cursor(1).NY = 11 THEN Cursor(1).NY = 10: QBputCursor 1: DQBcopyLayer 1, VIDEO
    IF ink$ = Baba$ AND Cursor(1).NY = 10 THEN Cursor(1).NY = 11: QBputCursor 1: DQBcopyLayer 1, VIDEO
    IF ink$ = Ba$ AND Cursor(1).VY = 10 THEN
      IF NumBols = 0 THEN A = (MochIndex(NumBols) + Cursor(0).NY - 3) * 2 + 1
      IF NumBols = 1 THEN A = (MochIndex(NumBols) + Cursor(0).NY - 3) + 41
      IF NumBols = 2 THEN A = (MochIndex(NumBols) + Cursor(0).NY - 3) * 2 + 51
      OB = ASC(MID$(ContMoch$, A, 1))
      IF UTILIZAR(OB) THEN
        ObjetoAUsar = OB
        IF UTILIZAR(ObjetoAUsar) = 1 THEN
          QBusar ObjetoAUsar: ObjetoAUsar = -1
          IF NumBols <> 1 AND GastoObjeto = TRUE THEN
            cant = ASC(MID$(ContMoch$, A + 1, 1)) - 1
            MID$(ContMoch$, A + 1, 1) = CHR$(cant)
            IF cant = 0 THEN
              MID$(ContMoch$, A, 1) = CHR$(0)
              IF NumBols = 0 THEN LO$ = MID$(ContMoch$, 1, 40): LO$ = QBordCad(LO$, 2): MID$(ContMoch$, 1, 40) = LO$
              IF NumBols = 2 THEN LO$ = MID$(ContMoch$, 51, 60): LO$ = QBordCad(LO$, 2): MID$(ContMoch$, 51, 60) = LO$
            END IF
          END IF
        ELSE
          IF NumBols = 0 THEN A = (MochIndex(NumBols) + Cursor(0).NY - 3) * 2 + 1
          IF NumBols = 2 THEN A = (MochIndex(NumBols) + Cursor(0).NY - 3) * 2 + 51
          CerrarMochila = TRUE: GastoObjeto = TRUE
          IF NumBols <> 1 THEN
            cant = ASC(MID$(ContMoch$, A + 1, 1)) - 1
            MID$(ContMoch$, A + 1, 1) = CHR$(cant)
            IF cant = 0 THEN
              MID$(ContMoch$, A, 1) = CHR$(0)
              IF NumBols = 0 THEN LO$ = MID$(ContMoch$, 1, 40): LO$ = QBordCad(LO$, 2): MID$(ContMoch$, 1, 40) = LO$
              IF NumBols = 2 THEN LO$ = MID$(ContMoch$, 51, 60): LO$ = QBordCad(LO$, 2): MID$(ContMoch$, 51, 60) = LO$
            END IF
          END IF
        END IF
        EXIT DO
      ELSE
        QBputBox 1, 0, 9, 18, 5
        QBprint 1, 10, "≠" + NombPers$ + "! ≠êste"
        QBprint 1, 11, "no es el momento"
        QBprint 1, 12, "de utilizarlo/a!"
        DQBcopyLayer 1, VIDEO
        QBwaitAB
        EXIT DO
      END IF
    END IF
    IF ink$ = Ba$ AND Cursor(1).NY = 11 THEN EXIT DO
  LOOP UNTIL ink$ = Bb$
  ink$ = ""
  Cursor(0).SP = 87: Cursor(1).SP = 0
  Cursor(1).NX = Cursor(0).NX: Cursor(1).NY = Cursor(0).NY
  Cursor(1).VX = Cursor(0).NX: Cursor(1).VY = Cursor(0).NY
  QBshowPant
  QBshowListM 13, 9
  QBputCursor 1
  QBputCursor 0
  DQBcopyLayer 1, VIDEO
  RETURN

END SUB

SUB QBverPkm (Cur)
  DQBboxf 1, VX + 3, VY + 3, VX + 146, VY + 114, 127
  DQBbox 1, VX + 1, VY + 1, VX + 148, VY + 116, 15
  QBprint 0, 12, "||||||||||||||||||"
  QBprint 0, 13, "Elige un POKêMON  "
  DQBcopyLayer 1, 0
  Cursor(Cur + 1).NX = 0: Cursor(Cur + 1).NY = 1
  Cursor(Cur + 1).VX = 0: Cursor(Cur + 1).VY = 1: Cursor(Cur + 1).SP = 0
  Cursor(Cur).NX = 0: Cursor(Cur).NY = 1
  Cursor(Cur).VX = 0: Cursor(Cur).VY = 1: Cursor(Cur).SP = 87
  Cursor(Cur + 2).NX = 0: Cursor(Cur + 2).NY = 0: Cursor(Cur + 2).VX = 0: Cursor(Cur + 2).VY = 0: Cursor(Cur + 2).SP = 0
  DO
    ps = QBselecPoke(Cur, 0)
    'ps = 4
    IF ps > 0 AND ps < 7 THEN
      GOSUB SubOpMenu
      SELECT CASE opc
        CASE 3 TO 7
          IF ACCION$ = "LUCHANDO" OR NumTec = ASC(MID$(Z$, opc - 1, 1)) THEN
            QBputBox 1, 0, 9, 18, 5
            QBprint 1, 10, "≠Este no es el"
            QBprint 1, 11, "momento de usar"
            t = ASC(MID$(Z$, opc - 1, 1)): A$ = MID$(NombObj(t + 256), 1, 12)
            QBprint 1, 12, RTRIM$(A$) + "!"
            DQBcopyLayer 1, VIDEO
            QBwaitAB
            DQBboxf 1, VX + 3, VY + 3, VX + 146, VY + 114, 127
            DQBbox 1, VX + 1, VY + 1, VX + 148, VY + 116, 15
            QBprint 0, 12, "||||||||||||||||||"
            QBprint 0, 13, "Elige un POKêMON  "
            DQBcopyLayer 1, 0
          ELSE
            PkmAcc = ps: NumTec = ASC(MID$(Z$, opc - 1, 1)): EXIT DO
          END IF
        CASE 8
          QBverEstPkm ps
          DQBboxf 1, VX + 3, VY + 3, VX + 146, VY + 114, 127
          DQBbox 1, VX + 1, VY + 1, VX + 148, VY + 116, 15
          QBprint 0, 12, "||||||||||||||||||"
          QBprint 0, 13, "Elige un POKêMON  "
          DQBcopyLayer 1, 0
        CASE 9
          IF ACCION$ = "CAMINANDO" OR ACCION$ = "NADANDO" THEN
            Cursor(Cur + 1).NY = Cursor(Cur).NY: Cursor(Cur + 1).SP = 88
            QBputCursor Cur + 1
            QBputCursor Cur
            QBprint 0, 13, "Elige otro POKêMON"
            DQBcopyLayer 1, VIDEO
            ps2 = QBselecPoke(Cur, 0)
            IF ps2 > 0 AND ps2 < 7 THEN GOSUB SubCambio
            Cursor(Cur + 1).SP = 0
            QBprint 0, 13, "Elige un POKêMON  "
          ELSEIF ACCION$ = "LUCHANDO" THEN
            nnp = ((Cursor(Cur).NY - 1) / 2) + 1
            pd$ = LPoke(nnp)
            IF nnp = NumPkmF AND ASC(MID$(pd$, 22, 1)) <> 2 THEN
              QBprint 0, 13, "≠Ya est† luchando!"
              DQBcopyLayer 1, VIDEO
              QBwaitAB
              QBprint 0, 13, "Elige un POKêMON  "
            ELSEIF nnp <> NumPkmF AND ASC(MID$(pd$, 22, 1)) <> 2 THEN
              NumPkmF = nnp
              EXIT DO
            ELSEIF ASC(MID$(pd$, 22, 1)) = 2 THEN
              QBprint 0, 13, "≠No puede luchar! "
              DQBcopyLayer 1, VIDEO
              QBwaitAB
              QBprint 0, 13, "Elige un POKêMON  "
            END IF
          END IF
      END SELECT
    END IF
    IF ps = 10 AND ACCION$ = "LUCHANDO" THEN
      pd$ = LPoke(NumPkmF)
      IF ASC(MID$(pd$, 22, 1)) <> 2 THEN EXIT DO
    ELSEIF ps = 10 AND ACCION$ <> "LUCHANDO" THEN
      EXIT DO
    END IF
  LOOP
  EXIT SUB

SubOpMenu:
  pd$ = LPoke(ps)
  A$ = MID$(pd$, 27, 5)
  Z$ = MSataqs(A$)
  y = ASC(MID$(Z$, 1, 1))
  QBputBox 0, 7, y - 1, 11, 13 - y
  A = ASC(MID$(Z$, 2, 1)): IF A > 0 THEN A$ = MID$(NombObj(A + 256), 1, 8): QBprint 9, 3, A$
  A = ASC(MID$(Z$, 3, 1)): IF A > 0 THEN A$ = MID$(NombObj(A + 256), 1, 8): QBprint 9, 4, A$
  A = ASC(MID$(Z$, 4, 1)): IF A > 0 THEN A$ = MID$(NombObj(A + 256), 1, 8): QBprint 9, 5, A$
  A = ASC(MID$(Z$, 5, 1)): IF A > 0 THEN A$ = MID$(NombObj(A + 256), 1, 8): QBprint 9, 6, A$
  A = ASC(MID$(Z$, 6, 1)): IF A > 0 THEN A$ = MID$(NombObj(A + 256), 1, 8): QBprint 9, 7, A$
  QBprint 9, 8, "ESTADO"
  QBprint 9, 9, "CAMBIO"
  QBprint 9, 10, "SALIR "
  Cursor(Cur + 1).NY = Cursor(Cur).NY: Cursor(Cur + 1).VY = Cursor(Cur + 1).NY: Cursor(Cur + 1).SP = 88
  Cursor(Cur).NY = y: Cursor(Cur).NX = 8: Cursor(Cur).SP = 87
  QBputCursor Cur + 1
  QBputCursor Cur
  QBprint 0, 13, "Elige una opci¢n  "
  DQBcopyLayer 1, VIDEO
  opc = 0
  DO
    ink$ = INKEY$
    IF ink$ = Barr$ AND Cursor(Cur).NY > y THEN Cursor(Cur).NY = Cursor(Cur).NY - 1: QBputCursor Cur: DQBcopyLayer 1, VIDEO
    IF ink$ = Baba$ AND Cursor(Cur).NY < 10 THEN Cursor(Cur).NY = Cursor(Cur).NY + 1: QBputCursor Cur: DQBcopyLayer 1, VIDEO
    IF ink$ = Ba$ THEN opc = Cursor(Cur).NY: EXIT DO
  LOOP UNTIL ink$ = Bb$
  Cursor(Cur).NX = Cursor(Cur + 1).NX: Cursor(Cur).NY = Cursor(Cur + 1).NY: Cursor(Cur).VX = Cursor(Cur).NX: Cursor(Cur).VY = Cursor(Cur).NY: Cursor(Cur).SP = 87
  Cursor(Cur + 1).NX = 0: Cursor(Cur + 1).NY = 1: Cursor(Cur + 1).VX = 0: Cursor(Cur + 1).VY = 1: Cursor(Cur + 1).SP = 0
  DQBboxf 1, VX + 7 * 8 + 3, VY + y * 8 - 5, VX + 146, VY + 99, 127
  RETURN

SubCambio:
  A$ = LPoke(ps)
  b$ = LPoke(ps2)
  SPoke ps2, A$
  SPoke ps, b$
  RETURN

END SUB

SUB QBverPokeDex
  NumPant = 20
  QBshowPant
  QBshowListPD
  Cursor(0).NX = 1: Cursor(0).NY = 1: Cursor(0).VX = 1: Cursor(0).VY = 1: Cursor(0).SP = 87
  QBputCursor 0
  DQBcopyLayer 1, VIDEO
  DO
    ink$ = INKEY$
    IF ink$ = Barr$ AND Cursor(0).NY > 1 THEN Cursor(0).NY = Cursor(0).NY - 1: QBputCursor 0: ink$ = "": DQBcopyLayer 1, VIDEO
    IF ink$ = Baba$ AND Cursor(0).NY < 9 THEN Cursor(0).NY = Cursor(0).NY + 1: QBputCursor 0: ink$ = "": DQBcopyLayer 1, VIDEO
    IF ink$ = Barr$ AND Cursor(0).NY = 1 AND DexIndex > 0 THEN DexIndex = DexIndex - 1: QBshowListPD: DQBcopyLayer 1, VIDEO
    IF ink$ = Baba$ AND Cursor(0).NY = 9 AND DexIndex < 242 THEN DexIndex = DexIndex + 1: QBshowListPD: DQBcopyLayer 1, VIDEO
    IF ink$ = Bizq$ THEN DexIndex = DexIndex - 9: IF DexIndex < 0 THEN DexIndex = 0: QBshowListPD: DQBcopyLayer 1, VIDEO ELSE QBshowListPD: DQBcopyLayer 1, VIDEO
    IF ink$ = Bder$ THEN DexIndex = DexIndex + 9: IF DexIndex > 242 THEN DexIndex = 242: QBshowListPD: DQBcopyLayer 1, VIDEO ELSE QBshowListPD: DQBcopyLayer 1, VIDEO
    IF ink$ = CHR$(0) + ";" THEN
      n = DexIndex + Cursor(0).NY
      IF MID$(PkmVA$, n, 1) = " " THEN
        MID$(PkmVA$, n, 1) = "V": NPokeVist = NPokeVist + 1
      ELSEIF MID$(PkmVA$, n, 1) = "V" THEN
        MID$(PkmVA$, n, 1) = "A": NPokeAtra = NPokeAtra + 1
      ELSEIF MID$(PkmVA$, n, 1) = "A" THEN
        MID$(PkmVA$, n, 1) = " ": NPokeAtra = NPokeAtra - 1: NPokeVist = NPokeVist - 1
      END IF
      QBshowListPD
      DQBcopyLayer 1, VIDEO
    END IF
    IF ink$ = Ba$ THEN
      n = DexIndex + Cursor(0).NY
      IF MID$(PkmVA$, n, 1) = "V" OR MID$(PkmVA$, n, 1) = "A" THEN A$ = MID$(PkmVA$, n, 1): QBshowDescOfPkm n, A$
    END IF
  LOOP UNTIL ink$ = Bb$
END SUB

SUB QBwaitAB
  DO: LOOP UNTIL INKEY$ = ""
  DO
    ink$ = INKEY$
  LOOP UNTIL ink$ = Ba$ OR ink$ = Bb$
END SUB

'p: 0-9=Salvaje
'    -1=Ninguno
'    >9=Definido-10
SUB QBwritePkmTMP (p1, p2, p3, p4, p5, p6)
  PkmNoFound = FALSE
  TotalPR = 0
  IF p1 = -2 THEN sl = 0: pk = p2: nv = p3: p2 = -1: p3 = -1: GOSUB SubPkmEspecial
  IF p1 = -1 THEN sl = 0: GOSUB SubNoPkm
  IF p1 >= 0 AND p1 <= 9 THEN pk = p1: sl = 0: GOSUB SubPkmSalvaje
  IF p1 > 9 THEN pk = p1 - 10: sl = 0: GOSUB SubPkmDefinido
  IF p2 = -1 THEN sl = 1: GOSUB SubNoPkm
  IF p2 >= 0 AND p1 <= 9 THEN pk = p2: sl = 1: GOSUB SubPkmSalvaje
  IF p2 > 9 THEN pk = p2 - 10: sl = 1: GOSUB SubPkmDefinido
  IF p3 = -1 THEN sl = 2: GOSUB SubNoPkm
  IF p3 >= 0 AND p3 <= 9 THEN pk = p3: sl = 2: GOSUB SubPkmSalvaje
  IF p3 > 9 THEN pk = p3 - 10: sl = 2: GOSUB SubPkmDefinido
  IF p4 = -2 THEN sl = 1: pk = p5: nv = p6: p5 = -1: p6 = -1: GOSUB SubPkmEspecial
  IF p4 = -1 THEN sl = 3: GOSUB SubNoPkm
  IF p4 >= 0 AND p3 <= 9 THEN pk = p4: sl = 3: GOSUB SubPkmSalvaje
  IF p4 > 9 THEN pk = p4 - 10: sl = 3: GOSUB SubPkmDefinido
  IF p5 = -1 THEN sl = 4: GOSUB SubNoPkm
  IF p5 >= 0 AND p5 <= 9 THEN pk = p5: sl = 4: GOSUB SubPkmSalvaje
  IF p5 > 9 THEN pk = p5 - 10: sl = 4: GOSUB SubPkmDefinido
  IF p6 = -1 THEN sl = 5: GOSUB SubNoPkm
  IF p6 >= 0 AND p6 <= 9 THEN pk = p6: sl = 5: GOSUB SubPkmSalvaje
  IF p6 > 9 THEN pk = p6 - 10: sl = 5: GOSUB SubPkmDefinido
  PkmF(1).ATAQ = 95: PkmF(2).ATAQ = 95
  PkmF(1).DEFE = 95: PkmF(2).DEFE = 95
  PkmF(1).VELO = 95: PkmF(2).VELO = 95
  PkmF(1).ESPE = 95: PkmF(2).ESPE = 95
  PkmF(1).PRES = 95: PkmF(2).PRES = 95
  PkmF(1).EVAD = 95: PkmF(2).EVAD = 95
  PkmF(1).CRIT = 10: PkmF(2).CRIT = 10
  PkmF(1).CONF = 0:  PkmF(2).CONF = 0
  PkmF(1).EVAD = 1: PkmF(2).EVAD = 1
  PkmF(0).CONF = 0: PkmF(3).CONF = 0
  EXIT SUB

SubNoPkm:
  FOR i = 0 TO 52
    A$ = CHR$(0): PUT #14, sl * 53 + i + 1, A$
  NEXT i
  RETURN

SubPkmSalvaje:
  PokeSalvaje$ = MSpokeFound(pk)
  IF PkmNoFound THEN EXIT SUB
  PUT #14, sl * 53 + 1, PokeSalvaje$
  TotalPR = TotalPR + 1
  RETURN

SubPkmDefinido:
  PokeDefinido$ = MSloadPoke(pk)
  PUT #14, sl * 53 + 1, PokeDefinido$
  TotalPR = TotalPR + 1
  RETURN

SubPkmEspecial:
  PokeEspecial$ = MSsetData(pk, nv)
  PUT #14, sl * 53 + 1, PokeEspecial$
  TotalPR = TotalPR + 1
  RETURN

END SUB

SUB QBwriteTMP
  FOR p = 1 TO 10
    IF Persona(p).t = 4 THEN
      ap = Persona(p).x1 * 12 + 16985 + 1
      SEEK #9, ap
      A$ = CHR$(Persona(p).e): PUT #9, , A$
      A$ = CHR$(Persona(p).x): PUT #9, , A$
      A$ = CHR$(Persona(p).y): PUT #9, , A$
      A$ = CHR$(Persona(p).c): PUT #9, , A$
      A$ = CHR$(Persona(p).s): PUT #9, , A$
      A$ = CHR$(Persona(p).p): PUT #9, , A$
      b = Persona(p).y1 MOD 256
      A = (Persona(p).y1 - b) / 256
      A$ = CHR$(A): PUT #9, , A$
      A$ = CHR$(b): PUT #9, , A$
      A$ = CHR$(Persona(p).x2): PUT #9, , A$
      A$ = CHR$(Persona(p).y2): PUT #9, , A$
    END IF
  NEXT p
END SUB

FUNCTION SearchEvo (te, np)
  SELECT CASE te
   CASE 0
    SELECT CASE np
      CASE 42: npe = 169
      CASE 113: npe = 242
      CASE 172: npe = 25
      CASE 133: npe = 196
      CASE 238: npe = 124
      CASE 239: npe = 125
      CASE 240: npe = 126
      CASE ELSE: npe = np + 1
    END SELECT
   CASE 50 TO 55
    SELECT CASE np
      CASE 25: IF te = 55 THEN npe = 26
      CASE 133
        IF te = 55 THEN npe = 135
        IF te = 50 THEN npe = np + 1
        IF te = 51 THEN npe = 136
      CASE 191: IF te = 54 THEN npe = np + 1
      CASE 44
        IF te = 54 THEN npe = 182
        IF te = 52 THEN npe = np + 1
      CASE 30, 33, 35, 39: IF te = 53 THEN npe = np + 1
      CASE 70, 102, 188: IF te = 52 THEN npe = np + 1
      CASE 37, 58: IF te = 51 THEN npe = np + 1
      CASE 61, 90, 120: IF te = 50 THEN npe = np + 1
      CASE 117: IF te = 50 THEN npe = 230
      CASE ELSE: npe = 0
    END SELECT
   CASE 66: IF np = 236 THEN npe = 106
   CASE 33: IF np = 236 THEN npe = 107
   CASE -1
    SELECT CASE np
      CASE 64, 67, 75, 93: npe = np + 1
      CASE 137: npe = 233
      CASE 60, 61, 62: npe = 186
      CASE 79: npe = 199
      CASE 133: npe = 197
      CASE 95: npe = 208
      CASE ELSE: npe = 0
    END SELECT
  END SELECT
  SearchEvo = npe
END FUNCTION

FUNCTION SetTypeWater (nz)
  'SELECT CASE nz
  '  CASE 31 TO 34, 75 TO 78, 57 TO 60, 50 TO 53, 121, 130 TO 137: ta = 1
  'END SELECT
  'SetTypeWater = ta
  IF Interno(nz) THEN SetTypeWater = 1
END FUNCTION

FUNCTION SiONO (QFn6)
  QBputBox 1, 13, 5, 5, 4
  QBprint 15, 6, "SI"
  QBprint 15, 7, "NO"
  Cursor(QFn6).NX = 14: Cursor(QFn6).NY = 6: Cursor(QFn6).VX = 14: Cursor(QFn6).VY = 6: Cursor(QFn6).SP = 87: Cursor(QFn6 + 1).SP = 0
  QBputCursor QFn6
  DQBcopyLayer 1, VIDEO
  DO: LOOP UNTIL INKEY$ = ""
  DO
    ink$ = INKEY$
    IF ink$ = Barr$ AND Cursor(QFn6).NY = 7 THEN Cursor(QFn6).NY = 6: QBputCursor QFn6: DQBcopyLayer 1, VIDEO
    IF ink$ = Baba$ AND Cursor(QFn6).NY = 6 THEN Cursor(QFn6).NY = 7: QBputCursor QFn6: DQBcopyLayer 1, VIDEO
    IF ink$ = Ba$ AND Cursor(QFn6).NY = 6 THEN SiONO = TRUE
    IF ink$ = Ba$ AND Cursor(QFn6).NY = 7 THEN SiONO = FALSE
    IF ink$ = Bb$ THEN SiONO = FALSE: EXIT DO
  LOOP UNTIL ink$ = Ba$
END FUNCTION

SUB SPoke (np, pd$)
  IF np < 7 THEN
    PUT #9, (np - 1) * 53 + 1, pd$
  ELSEIF np > 6 AND np < 13 THEN
    PUT #14, (np - 7) * 53 + 1, pd$
  ELSEIF np > 12 AND np < 37 THEN
    PUT #9, (NCaja * 24 + np - 7) * 53 + 1, pd$
  END IF
END SUB

FUNCTION SubirDatos$ (nm, nv, sn, pd$)
  OPEN Direccion$ + "TABLAS-F.BIN" FOR BINARY AS #1
    A$ = SPACE$(13): ap& = nm
    GET #1, ap& * 13 + 78781, A$
  CLOSE #1
  d1 = ASC(MID$(A$, 3, 1)): d2 = ASC(MID$(A$, 4, 1)): dt = d1 * 256 + d2
  ps1 = dt / 100 * nv: ps2 = dt / 100 * (nv + sn)
  d1 = ASC(MID$(pd$, 23, 1)): d2 = ASC(MID$(pd$, 24, 1)): dt = d1 * 256 + d2
  nps = ps2 + dt - ps1: IF nps < 0 THEN nps = 0
  d2 = nps MOD 256: d1 = (nps - d2) / 256: MID$(pd$, 23, 1) = CHR$(d1): MID$(pd$, 24, 1) = CHR$(d2)
  d1 = ASC(MID$(pd$, 25, 1)): d2 = ASC(MID$(pd$, 26, 1)): dt = d1 * 256 + d2: IF dt < ps1 THEN dt = ps1
  nps = ps2 + dt - ps1
  d2 = nps MOD 256: d1 = (nps - d2) / 256: MID$(pd$, 25, 1) = CHR$(d1): MID$(pd$, 26, 1) = CHR$(d2)
  d1 = ASC(MID$(A$, 5, 1)): d2 = ASC(MID$(A$, 6, 1)): dt = d1 * 256 + d2
  ps1 = dt / 100 * nv: ps2 = dt / 100 * (nv + sn)
  d1 = ASC(MID$(pd$, 42, 1)): d2 = ASC(MID$(pd$, 43, 1)): dt = d1 * 256 + d2: IF dt < ps1 THEN dt = ps1
  nps = ps2 + dt - ps1
  d2 = nps MOD 256: d1 = (nps - d2) / 256: MID$(pd$, 42, 1) = CHR$(d1): MID$(pd$, 43, 1) = CHR$(d2)
  d1 = ASC(MID$(A$, 7, 1)): d2 = ASC(MID$(A$, 8, 1)): dt = d1 * 256 + d2
  ps1 = dt / 100 * nv: ps2 = dt / 100 * (nv + sn)
  d1 = ASC(MID$(pd$, 44, 1)): d2 = ASC(MID$(pd$, 45, 1)): dt = d1 * 256 + d2: IF dt < ps1 THEN dt = ps1
  nps = ps2 + dt - ps1
  d2 = nps MOD 256: d1 = (nps - d2) / 256: MID$(pd$, 44, 1) = CHR$(d1): MID$(pd$, 45, 1) = CHR$(d2)
  d1 = ASC(MID$(A$, 9, 1)): d2 = ASC(MID$(A$, 10, 1)): dt = d1 * 256 + d2
  ps1 = dt / 100 * nv: ps2 = dt / 100 * (nv + sn)
  d1 = ASC(MID$(pd$, 46, 1)): d2 = ASC(MID$(pd$, 47, 1)): dt = d1 * 256 + d2: IF dt < ps1 THEN dt = ps1
  nps = ps2 + dt - ps1
  d2 = nps MOD 256: d1 = (nps - d2) / 256: MID$(pd$, 46, 1) = CHR$(d1): MID$(pd$, 47, 1) = CHR$(d2)
  d1 = ASC(MID$(A$, 11, 1)): d2 = ASC(MID$(A$, 12, 1)): dt = d1 * 256 + d2
  ps1 = dt / 100 * nv: ps2 = dt / 100 * (nv + sn)
  d1 = ASC(MID$(pd$, 48, 1)): d2 = ASC(MID$(pd$, 49, 1)): dt = d1 * 256 + d2: IF dt < ps1 THEN dt = ps1
  nps = ps2 + dt - ps1
  d2 = nps MOD 256: d1 = (nps - d2) / 256: MID$(pd$, 48, 1) = CHR$(d1): MID$(pd$, 49, 1) = CHR$(d2)
  MID$(pd$, 21, 1) = CHR$(nv + sn)
  MID$(pd$, 1, 1) = CHR$(nm)
  MID$(pd$, 19, 2) = MID$(A$, 1, 2)
  IF ACCION$ <> "LUCHANDO" THEN
    t = ASC(MID$(A$, 13, 1))
    OPEN Direccion$ + "TABLAS-F.BIN" FOR BINARY AS #1
    A$ = "   ": GET #1, t * 303 + (nv + sn) * 3 + 1, A$
    MID$(pd$, 50, 3) = A$
    CLOSE #1
  END IF
  SubirDatos = pd$
END FUNCTION

FUNCTION SubirNivel$ (pd$, ec, xt, adi)
  IF adi THEN nm& = ASC(MID$(pd$, 1, 1)): GOTO SubEvoInm
  nv = ASC(MID$(pd$, 21, 1))
  nm = ASC(MID$(pd$, 1, 1))
  pd$ = SubirDatos(nm, nv, 1, pd$)
  IF ec = 1 THEN
    QBprint 15, xt - 1, LTRIM$(STR$(nv + 1))
    d1 = ASC(MID$(pd$, 23, 1)): d2 = ASC(MID$(pd$, 24, 1)): en = d1 * 256 + d2
    d1 = ASC(MID$(pd$, 25, 1)): d2 = ASC(MID$(pd$, 26, 1)): men = d1 * 256 + d2
    QBput8 80, xt * 8, 177, Banco: QBput8 136, xt * 8, 181, Banco: QBshowBarEner 11, xt, CLNG(en), CLNG(men)
    A$ = "000/000": b$ = LTRIM$(STR$(en)): c$ = LTRIM$(STR$(men))
    MID$(A$, 4 - LEN(b$), LEN(b$)) = b$: MID$(A$, 8 - LEN(c$), LEN(c$)) = c$
    QBprint 3, xt, A$
  END IF
  QBputBox 1, 0, 9, 18, 5
  n$ = RTRIM$(MID$(pd$, 2, 10))
  QBprint 1, 10, "≠" + n$
  QBprint 1, 11, "subi¢ al nivel"
  s$ = LTRIM$(STR$(nv + 1)) + "!"
  QBprint 1, 12, s$
  DQBcopyLayer 1, VIDEO
  QBwaitAB
  QBshowBoxEst pd$
SubSeeTT:
  nm& = ASC(MID$(pd$, 1, 1))
  OPEN Direccion$ + "TABLAS-F.BIN" FOR BINARY AS #1
    ttn$ = "   "
    GET #1, nm& * 303 + (nv + 1) * 3 + 1213, ttn$
  CLOSE #1
  tec = ASC(MID$(ttn$, 1, 1)): IF tec > 0 AND tec < 255 THEN pd$ = QBapreTecn(pd$, tec)
  tec = ASC(MID$(ttn$, 2, 1)): IF tec > 0 AND tec < 255 THEN pd$ = QBapreTecn(pd$, tec)
  tec = ASC(MID$(ttn$, 3, 1)): IF tec > 0 AND tec < 255 THEN pd$ = QBapreTecn(pd$, tec)
  IF ASC(MID$(ttn$, 3, 1)) = 255 THEN
SubEvoInm:
    n = nm&
    evo = SearchEvo(adi, n)
    IF evo > 0 AND evo < 255 THEN
      A$ = EvoPokemon(pd$, evo)
      IF ASC(MID$(A$, 1, 1)) = evo THEN
        pd$ = SubirDatos(ASC(MID$(A$, 1, 1)), ASC(MID$(A$, 21, 1)), 0, A$)
        GOTO SubSeeTT
      END IF
    END IF
  END IF
  IF ASC(MID$(pd$, 24, 1)) > 0 AND MID$(pd$, 22, 1) = CHR$(2) THEN MID$(pd$, 22, 1) = CHR$(0)
  SubirNivel$ = pd$
END FUNCTION

FUNCTION TipoTecnica (nt)
  SELECT CASE nt
    CASE 56, 254, 227, 69, 100, 41, 237: TipoTecnica = 2
    CASE 62, 83, 90, 110, 113, 232: TipoTecnica = 1
    CASE ELSE: TipoTecnica = 0
  END SELECT
END FUNCTION

FUNCTION UTILIZAR (OB)
  SELECT CASE OB
    CASE 1 TO 7, 9 TO 16, 19, 21, 23, 25, 27, 28, 30 TO 32, 34, 36, 37, 41, 43
      IF TPokemon THEN uu = 1
    CASE 56, 60, 62, 67, 68, 70, 71, 75, 80, 115, 121, 122
      IF TPokemon THEN uu = 1
    CASE 17, 18, 20, 33, 38, 39, 42, 50 TO 55, 57, 66, 69, 76, 88, 123 TO 196
      IF ACCION$ <> "LUCHANDO" THEN uu = 1
      IF OB = 88 THEN uu = 2
    CASE 22, 86: IF Interno(NumZona) THEN uu = 2
    CASE 85, 93, 94, 119
      IF ACCION$ = "CAMINANDO" AND TPokemon THEN uu = 2
    CASE 8, 24, 26, 29, 61, 64, 65, 79
      IF ACCION$ = "LUCHANDO" THEN uu = 1
    CASE 40, 46, 58, 72, 74, 78
      IF ACCION$ = "LUCHANDO" AND NombEnem$ = "" THEN uu = 2
  END SELECT
  UTILIZAR = uu
END FUNCTION

FUNCTION WaterFree (ns)
  OPEN Direccion$ + "TABLAS-F.BIN" FOR BINARY AS #10
  A$ = " ": GET #10, CLNG(ns) + 105481, A$
  CLOSE #10
  IF ASC(A$) > 1 THEN WaterFree = ASC(A$)
END FUNCTION

