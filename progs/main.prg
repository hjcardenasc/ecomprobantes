SET TALK OFF
CLEAR
CLOSE ALL
CLEAR ALL
ON SHUTDOWN do prgsalir.prg

PUBLIC oApp, oHis, oUtils
SET CLASSLIB TO ventanas ADDI
SET CLASSLIB TO model addi


oApp   = CREATEOBJECT("environment")
oUtils = CREATEOBJECT("utils")
oHis   = CREATEOBJECT("his")

oApp.Setup
*oApp.CargarIni
_SCREEN.ICON = oApp.RutaAplicacion + "\graphics\pinion.ico"
***_SCREEN.PICTURE = oApp.RutaAplicacion + "\Graphics\FondoScreen.gif"
_SCREEN.CAPTION = "Red Camana - Caravelí  ::: Comprobantes Electrónicos"
_SCREEN.WINDOWSTATE = 2
***_SCREEN.BackColor = RGB(198,218,231)
***_SCREEN.Picture = 'C:\HIS+\GRAPHICS\FONDO.JPG'

***oApp.Load_environment
oApp.nivel_usuario = 1
oApp.version_number = "0.1"
oApp.version_date = "25SET2018"
oApp.rgb = RGB(209,221,230)


*** ventana de splash
*!*	SplashWindow = CREATEOBJECT("splashw")
*!*	SplashWindow.SHOW

*** ventana de inicio de sesion
*!*	PassWindow = createobject("login")
*!*	PassWindow.Show

*** ventana de información
*!*	InfoWindow = CREATEOBJECT("info")
*!*	InfoWindow.SHOW


IF oApp.nivel_usuario != 0
		DO menu_n1.mpr
		READ EVENTS
ELSE

*!*		CASE oApp.nivel_usuario = 2
*!*			DO menu_n2.mpr
*!*			READ EVENTS
*!*		OTHERWISE
		CLOSE ALL
		RELEASE ALL EXTENDED
		CLEAR 
		CLEAR ALL
		SET SYSM TO DEFA
ENDIF

*!*	ENDCASE




*!*	PUBLIC oApp

*!*	SET PATH TO c:\ecomprobantes\class;c:\ecomprobantes\data;c:\ecomprobantes\progs
*!*	SET CLASSLIB TO model
*!*	oApp = CREATEOBJECT("environment")
*!*	oApp.rgb = RGB(246,246,246)


*!*	*!*	oApp.load_environment
*!*	 && 01=admin, 02=
*!*	SET status bar ON

*!*	oApp.Setup
*!*	oApp.nivel_usuario = "01"


*!*	ON SHUTDOWN QUIT
*!*	SET TALK OFF
*!*	SET SAFETY OFF
*!*	SET NOTIFY OFF
*!*	SET DELETED ON
*!*	SET CENTURY ON
*!*	SET DATE TO dmy
*!*	SET STATUS BAR OFF
*!*	SET NEAR OFF
*!*	CLOSE DATABASES

*!*	SET ESCAPE OFF
*!*	SET MULTILOCKS ON
*!*	SET EXCLUSIVE OFF

*!*	SET SYSMENU TO
*!*	_SCREEN.WINDOWSTATE = 2

*!*	DO FORM form_facturacion
*!*	*DO FORM form_configuracion

*!*	READ EVENTS
*!*	CLEAR EVENTS
*!*	POP MENU _MSYSMENU 
*!*	ON SHUTDOWN 
*!*	CLOSE ALL 

*!*	QUIT


