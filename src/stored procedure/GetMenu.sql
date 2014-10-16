DELIMITER //
DROP PROCEDURE IF EXISTS GetMenu;//
CREATE PROCEDURE GetMenu()

COMMENT
'
	Desc:	Get Menu
	
	Created By			Date				Comments
	------------------------------------------------
	Nikhil Singh Thakur		09/oct/2014		Created
'
BEGIN
		SELECT 	MU.id,
					MU.pageid,
					MU.name,
					MU.link
		FROM 		menu MU;
END;//
