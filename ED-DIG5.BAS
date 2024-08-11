
DEFINT A-Z
CLS
DIM SHARED Index AS LONG
Index = 7947
OPEN "ARCHIVOS\DIALOGO.BIN" FOR BINARY AS #1
SEEK #1, Index * 16 + 1

FOR i = 7948 TO 9956
  READ a$
  PUT #1, , a$
NEXT i

CLOSE
SHELL "copy /y c:\newpoke1\archivos\dialogo.bin d:\"
END

DATA "®Has ido a la   "         : '7948
DATA "ZONA DE SAFARI  "
DATA "en la CIUDAD    "
DATA "FUCSIA? ≠Hab°a  "
DATA "mucho tipos de  "
DATA "raros POKêMON!  "

DATA "≠Mi padre y yo  "         : '7954
DATA "pensamos que la "
DATA "ZONA SAFARI es  "
DATA "genial!         "

DATA "≠Nunca viajo    "         : '7958
DATA "solo! ≠Si no voy"
DATA "con mis amigos, "
DATA "voy con mis     "
DATA "POKêMON!        "

DATA "≠Deber°as por-  "         : '7963
DATA "tarte bien con  "
DATA "los amigos!     "

DATA "≠Oye t£, mocoso!"         : '7966
DATA "®C¢mo te atreves"
DATA "a entrar aqu°?  "

DATA "≠Me gustar°a que"         : '7969
DATA "nos dejaras     "
DATA "solos!          "
DATA "≠Fuera de aqu°! "

DATA "≠Oh!...         "         : '7973
DATA "≠Mis amigos!    "
DATA "≠Oye! ≠≠Eres un "
DATA "ni§o muy malo!! "

DATA "≠Camarero, me   "         : '7977
DATA "gustar°a tomar  "
DATA "una fresca      "
DATA "limonada!       "

DATA "DIARIO DE VIAJES"         : '7981
DATA "≠Los POKêMON de "
DATA "KANTO son muy   "
DATA "diversos y      "
DATA "todos fuertes!  "
DATA "He aqu° mi      "
DATA "favorito:       "

DATA "≠Recog° estos   "         : '7988
DATA "POKêMON por todo"
DATA "el mundo!       "

DATA "≠Da§aste a mis  "         : '7991
DATA "pobres POKêMON! "
DATA "≠≠Y exijo que   "
DATA "los cures en un "
DATA "CENTRO POKêMON!!"

DATA "≠Me gustan      "         : '7996
DATA "los POKêMON!    "
DATA "®Y a t°?        "

DATA "Seamos amigos,  "         : '7999
DATA "®vale? ≠Y as°   "
DATA "podremos inter- "
DATA "cambiar POKêMON!"

DATA "≠Competir contra"         : '8003
DATA "los j¢venes me  "
DATA "mantiene joven! "

DATA "≠Hace 15 a§os yo"         : '8006
DATA "habr°a ganado!  "

DATA "Nunca te hab°a  "         : '8008
DATA "visto por aqu°. "

DATA "≠Oh! ≠Adoro a   "         : '8010
DATA "tus fuertes     "
DATA "POKêMON!        "

DATA "≠Oh no! ≠ViajÇ  "         : '8013
DATA "por todo el     "
DATA "mundo solo      "
DATA "por ellos!      "
DATA "≠Guau! ≠Eres    "
DATA "estupendo!      "
DATA "≠Buena pelear!  "
DATA "≠Vuelvo a sen-  "
DATA "tirme joven!    "
DATA "≠Oye! ≠No te    "
DATA "pongas nervioso!"

DATA "≠Me encanta el  "         : '8024
DATA "mar! ≠Ya he     "
DATA "visto varios    "
DATA "peces saltando! "

DATA "®Te gustan los  "         : '8028
DATA "POKêMON de agua?"
DATA "≠Yo los adoro!  "

DATA "≠Ah del barco!  "         : '8031
DATA "®Est†s mareado? "

DATA "≠Mi pap† dec°a  "         : '8033
DATA "que hay 200 ti- "
DATA "pos de POKêMON! "
DATA "≠Pero yo creo   "
DATA "que hay m†s!    "

DATA "≠Hey, amigo!    "         : '8038
DATA "≠Bailemos       "
DATA "una jota!       "

DATA "®Cu†ntos tipos  "         : '8041
DATA "de POKêMON crees"
DATA "que hay?        "

DATA "≠Voy a JOHTO    "         : '8044
DATA "para aumentar mi"
DATA "colecci¢n de    "
DATA "POKêMON!        "

DATA "≠Tienes suerte! "         : '8048
DATA "≠El d°a de hoy  "
DATA "me levantÇ con  "
DATA "el piÇ izquierdo"
DATA "y no puedo hacer"
DATA "nada bien!      "

DATA "≠A mis POKêMON  "         : '8054
DATA "no les gusta    "
DATA "el agua!        "

DATA "≠Si mis POKêMON "         : '8057
DATA "supieran SURF,  "
DATA "no tendr°a que  "
DATA "gastar en el pa-"
DATA "saje del barco! "

DATA "≠No tuve        "         : '8062
DATA "cuidado!        "
DATA "≠Eres           "
DATA "impresionante!  "
DATA "≠No funcion¢    "
DATA "el CONTADOR!    "
DATA "≠Ya lo sab°a!   "

DATA "®Regresas a     "         : '8069
DATA "KANTO?...       "
DATA "®Has oido hablar"
DATA "de las RUINAS   "
DATA "ALFA? ≠Yo, no!  "

DATA "®Has ido al     "         : '8074
DATA "PARQUE NACIONAL?"
DATA "≠EncontrÇ una   "
DATA "gran variedad de"
DATA "bichos POKêMON! "

DATA "≠Bienvenido!    "         : '8079
DATA "≠êsta es la en- "
DATA "trada al S.S.   "
DATA "ANNE! ≠Siempre  "
DATA "parte hacia el  "
DATA "este, KANTO!    "

DATA "≠Grooar!...     "         : '8085
DATA "≠Grooaaarr!...  "

DATA "≠Esta zona est† "         : '8087
DATA "reservada para  "
DATA "el personal!    "

DATA "≠Hey, espera!   "         : '8090
DATA "®QuÇ buscas en  "
DATA "este lugar?     "

DATA "≠No puedes      "         : '8093
DATA "pasar por aqu°, "
DATA "s¢lo personal   "
DATA "autorizado!     "

DATA "≠Oh, eres miem- "         : '8097
DATA "bro del CLUB de "
DATA "PESCA! ≠Le deseo"
DATA "una muy buena   "
DATA "pesca, joven!   "

DATA "≠El CAPITèN ha  "         : '8102
DATA "detenido el     "
DATA "barco por un    "
DATA "momento s¢lo    "
DATA "para pescar!    "
DATA "≠Aprovecha el   "
DATA "tiempo!         "

DATA "≠No me molestes,"         : '8109
DATA "estoy intentando"
DATA "pescar algo!    "

DATA "Aqu° es f†cil a-"         : '8112
DATA "trapar SHELLDER,"
DATA "en otros sitios "
DATA "son raros.      "

DATA "®Cu†ntas ca§as  "         : '8116
DATA "tienes? Las dis-"
DATA "tintas CA•AS    "
DATA "sirven para     "
DATA "atrapar distin- "
DATA "tos POKêMON.    "

DATA "PUERTO OLIVO    "         : '8122
DATA "MUELLE DEL      "
DATA "S.S. AQUA       "

DATA "FARO DE OLIVO   "         : '8125
DATA "TambiÇn conocido"
DATA "como el FARO    "
DATA "BRILLANTE.      "

DATA "LëDER DEL GIMNA-"         : '8129
DATA "SIO POKêMON DE  "
DATA "CIUDAD OLIVO:   "
DATA "YASMINA.        "
DATA "La chica        "
DATA "de acero.       "

DATA "CIUDAD OLIVO    "         : '8135
DATA "El puerto a     "
DATA "tierras lejanas."

DATA "≠Hola, chaval!  "         : '8138
DATA "≠Me gusta el    "
DATA "mar! ≠Canta     "
DATA "conmigo! ≠Yo jo!"
DATA "≠Yo jo...!      "

DATA "Las calles oscu-"         : '8143
DATA "ras son muy pe- "
DATA "ligrosas por la "
DATA "noche. Pero si  "
DATA "es noche cerra- "
DATA "da, ≠el mar es  "
DATA "a£n m†s traicio-"
DATA "nero! Si no les "
DATA "guiara la luz   "
DATA "del FARO, los   "
DATA "barcos no po-   "
DATA "dr°an navegar.  "

DATA "≠Uauu, tienes   "         : '8155
DATA "una POKêDEX!    "
DATA "Es realmente    "
DATA "incre°ble.      "

DATA "Mi BUTTERFREE ha"         : '8159
DATA "estado con mi   "
DATA "novio. Y me ha  "
DATA "tra°do una carta"
DATA "suya. ®Quieres  "
DATA "saber lo que    "
DATA "dice? Veamos... "
DATA "≠No! ≠Es un     "
DATA "secreto!        "

DATA "®Tus POKêMON sa-"         : '8168
DATA "ben un movimien-"
DATA "to para llevar  "
DATA "personas por    "
DATA "el agua?        "

DATA "Los marineros   "         : '8173
DATA "son muy genero- "
DATA "sos. Uno ense§¢ "
DATA "FUERZA a mi     "
DATA "POKêMON y ahora "
DATA "puede mover     "
DATA "grandes rocas.  "

DATA "Cuanto m†s tiem-"         : '8180
DATA "po pases con los"
DATA "POKêMON, m†s te "
DATA "querr†n.        "

DATA "Hay una persona "         : '8184
DATA "en CIUDAD ORQUë-"
DATA "DEA, cruzando el"
DATA "mar. ≠Dicen que "
DATA "presume de sus  "
DATA "raros POKêMON!  "

DATA "®Vas a cruzar   "         : '8190
DATA "el mar?         "
DATA "Pues escucha:   "
DATA "hay torbellinos "
DATA "de camino hacia "
DATA "CIUDAD ORQUëDEA."
DATA "Para pasar los  "
DATA "torbellinos,    "
DATA "tienes que cono-"
DATA "cer un movimien-"
DATA "to m†s, pero no "
DATA "recuerdo el nom-"
DATA "bre, lo siento. "

DATA "≠Oh, tus POKêMON"         : '8203
DATA "parecen bastante"
DATA "fuertes! Seguro "
DATA "que son capaces "
DATA "de mover rocas. "
DATA "Veo que no nece-"
DATA "sitas ayuda de  "
DATA "mi parte. Eso   "
DATA "s¢lo demuestra  "
DATA "tu nivel de     "
DATA "entrenador.     "

DATA "≠Mmmm!...       "         : '8214
DATA "≠En este lugar  "
DATA "hacen unas      "
DATA "hamburguesas    "
DATA "deliciosas!     "

DATA "≠CIUDAD OLIVO   "         : '8219
DATA "est† junto al   "
DATA "mar! ≠Y si est† "
DATA "junto al mar,   "
DATA "tiene que haber "
DATA "peces! Llevo 30 "
DATA "a§os pescando   "
DATA "aqu°. ≠Aj†!     "
DATA "≠Tu tambiÇn eres"
DATA "un pescador!    "
DATA "Entonces ya     "
DATA "s†bes que no    "
DATA "solo hay peces  "
DATA "en el mar, que  "
DATA "puedes encon-   "
DATA "trarlos all°    "
DATA "donde haya agua."

DATA "Mi VOLTORB es   "         : '8236
DATA "estupendo, puede"
DATA "enfrentarse a un"
DATA "mont¢n de peces "
DATA "y vencerlos sin "
DATA "salir herido.   "
DATA "®Conclusi¢n?... "
DATA "≠El tipo elÇc-  "
DATA "trico es fuerte "
DATA "contra el tipo  "
DATA "agua!           "

DATA "De camino a     "         : '8247
DATA "CIUDAD ORQUëDEA "
DATA "hay cuatro islas"
DATA "desiertas.      "
DATA "≠A los ni§os    "
DATA "malos los llevan"
DATA "a las islas como"
DATA "castigo, as° que"
DATA "p¢rtate bien!   "

DATA "Cuando me meto  "         : '8256
DATA "en l°os, pap†   "
DATA "siempre se      "
DATA "enfada.         "

DATA "Revistas ÖÜ...  "         : '8260
DATA "Televisor ÖÜ... "
DATA "Manual ÖÜ...    "
DATA "Gr†fica ÖÜ...   "

DATA "Es una TV.      "         : '8264
DATA "Es un telÇfono. "

DATA "SACASTE UNA     "         : '8266
DATA "REVISTA...      "
DATA "NOTICIAS POKêMON"
DATA "≠DespuÇs de tres"
DATA "meses de excava-"
DATA "ciones en las   "
DATA "cercan°as de    "
DATA "CIUDAD MALVA se "
DATA "han encontrado  "
DATA "paredes con unos"
DATA "dibujos raros,  "
DATA "los cient°ficos "
DATA "est†n investi-  "
DATA "gando con mucho "
DATA "entusiasmo...!  "

DATA "Si est†s leyendo"         : '8281
DATA "esto, debe ser  "
DATA "porque ya hicis-"
DATA "te tus deberes. "

DATA "El estudio cons-"         : '8285
DATA "truye tu futuro."

DATA "Miraste por los "         : '8287
DATA "prism†ticos...  "
DATA "≠Guauu! ≠All†, a"
DATA "lo lejos se vÇ  "
DATA "un †rbol grande!"
DATA "≠Y sobre Çl, un "
DATA "p†jaro POKêMON! "

DATA "≠YASMINA, la    "         : '8294
DATA "LëDER del GIM-  "
DATA "NASIO, est† en  "
DATA "el FARO! ≠Sali¢ "
DATA "corriendo cuando"
DATA "le dijeron que  "
DATA "el TEAM ROCKET  "
DATA "podr°a estar mo-"
DATA "lestando al PO- "
DATA "KêMON del FARO! "
DATA "≠Espero que no  "
DATA "le pase nada!   "

DATA "Gracias por     "         : '8306
DATA "ayudarnos en el "
DATA "FARO...         "
DATA "Pero esto es    "
DATA "distinto. DÇjame"
DATA "que me presente."
DATA "Soy YASMINA, una"
DATA "LëDER de GIMNA- "
DATA "SIO. Uso el tipo"
DATA "acero. ®Sabes   "
DATA "algo del tipo   "
DATA "acero? Acabo de "
DATA "descubrirlo.    "
DATA "≠Umm...!        "
DATA "≠Veamos!        "

DATA "≠La MEDALLA     "         : '8321
DATA "MINERAL aumenta "
DATA "la DEFENSA de   "
DATA "tus POKêMON!    "
DATA "≠Eh...!         "
DATA "≠Toma esto!     "

DATA "Usa esta MT para"         : '8327
DATA "ense§ar COLA    "
DATA "FêRREA.         "

DATA "≠Eh...! ≠No sÇ  "         : '8330
DATA "c¢mo decirlo,   "
DATA "pero buena      "
DATA "suerte!         "

DATA "YASMINA usa el  "         : '8334
DATA "tipo acero re-  "
DATA "ciÇn descubierto"
DATA "en las cuevas de"
DATA "JOHTO. No sÇ    "
DATA "mucho sobre Çse "
DATA "tipo.           "

DATA "Ha sido incre°- "         : '8341
DATA "ble, ®el tipo a-"
DATA "cero eh? ≠Ha si-"
DATA "do un gran com- "
DATA "bate de un tipo "
DATA "desconocido!    "

DATA "®Sabi†s que los "         : '8347
DATA "MAGNEMITE son   "
DATA "del tipo acero? "

DATA "≠No me importa  "         : '8350
DATA "perder una sim- "
DATA "ple batalla!    "

DATA "≠El acero es    "         : '8353
DATA "invencible!     "

DATA "TerminÇ quemado."         : '8355

DATA "®C¢mo pas¢ esto?"         : '8356
DATA "≠Esto no tiene  "
DATA "explicaci¢n!    "
DATA "Eres mejor en-  "
DATA "trenador que yo,"
DATA "tanto en habili-"
DATA "dad como en sim-"
DATA "pat°a. De acuer-"
DATA "do con las nor- "
DATA "mas de la LIGA, "
DATA "te concedo esta "
DATA "medalla.        "

DATA "≠Espera ni§o!   "         : '8368
DATA "≠El FARO est†   "
DATA "lleno de grietas"
DATA "y podr°a caerse "
DATA "en cualquier mo-"
DATA "mento!˙ ≠®QuÇ?!˙"
DATA "®No me crees?˙  "

DATA "≠El TEAM ROCKET "         : '8375
DATA "conquistar†     "
DATA "el mundo entero!"

DATA "≠Este lugar es  "         : '8378
DATA "peligroso, ser† "
DATA "mejor que te    "
DATA "l†rges de aqu°!˙"
DATA "®Acaso eres     "
DATA "sordo?...       "
DATA "≠Esto te har†   "
DATA "entender!       "

DATA "Peleas fuerte-  "         : '8386
DATA "mente, ®es que  "
DATA "no temes que el "
DATA "FARO se caiga?  "

DATA "Antes hab°a unos"         : '8390
DATA "POKêMON que ilu-"
DATA "minaban el mar  "
DATA "que rodea OLIVO."
DATA "≠El FARO se     "
DATA "construy¢ en    "
DATA "honor a esos    "
DATA "POKêMON!        "

DATA "En este FARO se "         : '8398
DATA "entrena la gente"
DATA "de la ciudad.   "
DATA "No es f†cil     "
DATA "subir porque    "
DATA "hay muchos      "
DATA "entrenadores.   "

DATA "®QuÇ hace un    "         : '8405
DATA "ni§o en este    "
DATA "lugar?          "

DATA "≠Aqu° no hay    "         : '8408
DATA "nadie que se    "
DATA "llame YASMINA!  "

DATA "≠He visto al    "         : '8411
DATA "TEAM ROCKET sa- "
DATA "liendo espanta- "
DATA "dos! ®Que los   "
DATA "habr† asustado? "

DATA "≠Oye ni§o!      "         : '8416
DATA "≠Te darÇ una    "
DATA "oportunidad!    "
DATA "≠Si te v†s ahora"
DATA "te perdono lo   "
DATA "que has hecho!  "

DATA "≠Espera mocoso! "         : '8422
DATA "≠No te muevas   "
DATA "con tanta prisa "
DATA "o podr°as empu- "
DATA "jarme!...       "
DATA "≠Te dec°a que no"
DATA "puedes pasar!   "

DATA "≠Oh no!...      "         : '8429
DATA "≠Estoy perdiendo"
DATA "el equilibrio!˙˙"

DATA "®QuÇ? Aqu°      "         : '8432
DATA "no se juega.    "

DATA "Arriba hay un   "         : '8434
DATA "POKêMON que ilu-"
DATA "mina el FARO.   "
DATA "Dicen que la me-"
DATA "dicina normal no"
DATA "puede curarle,  "
DATA "ojal† que nunca "
DATA "se enferme.     "

DATA "≠Ayyyy!...      "         : '8442
DATA "≠®QuÇÇÇÇ?!...   "
DATA "≠Incre°ble!     "
DATA "≠Ah! Ya veo que "
DATA "vas en serio.   "
DATA "®Que hiciste?   "

DATA "≠Oye mocoso!    "         : '8448
DATA "®C¢mo te atre-  "
DATA "viste a empujar "
DATA "a un miembro del"
DATA "TEAM ROCKET?    "
DATA "Me haces...     "
DATA "≠≠≠Enfurecer!!! "

DATA "Veo que tienes  "         : '8455
DATA "mucha confianza "
DATA "en tus POKêMON. "
DATA "≠Pero pronto te "
DATA "dar†s cuenta que"
DATA "tambiÇn necesi- "
DATA "tas fuerza!     "

DATA "®QuiÇn te       "         : '8462
DATA "dej¢ pasar?     "

DATA "≠Estamos aqu°   "         : '8464
DATA "para capturar   "
DATA "al POKêMON del  "
DATA "FARO! ≠Nos ser°a"
DATA "muy £til!       "

DATA "≠Te castigarÇ   "         : '8469
DATA "por interrumpir!"

DATA "≠El destello que"         : '8471
DATA "produce este    "
DATA "POKêMON dejar†  "
DATA "ciego a todos   "
DATA "los enemigos del"
DATA "TEAM ROCKET!    "

DATA "≠Mis POKêMON se-"         : '8477
DATA "ran lo £ltimo   "
DATA "que veas!       "

DATA "≠El JEFE se     "         : '8480
DATA "enojar† conmigo!"

DATA "≠Llegaste muy   "         : '8482
DATA "lejos para ser  "
DATA "un peque§ajo!   "

DATA "≠El JEFE est†   "         : '8485
DATA "tres piso m†s   "
DATA "adelante!       "
DATA "≠No llegar†s!   "

DATA "≠T£ eres el ni§o"         : '8489
DATA "de KANTO! ≠Tu   "
DATA "nombre figura en"
DATA "la lista negra  "
DATA "del TEAM ROCKET!"

DATA "≠Has molestado  "         : '8494
DATA "demasiado, no te"
DATA "sorprendas si el"
DATA "TEAM ROCKET te  "
DATA "persigue!       "

DATA "®QuÇ tienes en  "         : '8499
DATA "contra de nues- "
DATA "tros planes?    "

DATA "Entonces, ®nues-"         : '8502
DATA "tro error fue   "
DATA "llamar la aten- "
DATA "ci¢n con el     "
DATA "rapto de la Lë- "
DATA "DER YASMINA?    "

DATA "®De d¢nde salis-"         : '8508
DATA "te, duendecillo?"

DATA "Algo... me hace˙"         : '8510
DATA "(bostezo)       "
DATA "dormir...       "
DATA "(bostezo)       "

DATA "≠Los hombre de  "         : '8514
DATA "mar siempre     "
DATA "quieren luchar! "

DATA "≠QuÇ poder! ®Te "         : '8517
DATA "gustar°a navegar"
DATA "conmigo por     "
DATA "estos mares?    "

DATA "®QuÇ haces aqu°?"         : '8521
DATA "®S¢lo mirando?  "
DATA "≠Pues mejor     "
DATA "que te vayas!   "

DATA "®C¢mo diablos   "         : '8525
DATA "se sube? Quiero "
DATA "visitar al POKê-"
DATA "MON del FARO,   "
DATA "pero no puedo   "
DATA "subir...        "

DATA "Viajo por el    "         : '8531
DATA "mundo para      "
DATA "entrenar a mis  "
DATA "POKêMON.        "
DATA "®Quieres salir? "

DATA "YASMINA sol°a   "         : '8536
DATA "utilizar POKêMON"
DATA "roca como ONIX. "

DATA "YASMINA es LëDER"         : '8539
DATA "del GIMNASIO de "
DATA "esta ciudad.    "
DATA "≠No he encon-   "
DATA "trado a nadie   "
DATA "mejor!          "

DATA "Un entrenador   "         : '8545
DATA "tambiÇn debe ser"
DATA "compasivo. Si no"
DATA "lo eres, te     "
DATA "ver†n mal en    "
DATA "cualquier lugar."

DATA "YASMINA estaba  "         : '8551
DATA "muy preocupada  "
DATA "por el POKêMON  "
DATA "del FARO. Cuando"
DATA "vino el TEAM    "
DATA "ROCKET, parec°a "
DATA "decidida a      "
DATA "salvarlo.       "

DATA "Recuerda esto:  "         : '8559
DATA "≠Si este POKêMON"
DATA "se enferma, hay "
DATA "que ir r†pido a "
DATA "la farmacia de  "
DATA "CIUDAD ORQUëDEA!"

DATA "≠≠≠NO!!!        "         : '8565
DATA "≠Me vengarÇ!    "
DATA "≠Por quÇ a m°!  "
DATA "≠Maldito!       "
DATA "≠Oh no!         "
DATA "≠Traici¢n!      "
DATA "≠C¢mo pudiste!  "
DATA "®Acaso siempre  "
DATA "vas a ganar?    "
DATA "≠Urf!           "
DATA "≠He perdido!    "
DATA "Est†s realmente "
DATA "concentrado...  "
DATA "(Suspiro...)    "
DATA "Debo entrenar   "
DATA "mucho m†s.      "
DATA "≠Ay!            "
DATA "≠Mi POKêMON!    "
DATA "Yo tampoco      "
DATA "puedo sonreir..."

DATA "≠Est†s en zona  "         : '8585
DATA "prohibida!      "
DATA "≠L†rgate!       "

DATA "≠Me dijeron que "         : '8588
DATA "est†s en la lis-"
DATA "ta negra! ≠Est†s"
DATA "condenado!      "

DATA "≠Voy a lastimar "         : '8592
DATA "a tus POKêMON!  "

DATA "≠Mis amigo me   "         : '8594
DATA "vengar†n!       "

DATA "≠Las chicas     "         : '8596
DATA "tambiÇn podemos "
DATA "ser muy crueles "
DATA "y malvadas!     "

DATA "≠C¢mo te atreves"         : '8600
DATA "ha interferir en"
DATA "nuestros planes!"

DATA "≠Espera chico!  "         : '8603
DATA "≠A£n quedo yo!  "
DATA "≠Te machacarÇ!  "

DATA "≠Te darÇ un     "         : '8606
DATA "consejo!        "
DATA "≠Vete lo m†s le-"
DATA "jos que puedas! "

DATA "Estamos bastante"         : '8610
DATA "altos aqu°. Mis "
DATA "POKêMON p†jaros "
DATA "est†n en forma. "

DATA "Mi POKêMON      "         : '8614
DATA "aprendi¢ VUELO  "
DATA "en CIUDAD ORQUë-"
DATA "DEA. Y como soy "
DATA "un perdedor     "
DATA "cruzarÇ el mar  "
DATA "volando.        "

DATA "Los marineros   "         : '8621
DATA "somos fuertes y "
DATA "simp†ticos.     "

DATA "Siempre que     "         : '8624
DATA "vuelvo a CIUDAD "
DATA "OLIVO voy al    "
DATA "GIMNASIO. El    "
DATA "tipo de POKêMON "
DATA "de su LëDER ha  "
DATA "cambiado sin    "
DATA "darme cuenta.   "

DATA "≠Quer°a ganarle "         : '8632
DATA "a TASMINA, pero "
DATA "me machac¢!     "
DATA "®Y t£, quÇ?     "

DATA "Ser LëDER de un "         : '8636
DATA "GIMNASIO no es  "
DATA "s¢lo una cues-  "
DATA "ti¢n de fuerza. "
DATA "todo LëDER tam- "
DATA "biÇn debe ser   "
DATA "compasivo.      "

DATA "≠He visto al    "         : '8643
DATA "TEAM ROCKET     "
DATA "salir espantados"
DATA "como si hubieran"
DATA "visto un fantas-"
DATA "ma, pero yo creo"
DATA "que fuÇ YASMINA!"

DATA "≠S¢lo YASMINA   "         : '8650
DATA "pudo echar al   "
DATA "TEAM ROCKET!    "

DATA "≠Derr¢tame y    "         : '8653
DATA "podr†s pasar!   "

DATA "≠Veo que te     "         : '8655
DATA "gustan los      "
DATA "problemas!      "
DATA "Como quer°as,   "
DATA "≠≠CAMINA!!!     "

DATA "ROCKET}:        "         : '8660
DATA "≠JEFE! ≠Aqu°    "
DATA "traje al ni§o   "
DATA "que estaba cau- "
DATA "sando l°os en   "
DATA "los pisos de    "
DATA "abajo!...       "

DATA "®Por quÇ has    "         : '8667
DATA "vuelo? ®Acaso   "
DATA "no aprendiste   "
DATA "la lecci¢n?     "

DATA "≠Te machacarÇ!  "         : '8671
DATA "ROCKET{:        "
DATA "≠Compa§ero,     "
DATA "necesito ayuda! "

DATA "≠Ya fue sufi-   "         : '8675
DATA "ciente, ahora   "
DATA "te quiero ver   "
DATA "llorando!       "

DATA "ROCKET{:        "         : '8679
DATA "≠JEFE! ≠Tenemos "
DATA "problemas con   "
DATA "el ni§o!...     "

DATA "JEFE:           "         : '8683
DATA "≠T£, in£til!    "
DATA "≠Deja ese animal"
DATA "y enc†rgate     "
DATA "del ni§o!       "

DATA "®QuÇ te sucede, "         : '8688
DATA "ni§o? ®De d¢nde "
DATA "sacaste tus     "
DATA "POKêMON? ®QuÇ   "
DATA "buscas aqu°?... "
DATA "≠Mira, ni§o!    "
DATA "≠Nosotros, el   "
DATA "TEAM ROCKET,    "
DATA "somos un grupo  "
DATA "de personas que "
DATA "que buscan      "
DATA "proteger a los  "
DATA "POKêMON! ≠Es por"
DATA "eso que queremos"
DATA "a este POKêMON, "
DATA "si sigue aqu°   "
DATA "podr°a enfermar-"
DATA "se sin que nadie"
DATA "lo note, est†   "
DATA "solo, necesita  "
DATA "que alguien lo  "
DATA "cuide!˙ ®QuÇ?˙  "
DATA "®No me crees?˙  "
DATA "®Y por quÇ no?  "

DATA "≠Me tomaste por "         : '8712
DATA "sorpresa! ≠El   "
DATA "TEAM ROCKET no  "
DATA "olvidar† lo que "
DATA "has hecho! ≠Nos "
DATA "iremos por ahora"
DATA "pero cuando nos "
DATA "volvamos a en-  "
DATA "contrar no es-  "
DATA "tarÇ solo!      "

DATA "YASMINA:        "         : '8722
DATA "≠Oh, que batalla"
DATA "estupenda, pero "
DATA "si solo eres un "
DATA "ni§o! ≠Muchas   "
DATA "gracias por la  "
DATA "ayuda que nos   "
DATA "brindaste!      "
DATA "≠Yo intentÇ sal-"
DATA "va a AMPHY por  "
DATA "mis propias ma- "
DATA "nos, pero me    "
DATA "agarraron entre "
DATA "varios y me qui-"
DATA "taron mis POKê- "
DATA "MON! ≠Menos mal "
DATA "que llegaste a  "
DATA "tiempo para im- "
DATA "pedir que se    "
DATA "lleven a AMPHY! "
DATA "≠Sin AMPHY, los "
DATA "barcos no po-   "
DATA "dr°an navegar   "
DATA "durante las no- "
DATA "ches! ≠Gracias! "

DATA "YASMINA:        "         : '8747
DATA "≠AMPHY!...      "
DATA "≠Ven aqu°!...   "

DATA "YASMINA:        "         : '8750
DATA "®C¢mo estas     "
DATA "AMPHY?...       "
DATA "®Bien?...       "
DATA "≠Me alegro!     "

DATA "YASMINA:        "         : '8755
DATA "≠Afortunadamente"
DATA "AMPHY est† bien!"
DATA "≠Espero que esto"
DATA "no vuelva a su- "
DATA "ceder! ≠Ahora   "
DATA "que est† todo   "
DATA "bien regresarÇ  "
DATA "al GIMNASIO!    "
DATA "≠Hasta luego!   "

DATA "AMPHY:          "         : '8765
DATA "≠Amphy, amphy!  "

DATA "≠Maldici¢n!     "         : '8767
DATA "≠NO!            "
DATA "≠®QUêêêê?!      "
DATA "≠Machacado      "
DATA "como nunca!     "
DATA "≠Otra vez he    "
DATA "perdido!        "
DATA "≠No me lo       "
DATA "puedo creer!    "
DATA "≠Eres un        "
DATA "demonio!        "
DATA "≠Esto no me     "
DATA "puede estar     "
DATA "pasando!        "
DATA "≠Eres demasiado "
DATA "fuerte! ≠El TEAM"
DATA "ROCKET seguir†  "
DATA "tus POKêMON de  "
DATA "m†s cerca!      "

DATA "≠Uups...!       "         : '8786
DATA "≠Se estrellaron!"
DATA "Eres fuerte     "
DATA "y simp†tico.    "
DATA "≠Uauu!          "
DATA "≠Eres incre°ble!"
DATA "≠Me derrotaste  "
DATA "justamente!     "

DATA "RUTA 40:        "         : '8794
DATA "CIUDAD OLIVO -  "
DATA "CIUDAD ORQUëDEA "

DATA "Aunque no se ve "         : '8797
DATA "desde aqu°,     "
DATA "CIUDAD ORQUëDEA "
DATA "est† del otro   "
DATA "lado del mar.   "

DATA "CIUDAD ORQUëDEA "         : '8802
DATA "Un puerto rodea-"
DATA "do de agitadas  "
DATA "aguas.          "

DATA "500 a§os de     "         : '8806
DATA "tradici¢n.      "
DATA "FARMACIA DE     "
DATA "CIUDAD ORQUëDEA."
DATA "Aceptamos       "
DATA "pedidos.        "

DATA "LëDER DEL GIMNA-"         : '8812
DATA "SIO POKêMON DE  "
DATA "CIUDAD ORQUëDEA:"
DATA "ANëBAL.         "
DATA "Sus pu§os hablan"
DATA "por Çl.         "

DATA "Las piedras del "         : '8818
DATA "norte del pueblo"
DATA "se pueden romper"
DATA "usando el GOLPE "
DATA "ROCA que saben  "
DATA "ciertos POKêMON."

DATA "Si usas VUELO,  "         : '8824
DATA "podr†s volver a "
DATA "CIUDAD OLIVO    "
DATA "enseguida.      "

DATA "ANëBAL, el LëDER"         : '8828
DATA "del GIMNASIO,   "
DATA "pelea con       "
DATA "sus POKêMON     "
DATA "de lucha.       "

DATA "Los torbellinos "         : '8833
DATA "que rodean las  "
DATA "islas deben de  "
DATA "ser obra de     "
DATA "esa criatura.   "

DATA "®Vienes de      "         : '8838
DATA "CIUDAD OLIVO?   "
DATA "®Te acuerdas de "
DATA "las islas del   "
DATA "camino? Dicen   "
DATA "que en ellas    "
DATA "se esconde una  "
DATA "criatura m°tica "
DATA "marina.         "

DATA "Dicen que s¢lo  "         : '8847
DATA "puedes verla si "
DATA "tienes un ALA   "
DATA "PLATEADA. Debe  "
DATA "de tener la     "
DATA "misma esencia   "
DATA "que la criatura."

DATA "Mis POKêMON son "         : '8854
DATA "los mejores...  "
DATA "Los m†s fuertes˙"
DATA "Los m†s raros..."
DATA "Los m†s grandes˙"
DATA "®Quieres verlos?"
DATA "≠Pues no quiero!"
DATA "≠Si los vieras, "
DATA "intentar°as     "
DATA "quit†rmelos!    "

DATA "®Conoces al     "         : '8864
DATA "POKêMANëACO?    "
DATA "Siempre est†    "
DATA "presumiendo     "
DATA "de sus raros    "
DATA "POKêMON.        "

DATA "Los entrenadores"         : '8870
DATA "de este GIMNA-  "
DATA "SIO son muy pe- "
DATA "leones. Si me   "
DATA "quedo, puede que"
DATA "vengan por m°.  "
DATA "êste es mi con- "
DATA "sejo: el LëDER  "
DATA "del GIMNASIO    "
DATA "usa POKêMON de  "
DATA "lucha. Para     "
DATA "confundirle     "
DATA "utiliza POKêMON "
DATA "ps°quicos.      "
DATA "Debilita a sus  "
DATA "POKêMON antes   "
DATA "de que puedan   "
DATA "usar la fuerza  "
DATA "f°sica.         "

DATA "Debes calentar  "         : '8889
DATA "antes de entrar "
DATA "en el agua. Es  "
DATA "imprescindible. "

DATA "CIUDAD ORQUëDEA "         : '8893
DATA "est† bastante   "
DATA "lejos de aqu°.  "

DATA "≠Vale!          "         : '8896
DATA "≠Me rindo!      "

DATA "®Vas a CIUDAD   "         : '8898
DATA "ORQUëDEA?       "
DATA "®Te apetece     "
DATA "luchar antes?   "

DATA "Creo que nado   "         : '8902
DATA "mejor que t£.   "
DATA "≠Sin duda!      "

DATA "Yo no necesito  "         : '8905
DATA "flotador. ≠Voy  "
DATA "agarrada a un   "
DATA "POKêMON de mar! "

DATA "Mientras flote  "         : '8909
DATA "as°, las olas   "
DATA "me llevar†n.    "

DATA "≠He perdido!    "         : '8912
DATA "≠Oh, he perdido!"

DATA "Un joven como t£"         : '8914
DATA "deber°a nadar.  "
DATA "No hagas SURF   "
DATA "sobre tus       "
DATA "POKêMON.        "

DATA "La nataci¢n     "         : '8919
DATA "fortalece tu    "
DATA "cuerpo. Es sana."

DATA "Aqu° el agua    "         : '8922
DATA "est† templada.  "
DATA "Estoy muy a     "
DATA "gusto... Por    "
DATA "supuesto, ≠lu-  "
DATA "charÇ contigo!  "

DATA "≠QuÇ relajante  "         : '8928
DATA "es flotar as°!  "

DATA "Estoy cansado.  "         : '8930
DATA "Si gano, ®me    "
DATA "prestas tus     "
DATA "POKêMON?        "

DATA "CIUDAD ORQUëDEA "         : '8934
DATA "est† muy lejos. "
DATA "Pero tampoco es "
DATA "f†cil volver a  "
DATA "CIUDAD OLIVO.   "
DATA "®QuÇ hacer?     "

DATA "Voy hacia las   "         : '8940
DATA "ISLAS REMOLINO. "
DATA "Voy a explorar- "
DATA "las con unos    "
DATA "amigos.         "

DATA "Dicen que hay   "         : '8945
DATA "un gran POKêMON "
DATA "bajo las ISLAS  "
DATA "REMOLINO.       "
DATA "Me pregunto     "
DATA "c¢mo ser†...    "

DATA "Si necesitas    "         : '8951
DATA "descansar, ve   "
DATA "por el agua.    "
DATA "El viento te    "
DATA "empujar† y      "
DATA "podr†s seguir   "
DATA "siendo fuerte.  "

DATA "He o°do rugidos "         : '8958
DATA "procedentes de  "
DATA "las islas.      "

DATA "Aqu° hay mucho  "         : '8961
DATA "oleaje. Cuesta  "
DATA "mucho nadar.    "

DATA "La corriente me "         : '8964
DATA "impide llegar a "
DATA "las islas.      "

DATA "®Ves esas islas "         : '8967
DATA "aisladas por    "
DATA "torbellinos?    "
DATA "≠Tiene que haber"
DATA "un secreto!     "

DATA "Era de noche y  "         : '8972
DATA "llov°a... V° un "
DATA "POKêMON gigante "
DATA "volando desde   "
DATA "las islas.      "
DATA "Dejaba caer las "
DATA "plumas de sus   "
DATA "alas plateadas. "

DATA "®Est†s buscando "         : '8980
DATA "el secreto de   "
DATA "las ISLAS       "
DATA "REMOLINO?       "

DATA "Un secreto sobre"         : '8984
DATA "las ISLAS       "
DATA "REMOLINO...     "
DATA "≠Dentro est†    "
DATA "muy oscuro!     "

DATA "Por las noches, "         : '8989
DATA "los STARYU se   "
DATA "re£nen cerca de "
DATA "la superficie.  "

DATA "Los grupos de   "         : '8993
DATA "STARYU se ilu-  "
DATA "minan al mismo  "
DATA "tiempo. Es muy  "
DATA "bonito, pero    "
DATA "da miedo.       "

DATA "Est†s tan ele-  "         : '8999
DATA "gante montado en"
DATA "tu POKêMON.     "

DATA "®No hab°a una   "         : '9002
DATA "cansi¢n famosa  "
DATA "sobre un ni§o   "
DATA "que montaba     "
DATA "un LAPRAS?      "

DATA "≠Hace muy buen  "         : '9007
DATA "d°a! ≠Estoy     "
DATA "aturdida!       "

DATA "El sol es muy   "         : '9010
DATA "malo para la    "
DATA "piel. Pero yo no"
DATA "uso protecci¢n  "
DATA "solar. No quiero"
DATA "ensuciar el agua"

DATA "≠No, que mal!   "         : '9016
DATA "®Por quÇ te     "
DATA "subes a un pobre"
DATA "POKêMON cuando  "
DATA "puedes nadar    "
DATA "por t° mismo?   "

DATA "No ser°a raro   "         : '9022
DATA "que tu POKêMON  "
DATA "no pueda luchar "
DATA "por haber nadado"
DATA "todo el d°a.    "

DATA "®Tu POKêMON sabe"         : '9027
DATA "SURF? ®Puedes   "
DATA "decirme donde   "
DATA "aprendi¢?       "

DATA "Me gustar°a que "         : '9031
DATA "mi POKêMON      "
DATA "aprenda SURF.   "
DATA "As° no tendr°a  "
DATA "que cansarme    "
DATA "tanto.          "

DATA "He observado a  "         : '9037
DATA "los peces...    "
DATA "s¢lo dan vueltas"
DATA "buscando comida˙"
DATA "Con una ca§a    "
DATA "los atrapar°a   "
DATA "f†cilmente.     "

DATA "Cuando tenga m†s"         : '9044
DATA "peces, serÇ m†s "
DATA "fuerte que t£.  "

DATA "≠Puedo ver una  "         : '9047
DATA "cueva en esa    "
DATA "isla! Pero,     "
DATA "®C¢mo entrar?   "

DATA "TendrÇ que      "         : '9051
DATA "esperar que     "
DATA "la corriente    "
DATA "se calme.       "

DATA "≠Este lugar est†"         : '9055
DATA "buen°simo! ≠Con "
DATA "mis ca§as puedo "
DATA "pescar POKêMON  "
DATA "que jam†s hab°a "
DATA "visto!          "

DATA "≠DÇjame s¢lo!   "         : '9061
DATA "≠Quiero seguir  "
DATA "pescando!       "

DATA "≠Ooh, estoy     "         : '9064
DATA "mareado...!     "
DATA "≠Vaya! ≠Estoy   "
DATA "como una pasa!  "
DATA "(jadeo...)      "
DATA "®As° es como    "
DATA "lo haces?       "
DATA "≠Oh! Tienes m†s "
DATA "energ°a que yo. "
DATA "≠Me has vencido!"
DATA "®Cu†l es tu     "
DATA "secreto?        "
DATA "≠Ooh, tienes    "
DATA "una gran        "
DATA "resistencia!    "
DATA "≠Oh, querido...!"
DATA "He perdido.     "
DATA "≠Ohhh!          "
DATA "≠Empapado!      "
DATA "≠No la v° venir!"
DATA "≠Que malo eres! "
DATA "≠Mala suerte!   "
DATA "≠Mis POKêMON!   "

DATA "®Te gusta CIUDAD"         : '9087
DATA "ORQUëDEA?...    "
DATA "SÇ que a primera"
DATA "vista no parece "
DATA "interesante,    "
DATA "pero a veces    "
DATA "ocurren cosas   "
DATA "interesantes    "
DATA "como en las     "
DATA "ISLAS REMOLINO. "

DATA "Esto es s¢lo una"         : '9097
DATA "farmacia, para  "
DATA "comprar cosas   "
DATA "como POKê BALL  "
DATA "tienes que ir   "
DATA "hasta OLIVO.    "

DATA "®Has cruzado el "         : '9103
DATA "mar para llegar "
DATA "esta aqu°?      "
DATA "≠Habr† sido     "
DATA "duro! ≠Al menos "
DATA "puedes volver   "
DATA "usando VUELO!   "
DATA "®Tienes la MO02?"

DATA "≠Oh, Çsa es la  "         : '9111
DATA "MO02! ≠DÇjame   "
DATA "verla! ®Si?     "

DATA "≠Te atrapÇ!     "         : '9114
DATA "≠Mi marido est† "
DATA "tan confiado en "
DATA "sus POKêMON que "
DATA "ha dejado de    "
DATA "entrenar y ha   "
DATA "empezado a      "
DATA "engordar!       "
DATA "≠Si quieres que "
DATA "te devuelva tu  "
DATA "MO02, derr¢talo!"

DATA "Av°same cuando  "         : '9125
DATA "lo derrotes.    "

DATA "≠Oh, conseguiste"         : '9127
DATA "la MEDALLA      "
DATA "TORMENTA!       "
DATA "≠Bien hecho!    "
DATA "≠Seguro que     "
DATA "ahora se pondr† "
DATA "a entrenar!     "
DATA "Como te lo dije,"
DATA "te devuelvo tu  "
DATA "MO para que no  "
DATA "te enojes...    "

DATA "≠Pareces un buen"         : '9138
DATA "chico, te deseo "
DATA "mucha suerte en "
DATA "tu aventura!    "

DATA "A mis POKêMON y "         : '9142
DATA "a m° nos une una"
DATA "gran amistad.   "
DATA "≠Nuestro v°nculo"
DATA "nunca se        "
DATA "romper†!        "

DATA "≠Pareces que t£ "         : '9148
DATA "y tus POKêMON   "
DATA "est†is muy      "
DATA "unidos!         "

DATA "≠Los expertos en"         : '9152
DATA "artes marciales "
DATA "no tememos      "
DATA "a nada!         "

DATA "Los POKêMON de  "         : '9156
DATA "lucha temen a   "
DATA "los ps°quicos..."

DATA "Las palabras no "         : '9159
DATA "sirven. ≠Deja   "
DATA "que hablen tus  "
DATA "pu§os!          "

DATA "≠He perdido! ≠No"         : '9163
DATA "sÇ que decir!   "

DATA "≠Mis furiosos   "         : '9165
DATA "pu§os destroza- "
DATA "r†n a tus       "
DATA "POKêMON!        "

DATA "≠Mis POKêMON    "         : '9169
DATA "han perdido!    "
DATA "Has herido mi   "
DATA "orgullo.        "

DATA "®S†bes lo que   "         : '9173
DATA "pasa cuando le  "
DATA "das HIERRO a    "
DATA "un TYROGUE?     "

DATA "≠TYROGUE se     "         : '9177
DATA "transforma en   "
DATA "otro POKêMON!   "

DATA "®S†bes lo que   "         : '9180
DATA "pasa cuando le  "
DATA "das PROTEëNAS   "
DATA "a un TYROGUE?   "

DATA "≠Siempre he     "         : '9184
DATA "entrenado a mis "
DATA "POKêMON con mis "
DATA "propias manos!  "

DATA "≠Mi TYROGUE se  "         : '9188
DATA "transform¢ en   "
DATA "un POKêMON des- "
DATA "conocido hasta  "
DATA "el momento!     "

DATA "≠Mis POKêMON son"         : '9193
DATA "simples, pero   "
DATA "muy fuertes!    "

DATA "≠Tu pu§o es m†s "         : '9196
DATA "fuerte que el   "
DATA "mio! ®C¢mo lo   "
DATA "conseguiste?    "

DATA "≠UAUUU!         "         : '9200
DATA "≠Has llegado    "
DATA "hasta aqu°!     "
DATA "≠Que sepas que  "
DATA "soy muy fuerte! "
DATA "≠Mis POKêMON    "
DATA "aplastar†n pie- "
DATA "dras y romper†n "
DATA "huesos! Venga.  "
DATA "≠Luchemos!      "

DATA "Con la MEDALLA  "         : '9210
DATA "TORMENTA te     "
DATA "respetar†n los  "
DATA "entrenadores de "
DATA "todo JOHTO.     "
DATA "Cuando sepan    "
DATA "que me venciste "
DATA "temblar†n de    "
DATA "miedo... ≠Ah!..."
DATA "≠Toma esto      "
DATA "tambiÇn!        "

DATA "Se trata de     "         : '9221
DATA "PU•ODINèMICO.   "
DATA "≠Cuando golpÇa  "
DATA "produce         "
DATA "confusi¢n a     "
DATA "tu enemigo!     "

DATA "≠UAJAJAA!       "         : '9227
DATA "≠Ha sido muy    "
DATA "divertido!      "
DATA "≠Pero una       "
DATA "derrota es      "
DATA "una derrota!    "
DATA "≠Desde ahora voy"
DATA "a entrenar 24   "
DATA "horas al d°a!   "

DATA "≠No puede ser!  "         : '9236
DATA "≠Es incre°ble!  "
DATA "...             "
DATA "≠Me has         "
DATA "aplastado!      "
DATA "≠Rayos!         "
DATA "≠Menuda batalla!"
DATA "≠Truenos!       "
DATA "≠Me hiciste     "
DATA "purÇ!           "
DATA "®QuÇ? ®C¢mo?    "
DATA "®He perdido?    "
DATA "≠Muy bien!      "
DATA "Te mereces la   "
DATA "MEDALLA TORMENTA"

DATA "PISTA ENTRENADOR"         : '9251
DATA "Si un POKêMON va"
DATA "a evolucionar,  "
DATA "puedes pararlo. "
DATA "Pulsa el Bot¢n B"
DATA "mientras intenta"
DATA "evolucionar.    "
DATA "Esto asusta al  "
DATA "POKêMON y detie-"
DATA "ne su evoluci¢n."

DATA "RUTA 38:        "         : '9261
DATA "CIUDAD OLIVO -  "
DATA "CIUDAD IRIS     "

DATA "PISTA ENTRENADOR"         : '9264
DATA "Usa GOLPE CABEZA"
DATA "en los †rboles  "
DATA "para que salgan "
DATA "POKêMON. De los "
DATA "†rboles pueden  "
DATA "caer varios     "
DATA "tipos de POKêMON"

DATA "GRANJA MU-MU    "         : '9272
DATA "Prueba nuestra  "
DATA "rica leche      "
DATA "fresca.         "

DATA "RUTA 39:        "         : '9276
DATA "CIUDAD OLIVO -  "
DATA "CIUDAD IRIS     "

DATA "≠Hola! ≠Tienes  "         : '9279
DATA "buen aspecto!   "
DATA "®Me dejas ver   "
DATA "a tus POKêMON?  "

DATA "Cuando veo      "         : '9283
DATA "POKêMON me      "
DATA "tranquilizo.    "

DATA "Encantada de    "         : '9286
DATA "haber visto     "
DATA "a tus POKêMON.  "

DATA "≠Vuela alto     "         : '9289
DATA "hacia el cielo  "
DATA "querido p†jaro  "
DATA "POKêMON!        "

DATA "Pienso entrenar-"         : '9293
DATA "me en CIUDAD    "
DATA "ORQUëDEA y ense-"
DATA "§ar a volar a   "
DATA "mis POKêMON.    "

DATA "Parece que sabÇs"         : '9298
DATA "de POKêMON. Si  "
DATA "es as°, ®por quÇ"
DATA "no me das alg£n "
DATA "consejo?        "

DATA "≠Tengo una buena"         : '9303
DATA "noticia! La le- "
DATA "che de la GRANJA"
DATA "MU-MU es famosa "
DATA "por su sabor.   "

DATA "He estado en el "         : '9308
DATA "extranjero. ≠As°"
DATA "que conozco todo"
DATA "tipo de POKêMON!"

DATA "Gentes de todo  "         : '9312
DATA "el mundo viven  "
DATA "felices con     "
DATA "sus POKêMON.    "

DATA "®No crees que   "         : '9316
DATA "mis POKêMON y yo"
DATA "somos bonitos?  "

DATA "La LECHE MU-MU  "         : '9319
DATA "embellece y es  "
DATA "muy saludable,  "
DATA "pero es una pena"
DATA "que s¢lo vendan "
DATA "una botella     "
DATA "cada vez.       "

DATA "DÇjame probar   "         : '9326
DATA "algo que he     "
DATA "aprendido hoy.  "

DATA "Tengo que hacer "         : '9329
DATA "muchos ex†menes "
DATA "y no tengo tiem-"
DATA "po para los     "
DATA "POKêMON. As° que"
DATA "cuando puedo    "
DATA "jugar, me con-  "
DATA "centro mucho.   "

DATA "DÇjame ver de   "         : '9337
DATA "quÇ son capaces "
DATA "tus POKêMON.    "

DATA "®S†bes que los  "         : '9340
DATA "POKêMON tienen  "
DATA "distintas habi- "
DATA "lidades? Son    "
DATA "como las perso- "
DATA "nas. Cada uno   "
DATA "tiene su propio "
DATA "potencial.      "

DATA "≠Me apetece     "         : '9348
DATA "salir volando   "
DATA "ahora!          "
DATA "Ya veo. De modo "
DATA "que luchas as°. "
DATA "≠Tu destreza es "
DATA "de categor°a    "
DATA "mundial!        "
DATA "Bebemos LECHE   "
DATA "MU-MU a diario. "
DATA "Creo que no     "
DATA "estudiÇ bastante"
DATA "≠Ooh...! Tus    "
DATA "POKêMON tienen  "
DATA "potencial.      "

DATA "MUU-MUU: ≠MUU!  "         : '9363
DATA "TORO: ≠ROOS!    "

DATA "Trabajo en esta "         : '9365
DATA "granja. Cuido   "
DATA "de las MUU-MUU. "
DATA "Es mi POKêMON   "
DATA "favorito.       "

DATA "Trabajo en esta "         : '9370
DATA "granja. Cuido   "
DATA "de los TOROS.   "
DATA "Es mi POKêMON   "
DATA "favorito.       "

DATA "La leche es esta"         : '9375
DATA "granja es famosa"
DATA "por su sabor y  "
DATA "calidad. Casi   "
DATA "todos quieren   "
DATA "probarla.       "
DATA "Nuestra leche   "
DATA "llega hasta     "
DATA "KANTO. As° que  "
DATA "si nuestras     "
DATA "MUU-MUU no nos  "
DATA "dan leche,      "
DATA "tendremos       "
DATA "problemas.      "

DATA "MILTANK:        "         : '9389
DATA "Apodo: MUU-MUU. "

DATA "TAUROS:         "         : '9391
DATA "Apodo: TORO.    "

DATA "®Te gusta       "         : '9393
DATA "mi granja?      "
DATA "Estoy dando de  "
DATA "comer a MUU-MUU."
DATA "Tiene que estar "
DATA "fuerte y sana   "
DATA "para que nos dÇ "
DATA "leche rica.     "
DATA "Adem†s de BAYAS "
DATA "me gustar°a     "
DATA "tener algo m†s. "

DATA "®T£ tienes algo "         : '9404
DATA "mejor que una   "
DATA "BAYA? ≠Si!      "
DATA "®Me das esa     "
DATA "MèX POCIíN?     "

DATA "®Por quÇ no     "         : '9409
DATA "quieres? ≠Eres  "
DATA "un entrenador   "
DATA "sin coraz¢n!    "

DATA "≠Oh, muchas     "         : '9413
DATA "gracias!        "
DATA "≠Toma esto!     "
DATA "≠Puede que      "
DATA "te ayude!       "

DATA "êsto es RONQUIDO"         : '9418
DATA "Es un movimiento"
DATA "raro que s¢lo   "
DATA "funciona cuando "
DATA "el POKêMON est† "
DATA "durmiendo.      "
DATA "Mejor que pien- "
DATA "ses c¢mo vas a  "
DATA "utilizarlo.     "

DATA "Con esta        "         : '9427
DATA "MèX POCIíN      "
DATA "a mano, estoy   "
DATA "m†s segura.     "

DATA "®Te gusta mi    "         : '9431
DATA "LECHE MU-MU?    "
DATA "Es mi orgullo   "
DATA "y mi alegr°a.   "
DATA "≠D†sela a los   "
DATA "POKêMON para    "
DATA "restaurar sus   "
DATA "PS!...          "

DATA "≠Ups!...        "         : '9439
DATA "≠Ya no tengo!   "
DATA "Mejor que me    "
DATA "vaya a orde§ar. "

DATA "Es tuya s¢lo    "         : '9443
DATA "por $500.       "

DATA "®No la quieres? "         : '9445
DATA "Vuelve otro d°a."

DATA "≠Toma! ≠BÇbetela"         : '9447
DATA "y disfruta!     "

DATA "≠Que POKêMON m†s"         : '9449
DATA "encantadores!   "
DATA "Ense§emos nues- "
DATA "tros POKêMON al "
DATA "mismo tiempo.   "

DATA "®S†bes algo so- "         : '9454
DATA "bre los POKêMON "
DATA "bebÇs? ≠Seguro  "
DATA "que son         "
DATA "adorables!      "

DATA "≠Es buen momento"         : '9459
DATA "para alardear de"
DATA "mi PIKACHU!     "

DATA "≠PIKACHU        "         : '9462
DATA "es lo m†s!      "
DATA "®No lo crees?   "

DATA "Acabo de volver "         : '9465
DATA "de viaje. ®Te   "
DATA "apetece luchar  "
DATA "con los POKêMON?"

DATA "Mis POKêMON han "         : '9469
DATA "sido atrapados  "
DATA "y entrenados en "
DATA "el extrangero!  "

DATA "No me importa   "         : '9473
DATA "perder.         "
DATA "No tuve tiempo  "
DATA "de presumir de  "
DATA "mi PIKACHU...   "
DATA "≠Awaaargh!      "

DATA "®De d¢nde has   "         : '9479
DATA "dicho que eres? "
DATA "®De ISLA CANELA?"
DATA "ISLA CANELA est†"
DATA "en KANTO, ®no?  "
DATA "Has recorrido   "
DATA "un largo camino."

DATA "CIUDAD IRIS     "         : '9486
DATA "tiene muchas    "
DATA "historias       "
DATA "interesantes.   "
DATA "≠Busca quien te "
DATA "las cuente!     "

DATA "LëDER DEL GIMNA-"         : '9492
DATA "SIO POKêMON DE  "
DATA "CIUDAD IRIS:    "
DATA "MORTI.          "
DATA "El m°tico adivi-"
DATA "no del futuro.  "

DATA "CIUDAD IRIS     "         : '9498
DATA "Donde conviven  "
DATA "el pasado y el  "
DATA "presente.       "

DATA "TEATRO DE DANZA "         : '9502
DATA "DE CIUDAD IRIS. "

DATA "TORRE QUEMADA   "         : '9504
DATA "Destruida por   "
DATA "un misterioso   "
DATA "incendio.       "
DATA "≠Atenci¢n!      "
DATA "≠Peligro!       "

DATA "La torre que    "         : '9510
DATA "hab°a aqu°...   "
DATA "Mi abuela me    "
DATA "dijo que era    "
DATA "mucho m†s alta. "

DATA "En CIUDAD IRIS  "         : '9515
DATA "hab°a dos torres"
DATA "Una en el Este y"
DATA "otra en el Oeste"

DATA "≠Oye, t£!       "         : '9519
DATA "®Has aprendido a"
DATA "bailar con las  "
DATA "CHICAS KIMONO?  "
DATA "Si vas a su     "
DATA "TEATRO de DANZA,"
DATA "una persona rara"
DATA "estaba buscando "
DATA "a un buen       "
DATA "entrenador.     "

DATA "Voy a practicar "         : '9529
DATA "en el TEATRO    "
DATA "de DANZA.       "
DATA "®Vienes conmigo?"

DATA "He o°do un rumor"         : '9533
DATA "sobre el FARO de"
DATA "CIUDAD OLIVO.   "
DATA "El POKêMON que  "
DATA "usan como luz ha"
DATA "ca°do en manos  "
DATA "del TEAM ROCKET."
DATA "Parece que hay  "
DATA "problemas.      "

DATA "EscuchÇ por la  "         : '9542
DATA "radio que el    "
DATA "TEAM ROCKET dej¢"
DATA "la CIUDAD OLIVO "
DATA "y el POKêMON del"
DATA "FARO est† a     "
DATA "salvo. Los bar- "
DATA "cos pueden vol- "
DATA "ver a navegar   "
DATA "por las noches. "

DATA "Las CHICAS      "         : '9552
DATA "KIMONO son      "
DATA "unas geniales   "
DATA "bailarinas,     "
DATA "adem†s de       "
DATA "magn°ficas con  "
DATA "sus POKêMON.    "

DATA "LAGO DE LA FURIA"         : '9559
DATA "Un mont¢n de    "
DATA "GYARADOS...     "
DATA "≠Esto huele a   "
DATA "conspiraci¢n!   "

DATA "MORTI, el LëDER "         : '9564
DATA "del GIMNASIO, es"
DATA "muy bueno. Y sus"
DATA "POKêMON son muy "
DATA "fuertes.        "

DATA "Mi EEVEE evolu- "         : '9569
DATA "cion¢ en ESPEON."
DATA "Pero el EEVEE de"
DATA "mi amigo evolu- "
DATA "cion¢ en UMBREON"
DATA "No sÇ por quÇ.  "
DATA "Los dos educamos"
DATA "a nuestros EEVEE"
DATA "de la misma     "
DATA "forma...        "

DATA "Si usas REVIVIR,"         : '9579
DATA "el POKêMON      "
DATA "debilitado se   "
DATA "reanimar†.      "
DATA "®Ya lo sab°as?  "

DATA "êsta es una     "         : '9584
DATA "pintura muy     "
DATA "antigÅa.        "

DATA "Estoy en un l°o˙"         : '9587
DATA "Ya me aburr° de "
DATA "EEVEE, quiero   "
DATA "que se haga m†s "
DATA "fuerte con una  "
DATA "evoluci¢n, ya   "
DATA "consegu° varias "
DATA "piedras. El pro-"
DATA "blema es que no "
DATA "sÇ cual usar.   "
DATA "®QuÇ evoluci¢n  "
DATA "de EEVEE te     "
DATA "gusta m†s?      "

DATA "®Quieres o°r una"         : '9600
DATA "historia sobre  "
DATA "CIUDAD IRIS?    "

DATA "En CIUDAD IRIS  "         : '9603
DATA "hab°a dos torres"
DATA "Cada una acog°a "
DATA "a un fuerte     "
DATA "POKêMON volador."
DATA "Pero una de     "
DATA "ellas se quem¢. "
DATA "Y desde entonces"
DATA "no se ha visto  "
DATA "a ninguno de los"
DATA "dos POKêMON.    "
DATA "®Quieres que te "
DATA "siga contando   "
DATA "historias?      "

DATA "En CIUDAD IRIS  "         : '9617
DATA "tambiÇn viv°an  "
DATA "tres POKêMON que"
DATA "corr°an por toda"
DATA "la ciudad. Dicen"
DATA "que hab°an      "
DATA "nacido del agua,"
DATA "del fuego y del "
DATA "rayo. Pero como "
DATA "no pod°an conte-"
DATA "ner su enorme   "
DATA "fuerza...       "
DATA "Huyeron hacia   "
DATA "los pastos.     "

DATA "≠Ah! ®Vas de    "         : '9631
DATA "aventura con    "
DATA "tus POKêMON?    "
DATA "®Y quÇ es una   "
DATA "aventura sin    "
DATA "un tesoro?      "
DATA "®Tengo raz¢n    "
DATA "o no?           "

DATA "≠Oh! A cado     "         : '9639
DATA "uno lo suyo,    "
DATA "supongo...      "

DATA "≠Bien! Entiendes"         : '9642
DATA "el verdadero    "
DATA "esp°ritu de la  "
DATA "aventura.       "
DATA "≠Me gusta!      "
DATA "Mira chico,     "
DATA "tengo algo que  "
DATA "es muy £til,    "
DATA "pero solo tengo "
DATA "uno, te lo doy  "
DATA "por $1000.      "
DATA "®Quieres?       "

DATA "®No lo quieres? "         : '9654
DATA "≠Te dije que    "
DATA "es muy £til!    "
DATA "≠Pero no puedo  "
DATA "obligarte a     "
DATA "compr†rmelo!    "

DATA "≠Oh, no tienes  "         : '9660
DATA "el dinero!      "
DATA "≠Lo siento, pero"
DATA "no puedo bajarle"
DATA "el precio!      "

DATA "≠$1000!         "         : '9665
DATA "≠C¢mo los       "
DATA "disfurtarÇ!     "
DATA "≠Gracias chico! "
DATA "≠Toma esto!     "

DATA "Por aqu° hay    "         : '9670
DATA "muchos objetos  "
DATA "que no se ven   "
DATA "tan f†cilmente. "
DATA "Utiliza el      "
DATA "BUSCAOBJETOS    "
DATA "para saber si   "
DATA "hay alg£n objeto"
DATA "cerca. êste no  "
DATA "indica el lugar "
DATA "exacto, as° que "
DATA "t£ tendr†s que  "
DATA "encontrarlo.    "
DATA "≠Ah, s°! Dicen  "
DATA "que hay muchos  "
DATA "objetos en la   "
DATA "TORRE QUEMADA   "
DATA "de CIUDAD IRIS. "

DATA "Sucedi¢ cuando  "         : '9688
DATA "era joven.      "
DATA "El cielo se     "
DATA "oscureci¢ de    "
DATA "repente. Un     "
DATA "enorme POKêMON  "
DATA "estaba tapando  "
DATA "el sol.         "
DATA "Me pregunto     "
DATA "quÇ ser°a ese   "
DATA "POKêMON, mezcla "
DATA "de p†jaro       "
DATA "y drag¢n.       "

DATA "®Existe un      "         : '9701
DATA "POKêMON tan     "
DATA "grande?         "
DATA "Si existe,      "
DATA "debe de ser     "
DATA "muy fuerte.     "

DATA "Mi RATICATE     "         : '9707
DATA "es muy fuerte,  "
DATA "pero no puedo   "
DATA "vencer a los    "
DATA "del GIMNASIO.   "
DATA "®Que hago mal?  "

DATA "RATICATE:       "         : '9713
DATA "≠Rati, rati!    "

DATA "Es un elegante  "         : '9715
DATA "panel decorado  "
DATA "con flores.     "

DATA "Me gustar°a que "         : '9718
DATA "mi RHYDON apren-"
DATA "da a nadar y a  "
DATA "bailar. Quiero  "
DATA "que sea muy     "
DATA "elegante. Si    "
DATA "tienes la MO03, "
DATA "tienes que      "
DATA "prest†rmela.    "

DATA "®QuÇ me est†s   "         : '9727
DATA "prestando?...   "
DATA "≠Es la MO03!    "
DATA "≠Ahora mi RHYDON"
DATA "aprender† SURF! "

DATA "...             "         : '9732

DATA "RHYDON:         "         : '9733
DATA "≠Rhydo, rhydo!  "

DATA "≠Ya est†, me    "         : '9735
DATA "cost¢, pero al  "
DATA "fin aprendi¢    "
DATA "a nadar!        "
DATA "≠Muchas gracias!"
DATA "Toma tu MO03... "

DATA "Mi POKêMON sabe "         : '9741
DATA "nadar, pero a£n "
DATA "le falta bailar."
DATA "®C¢mo ense§arle?"
DATA "Les ped° ayuda  "
DATA "a las CHICAS    "
DATA "KIMONO, pero    "
DATA "est†n tan       "
DATA "ocupadas que no "
DATA "pueden ense§arle"
DATA "a bailar a      "
DATA "mi RHYDON.      "

DATA "Un d°a, las     "         : '9753
DATA "CHICAS KIMONO   "
DATA "me dieron la    "
DATA "posibilidad de  "
DATA "enser§ar a      "
DATA "bailar a mi     "
DATA "POKêMON, pero   "
DATA "la condici¢n es "
DATA "que las derrote "
DATA "en combate.     "
DATA "Yo siempre las  "
DATA "desaf°o, pero   "
DATA "nunca les he    "
DATA "hecho ni un     "
DATA "rasgu§o...      "

DATA "≠Chaval!        "         : '9768
DATA "Hagamos un trato"
DATA "Si vences a las "
DATA "CHICAS KIMONO   "
DATA "te pagarÇ $8000."
DATA "®QuÇ dices?     "

DATA "®No quieres?    "         : '9774
DATA "≠Pues alguien   "
DATA "m†s lo har†!    "

DATA "≠Trato hecho!   "         : '9777
DATA "≠Te adelanto    "
DATA "la mitad!       "

DATA "≠Cuando hayas   "         : '9780
DATA "hecho tu trabajo"
DATA "te darÇ la otra "
DATA "mitad!          "

DATA "≠Lo has conse-  "         : '9784
DATA "guido! Verte    "
DATA "luchar ha sido  "
DATA "como ver una    "
DATA "danza. ≠Ha sido "
DATA "un combate      "
DATA "extra§o! ≠Bien! "

DATA "Ojal† mi POKêMON"         : '9791
DATA "fuera tan ele-  "
DATA "gante como las  "
DATA "CHICAS KIMONO.  "

DATA "≠Lo consegu°!   "         : '9795
DATA "≠Apuesto que mi "
DATA "RHYDON es el    "
DATA "mejor bailar°n  "
DATA "del mundo!      "

DATA "≠Hola, chico!   "         : '9800
DATA "≠Soy una de las "
DATA "cinco CHICAS    "
DATA "KIMONO! ≠Baila  "
DATA "con nosotras!   "

DATA "Me ha gustado el"         : '9805
DATA "combate. Espero "
DATA "volver a verte. "

DATA "Tus POKêMON son "         : '9808
DATA "encantadores.   "
DATA "®C¢mo luchan?   "

DATA "Yo siempre bailo"         : '9811
DATA "con mis POKêMON."
DATA "Y tambiÇn los   "
DATA "entreno, claro. "

DATA "El ritmo es muy "         : '9815
DATA "importante para "
DATA "la danza y para "
DATA "los POKêMON.    "

DATA "®Te gusta mi    "         : '9819
DATA "pasador? ≠Ah!   "
DATA "®Un combate?    "

DATA "Cada mes pongo  "         : '9822
DATA "un flor nueva   "
DATA "en mi pasador.  "

DATA "≠Oh! ≠Eres tan  "         : '9825
DATA "guay! ®Quieres  "
DATA "luchar conmigo? "

DATA "He entrenado    "         : '9828
DATA "mucho y cre°a   "
DATA "que ten°a       "
DATA "posibilidades,  "
DATA "pero veo que no."

DATA "®Te gusta c¢mo  "         : '9833
DATA "bailo? TambiÇn  "
DATA "soy muy h†bil   "
DATA "con los POKêMON."

DATA "Sigo bailando   "         : '9837
DATA "porque hay gente"
DATA "a la que le     "
DATA "gusta lo que    "
DATA "hago. Mis POKê- "
DATA "MON me animan.  "

DATA "≠No hables!     "         : '9843
DATA "≠Estoy muy      "
DATA "concentrada     "
DATA "en el baile!    "

DATA "®Quieres pelear?"         : '9847
DATA "≠M†s tarde!     "

DATA "≠Bailar es lo   "         : '9849
DATA "m†s hermoso!    "
DATA "≠Luego est†n    "
DATA "los POKêMON!    "

DATA "≠Quiero bailar  "         : '9853
DATA "todo el d°a, sin"
DATA "interrupciones! "

DATA "≠Oh! ≠Eres muy  "         : '9856
DATA "fuerte para m°! "
DATA "≠Estuve cerca!  "
DATA "Por poco        "
DATA "te venzo.       "
DATA "No me queda     "
DATA "ning£n POKêMON˙ "
DATA "Eres m†s fuerte "
DATA "de lo que       "
DATA "pareces.        "
DATA "≠Oh! ≠T£ tambiÇn"
DATA "eres genial!    "

DATA "Ese hombre siem-"         : '9868
DATA "pre va con su   "
DATA "RHYDON. Dice que"
DATA "quiere un POKê- "
DATA "MON que baile y "
DATA "que haga SURF.  "
DATA "®Intenta crear  "
DATA "un POKêMON que  "
DATA "haga nataci¢n   "
DATA "sincronizada?   "

DATA "Las CHICAS      "         : '9878
DATA "KIMONO son tan  "
DATA "guapas...       "
DATA "≠Pero tienen    "
DATA "que entrenarse  "
DATA "mucho. Y deben  "
DATA "aprender los    "
DATA "distintos bailes"
DATA "antes de actuar,"
DATA "pero si te gusta"
DATA "algo, todo      "
DATA "es posible.     "

DATA "Las CHICAS      "         : '9890
DATA "KIMONO tienen   "
DATA "una vida muy    "
DATA "ocupada.        "
DATA "A veces no      "
DATA "tienen tiempo   "
DATA "para pelear     "
DATA "con los POKêMON."
DATA "Si es as°,      "
DATA "vuelve otro d°a,"
DATA "tal vez tengan  "
DATA "tiempo.         "

DATA "®Ayudarte?      "         : '9902
DATA "≠Yo s¢lo quiero "
DATA "luchar!         "

DATA "No podr†s pasar "         : '9905
DATA "hasta que pelees"
DATA "contra estas    "
DATA "personas. Est†n "
DATA "muy deseosas de "
DATA "retar a un buen "
DATA "entrenador.     "

DATA "≠Espera, chavo! "         : '9912
DATA "MORTI, el LëDER "
DATA "del GIMNASIO no "
DATA "est†, lo siento "
DATA "pero tendr†s    "
DATA "que irte.       "

DATA "≠Se termin¢ la  "         : '9918
DATA "espera! El LëDER"
DATA "a regresado.    "

DATA "Estos entrenado-"         : '9921
DATA "res tiene moti- "
DATA "vos secretos.   "
DATA "Si les ganas,   "
DATA "podr°an contarte"
DATA "algunos secretos"
DATA "sobre esta      "
DATA "CIUDAD.         "

DATA "≠Uauu, ˛!       "         : '9929
DATA "≠Genial!        "
DATA "≠Me escond° en  "
DATA "el rinc¢n muerto"
DATA "de miedo!       "

DATA "®Puedes causar  "         : '9934
DATA "alg£n da§o      "
DATA "a nuestros      "
DATA "POKêMON?        "

DATA "S¢lo usamos     "         : '9938
DATA "POKêMON del     "
DATA "tipo fantasma.  "
DATA "≠Los ataques    "
DATA "normales no les "
DATA "hacen da§o!     "

DATA "®Te asombran    "         : '9944
DATA "las paredes     "
DATA "invisibles?     "
DATA "≠Si quieres una "
DATA "pista, vÇnceme! "

DATA "Bien. Te contarÇ"         : '9949
DATA "el secreto de   "
DATA "las paredes     "
DATA "invisibles.     "
DATA "≠Las paredes    "
DATA "invisibles son  "
DATA "obra de los     "
DATA "fantasmas!      "         : '9956

