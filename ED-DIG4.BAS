DEFINT A-Z
CLS
DIM SHARED Index AS LONG
Index = 5951
OPEN "ARCHIVOS\DIALOGO.BIN" FOR BINARY AS #1
SEEK #1, Index * 16 + 1

FOR i = 5952 TO 7947
  READ a$
  PUT #1, , a$
NEXT i

CLOSE
SHELL "copy /y c:\newpoke1\archivos\dialogo.bin d:\"
END

DATA "≠Ser°a estupendo"         : '5952
DATA "que el ALTO     "
DATA "MANDO viniera y "
DATA "machacara al    "
DATA "TEAM ROCKET!    "

DATA "La velocidad de "         : '5957
DATA "crecimiento de  "
DATA "los POKêMON     "
DATA "var°a de una    "
DATA "especie a otra. "

DATA "SILPH SA. es muy"         : '5962
DATA "famosa. ≠Por eso"
DATA "el TEAM ROCKET  "
DATA "tiene tanto     "
DATA "interÇs en ella!"

DATA "≠Esos ROCKET    "         : '5967
DATA "nunca aprenden! "
DATA "≠Sus planes     "
DATA "fracasaron el   "
DATA "a§o pasado, y   "
DATA "fracasar†n      "
DATA "ahora tambiÇn!  "

DATA "≠MèX. REPELENTE "         : '5974
DATA "dura m†s que el "
DATA "SìPER REPELENTE "
DATA "en cuanto a     "
DATA "mantener lejos  "
DATA "a los POKêMON   "
DATA "dÇbiles!        "

DATA "≠REVIVIR es caro"         : '5981
DATA "pero revive a   "
DATA "los POKêMON     "
DATA "debilitados!    "

DATA "EDIFICIO        "         : '5985
DATA "SILPH S.A.      "

DATA "PISTA ENTRENADOR"         : '5987
DATA "La nueva SìPER  "
DATA "BALL ofrece una "
DATA "mayor velocidad "
DATA "de captura.     "
DATA "PruÇbala con    "
DATA "esos POKêMON tan"
DATA "dif°les de      "
DATA "atrapar.        "

DATA "PISTA ENTRENADOR"         : '5996
DATA "CURA TOTAL cura "
DATA "todo malestar,  "
DATA "como el sue§o y "
DATA "las quemaduras. "
DATA "Cuesta un poco  "
DATA "m†s, pero vale  "
DATA "la pena.        "

DATA "CIUDAD AZAFRèN  "         : '6004
DATA "La brillante y  "
DATA "dorada tierra   "
DATA "del comercio.   "

DATA "DOJO KARATE     "         : '6008

DATA "LëDER DEL       "         : '6009
DATA "GIMNASIO POKêMON"
DATA "DE LA CIUDAD    "
DATA "AZAFRèN:        "
DATA "SABRINA.        "
DATA "≠Maestra de     "
DATA "los POKêMON     "
DATA "ps°quicos!      "

DATA "≠Lo £ltimo de   "         : '6017
DATA "SILPH S.A.!     "
DATA "Pr¢ximamente    "
DATA "lanzamiento de  "
DATA "la MASTER BALL  "
DATA "para investiga- "
DATA "dores POKêMON.  "

DATA "NOVEDADES       "         : '6024
DATA "En el £ltimo    "
DATA "a§o se descu-   "
DATA "brieron casi    "
DATA "100 POKêMON.    "
DATA "Actualiza tu    "
DATA "POKêDEX en      "
DATA "SILPH S.A.      "

DATA "≠Au! ≠Cuidado   "         : '6032
DATA "por donde       "
DATA "caminas!        "

DATA "≠Alto ni§o!     "         : '6035
DATA "Soy el guardia  "
DATA "del DOJO KARATE."
DATA "No puedo dejar  "
DATA "entrar a chicos "
DATA "sospechosos.    "

DATA "≠Los ROCKET se  "         : '6041
DATA "esfumaron, ahora"
DATA "hay m†s calma!  "
DATA "≠Pero a£n nece- "
DATA "sitas una entra-"
DATA "da para pasar!  "

DATA "®QuÇ es esto?..."         : '6047
DATA "≠Oh!... ≠Una    "
DATA "entrada!...     "
DATA "≠Bienvenido al  "
DATA "DOJO KARATE!    "
DATA "Algunos le dicen"
DATA "CLUB LUCHA, los "
DATA "miembros traen  "
DATA "a sus POKêMON   "
DATA "de tipo lucha   "
DATA "para ponerlos a "
DATA "prueba. PondrÇ  "
DATA "tu nombre en mi "
DATA "lista para que  "
DATA "puedas entrar   "
DATA "sin tener que   "
DATA "traer la entrada"
DATA "cada vez que    "
DATA "quieras entrar. "

DATA "Tu nombre est†  "         : '6066
DATA "en la lista.    "
DATA "≠Puedes pasar!  "

DATA "(Ronquido)...   "         : '6069
DATA "...             "
DATA "(Ronquido)...   "
DATA "≠Ja! ≠Est†      "
DATA "durmiendo       "
DATA "la siesta!      "

DATA "≠AZAFRèN ser†   "         : '6075
DATA "del TEAM ROCKET!"

DATA "®Venciste t£    "         : '6077
DATA "solo al TEAM    "
DATA "ROCKET?         "
DATA "≠QuÇ incre°ble! "

DATA "®QuÇ quieres?   "         : '6081
DATA "≠L†rgate!       "

DATA "≠Vi al JEFE del "         : '6083
DATA "TEAM ROCKET     "
DATA "escapando del   "
DATA "edificio SILPH! "

DATA "≠Fuera del      "         : '6087
DATA "camino!         "

DATA "La gente puede  "         : '6089
DATA "regresar ahora  "
DATA "a AZAFRèN.      "

DATA "≠El JEFE dice   "         : '6092
DATA "que invadir†    "
DATA "la ciudad!      "

DATA "≠El TEAM ROCKET "         : '6095
DATA "se apoder¢ de   "
DATA "este gimnasio!  "

DATA "VolÇ hasta aqu° "         : '6098
DATA "en mi NOCTOWL   "
DATA "cuando supe de  "
DATA "SILPH, ®ya se   "
DATA "acab¢? Me perd° "
DATA "toda la acci¢n. "
DATA "≠La pr¢xima vez "
DATA "llegarÇ a tiempo"
DATA "para machacar a "
DATA "esos ROCKET!    "

DATA "≠Au! ≠Cuidado   "         : '6108
DATA "por donde       "
DATA "caminas!        "

DATA "NOCTOWL:        "         : '6111
DATA "≠Noc noc!       "

DATA "≠Esta vez si    "         : '6113
DATA "tomaremos SILPH "
DATA "y explotaremos  "
DATA "a los POKêMON   "
DATA "de todo el      "
DATA "mundo!          "

DATA "≠El TEAM ROCKET "         : '6119
DATA "volvi¢ a huir de"
DATA "la polic°a!     "
DATA "≠Esto se est†   "
DATA "haciendo algo de"
DATA "todos los a§os! "

DATA "≠Bienvenido!    "         : '6125
DATA "≠El PRESIDENTE  "
DATA "est† en la sala "
DATA "de reuniones!   "

DATA "≠Deja de meterte"         : '6129
DATA "en los asuntos  "
DATA "del TEAM ROCKET!"

DATA "≠Vale hablarÇ!  "         : '6132
DATA "≠Nuestro JEFE   "
DATA "provicional est†"
DATA "en el 5ß piso!  "

DATA "≠Me dijeron que "         : '6136
DATA "vendr°as!       "

DATA "≠Yo no          "         : '6138
DATA "continuar°a!    "

DATA "®Por quÇ has    "         : '6140
DATA "venido aqu°?    "

DATA "≠No sabes en lo "         : '6142
DATA "que te est†s    "
DATA "metiendo!       "

DATA "≠Ni§o! ≠T£ y    "         : '6145
DATA "tus POKêMON nos "
DATA "habÇis salvado! "

DATA "≠Oye ni§o!      "         : '6148
DATA "®Por quÇ pateas "
DATA "la puerta?      "

DATA "≠Un momento!    "         : '6151
DATA "≠T£ no eres     "
DATA "un ROCKET!      "

DATA "≠Est† bien!     "         : '6154
DATA "≠Ya abr° la     "
DATA "puerta con el   "
DATA "control remoto! "

DATA "≠Te conozco!    "         : '6158
DATA "≠T£ arruinaste  "
DATA "nuestros planes "
DATA "en el MT. MOON! "

DATA "®Tienes algo en "         : '6162
DATA "contra del TEAM "
DATA "ROCKET?         "

DATA "≠Oye ni§o, esto "         : '6165
DATA "no es una       "
DATA "jugueter°a!     "
DATA "≠L†rgate ahora! "

DATA "≠El TEAM ROCKET "         : '6169
DATA "volvi¢ para     "
DATA "conquistar      "
DATA "SILPH S.A.!     "

DATA "≠Gracias por    "         : '6173
DATA "salvar la       "
DATA "compan°a!       "
DATA "≠Sera mejor     "
DATA "aumentar la     "
DATA "seguridad del   "
DATA "edificio!       "

DATA "≠Uff!           "         : '6180
DATA "≠Me tumbaste!   "
DATA "®QuÇ he perdido?"
DATA "≠NO!            "
DATA "≠Esto no        "
DATA "funcionar†!     "
DATA "≠≠≠No pude      "
DATA "hacerlo!!!      "
DATA "≠Me rindo!      "
DATA "≠No! ≠Que mala  "
DATA "suerte!         "

DATA "®Acaso no ves   "         : '6191
DATA "la belleza de   "
DATA "nuestros actos  "
DATA "malvados?       "

DATA "≠JEFE! ≠Siento  "         : '6195
DATA "haberle fallado!"

DATA "®Te has perdido,"         : '6197
DATA "peque§ajo?      "

DATA "≠Oh oh! ≠Esa    "         : '6199
DATA "pelea me dej¢   "
DATA "mareado!        "

DATA "≠Aqu° no        "         : '6202
DATA "pueden entrar   "
DATA "los ni§os!      "

DATA "≠Las baldosas   "         : '6205
DATA "con forma de    "
DATA "diamante son    "
DATA "puntos de       "
DATA "teletransporte! "
DATA "≠Son medios de  "
DATA "transporte de   "
DATA "alta tecnolog°a!"

DATA "≠Est†s en zona  "         : '6213
DATA "prohibida!      "
DATA "≠Vuelve a casa! "

DATA "®Puedes resolver"         : '6216
DATA "este laberinto? "

DATA "≠Ni§o, no nos   "         : '6218
DATA "molestes m†s!   "

DATA "®Una pista?     "         : '6220
DATA "≠Para abrir     "
DATA "todas las       "
DATA "puertas vÇncenos"
DATA "hasta el £ltimo!"

DATA "≠El TEAM ROCKET "         : '6225
DATA "ha escapado por "
DATA "tu culpa!       "

DATA "®Por quÇ me     "         : '6228
DATA "est†s siguiendo?"

DATA "≠Me rindo!      "         : '6230
DATA "≠Eres muy fuerte"
DATA "para m°!        "

DATA "≠Esta vez si nos"         : '6233
DATA "apoderaremos de "
DATA "SILPH S.A.!     "

DATA "≠Auxilio amigos!"         : '6236
DATA "≠Ay£denme o el  "
DATA "plan podr°a     "
DATA "fracasar!       "

DATA "≠Ser† mejor     "         : '6240
DATA "avisar al JEFE  "
DATA "del 5ß piso!    "

DATA "®QuiÇn est†     "         : '6243
DATA "causando l°os?  "

DATA "≠Tu derrota     "         : '6245
DATA "est† cerca!     "

DATA "≠No sobrevivir†s"         : '6247
DATA "al ataque de mis"
DATA "POKêMON!        "

DATA "≠Ja ja ja!      "         : '6250
DATA "≠El JEFE buscaba"
DATA "este lugar!     "

DATA "El TEAM ROCKET  "         : '6253
DATA "est† buscando a "
DATA "un intruso. Te  "
DATA "buscan a t° ®no?"

DATA "≠El TEAM ROCKET "         : '6257
DATA "se fuÇ! ≠Gracias"
DATA "por la ayuda!   "
DATA "≠Eres un heroe! "

DATA "≠Muy fuerte!    "         : '6261
DATA "≠Booom!         "
DATA "≠Ufa!           "
DATA "≠No aguanto m†s!"
DATA "≠Es terror°fico!"
DATA "≠Me machucaste! "
DATA "≠Oh no!         "
DATA "≠Dios m°o!      "
DATA "≠Arrrgh!        "
DATA "®Por quÇ?...    "
DATA "≠He metido la   "
DATA "pata!           "

DATA "≠Soy uno de los "         : '6273
DATA "tres HERMANOS   "
DATA "ROCKET! ≠Tenemos"
DATA "un control      "
DATA "remoto cada uno!"

DATA "≠Deber†s hacer  "         : '6278
DATA "m†s que eso     "
DATA "para pasar!     "

DATA "≠Soy el menor   "         : '6281
DATA "de los tres     "
DATA "HERMANOS ROCKET!"

DATA "≠Mis hermanos   "         : '6284
DATA "me vengar†n!    "

DATA "≠Soy el mayor   "         : '6286
DATA "de los tres     "
DATA "HERMANOS ROCKET!"

DATA "®Vencidos los   "         : '6289
DATA "tres?...        "
DATA "≠No importa!    "
DATA "≠Mis compa§eros "
DATA "son m†s fuertes!"

DATA "≠El TEAM ROCKET "         : '6294
DATA "quiere conquis- "
DATA "tar el mundo con"
DATA "sus POKêMON!    "

DATA "≠Ven a trabajar "         : '6298
DATA "para SILPH cuan-"
DATA "do seas mayor!  "

DATA "≠Oh, por favor! "         : '6301
DATA "≠Ay£dame!       "

DATA "≠Somos novios!  "         : '6303
DATA "≠Jaja!          "

DATA "≠M°rale! ≠Es    "         : '6305
DATA "tan cobarde!    "

DATA "≠Me daba tanta  "         : '6307
DATA "pena, que decid°"
DATA "casarme con Çl! "

DATA "SILPH parece    "         : '6310
DATA "interesarles por"
DATA "nuestros produc-"
DATA "tos POKêMON.    "

DATA "≠Uauu! ®Echaste "         : '6314
DATA "al TEAM ROCKET  "
DATA "t£ solo?        "

DATA "®Un ni§o        "         : '6317
DATA "intruso?        "
DATA "Debes ser t£.   "

DATA "≠Vete a casa    "         : '6320
DATA "antes que se    "
DATA "enfaden mis     "
DATA "superiores!     "

DATA "≠Alto ah°!      "         : '6324
DATA "≠No te muevas!  "

DATA "≠®QuÇ?! ®Quieres"         : '6326
DATA "ver a mi JEFE?  "

DATA "≠Menos mal que  "         : '6328
DATA "el TEAM ROCKET  "
DATA "se ha ido!      "
DATA "≠Seguiremos     "
DATA "desarrollando   "
DATA "productos de    "
DATA "calidad!        "

DATA "≠Te esperaba!   "         : '6335
DATA "≠Me dijeron que "
DATA "eres bueno, pero"
DATA "no para m°!     "

DATA "≠Grrrr!...      "         : '6339
DATA "≠Acepto la      "
DATA "derrota!...     "
DATA "≠Listo! ≠Las    "
DATA "puertas est†n   "
DATA "abiertas!       "

DATA "No...           "         : '6345
DATA "≠Por favor!     "
DATA "≠Estoy aturdido!"
DATA "®QuÇ?...        "
DATA "®He perdido?    "
DATA "≠Luces fuera!   "
DATA "≠No eres tan    "
DATA "valiente!       "
DATA "≠Mala presici¢n!"

DATA "®QuÇ? ≠Aqu° no  "         : '6354
DATA "deber°a haber   "
DATA "ning£n ni§o!    "

DATA "≠Llegaste al 4ß "         : '6357
DATA "piso, pero el   "
DATA "JEFE a£n est†   "
DATA "lejos de aqu°!  "

DATA "≠No te dejarÇ   "         : '6361
DATA "pasar a menos   "
DATA "que me derrotes!"

DATA "≠Hiciste trampa "         : '6364
DATA "en la pelea!    "
DATA "≠Ahora tampoco  "
DATA "te dejo pasar!  "

DATA "≠Te ves cansado!"         : '6368
DATA "≠Deber°as       "
DATA "hecharte una    "
DATA "siestecita!     "

DATA "≠No te rindas!  "         : '6372

DATA "≠Sab°a que lo   "         : '6373
DATA "lograr°as!      "
DATA "≠Felicitaciones!"

DATA "≠No te me cruces"         : '6376
DATA "o habr† pelea!  "

DATA "≠Odio que los   "         : '6378
DATA "ni§os como t£   "
DATA "se me crucen!   "

DATA "≠Intruso en el  "         : '6381
DATA "†rea! ≠Necesito "
DATA "refuersos!      "

DATA "≠Est†s contenado"         : '6384
DATA "a vivir luchando"
DATA "contra el TEAM  "
DATA "ROCKET!         "

DATA "®QuÇ hacÇs aqu°?"         : '6388
DATA "≠Por aqu° no    "
DATA "llegar†s a      "
DATA "ning£n lado!    "
DATA "(≠Jejeje!)      "

DATA "≠Con que te     "         : '6393
DATA "gustan los      "
DATA "problemas! ®Eh? "

DATA "≠Que mal humor! "         : '6396

DATA "Si quer°as pasar"         : '6397
DATA "desapersibido,  "
DATA "®por quÇ no te  "
DATA "disfrasaste?    "

DATA "≠Ya veo por     "         : '6401
DATA "quÇ no te       "
DATA "disfrasaste!    "

DATA "≠Quer°a ver al  "         : '6404
DATA "PRESIDENTE, pero"
DATA "el edificio es  "
DATA "muy grande y me "
DATA "perd°!          "

DATA "≠Te atrapÇ!     "         : '6409

DATA "≠FallÇ porque   "         : '6410
DATA "mis POKêMON     "
DATA "me desobedesen! "

DATA "®Te gustar°a    "         : '6413
DATA "pasar?          "

DATA "≠Espera un      "         : '6415
DATA "momento!        "

DATA "≠Con estos      "         : '6417
DATA "POKêMON te      "
DATA "machacarÇ!      "

DATA "≠Oh no! ≠Lasti- "         : '6420
DATA "maste a los     "
DATA "POKêMON de mi   "
DATA "amigo!          "

DATA "®C¢mo hiciste   "         : '6424
DATA "eso?            "
DATA "≠Tumbado!       "
DATA "≠≠≠FallÇ!!!     "
DATA "≠Maldito!       "
DATA "≠T£ no eres     "
DATA "humano!         "
DATA "Perd° el estilo."
DATA "≠Esto no queda  "
DATA "as°!            "

DATA "≠≠≠Otra vez!!!  "         : '6434
DATA "≠≠≠NO!!!        "

DATA "≠Se nota que te "         : '6436
DATA "gustan los      "
DATA "problemas!      "

DATA "≠Esc£chame bien!"         : '6439
DATA "≠Si te alejas de"
DATA "aqu° ahora te   "
DATA "perdonarÇ por lo"
DATA "que hiciste en  "
DATA "contra del      "
DATA "TEAM ROCKET!    "

DATA "≠Jajaja!        "         : '6446
DATA "≠Debiste irte   "
DATA "cuando pod°as!  "
DATA "≠Pero ahora no  "
DATA "saldr†s vivo    "
DATA "de aqu°!        "

DATA "≠No tienes dere-"         : '6452
DATA "cho a interrum- "
DATA "pir los actos   "
DATA "del TEAM ROCKET!"

DATA "≠Los cient°ficos"         : '6456
DATA "est†n ocupados! "

DATA "≠Tus POKêMON    "         : '6458
DATA "tienen puntos   "
DATA "dÇbiles! ≠Yo    "
DATA "puedo verlos!   "

DATA "≠Aprovechar sus "         : '6462
DATA "puntos dÇbiles  "
DATA "funciona!       "
DATA "≠Piensa en los  "
DATA "tipos de        "
DATA "elementos!      "

DATA "≠≠≠Apoyo m†s al "         : '6468
DATA "TEAM ROCKET que "
DATA "a SILPH S.A.!!! "

DATA "Mmm...          "         : '6471
DATA "≠El TEAM ROCKET "
DATA "me digo que si  "
DATA "los ayudaba, me "
DATA "dejar°an estu-  "
DATA "diar a los      "
DATA "POKêMON!        "

DATA "≠Mis POKêMON son"         : '6478
DATA "mis m†s fieles  "
DATA "soldados!       "

DATA "≠Las puertas se "         : '6481
DATA "cierran electr¢-"
DATA "nicamente! ≠Se  "
DATA "abren con un    "
DATA "control remoto  "
DATA "desarrolado     "
DATA "aqu° mismo!     "

DATA "≠El TEAM ROCKET "         : '6488
DATA "retras¢ nuestros"
DATA "planes!         "

DATA "≠En este piso   "         : '6491
DATA "estudiamos la   "
DATA "tecnolog°a de   "
DATA "las POKê BALL!  "

DATA "≠Trabajamos en  "         : '6495
DATA "la copia de una "
DATA "POKê BALL capaz "
DATA "de capturarlo   "
DATA "todo! ≠Seremos  "
DATA "muy poderosos   "
DATA "con esa         "
DATA "tecnolog°a!     "

DATA "≠Es terrible!   "         : '6503
DATA "≠Falta una      "
DATA "MASTER BALL!    "
DATA "≠Temo que el    "
DATA "TEAM ROCKET la  "
DATA "haya tomado!    "

DATA "≠Que pelea rara!"         : '6509
DATA "≠Las batallas   "
DATA "me ponen        "
DATA "nervioso!       "
DATA "≠Electrocutado! "
DATA "≠No funcion¢ la "
DATA "CHISPA!         "
DATA "≠Te adelantaste "
DATA "a mis ataques!  "
DATA "≠Me gustan los  "
DATA "POKêMON, pero no"
DATA "las derrotas!   "

DATA "®Dejar SILPH?   "         : '6521
DATA "≠Tu no eres     "
DATA "nadie para      "
DATA "decirnos que    "
DATA "hacer!          "

DATA "≠≠AYUDA!!       "         : '6526

DATA "≠Mmm! ≠Estoy muy"         : '6527
DATA "impresionado de "
DATA "que hayas llega-"
DATA "do hasta aqu°!  "

DATA "Ya veo que has  "         : '6531
DATA "entrenado a tus "
DATA "POKêMON con     "
DATA "mucho cuidado.  "
DATA "≠Un ni§o como t£"
DATA "jam†s entender°a"
DATA "cu†les son mis  "
DATA "planes! ≠En esta"
DATA "ecuaci¢n te     "
DATA "dejarÇ pasar!   "
DATA "Espero que nos  "
DATA "volvamos a ver. "

DATA "≠NO!            "         : '6543
DATA "≠Esto es        "
DATA "imposible!      "

DATA "PRESIDENTE:     "         : '6546
DATA "≠Gracias por    "
DATA "salvar a SILPH! "
DATA "≠Jam†s olvidarÇ "
DATA "que nos salvaste"
DATA "en este peligro-"
DATA "so momento!     "
DATA "≠Me recuerdas a "
DATA "un chico pareci-"
DATA "a t° que tambiÇn"
DATA "nos ayud¢ el    "
DATA "a§o pasado!     "
DATA "≠Me gustar°a    "
DATA "agradecÇrtelo de"
DATA "alguna forma!   "
DATA "Como soy rico,  "
DATA "≠puedo darte lo "
DATA "que quieras!    "
DATA "≠Toma, se que te"
DATA "interesar†!     "

DATA "≠No puedes com- "         : '6566
DATA "prarla en ning£n"
DATA "sitio! ≠Es el   "
DATA "nuevo prototipo "
DATA "de la MASTER    "
DATA "BALL! ≠S¢lo la  "
DATA "tendr†n los     "
DATA "millonarios y   "
DATA "los mejores     "
DATA "investigadores  "
DATA "de los POKêMON! "
DATA "≠Puede atrapar a"
DATA "cualquier tipo  "
DATA "de POKêMON!     "
DATA "≠No le digas a  "
DATA "nadie que tienes"
DATA "esto o podr°an  "
DATA "hacer cualquier "
DATA "cosa por        "
DATA "quit†rtela!     "

DATA "PRESIDENTE:     "         : '6586
DATA "≠Mucha suerte   "
DATA "en tu aventura! "

DATA "PRESIDENTE:     "         : '6589
DATA "≠Hola, chico!   "
DATA "≠Me alegra verte"
DATA "otra vez aqu°!  "
DATA "®QuÇ puedo hacer"
DATA "por t°?...      "
DATA "®Quiere un      "
DATA "PASE para el    "
DATA "MAGNETOTREN?... "
DATA "≠Muy bien, toma!"

DATA "PRESIDENTE:     "         : '6599
DATA "≠Estaba por ir  "
DATA "de viaje, pero  "
DATA "me arrepent°    "
DATA "cuando pensÇ que"
DATA "los malvados    "
DATA "ROCKET podr°an  "
DATA "volver!         "
DATA "≠No necesitas   "
DATA "devolvÇrmelo!   "

DATA "PRESIDENTE:     "         : '6609
DATA "≠Espero que     "
DATA "disfrutes tu    "
DATA "viaje a JOHTO!  "

DATA "SECRETARIA:     "         : '6613
DATA "≠Gracias por    "
DATA "salvarnos!      "
DATA "≠Admiramos      "
DATA "tu valor!       "

DATA "≠Que bien!      "         : '6618
DATA "≠Todo ha vuelto "
DATA "a la normalidad!"

DATA "≠Me dijeron que "         : '6621
DATA "el TEAM ROCKET  "
DATA "usa un GLOBO    "
DATA "con forma de    "
DATA "MEOWTH para     "
DATA "escapar de la   "
DATA "polic°a!        "

DATA "≠El acceso a la "         : '6628
DATA "CIUDAD AZAFRèN  "
DATA "se normaliz¢!   "

DATA "≠Ehhh!          "         : '6631
DATA "®QuiÇn te dej¢  "
DATA "entrar?         "

DATA "Los mejores     "         : '6634
DATA "luchadores se   "
DATA "entrenan aqu°.  "

DATA "≠Dicen que eres "         : '6637
DATA "bueno!          "
DATA "≠DemuÇstramelo! "

DATA "≠Nuestro MAESTRO"         : '6640
DATA "es un KARATEKA  "
DATA "PROFESIONAL!    "

DATA "≠Necesito       "         : '6643
DATA "concentraci¢n   "
DATA "para lograr     "
DATA "golpes muy      "
DATA "fuertes!        "

DATA "≠No me asusta   "         : '6648
DATA "nada! ≠Rompo    "
DATA "rocas para      "
DATA "entrenarme!     "

DATA "≠S¢lo nos asus- "         : '6652
DATA "tan los poderes "
DATA "ps°quicos!      "

DATA "≠Un buen lucha- "         : '6655
DATA "dor sabe romper "
DATA "rocas con mucha "
DATA "facilidad!      "

DATA "≠Ugg! ≠Qu°tate  "         : '6659
DATA "tus zapatos!    "

DATA "≠Espera a ver a "         : '6661
DATA "nuestro MAESTRO!"
DATA "≠Yo soy un asco "
DATA "comparado       "
DATA "con Çl!         "

DATA "≠A£n falto yo!  "         : '6666
DATA "≠No me vencer†s!"

DATA "≠Buena patada!  "         : '6668

DATA "≠Me sorprenden  "         : '6669
DATA "tus habilidades!"

DATA "≠Ahora estoy m†s"         : '6671
DATA "sorprendido!    "

DATA "≠Grrr!          "         : '6673
DATA "≠Soy el MAESTRO "
DATA "KARATEKA! ≠Y    "
DATA "aqu° yo soy el  "
DATA "LëDER! ®Quieres "
DATA "desafiarme? ≠No "
DATA "tenemos piedad! "
DATA "≠Fuaaa!         "

DATA "Pues s°, ≠he    "         : '6681
DATA "perdido! ≠Pero  "
DATA "te suplico que  "
DATA "no te lleves    "
DATA "nuestro emblema "
DATA "como trofeo!    "
DATA "≠A cambio de un "
DATA "valioso y fuerte"
DATA "POKêMON!        "

DATA "≠Es un POKêMON  "         : '6690
DATA "joven, pero se  "
DATA "har† muy fuerte!"

DATA "≠Uff!...        "         : '6693
DATA "≠Me rindo!      "
DATA "≠Juez!          "
DATA "≠1 punto!       "
DATA "≠Auch! ≠Me      "
DATA "fallaron mis    "
DATA "torpes dedos!   "
DATA "≠Ay! ≠No!       "
DATA "≠Me rindo!      "
DATA "≠Levantaste     "
DATA "mucho polvo!    "
DATA "≠Fall¢ mi s£per "
DATA "patada!         "
DATA "≠Uaa! ≠Argh!    "
DATA "≠Derrotado!     "

DATA "≠LlegÇ aqu°     "         : '6708
DATA "siguiendo los   "
DATA "rumores de los  "
DATA "locales!        "

DATA "≠Llamame si vez "         : '6712
DATA "un POKêMON raro!"

DATA "≠No entiendo quÇ"         : '6714
DATA "ven mis amigos  "
DATA "en este lugar!  "

DATA "≠Este lugar me  "         : '6717
DATA "da miedo!       "

DATA "®C¢mo entraste  "         : '6719
DATA "aqu°? ®Alguien  "
DATA "te ayud¢?       "

DATA "≠Cuando mis     "         : '6722
DATA "POKêMON se hagan"
DATA "m†s fuertes     "
DATA "te derrotar†n!  "

DATA "≠Quiero una     "         : '6726
DATA "buena pelea!    "

DATA "®Quieres ser mi "         : '6728
DATA "maestro? ®No?..."
DATA "≠Al cabo que    "
DATA "ni quer°a!      "

DATA "≠≠≠A pelear!!!  "         : '6732
DATA "≠Maldita sea!   "
DATA "≠Quiero pelear  "
DATA "contigo hasta   "
DATA "que te gane!    "

DATA "≠Error de       "         : '6737
DATA "c†lculos!       "
DATA "≠Suertudo!      "
DATA "≠Que malo eres! "
DATA "≠Cielos!        "
DATA "≠Que velocidad! "
DATA "≠Pero si deber°a"
DATA "ganarte!        "

DATA "PIDGEY:         "         : '6745
DATA "≠Pid, pid!      "

DATA "Gracias por     "         : '6747
DATA "escribir.       "
DATA "≠Espero verte   "
DATA "pronto!         "
DATA "≠Oye! ≠No mires "
DATA "mi carta!       "

DATA "Reciv° m†s PP   "         : '6753
DATA "como regalo.    "
DATA "≠Sirve para     "
DATA "aumentar los PP "
DATA "de los ataques! "

DATA "≠La COPIONA es  "         : '6758
DATA "muy mona! ≠Le   "
DATA "voy a dar una   "
DATA "POKê MU•ECA!    "

DATA "CHANSEY:        "         : '6762
DATA "≠Chaan! ≠Chaan! "

DATA "≠Mi hija est†   "         : '6764
DATA "tan metida en   "
DATA "s° misma que    "
DATA "tiene muy pocos "
DATA "amigos!         "

DATA "A mi hija le    "         : '6769
DATA "gusta imitar a  "
DATA "la gente. ≠Y por"
DATA "eso la gente de "
DATA "por aqu° le lla-"
DATA "ma la COPIONA!  "

DATA "≠Este es un raro"         : '6775
DATA "POKêMON! ®Eh?   "
DATA "≠Pero si es solo"
DATA "una mu§eca!     "

DATA "DODUO: ≠Dodu!   "         : '6779

DATA "...             "         : '6780
DATA "≠Mis secretos!  "
DATA "Habilidad:      "
DATA "  Imitar        "
DATA "Hobby:          "
DATA "  Colecci¢n de  "
DATA "mu§ecas.        "
DATA "POKêMON favorito"
DATA "  ≠CLEFAIRY!    "
DATA "...             "

DATA "®Te gustan los  "         : '6790
DATA "POKêMON?...     "
DATA "®No?...  Te he  "
DATA "preguntado algo."
DATA "≠Eres muy rara!˙"
DATA "®A quiÇn est†s  "
DATA "imitando?       "

DATA "≠SABRINA es     "         : '6797
DATA "joven, pero es  "
DATA "nuestra LëDER!  "
DATA "≠No llegar†s a  "
DATA "ella f†cilmente!"

DATA "En la CIUDAD    "         : '6802
DATA "AZAFRèN sol°a   "
DATA "haber dos GIM-  "
DATA "NASIOS POKêMON. "
DATA "≠El DOJO KARATE "
DATA "de aqu° al lado "
DATA "perdi¢ su condi-"
DATA "ci¢n de GIMANSIO"
DATA "cuando los      "
DATA "machacamos!     "
DATA "≠Ahora solo es  "
DATA "un CLUB!        "

DATA "≠S†bes que s¢lo "         : '6814
DATA "tu poder no es  "
DATA "suficiente!     "

DATA "≠SABRINA gan¢ al"         : '6817
DATA "MAESTRO de KARA-"
DATA "TE de la puerta "
DATA "de al lado!     "

DATA "®Nuestro aculto "         : '6821
DATA "poder te asusta?"

DATA "≠Los POKêMON    "         : '6823
DATA "ps°quicos temen "
DATA "s¢lo a los      "
DATA "bichos y a los  "
DATA "fantasmas!      "

DATA "≠SABRINA es m†s "         : '6828
DATA "joven que yo,   "
DATA "pero la respeto!"

DATA "≠En una pelea de"         : '6831
DATA "iguales, ganar† "
DATA "quien tenga m†s "
DATA "voluntad! ≠Si   "
DATA "quieres ganar a "
DATA "SABRINA, piensa "
DATA "solo en ganar!  "

DATA "≠El GIMNASIO    "         : '6838
DATA "POKêMON de AZA- "
DATA "FRèN es famoso  "
DATA "por sus mÇdiums!"
DATA "≠Quieres ver a  "
DATA "SABRINA! ≠Lo sÇ!"

DATA "≠Tienes raz¢n!  "         : '6844
DATA "≠UsÇ la telepa- "
DATA "t°a para leer   "
DATA "tu mente!       "

DATA "Los POKêMON aca-"         : '6848
DATA "ban teniendo el "
DATA "aspecto de sus  "
DATA "entrenadores,   "
DATA "≠pues tus       "
DATA "POKêMON parecen "
DATA "fuertes!        "

DATA "≠Debo ense§arles"         : '6855
DATA "mejores tÇcnicas"
DATA "a mis POKêMON!  "

DATA "≠Tuve una visi¢n"         : '6858
DATA "de tu llegada!  "
DATA "≠Tengo poderes  "
DATA "ps°quicos desde "
DATA "que era ni§a!   "
DATA "Primero aprend° "
DATA "a doblar        "
DATA "cucharas con mi "
DATA "mente. ≠Odio    "
DATA "luchar, pero si "
DATA "quieres puedo   "
DATA "ense§arte mis   "
DATA "poderes!        "

DATA "≠Con la MEDALLA "         : '6871
DATA "PANTANO se      "
DATA "aumentan las    "
DATA "caracter°sticas "
DATA "ESPECIALES de   "
DATA "tus POKêMON!    "
DATA "≠No entrenes    "
DATA "demasiado a tus "
DATA "POKêMON!        "
DATA "≠Espera, llevate"
DATA "esta MT!        "

DATA "≠La MT11 es     "         : '6882
DATA "PSICO ONDA!     "
DATA "≠êsta usa fuer- "
DATA "tes ondas menta-"
DATA "les para produ- "
DATA "cir da§os!      "

DATA "≠Todo el mundo  "         : '6888
DATA "tiene poderes   "
DATA "mentales, pero  "
DATA "la gente lo     "
DATA "ognora!         "

DATA "≠T£ y yo!       "         : '6893
DATA "Nuestros POKêMON"
DATA "deben luchar.   "

DATA "Sab°a que esto  "         : '6896
DATA "iba a pasar.    "

DATA "≠Hola, posible  "         : '6898
DATA "campe¢n!        "
DATA "≠Los POKêMON de "
DATA "SABRINA usan el "
DATA "poder de la men-"
DATA "te y no la fuer-"
DATA "za! ≠Los POKêMON"
DATA "guerreros son   "
DATA "dÇbiles contra  "
DATA "los POKêMON     "
DATA "ps°quicos! ≠Se  "
DATA "debilitan antes "
DATA "de poderse      "
DATA "preparar!       "

DATA "®Poder mental?  "         : '6912
DATA "≠Si yo lo tuvie-"
DATA "ra me har°a rico"
DATA "en los casinos! "

DATA "≠No pude        "         : '6916
DATA "concentrarme!   "
DATA "≠No me lo puedo "
DATA "creer!          "
DATA "≠Jam†s lo habr°a"
DATA "pensado!        "
DATA "≠Vaya fallo!    "
DATA "≠Arrrrgg!       "
DATA "≠Lo sab°a!      "
DATA "≠Al final perd°!"
DATA "≠Estoy impresio-"
DATA "nada! Acepto mi "
DATA "derrota.        "
DATA "≠Admito que no  "
DATA "fu° lo bastante "
DATA "fuerte y perd°! "
DATA "≠Has ganado la  "
DATA "MEDALLA PANTANO!"

DATA "≠Hola, posible  "         : '6934
DATA "campe¢n! ≠No yo "
DATA "conozco mucho   "
DATA "del LëDER de    "
DATA "este GIMNASIO!  "
DATA "≠Pero sÇ que es "
DATA "el m†s duro de  "
DATA "todos los LëDE- "
DATA "RES de GIMNASIO!"
DATA "≠Los entrenado- "
DATA "res usan los    "
DATA "POKêMON del tipo"
DATA "TIERRA! ≠P†rate "
DATA "sobre la baldosa"
DATA "marcada!        "

DATA "®QuÇ dices?     "         : '6949
DATA "≠GIOVANNI no    "
DATA "est† vinculado  "
DATA "al TEAM ROCKET! "

DATA "≠Tus POKêMON se "         : '6953
DATA "arrodillar†n    "
DATA "de un solo      "
DATA "latigazo!       "

DATA "≠Espera! ≠No    "         : '6957
DATA "tuve cuidado!   "

DATA "≠Auch! ≠Vaya    "         : '6959
DATA "latigazo!       "

DATA "≠El karate es lo"         : '6961
DATA "m†ximo en artes "
DATA "marciales!      "

DATA "Si mis POKêMON  "         : '6964
DATA "fueran tan bue- "
DATA "nos karatekas..."

DATA "≠Aach£!         "         : '6967

DATA "≠Soy el REY del "         : '6968
DATA "KARATE! ≠Te ten-"
DATA "go en mis manos!"

DATA "®La LIGA POKê-  "         : '6971
DATA "MON? ®T£? ®Pero "
DATA "quiÇn te crees? "

DATA "≠Los m†s h†biles"         : '6974
DATA "juegan con      "
DATA "estilo!         "

DATA "≠El LëDER me    "         : '6977
DATA "va a re§ir!     "

DATA "≠Oye! ≠Ya no    "         : '6979
DATA "debe de quedarte"
DATA "nada de vapor!  "

DATA "≠Necesitas po-  "         : '6982
DATA "tencia para lu- "
DATA "char contra el  "
DATA "LëDER del       "
DATA "GIMNASIO!       "

DATA "≠Groaar! ≠Estoy "         : '6987
DATA "empezando a     "
DATA "enfurecerme!    "

DATA "≠Sigo sin       "         : '6990
DATA "merecÇrmelo!    "

DATA "≠Mis POKêMON y  "         : '6992
DATA "yo hacemos muy  "
DATA "buena m£sica!   "

DATA "≠El LëDER de    "         : '6995
DATA "nuestro GIMNASIO"
DATA "estuvo estudian-"
DATA "do sobre POKêMON"
DATA "en los £ltimos  "
DATA "meses! ≠Volvi¢  "
DATA "invencible!     "

DATA "≠Yaha!          "         : '7002
DATA "!Perd° el       "
DATA "control!        "
DATA "≠Me quedÇ       "
DATA "sin gas!        "
DATA "≠Rargh!         "
DATA "≠Estabas en     "
DATA "perfecta        "
DATA "armon°a!        "

DATA "≠Ajajaja!       "         : '7011
DATA "≠Como llegaste  "
DATA "hasta aqu°      "
DATA "pensar†s que    "
DATA "eres bueno!     "
DATA "≠Soy GIOVANNI,  "
DATA "el LëDER de este"
DATA "GIMNASIO!       "
DATA "≠He aprendido un"
DATA "mont¢n sobre los"
DATA "POKêMON y los   "
DATA "mis aprendieron "
DATA "tÇcnicas morta- "
DATA "les! ≠No tengo  "
DATA "piedad!         "

DATA "≠Con la MEDALLA "         : '7026
DATA "TIERRA, todos   "
DATA "los POKêMON te  "
DATA "respetar†n y    "
DATA "obedecer†n! ≠Es "
DATA "una prueba de tu"
DATA "maestr°a como   "
DATA "entrenador de   "
DATA "POKêMON! ≠Con   "
DATA "ella y las dem†s"
DATA "podr†s acceder a"
DATA "la LIGA POKêMON!"
DATA "≠Mira, Çste mi  "
DATA "regalo por      "
DATA "desafiar a la   "
DATA "LIGA POKêMON!   "

DATA "≠MT52 es FISURA!"         : '7042
DATA "≠êsta derrotar† "
DATA "a los POKêMON de"
DATA "un solo ataque! "
DATA "≠La inventÇ     "
DATA "cuando dirig°a  "
DATA "este GIMNASIO,  "
DATA "hace ya mucho   "
DATA "tiempo...       "

DATA "≠El a§o pasado  "         : '7051
DATA "fu° derrotado   "
DATA "por varios ni§os"
DATA "como t£! ≠Creo  "
DATA "que los j¢venes "
DATA "de hoy est†n muy"
DATA "unidos con sus  "
DATA "POKêMON! ≠Eso se"
DATA "convierte en un "
DATA "arma poderosa a "
DATA "la hora de      "
DATA "pelear!         "

DATA "≠Alto ah°!      "         : '7063
DATA "≠Te harÇ una    "
DATA "propuesta para  "
DATA "que pongas m†s  "
DATA "esfuerzo! ≠Si   "
DATA "yo gano me quedo"
DATA "con la mitad de "
DATA "tu dinero, pero "
DATA "si t£ ganas te  "
DATA "darÇ el m†s     "
DATA "joven de mis    "
DATA "POKêMON≠ ®Vale? "

DATA "≠Incre°ble!     "         : '7075
DATA "®Ves que cuando "
DATA "te lo propones  "
DATA "puedes ganar?   "
DATA "≠Con la MEDALLA "
DATA "TIERRA, todos   "
DATA "los POKêMON te  "
DATA "respetar†n y    "
DATA "obedecer†n! ≠Es "
DATA "una prueba de tu"
DATA "maestr°a como   "
DATA "entrenador de   "
DATA "POKêMON! ≠Con   "
DATA "ella y las dem†s"
DATA "podr†s acceder a"
DATA "la LIGA POKêMON!"
DATA "≠Como dije! ≠Ten"
DATA "esta POKê BALL! "

DATA "≠Mira, Çste mi  "         : '7093
DATA "regalo por      "
DATA "desafiar a la   "
DATA "LIGA POKêMON!   "

DATA "≠MT52 es FISURA!"         : '7097
DATA "≠êsta derrotar† "
DATA "a los POKêMON de"
DATA "un solo ataque! "
DATA "≠La inventÇ     "
DATA "cuando dirig°a  "
DATA "este GIMNASIO,  "
DATA "hace ya mucho   "
DATA "tiempo...       "

DATA "≠El a§o pasado  "         : '7106
DATA "fu° derrotado   "
DATA "por varios ni§os"
DATA "como t£! ≠Creo  "
DATA "que los j¢venes "
DATA "de hoy est†n muy"
DATA "unidos con sus  "
DATA "POKêMON! ≠Eso se"
DATA "convierte en un "
DATA "arma poderosa a "
DATA "la hora de      "
DATA "pelear!         "

DATA "≠Ja! ≠Fue un    "         : '7118
DATA "duro combate!   "
DATA "≠Y has ganado!  "
DATA "≠Como premio,   "
DATA "toma esta       "
DATA "MEDALLA TIERRA! "

DATA "RUTA 22         "         : '7124
DATA "CIUDAD VERDE -  "
DATA "MESETA A•IL     "

DATA "MESETA A•IL:    "         : '7127
DATA "ENTRADA ESTE.   "

DATA "≠Hola, ni§o!    "         : '7129
DATA "≠Esta ruta lleva"
DATA "a la MESETA     "
DATA "A•IL, pero no   "
DATA "puedes pasar si "
DATA "no consigues    "
DATA "8 medallas!     "

DATA "≠Lo sab°a, toda-"         : '7136
DATA "v°a te faltan   "
DATA "medallas! ≠Ven  "
DATA "en otro momento!"

DATA "≠Oh, que sorpre-"         : '7140
DATA "sa! ≠Conseguiste"
DATA "todas las meda- "
DATA "llas! ≠Puedes   "
DATA "pasar!          "

DATA "≠Mol! ≠Mol!     "         : '7145
DATA "≠Treeees!       "

DATA "®Vas a la MESETA"         : '7147
DATA "A•IL?...        "
DATA "≠Mucha suerte!  "

DATA "≠Groaaaaar!...  "         : '7150
DATA "≠Grrrrr!...     "

DATA "≠Far far!       "         : '7152
DATA "≠El FARFETCH'D  "
DATA "tom¢ un PALO de "
DATA "tu mochila!     "

DATA "CUBONE:         "         : '7156
DATA "≠Cubon cubon!   "

DATA "≠Me pregunto si "         : '7158
DATA "eres lo bastante"
DATA "bueno para m°!  "

DATA "≠A m° no me     "         : '7161
DATA "gusta perder!   "

DATA "≠Me parece que  "         : '7163
DATA "eres bueno!     "
DATA "≠Veamos exacta- "
DATA "mente c¢mo de   "
DATA "bueno!          "

DATA "≠Lo admito, eres"         : '7168
DATA "mejor que yo!   "

DATA "≠La CALLE VICTO-"         : '7170
DATA "RIA es la prueba"
DATA "final de todo   "
DATA "entrenador!     "

DATA "≠Prueba a mover "         : '7174
DATA "las rocas si es-"
DATA "t†s bloqueado!  "

DATA "≠He perdido!    "         : '7177
DATA "≠Tuve una       "
DATA "oportunidad!    "
DATA "≠Aiii!          "

DATA "≠Apuesto que no "         : '7181
DATA "esperabas ver a "
DATA "alguien nadando "
DATA "aqu°!           "

DATA "≠Hay que nadar  "         : '7185
DATA "con cuidado, los"
DATA "peces de aqu°   "
DATA "son fuertes!    "

DATA "≠Ah! ®Quieres   "         : '7189
DATA "desafiar al ALTO"
DATA "MANDO?          "

DATA "≠No veo a ni§os "         : '7192
DATA "venir por aqu°! "

DATA "≠Adelante!      "         : '7194
DATA "≠Te darÇ una    "
DATA "paliza!         "

DATA "≠Ahora puedes   "         : '7197
DATA "recorrer la     "
DATA "CALLE VICTORIA! "

DATA "®Es muy dura la "         : '7200
DATA "CALLE VICTORIA? "

DATA "≠Muchos de los  "         : '7202
DATA "entrenadores se "
DATA "rinden aqu°!    "

DATA "≠Los rumores    "         : '7205
DATA "hablan de un    "
DATA "ni§o prodigio!  "

DATA "®Derrotaste a   "         : '7208
DATA "GIOVANNI del    "
DATA "GIMNASIO de     "
DATA "CIUDAD VERDE?   "

DATA "≠Si puedes pasar"         : '7212
DATA "por aqu° podr†s "
DATA "enfrentarte al  "
DATA "ALTO MANDO!     "

DATA "≠Puedo vencerte "         : '7216
DATA "en cuanto a co- "
DATA "nocimientos so- "
DATA "bre los POKêMON!"

DATA "≠Los entrenado- "         : '7220
DATA "res solo viven  "
DATA "para buscar     "
DATA "enemigos m†s    "
DATA "fuertes!        "

DATA "≠Librar duros   "         : '7225
DATA "combates te har†"
DATA "m†s fuerte!     "

DATA "≠Aqu° s¢lo pue- "         : '7228
DATA "den pasar los   "
DATA "elegidos!       "

DATA "≠Todos estos    "         : '7231
DATA "entrenadores van"
DATA "a participar en "
DATA "la LIGA POKêMON!"
DATA "≠Ten cuidado!   "

DATA "≠Me has ganado! "         : '7236
DATA "≠Me has         "
DATA "machacado!      "
DATA "≠Bien hecho!    "
DATA "≠Los rumores    "
DATA "eran ciertos!   "
DATA "≠No! ≠Incre°ble!"
DATA "≠Oooooh!        "
DATA "≠No me lo       "
DATA "puedo creer!    "
DATA "≠Que buena      "
DATA "batalla!        "

DATA "ADELANTE:       "         : '7248
DATA "MESETA A•IL.    "
DATA "≠El objetivo de "
DATA "todo entrenador."
DATA "El CG de la     "
DATA "LIGA POKêMON!   "

DATA "≠Te demostrarÇ  "         : '7254
DATA "lo bueno que    "
DATA "eres!           "

DATA "≠Me demostraste "         : '7257
DATA "lo buena que    "
DATA "era!            "

DATA "≠Necesitas una  "         : '7260
DATA "buena estrategia"
DATA "para derrotar al"
DATA "ALTO MANDO!     "

DATA "≠Tu estrategia  "         : '7264
DATA "es buena!       "
DATA "≠Contin£a as°!  "

DATA "≠Mis duros gol- "         : '7267
DATA "pes te doler†n  "
DATA "hasta ma§ana!   "

DATA "≠Auch! ≠Esto me "         : '7270
DATA "va a doler m†s  "
DATA "tarde!          "

DATA "≠Si tu POKêMON  "         : '7273
DATA "puede escalar   "
DATA "las paredes de  "
DATA "la CALLE VICTO- "
DATA "RIA podr† contra"
DATA "el ALTO MANDO!  "

DATA "≠Eres bueno!    "         : '7279
DATA "®Escalaste el   "
DATA "MT. MOON?       "

DATA "≠Siempre gano en"         : '7282
DATA "el simulador, y "
DATA "ganarÇ aqu°     "
DATA "tambiÇn!        "

DATA "≠Oh no! ≠He per-"         : '7286
DATA "dido el esp°ritu"
DATA "de luchador!    "

DATA "≠No te vayas    "         : '7289
DATA "sin ver a mis   "
DATA "POKêMON!        "

DATA "≠Soy bueno, pero"         : '7292
DATA "no demasiado!   "

DATA "≠Mis POKêMON son"         : '7294
DATA "muy monos, y los"
DATA "tuyos tambiÇn!  "

DATA "≠Ya ver†s en la "         : '7297
DATA "LIGA!...        "
DATA "≠Me vengarÇ!    "

DATA "≠Argh!          "         : '7300
DATA "≠Me enfurezco!  "
DATA "≠Grrrrr!        "
DATA "≠Imposible!     "
DATA "≠Que pu§etazo   "
DATA "malo!           "
DATA "≠Por lo dioses  "
DATA "del cielo!      "
DATA "≠He perdido!    "
DATA "≠FallÇ! ≠Pero   "
DATA "si he estudiado!"
DATA "≠As° no puedo   "
DATA "desafiar al     "
DATA "ALTO MANDO!     "
DATA "≠Que malo eres! "

DATA "≠Hola, posible  "         : '7315
DATA "campe¢n! En la  "
DATA "LIGA POKêMON    "
DATA "tendr†s que     "
DATA "luchar contra el"
DATA "ALTO MANDO uno  "
DATA "tras otro. ≠Si  "
DATA "pierdes, tendr†s"
DATA "que volver a    "
DATA "empezar!        "
DATA "≠Eso es todo!   "
DATA "≠A por ellos!   "

DATA "≠Ahora luchar†s "         : '7327
DATA "contra el ALTO  "
DATA "MANDO de uno en "
DATA "uno! ≠Si ganas, "
DATA "se abrir†       "
DATA "una puerta al   "
DATA "siguiente       "
DATA "entrenador!     "
DATA "≠Buena suerte!  "

DATA "OAK: ≠Encantado "         : '7336
DATA "de volver a ver-"
DATA "te! ≠Acabo de   "
DATA "recibir un men- "
DATA "saje desde la   "
DATA "MESETA A•IL!    "
DATA "≠Enhorabuena,   "
DATA "eres el nuevo   "
DATA "campe¢n de la   "
DATA "LIGA POKêMON!   "
DATA "≠Felicitaciones!"
DATA "≠Ahora que has  "
DATA "triunfado en    "
DATA "KANTO podr°as   "
DATA "hacer un viaje  "
DATA "al extranjero!  "
DATA "≠En el mundo hay"
DATA "otros lugares   "
DATA "que tienen otros"
DATA "tipos de POKêMON"
DATA "que no se en-   "
DATA "cuentran aqu°!  "
DATA "≠Mira! ≠Esto me "
DATA "lleg¢ por correo"
DATA "hace poco, es un"
DATA "regalo de SILPH "
DATA "S.A, pero yo no "
DATA "lo necesito!    "

DATA "≠Es la MASTER   "         : '7364
DATA "BALL, creo que  "
DATA "ya la conoces!  "
DATA "≠Puede atrapar a"
DATA "cualquier tipo  "
DATA "de POKêMON!     "
DATA "≠Con ella podr†s"
DATA "completar tu    "
DATA "POKêDEX m†s fa- "
DATA "cilmente! ≠Bien!"
DATA "≠Ahora lo £nico "
DATA "que necesitas es"
DATA "tomar un barco  "
DATA "y partir a      "
DATA "JOHTO! ≠Si!     "
DATA "≠Ir†s de viaje a"
DATA "JOHTO!          "
DATA "≠Ten esto!      "

DATA "≠El barco parte "         : '7382
DATA "de la CIUDAD    "
DATA "CARMëN!         "
DATA "≠En JOHTO vive  "
DATA "un buen amigo   "
DATA "mio, tambiÇn es "
DATA "un investigador "
DATA "famoso como yo! "
DATA "≠Si lo ves,     "
DATA "sal£dalo de mi  "
DATA "parte! ®Bien?   "

DATA "≠Explora JOHTO y"         : '7393
DATA "atrapa a todos  "
DATA "los POKêMON que "
DATA "puedas!         "

DATA "≠Hola, ni§o, yo "         : '7397
DATA "soy el nieto del"
DATA "PROFESOR OAK!   "
DATA "≠êl a bebido    "
DATA "mucho, tienes   "
DATA "que verlo!      "

DATA "≠Lo siento ni§o!"         : '7403
DATA "≠El ALTO MANDO  "
DATA "se tom¢ unos    "
DATA "d°as para mante-"
DATA "ner en forma a  "
DATA "sus POKêMON!    "

DATA "≠Espera ni§o!   "         : '7409
DATA "≠A£n no puedes  "
DATA "pasar! ≠Estoy   "
DATA "esperando       "
DATA "a BRUNO!        "
DATA "≠Si no est†n to-"
DATA "dos los entrena-"
DATA "dores no podre- "
DATA "mos empezar!    "

DATA "≠Bienvenido a la"         : '7418
DATA "LIGA POKêMON!   "
DATA "≠Yo soy LORELEI "
DATA "del ALTO MANDO! "
DATA "≠≠Nadie me      "
DATA "supera con los  "
DATA "POKêMON que     "
DATA "congelan!!      "
DATA "≠Los movimientos"
DATA "congelantes son "
DATA "muy potentes!   "
DATA "≠Tus POKêMON    "
DATA "estar†n a mi    "
DATA "merced cuando   "
DATA "los congele!    "
DATA "≠Ja! ≠Ja! ≠Ja!  "
DATA "®Est†s listo?   "

DATA "≠Eres mejor de  "         : '7435
DATA "lo que yo pensa-"
DATA "ba! ≠Adelante!  "
DATA "≠Pero la LIGA   "
DATA "POKêMON te re-  "
DATA "serva otras     "
DATA "sorpresas!      "

DATA "≠Bienvenido nue-"         : '7442
DATA "vamente a la    "
DATA "LIGA POKêMON!   "
DATA "≠Mis POKêMON se "
DATA "han fortalecido "
DATA "much°simo! ≠Tus "
DATA "POKêMON estar†n "
DATA "a mi merced     "
DATA "cuando los con- "
DATA "gele! ≠Ja! ≠Ja! "
DATA "®Est†s listo?   "

DATA "≠Se ve que no   "         : '7453
DATA "has perdido el  "
DATA "tiempo!         "
DATA "≠Adelante!      "
DATA "≠Pero yo no fu° "
DATA "la £nica que me "
DATA "fortalec°!      "

DATA "≠Yo soy BRUNO   "         : '7460
DATA "del ALTO MANDO! "
DATA "≠Con un riguroso"
DATA "entrenamiento,  "
DATA "la gente y los  "
DATA "POKêMON pueden  "
DATA "fortalecerse!   "
DATA "≠Yo he entrenado"
DATA "a mis POKêMON   "
DATA "con pesas!      "
DATA "≠Ni§o! ≠Nos     "
DATA "machacaremos con"
DATA "nuestra gran    "
DATA "fuerza! ≠Jajaja!"

DATA "≠Yo ya he hecho "         : '7474
DATA "mi trabajo! ≠Te "
DATA "est† esperando  "
DATA "tu pr¢ximo      "
DATA "desaf°o!        "

DATA "≠Ya estoy de    "         : '7479
DATA "vuelta! ≠Tras   "
DATA "varios inciden- "
DATA "tes, he regresa-"
DATA "do m†s fuerte   "
DATA "que nunca!      "
DATA "≠Podr°a enfren- "
DATA "tarme con LANCE!"
DATA "≠Pero es tu     "
DATA "turno!          "

DATA "≠Eres muy bueno!"         : '7489
DATA "≠T£ s° que sabes"
DATA "sobre los tipos "
DATA "de POKêMON!     "
DATA "≠Veamos c¢mo te "
DATA "va con AGATHA!  "

DATA "≠Yo soy AGATHA  "         : '7495
DATA "del ALTO MANDO! "
DATA "≠El PROFESOR OAK"
DATA "est† interesado "
DATA "en t°! ≠Cree que"
DATA "t£ eres igual a "
DATA "ASH, el ni§o que"
DATA "nos derrot¢ el  "
DATA "a§o pasado!     "
DATA "≠Pero yo le de- "
DATA "mostrarÇ que no "
DATA "puede suceder lo"
DATA "mismo dos veces!"
DATA "≠Yo te ense§arÇ "
DATA "como lucha un   "
DATA "gran entrenador!"

DATA "≠T£ ganas!      "         : '7511
DATA "≠êse viejo in£- "
DATA "til es bueno pa-"
DATA "ra encontrar ni-"
DATA "§os prodigios!  "
DATA "≠No tengo nada  "
DATA "m†s que decir!  "
DATA "≠Vete ya ni§o!  "

DATA "≠Te esperaba!   "         : '7519
DATA "≠No soportaba   "
DATA "haber perdido   "
DATA "la vez pasada y "
DATA "darle la raz¢n  "
DATA "al in£til del   "
DATA "PROFESOR OAK!   "
DATA "≠Con mi equipo  "
DATA "renovado te harÇ"
DATA "morder el polvo!"

DATA "≠Mi entrenamien-"         : '7529
DATA "to fuÇ duro, pe-"
DATA "ro deb° tomarme "
DATA "m†s tiempo!     "
DATA "≠No tengo nada  "
DATA "que decirte!    "
DATA "≠Vete ya ni§o!  "

DATA "≠Hola, ni§o!    "         : '7536
DATA "≠Ah! ≠He o°do   "
DATA "hablar de t°!   "
DATA "≠Dirigo al ALTO "
DATA "MANDO! ≠Puedes  "
DATA "llamarme LANCE, "
DATA "el entrenador de"
DATA "dragones! ≠Los  "
DATA "dragones son m°-"
DATA "ticos POKêMON!  "
DATA "≠Son dif°ciles  "
DATA "de capturar y   "
DATA "entrenar, pero  "
DATA "sus poderes son "
DATA "muy superiores! "
DATA "≠Son casi inven-"
DATA "sibles! Bien,   "
DATA "®preparado para "
DATA "perder? ≠Tu de- "
DATA "saf°o en la LIGA"
DATA "termina conmigo!"

DATA "≠Sigo sin poder "         : '7557
DATA "creerme que mis "
DATA "dragones hayan  "
DATA "sucumbido a tus "
DATA "ataques! ≠Ahora "
DATA "eres el campe¢n "
DATA "de la LIGA      "
DATA "POKêMON! ≠Ven,  "
DATA "s°gueme!        "

DATA "≠Aqu° estoy de  "         : '7566
DATA "nuevo! ≠Mis dra-"
DATA "gones han creci-"
DATA "do un mont¢n!   "
DATA "≠Ahora soy      "
DATA "invensible!     "
DATA "≠Esta vez no    "
DATA "tendrÇ piedad!  "
DATA "≠Espero que ten-"
DATA "gas la fuerza   "
DATA "suficiente para "
DATA "divertirme!     "

DATA "≠Esto s° que no "         : '7578
DATA "lo creo! ≠Me de-"
DATA "rrotaste como la"
DATA "primera vez!    "
DATA "≠Sin duda, eres "
DATA "el nuevo campe¢n"
DATA "de la LIGA POKê-"
DATA "MON, y lo ser†s "
DATA "por mucho tiempo"
DATA "si te mantienes "
DATA "entrenando!     "
DATA "≠S°gueme!       "

DATA "≠Ejem!          "         : '7590
DATA "≠Enhorabuena!   "
DATA "≠En este piso   "
DATA "est† el HALL de "
DATA "la FAMA de los  "
DATA "POKêMON! ≠Aqu°  "
DATA "son homenajeados"
DATA "por sus haza§as "
DATA "los campeones de"
DATA "la LIGA POKêMON!"
DATA "≠Sus POKêMON    "
DATA "tambiÇn son re- "
DATA "gistrados en el "
DATA "HALL de la FAMA!"
DATA "≠Has luchado du-"
DATA "ramente para    "
DATA "convertirte en  "
DATA "el nuevo campe¢n"
DATA "de la LIGA!     "
DATA "≠Enhorabuena, t£"
DATA "y tus POKêMON ya"
DATA "s¢is famosos!   "

DATA "≠Ahora tus POKê-"         : '7612
DATA "MON est†n recu- "
DATA "perados! ≠Pero  "
DATA "nosotros, el    "
DATA "ALTO MANDO, no  "
DATA "nos quedaremos  "
DATA "con los brasos  "
DATA "cruzados! ≠Nos  "
DATA "tomaremos un    "
DATA "descanso y luego"
DATA "volveremos a    "
DATA "vernos! ≠Hasta  "
DATA "pronto ni§o!    "

DATA "≠Ejem!          "         : '7625
DATA "≠Enhorabuena!   "
DATA "≠Como ya s†bes, "
DATA "en este piso    "
DATA "est† el HALL de "
DATA "la FAMA de los  "
DATA "POKêMON! ≠Aqu°  "
DATA "son homenajeados"
DATA "por sus haza§as "
DATA "los campeones de"
DATA "la LIGA POKêMON!"
DATA "≠Sus POKêMON    "
DATA "tambiÇn son re- "
DATA "gistrados en el "
DATA "HALL de la FAMA!"
DATA "≠Y una vez m†s, "
DATA "has luchado du- "
DATA "ramente para    "
DATA "convertirte en  "
DATA "el nuevo campe¢n"
DATA "de la LIGA!     "
DATA "≠Enhorabuena, t£"
DATA "y tus POKêMON ya"
DATA "s¢is famosos!   "

DATA "≠Fue un gusto   "         : '7649
DATA "volver a pelear "
DATA "contigo, vuelve "
DATA "pronto!         "

DATA "®≠C¢mo te has   "         : '7653
DATA "atrevido!?      "
DATA "®QuÇ? ®C¢mo he  "
DATA "podido perder?  "
DATA "≠Oh oh! ≠Eres   "
DATA "bastante espe-  "
DATA "cial chico!     "
DATA "≠Pues s°! ≠Odio "
DATA "admitirlo, pero "
DATA "eres un autÇnti-"
DATA "co maestro de   "
DATA "POKêMON!        "
DATA "®≠C¢mo safaste  "
DATA "de mis rayos    "
DATA "congelantes!?   "
DATA "≠Guau! ≠Sopor-  "
DATA "taste mis poten-"
DATA "tes golpes!     "
DATA "≠Que imprudencia"
DATA "la m°a! ≠Me con-"
DATA "fiÇ demasiado!  "
DATA "≠Me has derrota-"
DATA "do otra vez!    "
DATA "≠Ya no puedo    "
DATA "contener tu     "
DATA "poder!          "

DATA "≠Es muy dif°cil "         : '7679
DATA "pescar a los    "
DATA "CHINCHOU!       "
DATA "≠Mejor buscar   "
DATA "un lugar m†s    "
DATA "profundo!       "

DATA "®QuÇ haces ni§o?"         : '7685
DATA "≠êste es el S.S."
DATA "ANNE, el barco  "
DATA "que tienes que  "
DATA "tomar est† a la "
DATA "derecha!        "

DATA "®QuÇ haces ni§o?"         : '7691
DATA "≠êste es el S.S."
DATA "AQUA, el barco  "
DATA "que tienes que  "
DATA "tomar est† a la "
DATA "izquierda!      "

DATA "≠Bienvenido!    "         : '7697
DATA "≠êsta es la en- "
DATA "trada al S.S.   "
DATA "ANNE! ≠Siempre  "
DATA "parte hacia el  "
DATA "oeste, JOHTO!   "

DATA "≠Espera ni§o!   "         : '7703
DATA "≠Para tomar el  "
DATA "S.S. ANNE nece- "
DATA "sitas un ticket!"
DATA "®Lo tienes?     "

DATA "®No lo tienes?  "         : '7708
DATA "≠Pues no puedes "
DATA "subir a bordo!  "

DATA "≠Oh! ≠êse es el "         : '7711
DATA "ticket! ≠Bien!  "
DATA "≠Puedes abordar "
DATA "el S.S. ANNE!   "

DATA "≠Bienvenido!    "         : '7715
DATA "≠êsta es la en- "
DATA "trada al S.S.   "
DATA "AQUA! ≠Siempre  "
DATA "parte hacia el  "
DATA "norte, ARGOS!   "

DATA "≠Espera ni§o!   "         : '7721
DATA "≠Para tomar el  "
DATA "S.S. AQUA nece- "
DATA "sitas un ticket!"
DATA "®Lo tienes?     "

DATA "®No lo tienes?  "         : '7726
DATA "≠Pues no puedes "
DATA "subir a bordo!  "

DATA "≠Oh! ≠êse es el "         : '7729
DATA "ticket! ≠Bien!  "
DATA "≠Puedes abordar "
DATA "el S.S. AQUA!   "

DATA "≠Esta m†quina   "         : '7733
DATA "est† encendida! "

DATA "≠Si eres miembro"         : '7735
DATA "del CLUB de     "
DATA "PESCA, trae tus "
DATA "mejores ca§as!  "

DATA "≠Si tienes suer-"         : '7739
DATA "te podr†s ver   "
DATA "saltar a algunos"
DATA "peces por la    "
DATA "proa!           "

DATA "≠Al mediod°a    "         : '7744
DATA "busca tu almuer-"
DATA "zo en el comedor"
DATA "del barco!      "

DATA "≠Bienvenido al  "         : '7748
DATA "S.S. ANNE!      "
DATA "≠Llegas a tiempo"
DATA "para zarpar!    "

DATA "≠Disfruta el    "         : '7752
DATA "viaje! ≠Busca   "
DATA "a otros entrena-"
DATA "dores si est†s  "
DATA "aburrido!       "

DATA "≠Hemos llegado  "         : '7757
DATA "a JOHTO!        "

DATA "≠Gracias por    "         : '7759
DATA "viajar con noso-"
DATA "tros! ≠Esperamos"
DATA "volver a verlo! "

DATA "≠Muy Bien! ≠Ya  "         : '7763
DATA "no te preocupes "
DATA "m†s! ≠Al fin    "
DATA "llegamos al     "
DATA "puerto de JOHTO!"

DATA "®Conoces JOHTO?˙"         : '7768
DATA "≠Pues tienes que"
DATA "salir ahora!    "

DATA "≠Los pasajeros  "         : '7771
DATA "se est†n        "
DATA "impacientando!  "
DATA "≠Los que est†n  "
DATA "m†s aburridos   "
DATA "podr°an retarte!"

DATA "≠Bonjour! ≠Soy  "         : '7777
DATA "el camarero de  "
DATA "este barco!     "
DATA "≠Encantado de   "
DATA "servirte en todo"
DATA "lo que quieras! "
DATA "≠Pareces del    "
DATA "tipo fuerte y   "
DATA "callado!        "

DATA "≠Hola peque§ajo!"         : '7786
DATA "≠Ahora estamos  "
DATA "ocupados!       "
DATA "≠Fuera de aqu°! "

DATA "Vi una bola muy "         : '7790
DATA "rara en la      "
DATA "basura.         "

DATA "≠Estoy tan      "         : '7793
DATA "ocupado que me  "
DATA "estoy mareado!  "

DATA "®Por quÇ?       "         : '7796
DATA "®Por quÇ yo?    "
DATA "≠Me paso todo   "
DATA "el d°a pelando  "
DATA "patatas!        "

DATA "Sniff...sniff..."         : '7801
DATA "Yo solo pelo    "
DATA "cebollas...     "
DATA "Sniff...        "

DATA "≠Ejem! ≠Por algo"         : '7805
DATA "soy el CHEF!    "
DATA "El men£ es:     "
DATA "≠Ensalada de    "
DATA "salm¢n!         "
DATA "≠Pero puede que "
DATA "los clientes se "
DATA "quejen de tanto "
DATA "repetir pescado!"

DATA "≠Hemos llegado  "         : '7814
DATA "a KANTO!        "

DATA "≠Muy Bien! ≠Ya  "         : '7816
DATA "no te preocupes "
DATA "m†s! ≠Al fin    "
DATA "llegamos al     "
DATA "puerto de KANTO!"

DATA "®Eres de KANTO?˙"         : '7821
DATA "≠Pues vÇ a ver  "
DATA "a tus amigos!   "

DATA "≠Nuestro CAPITèN"         : '7824
DATA "es un maestro de"
DATA "la esgrima, pero"
DATA "ya es viejo y no"
DATA "puede practicar-"
DATA "la como antes!  "
DATA "≠A£n as° todav°a"
DATA "sabe c¢mo hacer "
DATA "que los POKêMON "
DATA "aprendan la tÇc-"
DATA "nica del CORTE! "

DATA "≠Ni§o! ≠Este es "         : '7835
DATA "tu camarote!    "
DATA "≠Si te aburres, "
DATA "hÇchate una     "
DATA "siestecita!     "

DATA "≠Que cansado    "         : '7840
DATA "estoy de tantas "
DATA "batallas!       "
DATA "≠Mejor hecharse "
DATA "a dormir...!    "

DATA "≠Aaah!...       "         : '7845
DATA "≠Que bien me    "
DATA "siento!         "

DATA "≠Hola jovencito!"         : '7848
DATA "≠êsta es la     "
DATA "enfermer°a!     "
DATA "≠Puedes usar la "
DATA "m†quina para    "
DATA "curar a tus     "
DATA "POKêMON! ≠Ah!   "
DATA "≠TambiÇn puedes "
DATA "usar la computa-"
DATA "dora de la      "
DATA "esquina!        "

DATA "≠Mi GEODUDE fue "         : '7859
DATA "atacado por unos"
DATA "peces muy malos "
DATA "y lo dejaron muy"
DATA "dÇbil! ≠Pobre   "
DATA "de mi GEODUDE!  "

DATA "≠Los cruceros   "         : '7865
DATA "son tan         "
DATA "elegantes y     "
DATA "acogedores!     "

DATA "≠Siempre viajo  "         : '7869
DATA "con WIGGLYTUFF! "

DATA "WIGGLYTUFF:     "         : '7871
DATA "≠Wig, tuuf, tuf!"

DATA "≠Hola forastero!"         : '7873
DATA "≠Para y hable-  "
DATA "mos! ≠Todos mis "
DATA "POKêMON viven   "
DATA "del mar!        "

DATA "≠Yo tambiÇn te  "         : '7878
DATA "iba a hacer mi  "
DATA "ayudante!       "

DATA "≠Como pierdas   "         : '7881
DATA "caminar†s por el"
DATA "tabl¢n, amigo!  "

DATA "A veces, algunas"         : '7884
DATA "medusas caen en "
DATA "el barco.       "

DATA "≠Maldici¢n!     "         : '7887
DATA "≠DejÇ que se me "
DATA "escapara Çse!   "
DATA "≠Argh! ≠Derrota-"
DATA "do por un ni§o  "
DATA "de KANTO!       "

DATA "≠Me gustan los  "         : '7893
DATA "ni§os activos   "
DATA "como t£!        "

DATA "Los POKêMON del "         : '7896
DATA "mar viven en las"
DATA "profundidades.  "
DATA "≠Necesitar†s    "
DATA "una ca§a!       "

DATA "≠Est† en juego  "         : '7901
DATA "mi fama de      "
DATA "marinero!       "

DATA "®Viste al GURì  "         : '7904
DATA "de los pescado- "
DATA "res en la CIUDAD"
DATA "CARMëN?         "

DATA "≠Ya sabes lo que"         : '7908
DATA "dicen de los ma-"
DATA "rineros y las   "
DATA "peleas!         "

DATA "≠Aj†! ®Quieres  "         : '7912
DATA "ser marinero?   "

DATA "≠Argh!          "         : '7914
DATA "≠He perdido!    "
DATA "≠Tu esp°ritu    "
DATA "me hundi¢!      "
DATA "≠Has peleado muy"
DATA "bien, compa§ero!"
DATA "≠Eres bastante  "
DATA "bueno, ni§o!    "
DATA "≠Estoy acabado! "

DATA "≠Los marineros  "         : '7923
DATA "tambiÇn tenemos "
DATA "POKêMON!        "

DATA "Pescamos a todos"         : '7926
DATA "nuestros POKêMON"
DATA "en alta mar.    "

DATA "≠Mira lo que    "         : '7929
DATA "he pescado!     "

DATA "®Una fiesta?˙   "         : '7931
DATA "≠No se hacen    "
DATA "fiestas en      "
DATA "esta Çpoca!     "

DATA "≠No me mires    "         : '7935
DATA "a m°! ≠Yo no    "
DATA "tengo POKêMON!  "

DATA "≠Mi amigo,      "         : '7938
DATA "MACHOKE, es     "
DATA "s£per fuerte!   "
DATA "≠Tiene tanta    "
DATA "fuerza que      "
DATA "puede mover     "
DATA "hasta grandes   "
DATA "rocas!          "

DATA "MACHOKE: ≠Cho!  "         : '7946
DATA "≠Choke cho!     "

