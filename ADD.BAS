�   �� S��$ ��Y                                                                                  V R                                                                                                                                                                                                                                                                    �  � $    CASE 190 TO 193, 195 'VENENOS  �     GOSUB SubSelecPoke9  �     IF ps > 0 AND ps < 7 THEN  �     pd$ = LPoke(ps)  �     y = ps * 2 - 1)  �     st = ASC(MID$(pd$, 22, 1))   � 4    IF Objeto = 190 THEN r3$ = "envenenado!": u = 4  � 1    IF Objeto = 191 THEN r3$ = "dormido!": u = 3=  � 1    IF Objeto = 192 THEN r3$ = "quemado!": u = 6=  � 3    IF Objeto = 193 THEN r3$ = "congelado!": u = 1   � 4    IF Objeto = 195 THEN r3$ = "paralizado!": u = 5  �     IF st = 0 THEN5  � -   
 QBprint 15, y - 1, UCASE$(LEFT$(r3$, 3)):  �    
 QBputBox 1, 0, 9, 18, 5  � (   
 n$ = "�" + RTRIM$(MID$(pd$, 2, 10))  �    
 QBprint 1, 10, n$  �    
 QBprint 1, 11, "fue"D  �    
 QBprint 1, 12, r3$e  �    
 DQBcopyLayer 1, VIDEO  �    
 QBwaitABa  �    
 MID$(pd$, 22, 1) = CHR$(u),  �    
 SPoke ps, pd$  �    
 GastoObjeto = TRUE   � 	    ELSE   �    
 QBputBox 1, 0, 9, 18, 5  � (   
 n$ = "�" + RTRIM$(MID$(pd$, 2, 10))  �    
 QBprint 1, 10, n$  � "   
 QBprint 1, 11, "no puede ser"  �    
 QBprint 1, 12, r3$   �    
 DQBcopyLayer 1, VIDEO  �    
 QBwaitABa  �     END IFA  �     END IFA	  ��������!     