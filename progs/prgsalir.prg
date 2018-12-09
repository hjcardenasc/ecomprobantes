*IF MESSAGEBOX("Esta Seguro Desea Cerrar El Sistema?? ",1+32,"Advertencia",73200)=1 THEN
	ON SHUTDOWN
	CLOSE ALL
	CLEAR EVENTS
	QUIT
*ENDIF
