SELECT tmovim
SET ORDER to PORTDOC    && MOVTIPODCO+MOVNUMEDCO
SELECT tmovimdet
SET ORDER TO principal
SELECT mmedicam
SET ORDER TO PRINCIPAL   && MEDCOD

CLEAR
LOCAL cmemvar
=SYS(3054,1,"cmemvar")
*!*	SELECT *;
*!*	FROM tmovim;
*!*	WHERE; 
*!*		movtipodco + movnumedco == "09" + "001-1008416";
*!*	into CURSOR _tmovim

*!*	SELECT tmd.movnumeite, tmd.movcantid, tmd.movprecio, tmd.movtotal, tmd.medlote,;
*!*		pr.medcod, pr.mednom, pr.medcnc, pr.medff;
*!*	from tmovimdet as tmd, mmedicam as pr;
*!*	WHERE;
*!*		(movcoditip + movnumero + movnumeite) == (_tmovim.movcoditip + _tmovim.movnumero) AND;
*!*		(tmd.medcod = pr.medcod);
*!*	into CURSOR _tmovimdet

SELECT tmd.movnumeite, tmd.movcantid, tmd.movprecio, tmd.movtotal, tmd.medlote,;
	pr.medcod, pr.mednom, pr.medcnc, pr.medff;
from tmovimdet as tmd, mmedicam as pr ;
WHERE;
	tmd.medcod == pr.medcod and;
	movcoditip + movnumero + movnumeite = _tmovim.movcoditip + _tmovim.movnumero;
into CURSOR _tmovimdet


*!*	*!*	SELECT tmd.movnumeite, tmd.movcantid, tmd.movprecio, tmd.movtotal, tmd.medlote, tmd.medcod;
*!*	*!*	from tmovimdet as tmd;
*!*	*!*	WHERE;
*!*	*!*		(tmd.movcoditip + tmd.movnumero + tmd.movnumeite) = (_tmovim.movcoditip + _tmovim.movnumero);
*!*	*!*	into CURSOR _tmovimdet


*!*	SELECT *;
*!*	from _tmovimdet as tmd;
*!*	 	inner join mmedicam pr ON (tmd.medcod == pr.medcod)

?cmemvar

*	left JOIN mmedicam pr ON (tmd.medcod = pr.medcod);

