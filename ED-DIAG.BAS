DEFINT A-Z
CLS
DIM SHARED Index AS LONG
Index = 0
OPEN "ARCHIVOS\DIALOGO.BIN" FOR BINARY AS #1
SEEK #1, Index * 16 + 1
FOR i = 1 TO 1981
  READ a$
  PUT #1, , a$
NEXT i

CLOSE
END

DATA "≠Hola a todos!  "         : '1
DATA "≠Bienvenidos a  "
DATA "este mundo de   "
DATA "POKêMON!        "
DATA "≠Me llamo OAK!  "
DATA "≠Pero la gente  "
DATA "me llama el     "
DATA "PROFESOR        "
DATA "POKêMON!        "

DATA "≠Este mundo est†"         : '10
DATA "habitado por    "
DATA "unas criaturas  "
DATA "llamadas        "
DATA "POKêMON!        "
DATA "Para algunos,   "
DATA "los POKêMON son "
DATA "mascotas. Pero  "
DATA "otros los usan  "
DATA "para pelear.    "

DATA "En cuanto a m°˙ "         : '20
DATA "Estudio a los   "
DATA "POKêMON como    "
DATA "profesi¢n.      "

DATA "Pero primero    "         : '24
DATA "dime tu         "
DATA "nombre.         "

DATA "≠Tu propia      "         : '27
DATA "leyenda POKêMON "
DATA "est† apunto de  "
DATA "comenzar! ≠Te   "
DATA "espera un mundo "
DATA "de sue§os y     "
DATA "aventuras con   "
DATA "los POKêMON!    "
DATA "≠Adelante!      "

DATA "≠Este es mi     "         : '36
DATA "juego favorito! "
DATA "≠No hay tiempo  "
DATA "que perder...!  "
DATA "≠Ser† mejor que "
DATA "me vaya!        "

DATA "Una confortable "         : '42
DATA "cama.           "

DATA "Por la ventana  "         : '44
DATA "se ve una gran  "
DATA "vista del lugar."

DATA "≠Totalmente     "         : '47
DATA "lleno de libros "
DATA "complicados     "
DATA "sobre POKêMON!  "

DATA "≠Este es un buen"         : '51
DATA "MAPA DE PUEBLOS!"

DATA "El televisor    "         : '53
DATA "est† apagado.   "
DATA "Adem†s no es    "
DATA "momento de ver  "
DATA "la TV.          "

DATA "≠Todo sobre los "         : '58
DATA "POKêMON!        "

DATA "≠Hola, hijo!    "         : '60
DATA "≠Hoy es el d°a  "
DATA "que tanto       "
DATA "esperabas! ≠El  "
DATA "vecino volvi¢ de"
DATA "su viaje ayer!  "
DATA "≠Me dijo que    "
DATA "tiene buenas    "
DATA "noticias para   "
DATA "darte! ≠VÇ a    "
DATA "buscarlo!       "

DATA "®Te invit¢ a    "         : '71
DATA "pescar? ≠Que    "
DATA "lindo! ≠Toma    "
DATA "esto!           "
DATA "≠DiviÇrtete!    "

DATA "≠Oeh˙! ≠Tienes  "         : '76
DATA "un POKêMON!     "
DATA "≠Ahora tendr†s  "
DATA "que ser muy     "
DATA "responsable y   "
DATA "cuidarlo˙! ≠Pero"
DATA "me alegro! ≠Te  "
DATA "espera un largo "
DATA "camino para ser "
DATA "el mejor        "
DATA "entrenador      "
DATA "POKêMON! ≠CuÇnta"
DATA "conmigo!        "

DATA "CASA DE èYAX    "         : '89

DATA "ISLA CANELA     "         : '90
DATA "La feroz ciudad "
DATA "del ardiente    "
DATA "deseo.          "

DATA "LëDER DEL       "         : '94
DATA "GIMNASIO DE ISLA"
DATA "CANELA: BLAINE. "
DATA "≠El maestro de  "
DATA "los acertijos!  "

DATA "Esta ruta sal°a "         : '99
DATA "a ISLA VIEJA.   "
DATA "Pero ahora est† "
DATA "bloqueada y no  "
DATA "podr†s pasar.   "

DATA "≠Este no es el  "         : '104
DATA "momento de usar "
DATA "este objeto!    "

DATA "≠Un mont¢n de   "         : '107
DATA "cosas para los  "
DATA "POKêMON!        "

DATA "≠êste es el logo"         : '110
DATA "del CENTRO      "
DATA "POKêMON!        "

DATA "≠Es mi reflejo! "         : '113
DATA "≠Que guapo soy! "

DATA "≠Compr† aqu°    "         : '115
DATA "todo lo que sea "
DATA "para los        "
DATA "POKêMON!        "
DATA "≠TIENDA POKêMON!"

DATA "Yo tambiÇn deseo"         : '120
DATA "ser campe¢n como"
DATA "ASH. El a§o     "
DATA "pasado derrot¢  "
DATA "al ALTO MANDO.  "
DATA "Ahora creo que  "
DATA "est† en ARGOS.  "

DATA "Pescar es la    "         : '127
DATA "mejor actividad "
DATA "que se puede    "
DATA "hacer en este   "
DATA "lugar.          "

DATA "Mi pap† siempre "         : '132
DATA "atrapa nuevos   "
DATA "POKêMON cuando  "
DATA "se v† de viaje. "

DATA "Estoy aqu° para "         : '136
DATA "resivir a los   "
DATA "turistas.       "

DATA "≠Hey, chico!    "         : '139
DATA "≠DÇjame pasar!  "

DATA "≠Compr† aqu°    "         : '141
DATA "todos tus       "
DATA "objetos!        "
DATA "≠TIENDA POKêMON!"

DATA "≠Uauu! ≠Cantidad"         : '145
DATA "de art°culos de "
DATA "los POKêMON!    "

DATA "≠Hola! ®Puedo   "         : '148
DATA "ayudarte en     "
DATA "algo?           "

DATA "Deber°as llevar "         : '151
DATA "siempre unas    "
DATA "pociones para   "
DATA "tus POKêMON.    "

DATA "Ocurren cosas   "         : '155
DATA "buenas cuando   "
DATA "entrenas a todos"
DATA "tus POKêMON.    "
DATA "≠Incluso los m†s"
DATA "dÇbiles!        "

DATA "Los POKêMON que "         : '161
DATA "hay en el muelle"
DATA "son muy dÇbiles "
DATA "comparados con  "
DATA "los que hab°a en"
DATA "ISLA VIEJA.     "

DATA "Antes viv°amos  "         : '167
DATA "en ISLA VIEJA,  "
DATA "pero un d°a     "
DATA "aparecieron unas"
DATA "personas de     "
DATA "negro y nos     "
DATA "hicieron dejar  "
DATA "la isla.        "

DATA "®Has ido ha     "         : '175
DATA "percar? ≠Es     "
DATA "genial!         "

DATA "®A£n no has     "         : '178
DATA "visto a èYAX?   "
DATA "®Ya fuiste a su "
DATA "casa?           "

DATA "ìsalo solo para "         : '182
DATA "comprar lo      "
DATA "necesario.      "

DATA "®Cansado de     "         : '185
DATA "pelear? T¢mate  "
DATA "un momento para "
DATA "descansar.      "

DATA "≠Hola! ®C¢mo    "         : '189
DATA "est† tu mam†?   "
DATA "®Bien? ≠Me      "
DATA "alegro! ≠Ha! ≠Me"
DATA "olvidaba! Tu    "
DATA "mam† me dijo que"
DATA "quer°as ser un  "
DATA "entrenador      "
DATA "POKêMON. ®Es    "
DATA "cierto? Seguro  "
DATA "que ser†s bueno."
DATA "Antes que nada  "
DATA "quiero probar tu"
DATA "concentraci¢n.  "
DATA "Para eso iremos "
DATA "a PESCAR al     "
DATA "muelle. Cuando  "
DATA "estuve en ARGOS "
DATA "comprÇ unas     "
DATA "ca§as. Tom† una."

DATA "Nos veremos en  "         : '209
DATA "el muelle. No te"
DATA "tardes.         "

DATA "≠Hola de nuevo! "         : '212
DATA "®Volviste porque"
DATA "no sabÇs c¢mo se"
DATA "sale de la isla?"
DATA "Cuando ten°a tu "
DATA "edad tuve el    "
DATA "mismo problema, "
DATA "entonces mi pap†"
DATA "me regal¢ esto. "
DATA "Espero que lo   "
DATA "aproveches.     "

DATA "En poco tiempo, "         : '223
DATA "un MAGIKARP     "
DATA "evoluciona en   "
DATA "GYARADOS.       "

DATA "≠Hey! ®Por quÇ  "         : '227
DATA "tardaste tanto? "
DATA "≠Se hace tarde! "
DATA "≠Yo ya me voy!  "
DATA "®La prueba? Oh, "
DATA "ya no importa,  "
DATA "de todos modo no"
DATA "es necesaria. Si"
DATA "tenÇs tiempo    "
DATA "quedate a pescar"
DATA "y entrenar a tu "
DATA "MAGIKARP. ®Que  "
DATA "MAGIKARP? ≠êste!"

DATA "®Te gusta?      "         : '240
DATA "No es muy fuerte"
DATA "ahora pero si   "
DATA "crece ser† muy  "
DATA "fuerte. ≠Suerte!"

DATA "®Buscas al l°der"         : '245
DATA "para desafiarlo?"
DATA "Tendr†s que     "
DATA "volver m†s tarde"
DATA "porque no est†. "

DATA "®Quieres que te "         : '250
DATA "ayude? Bien. En "
DATA "este gimnasio   "
DATA "los entrenadores"
DATA "usan POKêMON del"
DATA "tipo fuego. Te  "
DATA "aconsejo que    "
DATA "uses POKêMON del"
DATA "tipo agua y que "
DATA "tengas a mano   "
DATA "unos ANTIQUEMAR."

DATA "≠Oye! ≠No hagas "         : '261
DATA "ruido! Estoy    "
DATA "esperando que   "
DATA "aparezca un     "
DATA "CATERPIE.       "

DATA "Dicen que en    "         : '266
DATA "este lugar      "
DATA "pueden aparecer "
DATA "POKêMON raros.  "
DATA "Pero s¢lo si los"
DATA "sacas con una   "
DATA "SUPER CA•A.     "

DATA "®Tienes un      "         : '273
DATA "GYARADOS? Est†  "
DATA "muy bien que    "
DATA "hayan personas  "
DATA "que entrenan    "
DATA "MAGICARP.       "

DATA "Aqu°, en la RUTA"         : '279
DATA "21, siempre hay "
DATA "entrenadores que"
DATA "podr°an abusarse"
DATA "de los novatos  "
DATA "como t£.        "
DATA "Pero no te      "
DATA "preocupes, si   "
DATA "atrapas nuevos  "
DATA "POKêMON podr†s  "
DATA "derrotarlos. Te "
DATA "regalo esto.    "

DATA "En la hierba    "         : '291
DATA "alta que hay en "
DATA "aquella peque§a "
DATA "isla aparecen   "
DATA "algunos POKêMON "
DATA "salvajes.       "

DATA "≠Oye! ≠Mir† lo  "         : '297
DATA "que ocurri¢ por "
DATA "interrumpirme!  "
DATA "≠Espero que ese "
DATA "pez regrese! ®Lo"
DATA "viste? ≠Era     "
DATA "enorme! ≠Ahora  "
DATA "ver†s!          "

DATA "≠Eres mejor de  "         : '305
DATA "lo que pareces! "
DATA "Dej† de entrenar"
DATA "o ser†s m†s     "
DATA "fuerte que yo.  "

DATA "No me mires as°."         : '310
DATA "No quiero pelear"
DATA "contigo. Mejor  "
DATA "vÇ a entrenar a "
DATA "tus POKêMON.    "

DATA "≠No lo creo!    "         : '315
DATA "Tuviste mucha   "
DATA "suerte.         "

DATA "Con tu GYARADOS "         : '318
DATA "dÇbil no        "
DATA "llegar†s a      "
DATA "ning£n lado.    "

DATA "Lastimaste a mis"         : '322
DATA "POKêMON. Me las "
DATA "vas a pagar.    "

DATA "Me sorprende que"         : '325
DATA "un novato me    "
DATA "derrote. Que    "
DATA "vergÅensa.      "

DATA "Yo tambiÇn tengo"         : '329
DATA "POKêMON. Cuando "
DATA "crezcan me      "
DATA "proteger†n.     "

DATA "≠Es genial la   "         : '333
DATA "tecnolog°a de   "
DATA "hoy! Puedes     "
DATA "guardar POKêMON "
DATA "v°a PC.         "

DATA "El PROFESOR OAK "         : '338
DATA "me paga para    "
DATA "cuidar y limpiar"
DATA "su jard°n.      "

DATA "CENTRO DE       "         : '342
DATA "INVESTIGACIíN   "
DATA "POKêMON.        "
DATA "LABORATORIO DEL "
DATA "PROFESOR OAK.   "

DATA "CASA DE GARY    "         : '347

DATA "≠Cur† aqu° a    "         : '348
DATA "todos tus       "
DATA "POKêMON!        "
DATA "≠CENTRO POKêMON!"

DATA "CASA DE ASH     "         : '352

DATA "PUEBLO PALETA   "         : '353
DATA "≠Un lienzo en   "
DATA "blanco de tu    "
DATA "viaje!          "

DATA "                "         : '357

DATA "El a§o pasado   "         : '358
DATA "los entrenadores"
DATA "ten°an que      "
DATA "cambiar de caja "
DATA "cada vez que se "
DATA "llenaba una,    "
DATA "pero BILL y un  "
DATA "amigo dise§aron "
DATA "un nuevo sistema"
DATA "que siempre     "
DATA "guarda los      "
DATA "POKêMON en una  "
DATA "caja.           "
DATA "®Entiendes?     "

DATA "El PC se ha     "         : '372
DATA "encendido.      "

DATA "PIDGEY:         "         : '374
DATA "≠Pid! ≠Pid!     "

DATA "≠Es genial la   "         : '376
DATA "cantidad de     "
DATA "art°culos que   "
DATA "hay para los    "
DATA "POKêMON!        "
DATA "≠Quiero comprar "
DATA "todo!           "

DATA "≠Necesito m†s   "         : '383
DATA "POKêBALL para   "
DATA "atrapar a       "
DATA "RATTATA!        "
DATA "≠Siempre se me  "
DATA "escapa!         "

DATA "Mi hermano es un"         : '389
DATA "entrenador      "
DATA "experimentado.  "
DATA "Ha viajado mucho"
DATA "y conoci¢ muchos"
DATA "lugares. Veo que"
DATA "reciÇn empiezas "
DATA "tu aventura,    "
DATA "te darÇ un £til "
DATA "regalo para que "
DATA "no te pierdas.  "

DATA "≠Reciviste unos "         : '400
DATA "MAPAS!          "

DATA "Mi hermano ya no"         : '402
DATA "los necesita.   "
DATA "Ahora siempre   "
DATA "sabr†s d¢nde te "
DATA "encuentras.     "

DATA "≠IntentÇ ir a   "         : '407
DATA "CUIDAD VERDE    "
DATA "pero aparecieron"
DATA "tres RATTATA!   "
DATA "≠Me asustÇ mucho"
DATA "y regresÇ con mi"
DATA "abuelo!         "

DATA "Mi nieta dice   "         : '414
DATA "que vi¢ unos    "
DATA "POKêMON en      "
DATA "grupo en la RUTA"
DATA "a CIUDAD VERDE. "
DATA "Por eso est†    "
DATA "asustada.       "
DATA "Si vas por ah°, "
DATA "ten cuidado.    "

DATA "≠Fue una buena  "         : '423
DATA "pelea!          "

DATA "≠No te salvar†s "         : '425
DATA "de mi amigo!    "

DATA "≠Ahora vas a    "         : '427
DATA "sentir la       "
DATA "derrota!        "

DATA "Si quieres ser  "         : '430
DATA "un entrenador   "
DATA "tienes que      "
DATA "enfrentarte con "
DATA "otro y ser cada "
DATA "vez m†s fuerte. "

DATA "≠Aqu° hay un    "         : '436
DATA "mensaje e-mail! "
DATA "...             "
DATA "≠Aviso a todos  "
DATA "los entrenadores"
DATA "de POKêMON!     "
DATA "≠Nuevamente, los"
DATA "entrenadores de "
DATA "la Çlite de la  "
DATA "LIGA POKêMON    "
DATA "est†n listos    "
DATA "para desafiarlos"
DATA "a todos!        "
DATA "≠Traigan sus    "
DATA "mejores POKêMON "
DATA "y descubrir†n su"
DATA "puntuaci¢n como "
DATA "entrenadores!   "
DATA "CG DE LA LIGA   "
DATA "POKêMON         "
DATA "MESETA A•IL     "
DATA "                "
DATA "PD: ≠PROF. OAK, "
DATA "vuelva a        "
DATA "visitarnos por  "
DATA "favor!...       "

DATA "≠Pulsa START    "         : '462
DATA "para abrir el   "
DATA "MENì!           "

DATA "En la pantalla  "         : '465
DATA "del MENì est† la"
DATA "opci¢n GUARDAR. "

DATA "El basurero est†"         : '468
DATA "vac°o.          "

DATA "Estudio a los   "         : '470
DATA "POKêMON. ≠Soy   "
DATA "ayudante del    "
DATA "PROFESOR OAK!   "

DATA "Ahora estoy     "         : '474
DATA "investigando    "
DATA "sobre el        "
DATA "nacimiento de   "
DATA "los POKêMON. Hay"
DATA "rumores que     "
DATA "afirman que los "
DATA "POKêMON nacen de"
DATA "≠HUEVOS!        "

DATA "Ahora todos los "         : '483
DATA "CENTROS POKêMON "
DATA "tienen una      "
DATA "m†quina como    "
DATA "esta, es para   "
DATA "intercambiar    "
DATA "POKêMON. ≠Pero  "
DATA "la nuestra no   "
DATA "funciona!       "

DATA "≠Los CENTROS    "         : '492
DATA "POKêMON curan a "
DATA "tus POKêMON     "
DATA "heridos o       "
DATA "derrotados!     "

DATA "Hay un CENTRO   "         : '497
DATA "POKêMON en todas"
DATA "las ciudades.   "
DATA "≠Y todos son    "
DATA "gratuitos!      "

DATA "Puedes usar     "         : '502
DATA "ese PC de la    "
DATA "esquina.        "
DATA "≠Me lo dijo la  "
DATA "recepcionista!  "
DATA "≠Es muy amable! "

DATA "≠Bienvenido a   "         : '508
DATA "nuestro CENTRO  "
DATA "POKêMON!        "
DATA "≠Nosotros       "
DATA "curamos a tus   "
DATA "POKêMON!        "
DATA "®Quieres        "
DATA "curar a tus     "
DATA "POKêMON?        "

DATA "≠El PROF. OAK es"         : '517
DATA "un experto en   "
DATA "POKêMON!        "
DATA "≠Es admirado por"
DATA "muchos de los   "
DATA "entrenadores de "
DATA "POKêMON!        "

DATA "Accedes al      "         : '524
DATA "PC de BILL.     "
DATA "Accedes al      "
DATA "Sistema de      "
DATA "Almacenamiento  "
DATA "de los POKêMON. "

DATA "Accedes a tu PC."         : '530
DATA "Accedes al      "
DATA "Sistema de      "
DATA "Almacenamiento  "
DATA "de Objetos.     "

DATA "Accedes al PC   "         : '535
DATA "del PROF. OAK.  "
DATA "Accedes al      "
DATA "Sistema de      "
DATA "Evaluaci¢n de la"
DATA "POKêDEX.        "
DATA "®Quieres evaluar"
DATA "tu POKêDEX?     "

DATA "≠Hola! Vienes de"         : '543
DATA "ISLA CANELA.    "
DATA "®Verdad?        "
DATA "Me avisaron de  "
DATA "tu visita.      "
DATA "Llegaste en un  "
DATA "buen momento. Si"
DATA "la polic°a te   "
DATA "atrapaba te     "
DATA "considerar°a un "
DATA "ladr¢n por no   "
DATA "llevar contigo  "
DATA "una licencia    "
DATA "para ser        "
DATA "entrenador.     "
DATA "Esto soluciona  "
DATA "las cosas. Ten. "

DATA "Esta POKêDEX es "         : '560
DATA "nueva. La       "
DATA "diferencia m†s  "
DATA "importante con  "
DATA "la POKêDEX del  "
DATA "a§o pasado es la"
DATA "actualizaci¢n de"
DATA "los POKêMON. En "
DATA "el £ltimo a§o   "
DATA "mi amigo, el    "
DATA "PROFESOR ELM, y "
DATA "yo descubrimos  "
DATA "nuevos POKêMON. "
DATA "En ella se      "
DATA "registrar†n los "
DATA "datos de todos  "
DATA "los POKêMON que "
DATA "veas. ≠Bien!    "
DATA "Yo acostumbro   "
DATA "entregar        "
DATA "el primer       "
DATA "POKêMON a los   "
DATA "principiantes,  "
DATA "por eso tambiÇn "
DATA "te darÇ         "
DATA "uno a t°.       "

DATA "êste es el      "         : '586
DATA "£ltimo POKêMON  "
DATA "que me qued¢.   "
DATA "Los £ltimos que "
DATA "ten°a se los d° "
DATA "a mi nieto,     "
DATA "GARY, ahora es  "
DATA "LëDER DE        "
DATA "GIMNASIO...     "
DATA "tambiÇn le d°   "
DATA "un POKêMON a    "
DATA "ASH, ahora es el"
DATA "CAMPEíN DE LA   "
DATA "LIGA POKêMON.   "
DATA "Si te esfuerzas "
DATA "mucho podr°as   "
DATA "tomar su lugar, "
DATA "pero primero    "
DATA "tendr†s que     "
DATA "atrapar muchos  "
DATA "POKêMON,        "
DATA "entrenarlos y   "
DATA "desafiar a todos"
DATA "los LëDERES de  "
DATA "cada ciudad.    "
DATA "Como ver†s es un"
DATA "largo viaje que "
DATA "tendr†s que     "
DATA "soportar...     "
DATA "≠Bien! Es hora  "
DATA "de continuar el "
DATA "viaje. ≠Cuidate!"

DATA "Atrapa todos los"         : '618
DATA "POKêMON que     "
DATA "puedas para     "
DATA "llenar la       "
DATA "POKêDEX.        "

DATA "≠Ja!            "         : '623
DATA "≠Soy BLAINE!    "
DATA "≠LëDER DEL      "
DATA "GIMNASIO DE LA  "
DATA "CIUDAD CANELA!  "
DATA "≠Mis feroces    "
DATA "POKêMON         "
DATA "quemar†n a      "
DATA "todo aquel que  "
DATA "me desaf°e!     "
DATA "≠Ja! ≠Mejor que "
DATA "tengas el       "
DATA "ANTIQUEMADURAS! "

DATA "≠Ja!            "         : '636
DATA "≠La MEDALLA     "
DATA "VOLCèN mejora   "
DATA "las habilidades "
DATA "ESPECIALES de   "
DATA "tus POKêMON!    "
DATA "≠Mira, tambiÇn  "
DATA "te darÇ esto!   "

DATA "La MT38 incluye "         : '644
DATA "la LLAMARADA!   "
DATA "≠Ense§a este    "
DATA "ataque a los    "
DATA "POKêMON del     "
DATA "tipo fuego!     "
DATA "≠CHARMELEON o   "
DATA "PONYTA ser°an   "
DATA "las mejores     "
DATA "apuestas!       "

DATA "≠El fuego es lo "         : '654
DATA "m†ximo en la    "
DATA "tÇcnica de las  "
DATA "quemaduras!     "
DATA "≠No lo malgastes"
DATA "con los POKêMON "
DATA "acu†ticos!      "

DATA "≠Me has         "         : '661
DATA "machacado!      "
DATA "≠Has ganado la  "
DATA "MEDALLA VOLCèN! "

DATA "≠Yo era un      "         : '665
DATA "ladr¢n pero me  "
DATA "volv° honrado   "
DATA "cuando me hice  "
DATA "entrenador!     "

DATA "≠No puedo evitar"         : '670
DATA "robar los       "
DATA "POKêMON de otras"
DATA "personas!       "

DATA "≠Falt¢ potencia!"         : '674

DATA "®Sabes el calor "         : '675
DATA "que puede dar el"
DATA "aliento de fuego"
DATA "de un POKêMON?  "

DATA "Fuego, o para   "         : '679
DATA "ser m†s preciso,"
DATA "combusti¢n...   "
DATA "≠Bla,bla,bla,   "
DATA "bla!...         "

DATA "≠Chau calculos! "         : '684

DATA "≠No puedes      "         : '685
DATA "ganar! ≠Soy un  "
DATA "experto en los  "
DATA "POKêMON!        "

DATA "≠Mis teor°as son"         : '689
DATA "muy complicadas "
DATA "para t°!        "

DATA "≠El fuego no    "         : '692
DATA "puede contra el "
DATA "agua!           "

DATA "≠Me encanta usar"         : '695
DATA "a los POKêMON de"
DATA "fuego!          "

DATA "≠Ojal† hubiera  "         : '698
DATA "un POKêMON      "
DATA "ladr¢n! ≠Me     "
DATA "encantar°a      "
DATA "usarlo!         "

DATA "≠Me lleva el...!"         : '703

DATA "≠Ya sÇ porquÇ   "         : '704
DATA "BLAINE se hizo  "
DATA "entrenador!     "

DATA "BLAINE estaba   "         : '707
DATA "perdido en las  "
DATA "monta§as, cuando"
DATA "apareci¢ un     "
DATA "feroz p†jaro    "
DATA "POKêMON.        "
DATA "≠Su luz permiti¢"
DATA "a BLAINE        "
DATA "encontrar la    "
DATA "forma de bajar! "

DATA "≠Mis pobres     "         : '717
DATA "POKêMON!        "

DATA "RUTA 1:         "         : '719
DATA "PUEBLO PALETA - "
DATA "CIUDAD VERDE    "

DATA "≠Quiero pelear  "         : '722
DATA "con entrenadores"
DATA "que tengan      "
DATA "medallas! ≠Si   "
DATA "quieres pasar   "
DATA "consigue alguna!"

DATA "≠Desde lejos se "         : '728
DATA "puede ver tu    "
DATA "medalla! ≠Eres  "
DATA "un presumido!   "

DATA "≠Tengo que      "         : '732
DATA "atrapar m†s     "
DATA "POKêMON!        "

DATA "≠No soporto m†s!"         : '735

DATA "®Ves esos setos?"         : '736
DATA "Da miedo        "
DATA "saltarlos. Pero "
DATA "puedes ir a     "
DATA "PUEBLO PALETA   "
DATA "sin pasar por la"
DATA "hierba.         "

DATA "≠Hola! Trabajo  "         : '743
DATA "en la TIENDA    "
DATA "POKêMON de      "
DATA "CIUDAD VERDE.   "
DATA "Tenemos muchas  "
DATA "cosas, pero     "
DATA "desde que se    "
DATA "abri¢ una tienda"
DATA "en PUEBLO       "
DATA "PALETA las      "
DATA "ventas bajaron. "
DATA "Si quieres      "
DATA "productos de    "
DATA "calidad compra  "
DATA "en la TIENDA    "
DATA "POKêMON de      "
DATA "CIUDAD VERDE.   "

DATA "®Ves aquÇl      "         : '760
DATA "torbellino?     "
DATA "Hace que sea    "
DATA "peligroso nadar "
DATA "aqu° sin un     "
DATA "equipo adecuado."

DATA "≠Me encanta este"         : '766
DATA "este manantial! "
DATA "≠El agua siempre"
DATA "est† calentita! "

DATA "PISTA ENTRENADOR"         : '770
DATA "Los ataques de  "
DATA "los POKêMON     "
DATA "dependen de sus "
DATA "PUNTOS DE PODER "
DATA "o PP. ≠Para     "
DATA "rellenar tus PP,"
DATA "deja que tus    "
DATA "cansados POKêMON"
DATA "descansen en un "
DATA "CENTRO POKêMON! "

DATA "CIUDAD VERDE    "         : '781
DATA "El Para°so del  "
DATA "eterno verdor.  "

DATA "ESCUELA POKêMON "         : '784
DATA "de CIUDAD VERDE."

DATA "LëDER DEL       "         : '786
DATA "GIMNASIO POKêMON"
DATA "DE CIUDAD VERDE:"
DATA "GIOVANNI.       "
DATA "                "
DATA "                "
DATA "                "
DATA "                "

DATA "La pizarra      "         : '794
DATA "est† escrita.   "

DATA "≠Esas POKê BALL "         : '796
DATA "de tu cintura!  "
DATA "≠Tienes POKêMON!"
DATA "≠Es genial poder"
DATA "llevar y usar   "
DATA "POKêMON en      "
DATA "cualquier lugar "
DATA "y momento!      "

DATA "≠Me encantan los"         : '804
DATA "POKêMON!        "
DATA "Cuando sea      "
DATA "grande serÇ un  "
DATA "investigador    "
DATA "famoso como el  "
DATA "PROFESOR OAK.   "

DATA "®Ir†s al BOSQUE "         : '811
DATA "VERDE?          "
DATA "Te darÇ un      "
DATA "consejo...      "
DATA "Compra POCIONES "
DATA "y ANTëDOTOS.    "

DATA "Trabajo en este "         : '817
DATA "gimnasio.       "
DATA "Mi tarea es     "
DATA "cuidarlo        "
DATA "mientras el     "
DATA "l°der no est†.  "

DATA "≠Tienes suerte! "         : '823
DATA "El l°der acaba  "
DATA "de llegar. Si   "
DATA "quieres una     "
DATA "medalla, este es"
DATA "el momento de   "
DATA "buscarla.       "

DATA "≠Oh no!         "         : '830
DATA "≠Se acabaron las"
DATA "POCIONES!       "

DATA "≠Aqu° venden    "         : '833
DATA "muchos          "
DATA "ANTëDOTOS!      "

DATA "Bienvenido      "         : '836
DATA "al CENTRO       "
DATA "DE CAMBIO       "
DATA "DE POKêMON.     "
DATA "Aqu° puedes     "
DATA "dejar tus       "
DATA "POKêMON para una"
DATA "rehabilitaci¢n. "
DATA "TambiÇn puedes  "
DATA "cambiarlos por  "
DATA "uno de los que  "
DATA "tenemos.        "

DATA "Estoy           "         : '848
DATA "averiguando     "
DATA "sobre el nuevo  "
DATA "Sistema de      "
DATA "Almacenamiento  "
DATA "del CENTRO      "
DATA "POKêMON.        "

DATA "Me gustar°a     "         : '855
DATA "saber c¢mo      "
DATA "rehabilitan a   "
DATA "los POKêMON.    "
DATA "®Sabes algo?    "

DATA "RUTA 2:         "         : '860
DATA "CIUDAD VERDE -  "
DATA "CIUDAD PLATEADA "

DATA "®Quieres saber  "         : '863
DATA "algo sobre los  "
DATA "dos tipos de    "
DATA "orugas?         "
DATA "≠Bien!          "
DATA "≠CATERPIE no    "
DATA "tiene veneno,   "
DATA "pero WEEDLE si! "
DATA "≠Cuidado con su "
DATA "VENENOSO        "
DATA "AGUIJíN!        "

DATA "≠Yo creo que    "         : '874
DATA "CATERPIE si     "
DATA "tiene veneno!   "

DATA "BOSQUE VERDE.   "         : '877
DATA "ENTRADA SUR.    "

DATA "êsta es la      "         : '879
DATA "ENTRADA SUR DEL "
DATA "BOSQUE VERDE.   "
DATA "Tienes que tener"
DATA "cuidado porque  "
DATA "hay muchos      "
DATA "POKêMON         "
DATA "salvajes.       "

DATA "®Piensas ir al  "         : '887
DATA "BOSQUE VERDE?   "
DATA "≠Ten cuidado!   "
DATA "≠Es un autÇntico"
DATA "laberinto!      "

DATA "PISTA ENTRENADOR"         : '892
DATA "≠Debilita a los "
DATA "POKêMON antes de"
DATA "intentar        "
DATA "capturarlos!    "
DATA "≠Si est†n       "
DATA "fuertes, podr°an"
DATA "escapar!        "

DATA "≠Vine aqu° con  "         : '900
DATA "unos amigos!    "
DATA "≠Van en busca   "
DATA "de peleas de    "
DATA "POKêMON!        "

DATA "≠Me quedÇ sin   "         : '905
DATA "POKê BALL y no  "
DATA "podrÇ atrapar   "
DATA "m†s POKêMON!    "
DATA "≠Deber°a llevar "
DATA "algunas extra!  "

DATA "La pizarra      "         : '911
DATA "indica los      "
DATA "cambios de      "
DATA "ESTADO de los   "
DATA "POKêMON durante "
DATA "los combates.   "

DATA "≠Un POKêMON no  "         : '917
DATA "puede atacar si "
DATA "est† dormido!   "
DATA "≠Los POKêMON    "
DATA "seguir†n        "
DATA "dormidos incluso"
DATA "despuÇs de      "
DATA "pelear! ≠Usa    "
DATA "DESPERTAR y se  "
DATA "despertar†n!    "

DATA "Todo POKêMON    "         : '927
DATA "envenenado      "
DATA "seguir†         "
DATA "perdiendo       "
DATA "energ°a. El     "
DATA "veneno seguir†  "
DATA "afect†ndoles    "
DATA "tras el combate."
DATA "≠Usa ANTëDOTO   "
DATA "para curarlos!  "

DATA "≠Un POKêMON     "         : '937
DATA "paralizado      "
DATA "podr°a anular   "
DATA "ciertos         "
DATA "movimientos!    "
DATA "La par†lisis    "
DATA "permanecer† tras"
DATA "el combate. ≠Usa"
DATA "ANTIPARALIZAR   "
DATA "para curarlos!  "

DATA "Toda quemadura  "         : '947
DATA "reduce potencia "
DATA "y velocidad. Y  "
DATA "causa da§os     "
DATA "progresivos. Las"
DATA "quemaduras      "
DATA "permanecer†n    "
DATA "tras el combate."
DATA "≠ANTIQUEMADURAS "
DATA "curar† las      "
DATA "quemaduras!     "

DATA "≠Todo POKêMON   "         : '958
DATA "congelado no    "
DATA "podr† moverse!  "
DATA "Y permanecer†   "
DATA "congelado tras  "
DATA "el combate. ≠Usa"
DATA "el ANTIHIELO    "
DATA "para descongelar"
DATA "a los POKêMON!  "

DATA "≠Muy bien!      "         : '967
DATA "≠No olvides leer"
DATA "la pizarra con  "
DATA "mucha atenci¢n! "

DATA "Me gusta estar  "         : '971
DATA "en la primera   "
DATA "fila porque     "
DATA "escucho todo lo "
DATA "que dice la     "
DATA "maestra.        "

DATA "Cuando salga de "         : '977
DATA "aqu° voy a      "
DATA "convertirme en  "
DATA "entrenador.     "

DATA "Ya que estoy    "         : '981
DATA "estudiando,     "
DATA "aprovecharÇ para"
DATA "aprender todo   "
DATA "sobre los       "
DATA "POKêMON.        "

DATA "Lo bueno de     "         : '987
DATA "estar en la     "
DATA "£ltima fila es  "
DATA "la posibilidad  "
DATA "de jugar a los  "
DATA "video juegos.   "

DATA "≠Es un informe! "         : '993
DATA "Las POKê BALL   "
DATA "son para atrapar"
DATA "a los POKêMON.  "
DATA "Puedes llevar   "
DATA "hasta 6 POKêMON."
DATA "Los entrenadores"
DATA "son la gente que"
DATA "entrena y hace  "
DATA "pelear a sus    "
DATA "POKêMON.        "

DATA "≠Un POKêMON sano"         : '1004
DATA "no es tan f†cil "
DATA "de atrapar,     "
DATA "ser°a mejor     "
DATA "debilitarlo     "
DATA "primero! ≠Los   "
DATA "venenos, las    "
DATA "quemaduras y    "
DATA "otros da§os son "
DATA "muy efectivos!  "

DATA "Los entrenadores"         : '1014
DATA "POKêMON luchan  "
DATA "contra otros    "
DATA "en peleas de    "
DATA "POKêMON. En los "
DATA "gimnasios       "
DATA "siempre se est†n"
DATA "librando peleas "
DATA "de POKêMON.     "

DATA "El objetivo de  "         : '1023
DATA "todo entrenador "
DATA "es derrotar a   "
DATA "los 8 mejores   "
DATA "l°deres de      "
DATA "gimnasio. Si lo "
DATA "consiguen podr†n"
DATA "desafiar al...  "
DATA "≠ALTO MANDO DE  "
DATA "LA LIGA POKêMON!"

DATA "êste PC est†    "         : '1033
DATA "apagado.        "

DATA "≠Oh! ≠Un joven  "         : '1035
DATA "entrenador!     "
DATA "®Sab°as que un  "
DATA "entrenador      "
DATA "experimentado   "
DATA "tiene el derecho"
DATA "de salir del    "
DATA "pa°s todas      "
DATA "las veces que   "
DATA "quiera?         "
DATA "®No lo sab°as?  "
DATA "Pues ahora s°.  "

DATA "Los entrenadores"         : '1047
DATA "tienen problemas"
DATA "en conseguir la "
DATA "medalla del     "
DATA "l°der de esta   "
DATA "ciudad. A veces "
DATA "porque el l°der "
DATA "no est† en su   "
DATA "gimnasio y otras"
DATA "porque siempre  "
DATA "son derrotados. "

DATA "≠Hola!...       "         : '1058
DATA "≠Yo trabajo     "
DATA "aqu°!...        "
DATA "≠Es mi deber    "
DATA "advertirte...   "
DATA "que en este     "
DATA "lugar hay...    "
DATA "un monstruo muy "
DATA "peligroso!...   "
DATA "≠Mejor vete!... "

DATA "≠Uauu! ≠En este "         : '1068
DATA "bosque aparecen "
DATA "muchos bichos!  "
DATA "≠Son mis        "
DATA "favoritos!      "
DATA "≠AtrapÇ uno que "
DATA "no hab°a visto  "
DATA "antes!...       "
DATA "®Eh? ≠Tienes    "
DATA "POKêMON! ≠Bien! "
DATA "≠PondrÇ a prueba"
DATA "mis nuevos      "
DATA "POKêMON!        "

DATA "≠No me importa  "         : '1081
DATA "perder! ≠Estoy  "
DATA "contento con mi "
DATA "nuevo POKêMON!  "

DATA "≠Solo fue mala  "         : '1085
DATA "suerte!         "

DATA "≠Oye! ≠QuÇ est†s"         : '1087
DATA "haciendo aqu°!  "
DATA "®Que hay un     "
DATA "monstruo?       "
DATA "Debi¢ ser mi    "
DATA "amigo. Le ped°  "
DATA "que no dejara   "
DATA "pasar a nadie.  "

DATA "Dicen que hay   "         : '1095
DATA "POKêMON raros   "
DATA "en este bosque. "
DATA "≠Si ves uno, es "
DATA "mio!            "

DATA "≠Con un POKêMON "         : '1100
DATA "m†s fuerte esto "
DATA "no pasar°a!     "

DATA "≠Estuve mucho   "         : '1103
DATA "tiempo caminando"
DATA "por el bosque!  "
DATA "≠Creo que me    "
DATA "perd°!          "

DATA "≠Un entrenador  "         : '1108
DATA "de POKêMON!     "
DATA "≠A pelear!      "

DATA "≠Si quieres     "         : '1111
DATA "llenar tu       "
DATA "POKêDEX tienes  "
DATA "que atrapar     "
DATA "todos los       "
DATA "POKêMON del     "
DATA "bosque!         "

DATA "≠Ja!            "         : '1118
DATA "≠Te arrepentir†s"
DATA "de haberme      "
DATA "desafiado!      "

DATA "≠Creo que mis   "         : '1122
DATA "POKêMON no      "
DATA "entienden mi    "
DATA "estrategia!     "

DATA "≠Tiene que haber"         : '1126
DATA "un error!       "

DATA "≠Ya no quiero   "         : '1128
DATA "pelear! ≠Busca  "
DATA "otro entrenador!"

DATA "®Adonde vas con "         : '1131
DATA "tanta prisa?    "

DATA "≠La gente suele "         : '1133
DATA "perder objetos  "
DATA "en los bosques! "

DATA "≠Otra vez! ≠Mi  "         : '1136
DATA "POKêMON tiene   "
DATA "que entrenar    "
DATA "mucho!          "

DATA "≠Solo fue un    "         : '1140
DATA "error de        "
DATA "c†lculo!        "

DATA "PISTA ENTRENADOR"         : '1143
DATA "≠No robes los   "
DATA "POKêMON de otros"
DATA "entrenadores!   "
DATA "≠Captura s¢lo a "
DATA "los POKêMON     "
DATA "salvajes!       "

DATA "CIUDAD PLATEADA "         : '1150
DATA "Una ciudad de   "
DATA "roca gris†cea.  "

DATA "ACUARIO DE LA   "         : '1153
DATA "CIUDAD PLATEADA "
DATA "En construcci¢n."

DATA "LëDER DEL       "         : '1156
DATA "GIMNASIO DE LA  "
DATA "CIUDAD PLATEADA:"
DATA "BROCK           "
DATA "≠El entrenador  "
DATA "POKêMON m†s     "
DATA "fuerte que una  "
DATA "roca!           "

DATA "MUSEO DE LA     "         : '1164
DATA "CIENCIA DE LA   "
DATA "CIUDAD PLATEADA "

DATA "≠AVISO!         "         : '1167
DATA "≠Unos ladrones  "
DATA "robaron f¢siles "
DATA "de POKêMON del  "
DATA "MT. MOON!       "
DATA "≠Avisad a la    "
DATA "POLICëA DE LA   "
DATA "CIUDAD PLATEADA "
DATA "si sabÇs algo!  "

DATA "≠Dicen que los  "         : '1176
DATA "CLEFAIRY        "
DATA "vinieron de la  "
DATA "luna!           "
DATA "≠Aparecieron    "
DATA "tras la ca°da de"
DATA "la PIEDRA LUNAR "
DATA "en el MT. MOON! "

DATA "≠Estoy          "         : '1184
DATA "construyendo un "
DATA "acuario para    "
DATA "para criar      "
DATA "POKêMON del tipo"
DATA "agua! ≠Pero a£n "
DATA "tengo mucho     "
DATA "que hacer!      "

DATA "≠No hay muchos  "         : '1192
DATA "entrenadores de "
DATA "POKêMON por     "
DATA "aqu°! ≠Todos    "
DATA "parecen         "
DATA "CAMPISTAS, salvo"
DATA "BROCK, del      "
DATA "GIMNASIO DE LA  "
DATA "CIUDAD PLATEADA!"

DATA "≠Tengo que      "         : '1201
DATA "alejar a los    "
DATA "POKêMON que se  "
DATA "acerquen a este "
DATA "jard°n! ≠Si no  "
DATA "fuese por el    "
DATA "REPELENTE       "
DATA "tendr°a muchos  "
DATA "problemas para  "
DATA "alejar los      "
DATA "bichos!         "

DATA "BOSQUE VERDE.   "         : '1212
DATA "ENTRADA NORTE.  "

DATA "êsta es la      "         : '1214
DATA "ENTRADA NORTE   "
DATA "DEL BOSQUE      "
DATA "VERDE. Hay casos"
DATA "de personas que "
DATA "se perdieron y  "
DATA "la polic°a tuvo "
DATA "que cerrar el   "
DATA "bosque para     "
DATA "investigar. Para"
DATA "evitar tragedia "
DATA "llev† en la     "
DATA "mochila una     "
DATA "CUERDA HUIDA.   "

DATA "≠Puede que      "         : '1228
DATA "RATTATA sea     "
DATA "peque§o, pero   "
DATA "su mordisco es  "
DATA "muy potente!    "
DATA "®Tienes alguno? "

DATA "Muchos POKêMON  "         : '1234
DATA "s¢lo viven en   "
DATA "bosques y cuevas"
DATA "≠Tienes que     "
DATA "mirar por todas "
DATA "partes para     "
DATA "conseguirlos    "
DATA "todos!          "

DATA "®Has visto los  "         : '1242
DATA "arbustos que hay"
DATA "junto al camino?"
DATA "Puedes cortarlos"
DATA "con un          "
DATA "movimiento      "
DATA "especial de los "
DATA "POKêMON!        "

DATA "≠Que l†stima!   "         : '1250
DATA "En esta tienda  "
DATA "no venden CEBO. "
DATA "®SabÇs quÇ es   "
DATA "un CEBO? ®No?   "
DATA "Pues, un CEBO   "
DATA "es comida de    "
DATA "POKêMON. Con Çl "
DATA "podr°as         "
DATA "acercarte m†s a "
DATA "un POKêMON.     "

DATA "≠Un misterioso  "         : '1261
DATA "anciano me      "
DATA "vendi¢ este     "
DATA "extra§o pez     "
DATA "POKêMON!        "
DATA "≠Es muy dÇbil y "
DATA "cuesta $500!    "

DATA "≠Los POKêMON    "         : '1268
DATA "aprenden nuevos "
DATA "ataques a medida"
DATA "que crecen!     "
DATA "≠Pero hay       "
DATA "ciertos ataques "
DATA "que deber†n     "
DATA "aprender del    "
DATA "entrenador!     "

DATA "≠Los POKêMON    "         : '1277
DATA "ser†n m†s       "
DATA "f†ciles de      "
DATA "atrapar si est†n"
DATA "heridos o       "
DATA "dormidos!       "
DATA "≠Pero no siempre"
DATA "es as°!         "

DATA "Nuestro POKêMON "         : '1285
DATA "es un forastero,"
DATA "y es dif°cil de "
DATA "manejar.        "
DATA "Un forastero es "
DATA "un POKêMON      "
DATA "intercambiado   "
DATA "con otro        "
DATA "entrenador.     "
DATA "≠Crece deprisa, "
DATA "pero podr°a     "
DATA "ignorar a un    "
DATA "entrenador      "
DATA "novato en los   "
DATA "combates!       "
DATA "≠Ojal†          "
DATA "tuviÇramos      "
DATA "algunas         "
DATA "medallas!       "

DATA "NIDORAN: ≠Nidor!"         : '1304

DATA "≠SiÇntate       "         : '1305
DATA "NIDORAN!        "

DATA "®≠Que!?         "         : '1307
DATA "®Que el TEAM    "
DATA "ROCKET est† en  "
DATA "el MT. MOON?    "
DATA "≠Estoy hablando "
DATA "por telÇfino!   "
DATA "≠Maldita sea!   "

DATA "≠Acabo de       "         : '1314
DATA "averiguarlo!    "
DATA "En KANTO hay una"
DATA "RESERVA POKêMON "
DATA "donde cuidan a  "
DATA "los POKêMON, los"
DATA "hacen convivir  "
DATA "con otros de su "
DATA "especie y tratan"
DATA "de ense§arle a  "
DATA "sobrevivir sin  "
DATA "una persona.    "
DATA "Todo eso para   "
DATA "estudiar su     "
DATA "comportamiento. "
DATA "Cuando creen que"
DATA "es momento de   "
DATA "soltarlo lo     "
DATA "llevan a un     "
DATA "lugar apartado  "
DATA "de las zonas    "
DATA "urbanas.        "

DATA "(Bostezo)...    "         : '1336
DATA "Cuando          "
DATA "JIGGLYPUFF      "
DATA "canta, los      "
DATA "POKêMON se      "
DATA "duermen...      "
DATA "...Yo tambiÇn..."
DATA "(Ronquido)...   "

DATA "JIGGLYPUFF:     "         : '1344
DATA "≠Puf! ≠Puf!     "

DATA "≠No me          "         : '1346
DATA "interrumpas!    "
DATA "≠Tengo que ganar"
DATA "esta batalla!   "

DATA "≠PLACAJE!       "         : '1350

DATA "PIDGEY:         "         : '1351
DATA "≠Pid! ≠Pidddd!  "

DATA "≠Espera un      "         : '1353
DATA "momento! ≠Estoy "
DATA "ganando!        "

DATA "≠ATAQUE RèPIDO! "         : '1356

DATA "RATTATA:        "         : '1357
DATA "≠Raaaaat! ≠Tata!"

DATA "≠Estos f¢siles  "         : '1359
DATA "son magn°ficos! "

DATA "≠Uauu! ≠Me      "         : '1361
DATA "gustar°a tener  "
DATA "un POKêMON como "
DATA "ese!            "

DATA "≠20 de julio,   "         : '1365
DATA "1969!           "
DATA "≠1er alunizaje! "
DATA "≠ComprÇ una TV  "
DATA "en color para   "
DATA "verlo!          "

DATA "®La PIEDRA      "         : '1371
DATA "LUNAR? ®Por quÇ "
DATA "es tan especial?"

DATA "Recientemente se"         : '1374
DATA "descubri¢ otra  "
DATA "piedra muy      "
DATA "especial:       "
DATA "La PIEDRA SOLAR."
DATA "Su poder a£n se "
DATA "desconoce.      "

DATA "≠Esta nave es   "         : '1381
DATA "increible!      "
DATA "≠Me dan ganas de"
DATA "ir al espacio!  "

DATA "PIEDRA SOLAR... "         : '1385
DATA "Me pregunto de  "
DATA "donde sali¢.    "

DATA "≠Quiero un      "         : '1388
DATA "SNUBBULL!       "
DATA "≠Es tan tierno! "
DATA "≠Le ped° a mi   "
DATA "padre que me    "
DATA "atrapara uno!   "

DATA "≠Si, pronto     "         : '1394
DATA "tendr†s a tu    "
DATA "SNUBBULL!...    "
DATA "≠Antes quer°a un"
DATA "PIKACHU, ahora  "
DATA "un SNUBBULL!    "
DATA "®QuÇ pedir†     "
DATA "despuÇs?        "

DATA "≠Hola, hijo!    "         : '1402
DATA "...             "
DATA "®Que?...        "
DATA "≠Oh perd¢n!     "
DATA "≠Te confund° con"
DATA "mi hijo! ≠Es que"
DATA "se parecen      "
DATA "tanto!          "
DATA "®Sabes c¢mo se  "
DATA "llama mi hijo?  "
DATA "®No?            "
DATA "≠Pues, mi hijo  "
DATA "es el famoso    "
DATA "ASH!            "

DATA "Es una TV color."         : '1416

DATA "≠Este juego es  "         : '1417
DATA "igualito al mio!"

DATA "≠Parece que ya  "         : '1419
DATA "no usan este PC!"

DATA "≠Lleva mucho    "         : '1421
DATA "tiempo mirar!   "

DATA "≠Alto ah°, ni§o!"         : '1423
DATA "≠Todav°a est†s a"
DATA "a§os luz de     "
DATA "retar a BROCK!  "

DATA "≠Eres bastante  "         : '1427
DATA "fuerte, pero no "
DATA "tanto como      "
DATA "BROCK!          "

DATA "≠No tan r†pido, "         : '1431
DATA "ni§o! ≠A£n      "
DATA "tienes que      "
DATA "derrotarme!     "

DATA "≠Ja!            "         : '1435
DATA "≠Eso no ser†    "
DATA "suficiente para "
DATA "derrotar a      "
DATA "BROCK!          "

DATA "≠Mmm!           "         : '1440
DATA "≠A§os luz no son"
DATA "tiempo! ≠Miden  "
DATA "distancia!      "

DATA "≠Solo estaba    "         : '1444
DATA "jugando!        "

DATA "≠Soy BROCK!     "         : '1446
DATA "≠LëDER DEL      "
DATA "GIMNASIO DE LA  "
DATA "CIUDAD PLATEADA!"
DATA "≠Creo en la gran"
DATA "resistencia de  "
DATA "la roca y en la "
DATA "determinaci¢n!  "
DATA "≠Por eso todos  "
DATA "mis POKêMON son "
DATA "del tipo roca!  "
DATA "≠Bueno... no    "
DATA "todos!          "
DATA "®Todav°a quieres"
DATA "desafiarme? ≠Muy"
DATA "bien! ≠EnsÇ§ame "
DATA "lo que vales!   "

DATA "≠Espera! ≠Lleva "         : '1463
DATA "esto contigo!   "

DATA "≠La MT incluye  "         : '1465
DATA "un ataque que   "
DATA "puede ser       "
DATA "ense§ado a los  "
DATA "POKêMON! ≠Pero  "
DATA "s¢lo puedes     "
DATA "usarla una vez! "
DATA "≠Cuando vayas a "
DATA "ense§ar un nuevo"
DATA "ataque, elige   "
DATA "con cuidado a tu"
DATA "POKêMON! ≠La    "
DATA "MT34 incluye la "
DATA "VENGANZA!       "
DATA "≠Tu POKêMON     "
DATA "absorver† los   "
DATA "da§os del       "
DATA "combate y       "
DATA "atacar† el      "
DATA "doble!          "

DATA "≠En el mundo hay"         : '1485
DATA "todo tipo de    "
DATA "entrenadores!   "
DATA "≠Pareces ser muy"
DATA "h†bil como      "
DATA "entrenador!     "
DATA "≠Vete al pr¢ximo"
DATA "gimnasio y pon a"
DATA "prueba tus      "
DATA "habilidades!    "

DATA "No supe apreciar"         : '1495
DATA "lo que vales.   "
DATA "≠Como prueba de "
DATA "tu victoria,    "
DATA "aqu° tienes la  "
DATA "MEDALLA ROCA!   "
DATA "≠Es una MEDALLA "
DATA "OFICIAL de la   "
DATA "LIGA POKêMON!   "
DATA "≠El POKêMON que "
DATA "la tenga mucho  "
DATA "m†s fuerte!     "

DATA "®Eh? ≠Esas      "         : '1507
DATA "POKê BALL de tu "
DATA "cintura!        "
DATA "≠Pareces que    "
DATA "eres un buen    "
DATA "entrenador!     "
DATA "≠Te darÇ un     "
DATA "regalo!...      "
DATA "≠Espera!...     "
DATA "≠No puedo darte "
DATA "esto si no      "
DATA "tienes la       "
DATA "MEDALLA ROCA!   "
DATA "≠VÇ a buscarla! "

DATA "≠Buen trabajo!  "         : '1521
DATA "≠Ya tenÇs la    "
DATA "MEDALLA ROCA!   "
DATA "≠Tom† esto!     "

DATA "≠Es la MO04!    "         : '1525
DATA "≠Esta MO incluye"
DATA "FUERZA, sirve   "
DATA "para mover      "
DATA "pesadas rocas!  "
DATA "≠Seguro que te  "
DATA "ser† £til!      "

DATA "≠Puedo decirte  "         : '1532
DATA "lo que se       "
DATA "requiere        "
DATA "para ser un     "
DATA "campe¢n de      "
DATA "POKêMON! ≠No soy"
DATA "un entrenador,  "
DATA "pero puedo      "
DATA "decirte c¢mo    "
DATA "ganar! ≠DÇjame  "
DATA "que lleve a la  "
DATA "victoria!       "
DATA "≠El 1er POKêMON "
DATA "que sale a      "
DATA "luchar es el    "
DATA "primero de la   "
DATA "lista de        "
DATA "POKêMON!        "
DATA "≠Cambiar el     "
DATA "orden de los    "
DATA "POKêMON podr°a  "
DATA "facilitar los   "
DATA "combates!       "

DATA "≠Ya lo sab°a!   "         : '1555
DATA "≠Tienes madera  "
DATA "de campe¢n!     "

DATA "FíSIL AERODACTYL"         : '1558
DATA "Un primitivo y  "
DATA "raro POKêMON.   "

DATA "FíSIL KABUTOPS  "         : '1561
DATA "Un primitivo y  "
DATA "raro POKêMON.   "

DATA "NAVE ESPACIAL   "         : '1564
DATA "COLUMBIA        "

DATA "Meteorito ca°do "         : '1566
DATA "en el MT. MOON: "
DATA "PIEDRA LUNAR.   "

DATA "Meteorito ca°do "         : '1569
DATA "en las monta§as "
DATA "de ARGOS:       "
DATA "PIEDRA SOLAR.   "

DATA "≠Ah! ≠Siente el "         : '1573
DATA "sol y el viento!"

DATA "≠Estoy          "         : '1575
DATA "totalmente      "
DATA "quemado!        "

DATA "En ISLA CANELA, "         : '1578
DATA "al oeste, hab°a "
DATA "un LABORATORIO  "
DATA "POKêMON.        "
DATA "≠Si querÇs      "
DATA "saber adonde se "
DATA "cambi¢, vencÇme!"

DATA "El laboratorio  "         : '1585
DATA "se traslad¢ a   "
DATA "CIUDAD TRIGAL,  "
DATA "en JOHTO.       "

DATA "≠Ahora estoy en "         : '1589
DATA "un encuentro de "
DATA "triatl¢n!       "

DATA "(Suspiro)...    "         : '1592
DATA "(Suspiro)...    "

DATA "≠PesquÇ a todos "         : '1594
DATA "mis POKêMON en  "
DATA "el mar!         "

DATA "®Donde atrapaste"         : '1597
DATA "a tus POKêMON?  "

DATA "≠Mi novio me di¢"         : '1599
DATA "unas perlas muy "
DATA "grandes!        "

DATA "®Crecer†n m†s   "         : '1602
DATA "mis perlas      "
DATA "dentro de un    "
DATA "CLOYSTER?       "

DATA "≠El mar limpia  "         : '1606
DATA "mi cuerpo y mi  "
DATA "alma!           "

DATA "≠A m° tambiÇn   "         : '1609
DATA "me gusta la     "
DATA "monta§a!        "

DATA "≠Me gusta flotar"         : '1612
DATA "con los peces!  "
DATA "≠S¢lo salgo del "
DATA "agua para       "
DATA "descansar!      "

DATA "®Te gustar°a    "         : '1617
DATA "flotar conmigo? "

DATA "≠Auuu!          "         : '1619
DATA "≠He perdido!    "

DATA "≠Espera!        "         : '1621

DATA "≠Nadar y luchar!"         : '1622
DATA "≠Esto me agota  "
DATA "muy r†pido!     "

DATA "≠≠Buzo!!        "         : '1625
DATA "≠Fuera del      "
DATA "juego!          "

DATA "≠No toques mis  "         : '1628
DATA "perlas!         "

DATA "≠Aaayyy!        "         : '1630

DATA "≠Auchh≠         "         : '1631

DATA "≠Eh ni§o!       "         : '1632
DATA "®Eres un        "
DATA "entrenador?     "
DATA "≠Ajah!          "
DATA "En esta ruta    "
DATA "hay muchos      "
DATA "entrenadores    "
DATA "muy fuertes.    "
DATA "Ser°a mejor que "
DATA "entrenaras a    "
DATA "tus POKêMON     "
DATA "antes de pasar  "
DATA "por esta ruta.  "

DATA "ISLAS CANELA    "         : '1645

DATA "≠Mira que       "         : '1646
DATA "cuerpazo tengo! "

DATA "≠Deber°a haberte"         : '1648
DATA "mostrado a mis  "
DATA "POKêMON!        "

DATA "El agua es poco "         : '1651
DATA "profunda aqu°.  "

DATA "≠Ojal† pudiera  "         : '1653
DATA "subirme a mis   "
DATA "POKêMON!        "

DATA "®TambiÇn est†s  "         : '1656
DATA "de vacaciones?  "

DATA "≠Las ISLAS      "         : '1658
DATA "ESPUMA sol°an   "
DATA "ser una sola    "
DATA "isla!           "

DATA "≠Las ISLAS      "         : '1662
DATA "ESPUMA son una  "
DATA "f†cil salida!   "

DATA "Hay una enorme  "         : '1665
DATA "caverna debajo  "
DATA "de esta isla.   "

DATA "≠Oh! ≠Eso me    "         : '1668
DATA "gusta! ®Me la   "
DATA "dar†s si gano?  "

DATA "≠Queda un largo "         : '1671
DATA "camino hasta la "
DATA "ISLA CANELA!    "

DATA "®Por quÇ te has "         : '1674
DATA "subido a un     "
DATA "POKêMON?        "
DATA "®No sabes nadar?"

DATA "≠Subirse a un   "         : '1678
DATA "POKêMON es muy  "
DATA "divertido!      "

DATA "≠BuceÇ en busca "         : '1681
DATA "de POKêMON, pero"
DATA "no vi nada!     "

DATA "≠Tienes que     "         : '1684
DATA "pescar a los    "
DATA "POKêMON del mar!"

DATA "≠Tengo que      "         : '1687
DATA "calentar antes  "
DATA "de nadar!       "

DATA "≠Gracias chico! "         : '1690
DATA "≠Ya puedo nadar!"

DATA "®Eres de ISLA   "         : '1692
DATA "CANELA?         "
DATA "®Alguna vez     "
DATA "entraste al     "
DATA "edificio quemado"
DATA "que hab°a en esa"
DATA "isla?           "
DATA "Mmm...          "
DATA "Claro eras muy  "
DATA "chico...        "
DATA "≠DÇjame probar a"
DATA "tus POKêMON!    "

DATA "Conozco a un    "         : '1704
DATA "chico que atrap¢"
DATA "un MAGMAR en    "
DATA "ese edificio.   "
DATA "L†stima que ya  "
DATA "no estÇ.        "

DATA "≠Me gusta nadar!"         : '1710
DATA "®Y a t°?        "

DATA "≠Puedo ganar a  "         : '1712
DATA "los POKêMON     "
DATA "nadando!        "

DATA "≠Nadar es       "         : '1715
DATA "genial! ≠Pero   "
DATA "quemarse al Sol "
DATA "no!             "

DATA "LAPRAS es       "         : '1719
DATA "enorme, sube    "
DATA "encima de Çl y  "
DATA "no te mojar†s.  "

DATA "≠ReciÇn aprendo "         : '1723
DATA "a nadar!...     "
DATA "≠Es muy copado! "

DATA "≠Mis POKêMON me "         : '1726
DATA "ayudan a nadar! "

DATA "≠Todos los      "         : '1728
DATA "veranos el mar  "
DATA "se llena de     "
DATA "personas!       "

DATA "≠AtrapÇ a todos "         : '1732
DATA "mis POKêMON en  "
DATA "la ZONA SAFARI! "

DATA "®QuÇ hay m†s    "         : '1735
DATA "all† del        "
DATA "horizonte?      "

DATA "≠Veo un par de  "         : '1738
DATA "islas!          "

DATA "≠Estas aguas son"         : '1740
DATA "traicioneras!   "

DATA "≠Me ha dado un  "         : '1742
DATA "calambre! ≠Glup!"

DATA "NadÇ hasta aqu°,"         : '1744
DATA "pero ya me      "
DATA "cansÇ.          "

DATA "Mi novio quer°a "         : '1747
DATA "nadar hasta las "
DATA "ISLAS ESPUMA.   "

DATA "≠Miro al mar    "         : '1750
DATA "para olvidar!   "

DATA "≠Uff! ≠Uff!...  "         : '1752
DATA "(Suspiro)...    "
DATA "≠Creo que nadÇ  "
DATA "demasiado!      "

DATA "≠UsarÇ mis      "         : '1756
DATA "POKêMON para    "
DATA "regresar!       "

DATA "®Acaso no puedo "         : '1759
DATA "nadar?          "

DATA "®Que parezco    "         : '1761
DATA "quÇ? ®Un tubo de"
DATA "submarinista?   "
DATA "≠Olv°dame!      "

DATA "≠QuÇdate conmigo"         : '1765
DATA "hasta que lo    "
DATA "consiga!        "

DATA "≠Alto! ≠Algo a  "         : '1768
DATA "picado! ≠S°!    "

DATA "≠Que canijo!    "         : '1770
DATA "≠Splash!        "         : '1771
DATA "≠Sin piedad!    "         : '1772
DATA "≠DÇjalo ya!     "         : '1773
DATA "≠Oh!            "         : '1774
DATA "≠He perdido!    "
DATA "≠Auch!          "         : '1776
DATA "≠FracasÇ!       "
DATA "≠Socorro!       "         : '1778
DATA "≠Ya estoy       "         : '1779
DATA "caliente!       "
DATA "≠Perd° sin      "         : '1781
DATA "remedio!        "
DATA "≠Vaya planchazo!"         : '1783
DATA "≠Que horror!    "         : '1784
DATA "≠Lo que faltaba!"         : '1785
DATA "≠Esto no est†   "         : '1786
DATA "pasando!        "
DATA "≠Glup!          "         : '1788
DATA "≠Ooh!           "         : '1789
DATA "≠Peligroso!     "
DATA "Estoy agotada..."         : '1791
DATA "≠Oooooh!        "         : '1792
DATA "≠Que traum†tico!"
DATA "≠Me agarraste   "         : '1794
DATA "desprevenida!   "
DATA "≠Un pez peque§o!"         : '1796
DATA "As° matamos el  "         : '1797
DATA "tiempo.         "

DATA "≠Eh! ≠No asustes"         : '1799
DATA "a los peces!    "

DATA "≠Estaba enfadado"         : '1801
DATA "porque no he    "
DATA "pescado nada!   "

DATA "®Quieres saber  "         : '1804
DATA "si los peces    "
DATA "pican?          "

DATA "≠No puedo pescar"         : '1807
DATA "nada bueno!     "

DATA "≠Tengo una gran "         : '1809
DATA "red! ®Quieres   "
DATA "probarla?       "

DATA "≠Parece que s¢lo"         : '1812
DATA "pesco MAGIKARP! "

DATA "≠He intentado   "         : '1814
DATA "muchas veces,   "
DATA "pero nunca pesco"
DATA "un REMORAID!    "

DATA "®Viste un       "         : '1818
DATA "REMONAID? ®No   "
DATA "es fabuloso?    "

DATA "≠Siempre vengo  "         : '1821
DATA "a pescar con mi "
DATA "amigo!          "

DATA "≠La pesca no va "         : '1824
DATA "bien!           "

DATA "≠Malditos peces!"         : '1826
DATA "≠êstos no son   "
DATA "los que yo      "
DATA "quiero!         "

DATA "≠Habr† que ir a "         : '1830
DATA "pescar a otra   "
DATA "parte!          "

DATA "≠Me sub° en mi  "         : '1833
DATA "p†jaro POKêMON! "

DATA "≠Mis p†jaros no "         : '1835
DATA "pueden traerme  "
DATA "VOLANDO!        "

DATA "≠NadÇ hasta aqu°"         : '1838
DATA "desde la CIUDAD "
DATA "FUCSIA!         "

DATA "≠Estoy tan      "         : '1841
DATA "decepcionada!   "
DATA "≠Cre° que mis   "
DATA "POKêMON eran    "
DATA "muy fuertes!    "

DATA "≠Perdona! ≠No lo"         : '1846
DATA "hice adrede!    "
DATA "≠Dang!          "         : '1848
DATA "≠Maldici¢n!     "         : '1849
DATA "≠MAGIKARP!      "
DATA "≠Que paliza!    "         : '1851
DATA "≠Auuh! ≠C¢mo    "         : '1852
DATA "sufro!          "
DATA "≠Mis POKêMON!   "         : '1854
DATA "≠Oh no!         "         : '1855
DATA "≠Pobres POKêMON!"         : '1856

DATA "Visita la ZONA  "         : '1857
DATA "del SAFARI si   "
DATA "est†s estudiando"
DATA "a los POKêMON.  "
DATA "≠All°           "
DATA "encontrar†s     "
DATA "todo tipo de    "
DATA "POKêMON raros!  "

DATA "No puedes ganar "         : '1865
DATA "s¢lo con un     "
DATA "fuerte POKêMON. "
DATA "Es dif°cil,     "
DATA "pero mejor      "
DATA "entrenarlos a   "
DATA "todos por igual."

DATA "Hay un estrecho "         : '1872
DATA "camino al oeste "
DATA "de CIUDAD VERDE."
DATA "Lleva al CG de  "
DATA "la LIGA POKêMON."
DATA "El CG gobierna  "
DATA "a todos los     "
DATA "entrenadores.   "

DATA "LëDER DEL       "         : '1880
DATA "GIMNASIO DE LA  "
DATA "CIUDAD FUCSIA:  "
DATA "KOGA.           "
DATA "El venenoso     "
DATA "maestro ninja.  "

DATA "CASA DEL GUARDA "         : '1886
DATA "DEL SAFARI      "

DATA "ZONA DE SAFARI: "         : '1888
DATA "PARAëSO POKêMON "

DATA "≠Mirad la CIUDAD"         : '1890
DATA "FUCSIA! ≠La     "
DATA "pasi¢n rosa!    "

DATA "≠El GUARDA de la"         : '1893
DATA "ZONA del SAFARI "
DATA "es viejo, pero  "
DATA "sigue en activo!"
DATA "≠Aunque todos   "
DATA "sus dientes     "
DATA "son postizos!   "

DATA "≠BILL registra  "         : '1900
DATA "los datos de sus"
DATA "POKêMON en      "
DATA "su PC!          "
DATA "®Te los ha      "
DATA "ense§ado?       "

DATA "®Mmm? ®Conoces  "         : '1905
DATA "a BILL?         "
DATA "≠Es mi nieto!   "
DATA "≠Le gustaba     "
DATA "coleccionar     "
DATA "cosas desde     "
DATA "ni§o!           "

DATA "Constru° mi casa"         : '1912
DATA "en la playa     "
DATA "porque es una   "
DATA "zona muy        "
DATA "transquila.     "

DATA "®Tienes alguna  "         : '1917
DATA "bandera de la   "
DATA "ZONA del SAFARI?"
DATA "®Tienes cartas? "
DATA "®Y calendarios? "

DATA "®Has probado la "         : '1923
DATA "VELOCIDAD X?    "
DATA "≠êsta acelera a "
DATA "los POKêMON en  "
DATA "la batalla!     "

DATA "≠Hola!          "         : '1928
DATA "≠Soy el GUARDA  "
DATA "del SAFARI!     "
DATA "Llevo mucho     "
DATA "tiempo          "
DATA "trabajando en   "
DATA "el zoo, pero    "
DATA "pronto me       "
DATA "tomarÇ unas     "
DATA "vacaciones.     "

DATA "≠Viejos objetos "         : '1938
DATA "de los POKêMON! "

DATA "Fotos y f¢siles "         : '1940
DATA "de POKêMON.     "

DATA "Revistas de     "         : '1942
DATA "novedades       "
DATA "POKêMON.        "
DATA "Se descubri¢ un "
DATA "nuevo POKêMON,  "
DATA "los cient°ficos "
DATA "lo llamaron     "
DATA "HOUNDOUR.       "
DATA "Personas afirman"
DATA "que es del tipo "
DATA "MALIGNO.        "

DATA "≠Soy el hermano "                : '1953
DATA "mayor del GURì  "
DATA "PESCADOR!       "
DATA "≠Me encanta     "
DATA "pescar!         "
DATA "®Y a t°, te     "
DATA "gusta pescar?   "
DATA "®Eh? ®Tienes una"
DATA "ca§a?           "
DATA "DÇjame ver...   "
DATA "Mmm...          "
DATA "Esta ca§a no es "
DATA "buena para      "
DATA "pescar buenos   "
DATA "peces POKêMON.  "
DATA "≠Para que       "
DATA "disfrutes de    "
DATA "una buena pesca "
DATA "necesitas esto! "

DATA "≠Con esta ca§a  "         : '1972
DATA "tendr†s la      "
DATA "posibilidad de  "
DATA "atrapar mejores "
DATA "peces!          "

DATA "≠Prueba tu ca§a "         : '1977
DATA "en todas partes!"
DATA "≠En una de esas "
DATA "descubrir†s que "
DATA "vale la pena!   "

