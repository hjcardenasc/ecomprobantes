PUBLIC oApp

SET PATH TO c:\ecomprobantes\class;c:\ecomprobantes\data;c:\ecomprobantes\progs;c:\ecomprobantes\reports
SET CLASSLIB TO model
oApp = CREATEOBJECT("environment")
oApp.rgb = RGB(246,246,246)

oApp.Setup
*!*	oApp.load_environment
oApp.nivel_usuario = "01" && 01=admin, 02=
SET status bar ON
