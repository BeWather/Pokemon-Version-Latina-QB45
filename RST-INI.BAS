DEFINT A-Z

OPEN "C:\newpoke1\pokelati.ini" FOR BINARY AS #1
CLS
DO
  READ a
  IF a = -4 THEN EXIT DO
  IF a < 0 THEN
    IF a = -1 THEN
      READ c, n
      a$ = CHR$(c)
      FOR d = 1 TO n
        PUT #1, , a$
      NEXT d
    END IF
    IF a = -2 THEN
      READ a$
      PUT #1, , a$
    END IF
    IF a = -3 THEN
      READ r
      FOR d = 1 TO r
        READ j
        a$ = CHR$(j)
        PUT #1, , a$
      NEXT d
    END IF
    IF a = -5 THEN
      READ ap
      SEEK #1, ap
    END IF
    IF a = -6 THEN
      CLOSE #1
      READ a$
      OPEN a$ FOR BINARY AS #1
    END IF
    IF a = -7 THEN
      READ NumEntren
      SEEK #1, NumEntren * 40 + 1
      READ ni, n$, p1, p2, p3, p4, p5, p6, din, dia, rng
      a$ = CHR$(ni): PUT #1, , a$
      PUT #1, , n$
      d2 = p1 MOD 256: d1 = (p1 - d2) / 256: a$ = CHR$(d1) + CHR$(d2): PUT #1, , a$
      d2 = p2 MOD 256: d1 = (p2 - d2) / 256: a$ = CHR$(d1) + CHR$(d2): PUT #1, , a$
      d2 = p3 MOD 256: d1 = (p3 - d2) / 256: a$ = CHR$(d1) + CHR$(d2): PUT #1, , a$
      d2 = p4 MOD 256: d1 = (p4 - d2) / 256: a$ = CHR$(d1) + CHR$(d2): PUT #1, , a$
      d2 = p5 MOD 256: d1 = (p5 - d2) / 256: a$ = CHR$(d1) + CHR$(d2): PUT #1, , a$
      d2 = p6 MOD 256: d1 = (p6 - d2) / 256: a$ = CHR$(d1) + CHR$(d2): PUT #1, , a$
      d2 = din MOD 256: d1 = (din - d2) / 256: a$ = CHR$(d1): b$ = CHR$(d2)
      PUT #1, , a$: PUT #1, , b$
      d2 = dia MOD 256: d1 = (dia - d2) / 256: a$ = CHR$(d1): b$ = CHR$(d2)
      PUT #1, , a$: PUT #1, , b$
      a$ = CHR$(rng): PUT #1, , a$
    END IF
  ELSE
    a$ = CHR$(a)
    PUT #1, , a$
  END IF
LOOP

CLOSE #1
END

'DIR = CoorX, CoorY, Reg, Lug, Map, Zon

DATA -1, 0,   7         : ' Nombre                              CADENA
DATA 0                  : ' Medallas KANTO                      NUMERO
DATA 0                  : ' Medallas JOHTO                      NUMERO
DATA 0                  : ' Medallas ARGOS                      NUMERO
DATA 0                  : ' TPok�dex                            NUMERO
DATA 0                  : ' TPokemon                            NUMERO
DATA 0                  : ' TMapa                               NUMERO
DATA 0                  : ' NumPokeAtra                         NUMERO
DATA 0                  : ' NumPokeVist                         NUMERO
DATA 7                  : ' X PERS                              NUMERO
DATA 8                  : ' Y PERS                              NUMERO
DATA 1                  : ' R PERS                              NUMERO
DATA 0                  : ' L PERS                              NUMERO
DATA 1                  : ' M PERS                              NUMERO
DATA 1                  : ' Z PERS                              NUMERO
DATA 0                  : ' HORAS                               NUMERO
DATA 0                  : ' MINUTOS                             NUMERO    26B
DATA -2,"000000"        : ' Dinero                              CADENA    29B
DATA -1,32, 251         : ' Poke V A                            CADENA   280B
DATA -1, 0, 110         : ' ContMoch                            CADENA   390B
DATA -1, 0, 120         : ' ContPC                              CADENA   510B
DATA -3, 6,11,24,1,0,0,3: ' DIR Ultimo Centro PKM               CADENA   516B

DATA -1, 0,15635        : ' 53B * (7 PKM Personaje + 288 PKM PC)CADENA 16151B
' Sig:                      (E + DIR) * 15 L * 3 R            * CADENA 16466B
DATA -5,16152
DATA -3, 7, 1,11,24, 1, 0, 0, 3         : ' 1er PUEBLO          1ra REGION
DATA -3, 7, 0,19,13, 1, 2, 4,10
DATA -3, 7, 0,11, 8, 1, 4, 8,21
DATA -3, 7, 0,25, 7, 1, 6,16,38
DATA -3, 7, 0,23, 8, 1, 7,18,48         : ' 5to PUEBLO
DATA -3, 7, 0,23,15, 1,10,23,55
DATA -3, 7, 0,11,10, 1,24,56,128
DATA -3, 7, 0,11, 9, 1,16,54,114
DATA -3, 7, 0,16, 6, 1,26,76,155
DATA -3, 7, 0,13,25, 1,27,71,152        : ' 10mo PUEBLO
DATA -3, 7, 0,18,22, 1,36,34,64
DATA -3, 7, 0,23, 4, 1,45,108,198
DATA -3, 7, 0, 0, 0, 0, 0, 0, 0
DATA -3, 7, 0, 0, 0, 0, 0, 0, 0
DATA -3, 7, 0, 0, 0, 0, 0, 0, 0         : ' 15to PUEBLO
DATA -3, 7, 1,17,19, 2,25,18, 7         : ' 1er PUEBLO          2da REGION
DATA -3, 7, 0,24,27, 2,30,29,20         : 'InFile:16
DATA -3, 7, 0, 9,25, 2,20,33,28
DATA -3, 7, 0,16,13, 2, 5,44,45
DATA -3, 7, 0, 0, 0, 0, 0, 0, 0         : ' 5to PUEBLO
DATA -3, 7, 0, 0, 0, 0, 0, 0, 0
DATA -3, 7, 0, 0, 0, 0, 0, 0, 0
DATA -3, 7, 0, 0, 0, 0, 0, 0, 0
DATA -3, 7, 0, 0, 0, 0, 0, 0, 0
DATA -3, 7, 0, 0, 0, 0, 0, 0, 0         : ' 10mo PUEBLO
DATA -3, 7, 0, 0, 0, 0, 0, 0, 0
DATA -3, 7, 0, 0, 0, 0, 0, 0, 0
DATA -3, 7, 0, 0, 0, 0, 0, 0, 0
DATA -3, 7, 0, 0, 0, 0, 0, 0, 0
DATA -3, 7, 0, 0, 0, 0, 0, 0, 0         : ' 15to PUEBLO
DATA -3, 7, 0, 0, 0, 0, 0, 0, 0         : ' 1er PUEBLO          3ra REGION
DATA -3, 7, 0, 0, 0, 0, 0, 0, 0
DATA -3, 7, 0, 0, 0, 0, 0, 0, 0
DATA -3, 7, 0, 0, 0, 0, 0, 0, 0
DATA -3, 7, 0, 0, 0, 0, 0, 0, 0         : ' 5to PUEBLO
DATA -3, 7, 0, 0, 0, 0, 0, 0, 0
DATA -3, 7, 0, 0, 0, 0, 0, 0, 0
DATA -3, 7, 0, 0, 0, 0, 0, 0, 0
DATA -3, 7, 0, 0, 0, 0, 0, 0, 0
DATA -3, 7, 0, 0, 0, 0, 0, 0, 0         : ' 10mo PUEBLO
DATA -3, 7, 0, 0, 0, 0, 0, 0, 0
DATA -3, 7, 0, 0, 0, 0, 0, 0, 0
DATA -3, 7, 0, 0, 0, 0, 0, 0, 0
DATA -3, 7, 0, 0, 0, 0, 0, 0, 0
DATA -3, 7, 0, 0, 0, 0, 0, 0, 0         : ' 15to PUEBLO
DATA -1, 1, 1034                        : ' 1B E * 1034 OBJ     CADENA 17500B

'Desde aqu� el control de las personas...
'TABLA: 1B Habilitaci�n     1B Personaje             S
'       1B Visibilidad  E   1B Direcci�n             P
'       1B Coor X       X   2B Apuntador Absoluto    Y1 (+14573)
'       1B Coor Y       Y   1B Apuntador Control Mov X2
'       1B Caminar      C   1B Apuntador Dialogo     Y2 (DS,DI,R)
'      12B Total * 256 Personajes * 3 Regiones
'SEEK IniTabla = 17501, FinTabla = 17500 + 9216 = 26716
'DATA -1, 0, 9216                         : '                    CADENA 26716B

DATA -5, 17501                           : ' SEEK #1, 17501
DATA 1,1,21, 6,0, 6, 8,0,0,18,  0 ,0     : ' 1er Personaje   P0
DATA 1,1,20,17,0,28, 4,0,0,51, 39 ,0
DATA 1,0, 5,15,0,28, 0,0,0,120,114,0
DATA 1,1,12,10,0,12, 0,0,0,154,148,0
DATA 1,1,18,25,0,17,12,0,0,165,159,0
DATA 1,1, 9,22,0,56,12,0,0,180,171,0     : 'P5
DATA 1,1,20,18,0, 9, 8,0,0,207,198,0
DATA 1,1,18, 6,0,35,12,0,0,235,226,0
DATA 1,1, 8,11,0, 9, 8,0,100,107,146,1
DATA 1,1, 9,11,0, 9,12,0,100,107,155,2
DATA 1,1,23, 4,0, 8, 0,1,  8, 24,  0,0   : 'P10 OAK
DATA 1,0, 5, 4,0,86, 0,1, 84,  0, 44,0   : 'BLAINE
DATA 1,0, 4, 6,0,40,12,1, 87, 53, 72,9
DATA 1,0, 7, 8,0, 4, 4,1, 87, 53, 78,8
DATA 1,0, 8, 6,0, 4,12,1, 87, 53, 84,7
DATA 1,0,10, 4,0,40, 0,1, 87, 53, 90,6   : 'P15
DATA 1,0,11, 7,0, 4,12,1, 87, 53, 96,5
DATA 1,1,20,23,0,23, 0,1,189,  0, 32,10
DATA 1,1,24, 8,0,27, 0,1,  0,230,241,0
DATA 1,1, 9, 6,0, 1,12,1,247,  0, 17,11
DATA 1,1,12,20,0, 1,12,1,247,  0, 23,12  : 'P20
DATA 1,1,22,17,0, 1, 0,1,247,  0, 29,13
DATA 1,1,19, 7,0, 1, 0,1,247, 35, 52,14
DATA 1,1,22, 5,0, 1, 8,1,247, 61, 78,15
DATA 1,1,27,11,0,22,0,2,75, 0,11,0
DATA 1,1,27,12,0,20,0,2,75,17,25,0       : 'P25
DATA 1,1,27,13,0,29,4,2,75,17,45,0
DATA 1,1,27,14,0, 4,4,2,75,28,39,0
DATA 1,1, 7,10,0,40,12,1,142,0,237,16
DATA 1,1,10, 8,0,40, 8,1,142,0,243,17
DATA 1,1, 8, 3,0,92, 0,2,135,0, 30,18    : 'P30 BROCK
DATA 1,1,19,17,0,25, 4,2,177,0,  9,0
DATA 1,1,10,13,0,12, 0,2,195,0,  5,0
DATA 1,1,11,18,0, 9, 4,2,206,0, 17,19
DATA 1,1,11,19,0,88,12,2,206,0, 23,20
DATA 1,1,14,22,0, 9, 8,2,206,0, 29,21   : 'P35
DATA 1,1,15,25,0, 9, 8,2,206,0, 35,22
DATA 1,1,19,25,0,88, 0,2,206,0, 41,23
DATA 1,1,23,24,0, 9, 8,2,206,0, 47,24
DATA 1,1,18,15,0,23, 0,2,206,0, 53,25
DATA 1,1,10,26,0, 9, 4,2,206,0, 59,26   : '40
DATA 1,1,10,21,0, 9, 0,2,206,0, 65,27
DATA 1,1, 8, 5,0,77,12,2,206,0, 71,28
DATA 1,1,17,24,0,88, 8,2,206,0, 77,29
DATA 1,1,22,27,0,88, 4,2,206,0, 83,30
DATA 1,1,11,23,0, 9, 8,2,206,0, 89,31   : '45
DATA 1,1, 5,14,0, 9, 0,2,206,0, 95,32
DATA 1,1,10,14,0, 4, 0,2,206,0,101,33
DATA 1,1,11,13,0,77,12,2,206,0,107,34
DATA 1,1,11, 9,0, 9,12,2,206,0,113,35
DATA 1,1,18, 9,0,88, 8,2,206,0,119,36   : '50
DATA 1,1,23,14,0,88, 8,2,206,0,125,37
DATA 1,1,24,20,0,88, 8,2,206,0,131,38
DATA 1,1,10,18,0, 9, 0,2,206,0,137,39
DATA 1,1,16,22,0, 9, 4,2,206,0,143,40
DATA 1,1,17,22,0,88, 4,2,206,0,149,41   : '55
DATA 1,1,19,12,0, 9, 0,2,206,0,155,42
DATA 1,1,27,10,0,88, 8,2,206,0,161,43
DATA 1,1,20, 6,0, 9,12,2,206,0,167,44
DATA 1,1,16,21,0, 3, 8,2,206,0,173,45
DATA 1,1,13,22,0, 3, 0,3,129,0, 16,46    : '60
DATA 1,1,18,17,0, 3, 8,3,129,0, 22,47
DATA 1,1,19,18,0, 3, 0,3,129,0, 28,48
DATA 1,1,21,17,0, 3,12,3,129,0, 34,49
DATA 1,1,22,19,0, 3, 4,3,129,0, 40,50
DATA 1,1,22,20,0, 3, 0,3,129,0, 46,51    : '65
DATA 1,1,16,10,0,71, 0,3,129,0, 52,52
DATA 1,1,18, 9,0,79,12,3,129,0, 58,53
DATA 1,1,11,20,0,18, 0,3,193,0, 10,0
DATA 1,1, 4,13,0,26,12,3,212,0, 17,54
DATA 1,1,12,11,0,26, 0,3,212,0, 23,55   : '70
DATA 1,1,12, 7,0,26,12,3,212,0, 29,56
DATA 1,1,11, 4,0,26, 4,3,212,0, 35,57
DATA 1,1, 7, 5,0,26, 8,3,212,0, 41,58
DATA 1,1, 6, 7,0,26, 8,3,212,0, 47,59
DATA 1,1, 8, 9,0,57, 0,4,  9,0, 39,60   : '75 KOGA
DATA 1,1,10,12,0,27, 0,4, 60,0,  5,0
DATA 1,1, 7,19,0,27, 0,4, 71,0,  7,0
DATA 1,1,14,12,0,23, 8,4, 84,0, 17,61
DATA 1,1,11, 9,0, 1,12,4, 84,0, 23,62
DATA 1,1,15, 7,0,71, 0,4, 84,0, 29,63   : '80
DATA 1,1,21, 7,0,22, 8,4, 84,0, 35,64
DATA 1,1,17, 9,0, 1, 4,4, 84,0, 41,65
DATA 1,1,19,12,0,71, 8,4, 84,0, 47,66
DATA 1,1,21,10,0, 1,12,4, 84,0, 53,67
DATA 1,1, 8,10,0,23, 8,4, 84,0, 59,68   : '85
DATA 1,1,15,19,0,25, 8,4, 84,0, 65,69
DATA 1,1,17,28,0, 4, 4,4, 84,0, 71,70
DATA 1,1, 8, 8,0,23, 8,4, 84,0, 77,71
DATA 1,1, 4,20,0, 1,12,4, 84,0, 83,72
DATA 1,1,13,20,0, 4, 0,4, 84,0, 89,73   : '90
DATA 1,1,17, 5,0, 1, 4,4, 84,0, 95,74
DATA 1,1,20,19,0,77,12,4, 84,0,101,75
DATA 1,1,20,16,0,79, 4,4, 84,0,107,76
DATA 1,1,22, 5,0,25, 0,4, 84,0,113,77
DATA 1,1,23, 8,0, 4, 0,4, 84,0,119,78   : '95
DATA 1,1,10,16,0,97, 0,4, 84,0,125,79
DATA 1,1, 6,21,0,44, 8,4,215,0, 19,80
DATA 1,1, 5,15,0,44, 0,4,215,0, 25,81
DATA 1,1, 4, 4,0,44, 0,4,215,0, 31,82
DATA 1,1, 9, 7,0,44, 8,4,215,0, 37,83   : '100
DATA 1,1,22, 5,0,44,12,4,215,0, 43,84
DATA 1,1,23,16,0,44, 0,4,215,0, 49,85
DATA 1,1,18,16,0,44,12,4,215,0, 55,86
DATA 1,1,11, 8,0,44,12,4,215,0, 61,87
DATA 1,1,15,11,0,44, 8,5, 26,0, 48,88   : '105
DATA 1,1,23,19,0,90, 0,5, 80,0,  9, 0
DATA 1,1,23,20,0,47, 4,5, 80,0, 18, 0
DATA 1,1,14,10,0, 9, 8,5,107,0, 17,89
DATA 1,1, 5, 8,0,88,12,5,107,0, 23,90
DATA 1,1, 7, 5,0,23,12,5,107,0, 29,91  : '110
DATA 1,1, 9, 4,0,93, 0,5,142,0, 33,92  : 'MISTY
DATA 1,1,12,14,0,81, 0,5,187,0,  5, 0
DATA 1,1,18,25,0, 1, 8,5,107,0, 91,93
DATA 1,1,17,23,0,22,12,5,107,0, 97,94
DATA 1,1,18,21,0, 4, 8,5,107,0,103,95  : '115
DATA 1,1,17,19,0,23,12,5,107,0,109,96
DATA 1,1,19,17,0,82, 8,5,107,0,115,97
DATA 1,1,16,16,0,40, 0,5,234,0, 24,98
DATA 1,1,11,16,0,71,12,5,107,0,121,99
DATA 1,1, 8, 3,0,25, 0,5,107,0,163,100  : '120
DATA 1,1, 8, 7,0,25, 0,5,107,0,169,101
DATA 1,1, 8,11,0,77,12,5,107,0,175,102
DATA 1,1,11,13,0,40, 8,5,107,0,181,103
DATA 1,1,12, 5,0,22, 0,5,107,0,187,104
DATA 1,1,13,13,0,25,12,5,107,0,193,105  : '125
DATA 1,1,16,10,0, 4, 8,5,107,0,199,106
DATA 1,1,15, 3,0,71, 0,5,107,0,205,107
DATA 1,1,21,11,0,23, 0,5,107,0,211,108
DATA 1,1,14,21,0,12, 4,6, 68,0, 63,109
DATA 1,1, 4,24,0,112, 4,6,149,0, 57,110         : '130  BILL
DATA 1,1,11,28,0, 22, 4,6,218,0, 17,111
DATA 1,1,21,28,0, 40, 4,6,218,0, 23,112
DATA 1,1,21,22,0, 40, 0,6,218,0, 29,113
DATA 1,1,18,24,0, 22, 8,6,218,0, 35,114
DATA 1,1,16,20,0, 23, 4,6,218,0, 41,115         : '135
DATA 1,1,21,11,0, 37, 4,6,218,0, 47,116
DATA 1,1,11, 9,0, 37, 0,6,218,0, 53,117
DATA 1,1,12, 9,0, 23, 4,6,218,0, 59,118
DATA 1,1,15, 3,0, 22, 4,6,218,0, 65,119
DATA 1,1, 8, 3,0, 37,12,6,218,0, 71,120         : '140
DATA 1,1,10,28,0, 40, 4,6,218,0, 77,121
DATA 1,1, 9,21,0, 37,12,6,218,0, 83,122
DATA 1,1, 9,19,0, 37,12,6,218,0, 89,123
DATA 1,1,14,18,0, 40,12,6,218,0, 95,124
DATA 1,1,14, 9,0, 37,12,6,218,0,101,125         : '145
DATA 1,1,11,11,0, 40, 0,6,218,0,107,126
DATA 1,1, 4,25,0, 40,12,6,218,0,113,127
DATA 1,1, 4,19,0, 40,12,6,218,0,119,128
DATA 1,1,11,23,0, 40,12,6,218,0,125,129
DATA 1,1,11, 6,0, 37, 4,6,218,0,131,130         : '150
DATA 1,1,22, 6,0, 40, 8,6,218,0,137,131
DATA 1,1, 8,10,0, 40,12,6,218,0,143,132
DATA 1,1,11,12,0, 22,12,6,218,0,149,133
DATA 1,1,18,26,0,  3, 0,6,218,0,155,134
DATA 1,1,20,25,0, 23,12,6,218,0,161,135         : '155
DATA 1,1,20,16,0, 23,12,6,218,0,167,136
DATA 1,1,24,11,0, 22,12,6,218,0,173,137
DATA 1,1,19,22,0, 40, 8,6,218,0,179,138
DATA 1,1,21,11,0, 22, 0,6,218,0,185,139
DATA 1,1,21, 6,0,113,12,6,218,0,191,140         : '160
DATA 1,1,22,23,0,  3, 8,6,218,0,197,141
DATA 1,1,15,20,0, 26,12,6,218,0,203,142
DATA 1,1,22, 8,0,  3, 8,6,218,0,209,143
DATA 1,1,22,23,0,  3, 8,6,218,0,215,144
DATA 1,1,27,18,0,  3, 8,6,218,0,221,145         : '165
DATA 1,1,12,16,0,  3, 4,6,218,0,227,146
DATA 1,1,25, 6,0, 22, 8,6,218,0,233,147
DATA 1,1,18, 7,0,113, 0,7,201,0, 17,0
DATA 1,1,20, 5,0, 18, 0,7,224,0, 16,0
DATA 1,1,23,17,0, 22, 4,7,249,0,  8,0           : '170
DATA 1,1,15,12,0, 71,12,8,  7,0, 17,148
DATA 1,1,20, 7,0,  5, 0,8,  7,0, 23,149
DATA 1,1,22,11,0, 40, 0,8,  7,0, 29,150
DATA 1,1,18, 3,0, 40, 0,8,  7,0, 35,151
DATA 1,1,10,21,0,  5, 0,8,  7,0, 41,152         : '175
DATA 1,1,15,25,0,  5, 0,8,  7,0, 47,153
DATA 1,1,18,28,0, 71,12,8,  7,0, 53,154
DATA 1,1,22,26,0, 71, 4,8,  7,0, 59,155
DATA 1,1,21,19,0, 71, 4,8,  7,0, 65,156
DATA 1,1,19, 4,0, 14, 0,8, 78,0, 12,  0         : '180
DATA 1,1,22,21,0, 12, 8,8, 99,0, 12,  0
DATA 1,1,21,22,0, 62, 0,8,120,0, 14,  0
DATA 1,1,18,11,0,100, 8,8,137,0, 36,  0
DATA 1,1,17,24,0, 14, 0,8,185,0,145,157
DATA 1,1,27,21,0, 26, 8,8,213,0,123,158         : '185
DATA 1,1,19,21,0, 56,12,8,241,0,104,159
DATA 1,1,25,24,0, 18, 4,9, 13,0, 88,160
DATA 1,1,22,23,0,  5, 8,9, 41,0, 75,161
DATA 1,1,22,17,0, 94, 0,9,137,0, 28,162
DATA 1,1,25,26,0, 81, 0,9,177,0,  5,  0         : '190
DATA 1,1,15, 3,0, 20, 0,9,188,0, 14,  0
DATA 1,1,16,24,0, 91, 4, 9,205,0, 74,  0
DATA 1,1,15,24,0, 91,12, 9,236,0, 43,  0
DATA 1,1,16,25,0, 91, 0, 9,254,0, 25,  0
DATA 1,1,17,24,0, 91, 8,10,  8,0, 15,  0        : '195
DATA 1,1,17,21,0, 12, 0,10, 29,0, 11,  0
DATA 1,1, 9,14,0, 23, 4,10, 52,0, 17,163
DATA 1,1,11, 8,0, 25,12,10, 52,0, 23,164
DATA 1,1,14, 5,0, 71, 0,10, 52,0, 29,165
DATA 1,1,13,19,0,  1,12,10, 52,0, 35,166        : '200
DATA 1,1,25, 5,0, 25, 0,10, 52,0, 41,167
DATA 1,1, 9,14,0,  1, 0,10, 52,0, 47,168
DATA 1,1,18,26,0, 77, 0,10, 52,0, 53,169
DATA 1,1,22,19,0, 71, 8,10, 52,0, 59,170
DATA 1,1, 7,14,0, 22,12,10, 52,0, 65,171        : '205
DATA 1,1, 4, 9,0, 25,12,10, 52,0, 71,172
DATA 1,1,14,17,0, 23,12,10, 52,0, 77,173
DATA 1,1, 7,23,0, 25, 4,10, 52,0, 83,174
DATA 1,1,24,20,0,  4, 8,10, 52,0, 89,175
DATA 1,1, 6,12,0,114,12,10, 52,0, 95,176        : '210
DATA 1,1,21,22,0,114, 0,10, 52,0,101,177
DATA 1,1,21,18,0,114,12,10, 52,0,107,178
DATA 1,1,22,11,0,114,12,10, 52,0,113,179
DATA 1,1,23, 3,0,114, 0,10, 52,0,119,180
DATA 1,1, 7,18,0, 23, 0,10, 52,0,125,181        : '215
DATA 1,1,10,28,0,  5,12,10, 52,0,131,182
DATA 1,1,16,22,0, 40,12,10, 52,0,137,183
DATA 1,1,10,13,0, 40, 4,10, 52,0,143,184
DATA 1,1,20,11,0, 22,12,10, 52,0,149,185
DATA 1,1,13, 3,0,  5, 0,10, 52,0,155,186        : '220
DATA 1,1,20, 5,0, 72, 0,10,213,0,  6,  0
DATA 1,1, 7,26,0,  9, 8,10,225,0, 17,187
DATA 1,1,26,27,0, 19, 0,10,248,0, 44,  0
DATA 1,1, 9,20,0, 40, 0,11, 66,0, 17,188
DATA 1,1, 6,28,0, 71,12,11, 66,0, 23,189        : '225
DATA 1,1, 5,25,0,123, 0,11, 95,0, 86,190
DATA 1,0,10,15,0, 77, 8,11,205,0, 18,193
DATA 1,1, 9,13,0, 23,12,11,229,0, 17,194
DATA 1,1,15,10,0, 22, 8,11,229,0, 23,195
DATA 1,1, 8, 7,0, 42,12,11,229,0, 29,196        : '230
DATA 1,1,11,10,0, 47, 0,11,229,0, 35,197
DATA 1,1,12, 6,0, 96, 0,12, 14,0, 25,198
DATA 1,1,26,13,0, 14, 0,12, 51,0, 16,199
DATA 1,1,25, 4,0,  2, 8,12, 51,0, 22,200
DATA 1,1, 6,25,0, 12,12,12, 79,0, 21,  0        : '235
DATA 1,1,20,23,0, 44, 0,12,112,0, 78,  0
DATA 1,1, 9,24,0,  5, 8,12,199,0, 81,201
DATA 1,1,11,22,0, 44, 0,13, 36,0, 26,202
DATA 1,1,11, 6,0, 44, 0,13, 68,0, 20,203
DATA 1,1,11,16,0, 85,12,13, 68,0, 26,204        : '240
DATA 1,1,14, 4,0, 44,12,13, 68,0, 32,205
DATA 1,1,23,10,0, 85, 0,13, 68,0, 38,206
DATA 1,1,25, 7,0, 44,12,13, 68,0, 44,207
DATA 1,1,17,11,0, 85, 4,13, 68,0, 50,208
DATA 1,1,19,22,0, 85, 0,13, 68,0, 56,209        : '245
DATA 1,1,10, 4,0,111,12,13, 68,0, 62,210
DATA 1,1,13, 6,0, 85, 4,13, 68,0, 68,211
DATA 1,1, 5, 4,0,111,12,13,148,0, 37,213
DATA 1,1, 4, 8,0, 85, 4,13,194,0, 42,214
DATA 1,1, 6,11,0, 29, 4,13,242,0, 49,  0        : '250
DATA 1,1, 7,14,0, 44, 0,14, 38,0, 35,215
DATA 1,1,10, 8,0, 85, 4,14, 82,0, 70,216
DATA 1,0,23,11,0, 30, 0,14,158,0,  7,  0
DATA 1,1, 8,18,0, 30, 4,14,168,0,  4,  0
DATA 1,1, 9,24,0, 58, 0,14,175,0, 38,  0        : '255
DATA 1,1,19, 5,0, 72, 0,14,225,0, 16,  0                       : '256
DATA 1,1,23,22,0, 25, 0,14,250,0, 16,  0
DATA 1,1,20, 4,0, 12, 0,15, 19,0,  9,  0
DATA 1,1,20, 5,0, 85, 4,15, 34,0, 50,216
DATA 1,1,19, 6,0, 65, 0,15, 98,0, 27,  0                       : '260
DATA 1,1, 5,21,0, 68,12,15,128,0, 19,217
DATA 1,1,20, 9,0, 40, 0,15,153,0, 22,218
DATA 1,1,25, 4,0, 39, 8,15,184,0, 22,219
DATA 1,1,19,18,0, 26, 4,15,215,0, 22,220
DATA 1,1,12, 3,0, 25, 8,15,246,0, 27,221                       : '265
DATA 1,1, 8, 8,0,135, 0,16, 32,0, 60,  0
DATA 1,0,25, 3,0,172, 0,16, 95,0, 18,  0
DATA 1,0,22,10,0,174, 0,16,116,0, 18,  0
DATA 1,0, 4,12,0, 20,12,16,137,0, 18,  0
DATA 1,0, 5, 3,0, 29, 0,16,158,0, 18,  0                       : '270
DATA 1,0,11,18,0, 60, 4,16,179,0, 18,  0
DATA 1,0,16,12,0, 63, 0,16,200,0, 18,  0
DATA 1,0,15,27,0, 65,12,16,221,0, 18,  0
DATA 1,0,27, 7,0,108, 8,16,242,0, 18,  0
DATA 1,0, 9,26,0,175, 8,17,  7,0, 18,  0                       : '275
DATA 1,1, 4,23,0, 29, 0,17, 28,0, 14,  0
DATA 1,1, 5,20,0, 29, 4,17, 45,0, 14,  0
DATA 1,1, 7,20,0, 20, 8,17, 62,0, 14,  0
DATA 1,1, 8,22,0, 91,12,17, 79,0, 14,  0
DATA 1,1,19,21,0, 62,12,17, 96,0, 29,  0                       : '280
DATA 1,1,27,12,0,174, 0,17,128,0, 34,  0
DATA 1,1,26, 9,0, 20, 0,17,165,0, 79,  0
DATA 1,1,27, 9,0, 20, 0,17,247,0, 14,  0
DATA 1,1, 8,12,0, 20, 0,18,  8,0, 37,  0
DATA 1,1, 5, 4,0, 20, 0,18, 48,0, 14,  0                       : '285
DATA 1,1,22,20,0, 30,12,18, 65,0,  4,  0       : '2�2
DATA 1,1,19,20,0, 30, 8,18, 65,0,  4,  0       : '2�2
DATA 1,1, 8,18,0, 30, 4,18, 65,0,  4,  0       : '2�2
DATA 1,1, 5, 4,0, 25, 8,18, 72,0, 46,  0       : '2�17
DATA 1,1,23,19,0, 44, 0,18,130,0,  4,  0       : '2�2          : '290
DATA 1,0, 0, 0,0,  0, 0,18,137,0,  0,  0       : '2�15
DATA 1,0, 0, 0,0,  0, 0,18,167,0,  0,  0       : '2�15
DATA 1,0, 0, 0,0,  0, 0,18,197,0,  0,  0       : '2�15
DATA 1,0, 0, 0,0,  0, 0,18,227,0,  0,  0       : '2�15
DATA 1,0, 0, 0,0,  0, 0,18,243,0,  0,  0       : '2�15 3�30    : '295
DATA 1,0, 0, 0,0,  0, 0,19, 18,0,  0,  0       : '2�15 3�30
DATA 1,0, 0, 0,0,  0, 0,19, 49,0,  0,  0       : '2�15
DATA 1,0, 0, 0,0,  0, 0,19, 79,0,  0,  0       : '2�1
DATA 1,0,11, 6,0, 13, 0,19, 95,0,  4,  0       : '2�1
DATA 1,1, 6, 4,0, 44, 0,19,102,0, 19,222       : '2�17         : '300
DATA 1,1,17, 8,0, 85,12,19,102,0, 25,223       : '2�17
DATA 1,1, 7,13,0,111, 0,19,102,0, 31,224       : '2�37
DATA 1,0,18,14,0, 85, 8,19,154,0, 49,225       : '2�47
DATA 1,1,24,13,0, 44, 0,19,102,0,110,226       : '2�17
DATA 1,1, 9,21,0, 85, 0,19,102,0,116,227       : '2�121        : '305
DATA 1,1,20, 4,0, 44, 8,19,239,0, 19,228       : '2�17
DATA 1,1, 4, 5,0, 85,12,19,239,0, 25,229       : '2�17
DATA 1,1, 7,10,0, 85,12,19,239,0, 31,230       : '2�17
DATA 1,1,15,25,0, 44, 4,19,239,0, 37,231       : '2�17
DATA 1,1,27,23,0, 44, 8,19,239,0, 43,232       : '2�49         : '310
DATA 1,0, 4,14,0, 44, 0,20, 47,0, 86,233       : '2�84
DATA 1,1,23,20,0,111, 4,20,139,0, 27,234       : '2�25
DATA 1,1,24,12,0, 85, 0,20,175,0, 30,235       : '2�28
DATA 1,1,27,12,0,111, 0,20,211,0, 39,236       : '2�37
DATA 1,1,18,10,0, 38, 0,21,  0,0,  2,  0       : '2�5          : '315
DATA 1,1,23,13,0, 85, 4,21, 20,0, 21,237       : '2�19
DATA 1,1,15,15,0, 85, 8,21, 47,0, 21,238       : '2�19
DATA 1,1,15,21,0, 85, 4,21, 74,0, 21,239       : '2�19
DATA 1,1,23,24,0, 47,12,21,101,0,  5,  0       : '2�2
DATA 1,1,24,22,0, 38, 0,21,101,0, 11,  0       : '2�2          : '320
DATA 1,1,25,22,0, 47, 0,21,101,0, 17,  0       : '2�2
DATA 1,1,26,25,0, 38, 8,21,101,0, 23,  0       : '2�2
DATA 1,1,10,25,0, 44, 8,21,130,0, 19,240       : '2�17
DATA 1,1, 6, 5,0, 44, 0,21,155,0, 17,241       : '2�23
DATA 1,1,18, 7,0,111, 0,21,193,0, 21,242       : '2�19         : '325
DATA 1,1, 9,21,0, 44, 8,21,220,0, 19,243       : '2�17
DATA 1,1,21,12,0, 44, 8,21,220,0, 25,244       : '2�17
DATA 1,1,14,15,0, 13, 0,21,251,0, 12,  0       : '2�8
DATA 1,1,20,14,0, 85, 0,22, 16,0, 30,245       : '2�28
DATA 1,1,25,10,0, 44,12,22, 58,0, 72,246       : '2�2 3�70     : '330
DATA 1,1,14,26,0,111, 0,22,139,0, 17,247       : '2�23
DATA 1,1, 8, 7,0,111, 4,22,177,0, 19,248       : '2�17
DATA 1,1,17, 4,0, 85, 0,22,202,0, 66,249       : '2e250
DATA 1,1, 5, 6,0,111, 0,23, 24,0, 47,251       : '2�56
DATA 1,1, 7,25,0, 85, 8,23, 82,0, 19,252       : '2�17         : '335
DATA 1,1,11,24,0, 12, 4,23,107,0, 18,253       : '2�16
DATA 1,1,14,26,0, 12, 0,23,107,0, 24,254       : '2�16
DATA 1,1,18,24,0, 12, 4,23,107,0, 30,255       : '2�36
DATA 1,1,24,23,0, 12, 0,23,158,0, 20,255       : '2�26
DATA 1,1,17, 7,0,116, 0,23,199,0, 47,  1       : '2�45         : '340
DATA 1,1,25, 7,0,117, 0,23,252,0,205,  2       : '2�1
DATA 1,1,20, 4,0, 16, 0,24,207,0, 17,  0       : '2�9
DATA 1,1,11,13,0,109, 8,24,242,0, 17,  3
DATA 1,1, 6,12,0,109,12,24,242,0, 23,  4
DATA 1,1,11, 9,0,109, 8,24,242,0, 29,  5       : '345
DATA 1,1, 4, 9,0,109,12,25, 21,0, 17,  6
DATA 1,1,11, 6,0,109, 8,25, 21,0, 23,  7
DATA 1,1, 6, 6,0,109,12,25, 21,0, 29,  8
DATA 1,1, 9, 4,0,109, 0,25, 56,0, 23,  9
DATA 1,1,17, 3,0,141, 0,25, 88,0, 16, 10       : '350
DATA 1,1,19, 8,0,113, 0,25, 88,0, 22, 11       : '2�28
DATA 1,1,15, 9,0, 47, 4,25,118,0, 17, 12
DATA 1,1, 5,17,0, 38,12,25,118,0, 23, 13
DATA 1,1,20,14,0, 25, 8,25,147,0, 20, 14
DATA 1,1,13,16,0, 27, 0,26, 19,0,  5,  0       : '355
DATA 1,1,20,15,0,139, 0,25,173,0, 17, 15
DATA 1,1,20, 9,0,139, 0,25,173,0, 23, 16
DATA 1,1,20, 3,0,139, 0,25,173,0, 29, 17
DATA 1,1,14, 3,0,114, 0,25,173,0, 35, 18
DATA 1,1, 7, 3,0,139, 0,25,173,0, 41, 19       : '360
DATA 1,1, 7, 9,0,114, 0,25,173,0, 47, 20
DATA 1,1, 7,15,0,114, 0,25,173,0, 53, 21
DATA 1,1,13,11,0,101, 0,25,232,0, 31, 22
DATA 1,1,25,24,0, 27, 0,26, 30,0,  5,  0
DATA 1,0,14,22,0, 26,12,26, 41,0, 49, 23       : '365
DATA 1,0, 6,22,0,109,12,26, 96,0, 55, 24
DATA 1,0,16,14,0,109, 8,26,157,0, 47, 25
DATA 1,0,24,17,0,  4, 8,26,210,0, 49, 26
DATA 1,0,18, 9,0,  4,12,27,  9,0, 42, 27
DATA 1,0,10, 9,0,109,12,27, 57,0, 53, 28       : '370
DATA 1,0, 7, 5,0, 26, 0,27,116,0, 40, 29
DATA 1,1,24, 3,0, 24, 0,27,162,0, 64, 30
DATA 1,1,16,22,0, 59, 8,27,253,0, 28,  0
DATA 1,1, 6, 3,0, 20, 4,28, 34,0, 14,  0
DATA 1,0, 7,14,0,137, 0,28, 51,0, 34,  0       : '375
DATA 1,1,18,12,0, 20, 8,28, 91,0, 56,  0
DATA 1,1,19,11,0, 29, 8,28,153,0, 21,  0
DATA 1,1, 5, 3,0, 22, 0,28,177,0, 17, 31
DATA 1,1,27, 3,0,  4, 0,28,177,0, 23, 32
DATA 1,1,14,23,0,109, 4,28,177,0, 29, 33       : '380
DATA 1,1,12,27,0,  9, 8,28,177,0, 35, 34
DATA 1,1,18, 6,0, 77, 0,28,177,0, 41, 35
DATA 1,1,23,12,0, 38, 8,28,177,0, 47, 36
DATA 1,1, 4,15,0, 77,12,28,177,0, 53, 37
DATA 1,1,26, 3,0,  4, 0,28,177,0, 59, 38       : '385
DATA 1,1, 4,18,0,  1,12,28,177,0, 65, 39
DATA 1,1,19,13,0, 22, 0,28,177,0, 71, 40
DATA 1,1,27,23,0,  4, 8,28,177,0, 77, 41
DATA 1,1, 7,23,0, 22, 8,28,177,0, 83, 42
DATA 1,1, 8,19,0,  1,12,28,177,0, 89, 43       : '390
DATA 1,1, 9,16,0,109,12,28,177,0, 95, 44
DATA 1,1, 7,15,0, 25, 8,28,177,0,101, 45
DATA 1,1, 7, 9,0, 40, 8,28,177,0,107, 46
DATA 1,1,11, 5,0, 77, 8,28,177,0,113, 47
DATA 1,1, 4, 5,0, 47,12,28,177,0,119, 48       : '395
DATA 1,0,26, 4,0, 27, 8,29, 73,0, 23,  0       : '2�1 3�18 4�21
DATA 1,1, 9, 6,0, 31, 0,29,102,0, 42, 49       : '2�27 3�33
DATA 1,1,23, 6,0, 32, 0,29,156,0, 45, 50       : '2�30 3�36
DATA 1,1, 9,20,0, 33, 0,29,213,0, 45, 51       : '2�30 3�36
DATA 1,1,23,18,0, 34, 8,30, 14,0, 64, 52       : '2�33 3�47    ' 400
DATA 1,1,23,22,0, 34, 8,30,100,0,105,  0
DATA 1,1, 0, 0,0,  0, 8,30, 90,0,  0,  0
DATA 1,1,11,13,0, 56, 4,30,217,0, 51,  0
DATA 1,1,10,23,0, 56, 4,31, 87,0,  4,  0
DATA 1,1,24,13,0, 56, 4,31, 24,0, 51,  0       : '405
DATA 1,1,21,23,0, 56, 4,31, 87,0,  7,  0
DATA 1,1,17, 3,0, 56, 8,31, 97,0, 70,  0       : '2�82
DATA 1,1, 5, 3,0, 84, 0,31,212,0,  9,  0
DATA 1,1,17, 3,0, 56, 8,31,227,0, 70,  0       : '2�82
DATA 1,1, 5, 3,0, 84, 0,32, 86,0,  9,  0       : '410
DATA 1,1,21, 6,0,  3,12,32,101,0, 22, 57
DATA 1,1,23, 4,0, 56, 0,32,101,0, 28, 58
DATA 1,1,22,23,0, 56,12,32,101,0, 34, 59
DATA 1,1,23,20,0, 56, 0,32,101,0, 40, 60
DATA 1,1,27,20,0, 56, 8,32,101,0, 46, 61       : '415
DATA 1,1,22,20,0, 56,12,32,101,0, 52, 62
DATA 1,1,26,25,0,  3, 4,32,101,0, 58, 63
DATA 1,1,14,18,0, 14, 0,32,101,0, 64, 64
DATA 1,1,13,20,0, 14,12,32,101,0, 70, 65
DATA 1,1,24, 3,0, 23, 4,32,192,0, 31, 66       : '420
DATA 1,1,27, 6,0, 71, 8,32,101,0, 76, 67
DATA 1,1,19,16,0, 14, 0,32,101,0, 82, 68
DATA 1,1, 5,11,0, 97, 4,32,101,0, 88, 69
DATA 1,1, 5, 9,0, 56, 8,32,226,0, 31, 70
DATA 1,1, 7, 7,0, 56, 0,32,101,0,162, 71       : '425
DATA 1,1,20,14,0,141, 0,32,101,0,168, 72
DATA 1,1,20, 5,0, 42, 4,32,101,0,174, 73
DATA 1,1, 5,27,0, 56, 4,33, 22,0, 51,  0
DATA 1,1, 9, 0,0,136, 0,33, 85,0, 24,  0
DATA 1,1, 9,18,0, 56, 4,33,112,0, 38,  0       : '430
DATA 1,1,27,14,0, 81, 0,35, 25,0,  8,  0       : '2�2 3�5
DATA 1,0,27, 9,0,154, 8,35, 42,0, 19, 74       : '2�1
DATA 1,0,22, 8,0,158,12,35, 42,0, 25, 75       : '2�1
DATA 1,0,25, 3,0,178, 0,35, 73,0, 43, 76       : '2�1
DATA 1,1, 5,21,0, 85,12,35,128,0, 17, 77       : '2�23         435
DATA 1,1,22,21,0, 85, 4,35,128,0, 53, 78       : '2�38
DATA 1,1,26, 7,0, 85, 8,35,128,0, 59, 79       : '2�65
DATA 1,1, 7, 6,0, 44,12,35,208,0, 18,  0
DATA 1,0,13, 4,0, 44, 8,35,235,0, 48, 80       : '2�1 3�46
DATA 1,0, 5, 8,0, 14,12,36, 33,0, 19, 81       : '2�1          440
DATA 1,1, 8,26,0, 44,12,36, 58,0, 17, 82       : '2�59-89
DATA 1,1, 7,20,0, 85, 0,36, 58,0, 23, 83       : '2�93
DATA 1,1,10,18,0, 44, 0,36, 58,0, 29, 84       : '2�95-90
DATA 1,1,19,25,0, 85, 4,36, 58,0, 35, 85       : '2�129-91
DATA 1,1, 6, 8,0, 44,12,36, 58,0, 41, 86       : '2�163-92     445
DATA 1,1,10, 3,0, 85, 0,36, 58,0, 47, 87       : '2�93
DATA 1,1,23, 8,0, 44, 8,36, 58,0, 53, 88       : '2�197-93
DATA 1,1,14,20,0, 44, 0,37, 33,0, 17, 94       : '2�41-102
DATA 1,1, 7,20,0, 85,12,37, 33,0, 23, 95       : '2�75-103
DATA 1,1, 5,24,0,111,12,37, 33,0, 29, 96       : '2�109-104    450
DATA 1,1,26,23,0, 85, 8,37, 33,0, 35, 97       : '2�143-105
DATA 1,1,15, 6,0,111, 0,37,210,0, 81, 98       : '2�93
DATA 1,1, 8, 4,0,111, 0,38, 49,0, 41, 99       : '2�1 3�39
DATA 1,1, 9, 5,0, 44, 8,38, 96,0, 40,100       : '2�1 3�38
DATA 1,1, 9, 9,0, 85, 8,38,142,0,121,101       : '2�1 3�10     455
DATA 1,1, 8, 9,0,178, 4,39, 16,0, 58,  0       : '2�1 3�32
DATA 1,1, 8, 5,0, 29, 0,39, 86,0, 38,  0       : '2�1
DATA 1,1,14,15,0,  9, 0,39,127,0, 17,106
DATA 1,1, 7,13,0, 88, 0,39,127,0, 23,107
DATA 1,1,19,18,0, 88, 0,39,127,0, 29,108       : '460
DATA 1,1, 7,21,0,  9,12,39,162,0, 17,109
DATA 1,1,11, 6,0,  9, 4,39,162,0, 23,110
DATA 1,1,23,21,0,  9,12,39,162,0, 29,111
DATA 1,1, 8,24,0, 88,12,39,162,0, 35,112
DATA 1,1,12,20,0, 88, 4,39,162,0, 41,113       : '465
DATA 1,1,17,22,0,  9, 0,39,162,0, 47,114
DATA 1,1,10,19,0,  9,12,39,162,0, 53,115
DATA 1,1, 9, 8,0,  9,12,39,162,0, 59,116
DATA 1,1,22, 9,0, 88, 8,39,162,0, 65,117
DATA 1,1,16, 3,0, 88, 0,39,162,0, 71,118       : '470
DATA 1,1,12, 4,0, 88,12,39,162,0, 77,119
DATA 1,1,15, 8,0,  9, 8,39,162,0, 83,120
DATA 1,1,17,13,0, 88, 4,39,162,0, 89,121
DATA 1,1, 9, 7,0, 88, 8,40,  1,0, 16,122
DATA 1,1,25,23,0,  9, 8,40,  1,0, 22,123       : '475
DATA 1,1, 7, 7,0,  3, 8,40,  1,0, 28,124
DATA 1,1, 8,27,0, 43, 0,40, 35,0, 40,  0
DATA 1,1, 7,20,0,109,12,40, 93,0, 17,125
DATA 1,1,10,20,0,109, 8,40, 93,0, 23,126
DATA 1,1, 5,13,0,109, 0,40, 93,0, 29,127       : '480
DATA 1,1, 8,15,0,109, 0,40, 93,0, 35,128
DATA 1,1,12,10,0,109, 0,40, 93,0, 41,129
DATA 1,1, 4,11,0,109,12,40, 93,0, 47,130
DATA 1,1,10, 6,0,109, 8,40, 93,0, 53,131
DATA 1,1,11,14,0,109, 4,40,152,0, 17,132       : '485
DATA 1,1, 9, 3,0,181, 0,40,175,0, 29,133
DATA 1,1, 6,14,0, 97,12,40,216,0, 25,134
DATA 1,1,10, 5,0, 71, 0,40,247,0, 25,135
DATA 1,1,12, 9,0, 79,12,41, 22,0, 25,136
DATA 1,1,25, 3,0, 56, 8,41, 53,0, 25,137       : '490
DATA 1,1,24,14,0, 97, 4,41, 84,0, 25,138
DATA 1,1,18,22,0, 71, 0,41,115,0, 25,139
DATA 1,1, 8,27,0, 71,12,41,146,0, 25,140
DATA 1,1, 5,14,0, 52, 0,41,177,0, 16,  0
DATA 1,1,10,17,0, 52, 0,41,196,0, 16,  0       : '495
DATA 1,1,23, 3,0, 98, 8,41,215,0, 33,  0
DATA 1,1,19,15,0, 39, 0,42, 10,0, 51,  0
DATA 1,1,16, 9,0, 43, 0,42, 76,0, 17,141
DATA 1,1,18,18,0, 39, 0,42, 99,0, 25,142
DATA 1,1,14, 3,0, 56, 0,42,130,0, 17,143       : '500
DATA 1,1,23,15,0,  3, 0,44,222,0, 22,  0
DATA 1,1,21,14,0, 72, 0,42,175,0, 18,  0
DATA 1,1,19,16,0,  4,12,42,202,0, 47,  0
DATA 1,1,10,23,0, 14, 4,43, 14,0, 60,  0       : '2�47 3�57
DATA 1,1, 4,16,0,187,12,43,116,0, 55,144       : '2�15 3�50    505
DATA 1,1, 7,15,0,187, 0,43,174,0, 50,145       : '2�15
DATA 1,1, 8,17,0,187, 4,43,227,0, 50,146       : '2�15
DATA 1,1,11,15,0,187, 8,44, 24,0, 50,147       : '2�15
DATA 1,1,13,16,0,187, 0,44, 77,0, 50,148       : '2�15
DATA 1,1,25,26,0, 81, 0,44,130,0, 58,  0       : '2�33 3�55    510
DATA 1,1,20,26,0, 81, 0,44,200,0, 16,149
DATA 1,1,26,21,0, 68, 0,44,247,0, 29,150
DATA 1,1,19,21,0, 69, 8,45, 26,0, 29,151
DATA 1,1,21,18,0, 68,12,45, 61,0, 26,152
DATA 1,1,22,15,0,184, 0,45, 93,0, 32,154       : '515
DATA 1,1,17, 7,0,184, 0,45,137,0, 69,  0       : '2�1
DATA 1,1,24,24,0, 69, 8,45,212,0, 29,153
DATA 1,1, 6, 8,0, 40, 4,45,247,0, 19,  0
DATA 1,1,14, 4,0, 21, 0,46, 19,0, 17,155

DATA -4         : 'FIN

