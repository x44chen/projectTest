DELIMITER //
DROP PROCEDURE IF EXISTS GetPageContant;//
CREATE PROCEDURE GetPageContant
(
	ID INT UNSIGNED
)

COMMENT
'
	Desc:	Get Menu
	
	Created By			Date				Comments
	------------------------------------------------
	Nikhil Singh Thakur		09/oct/2014		Created
'
BEGIN
		SELECT 	PU.id,
					PU.menuid,
					PU.title,
					PU.contant
		FROM 		page PU
					WHERE PU.id = ID;
END;//
