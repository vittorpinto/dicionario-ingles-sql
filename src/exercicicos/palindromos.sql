-- ta erradooo: pensando em migrar para MySQL

SELECT id, words

FROM tb_all 

WHERE SUBSTR(REPLACE(TRIM(LOWER(words))," ",""),-LENGTH(words),1) = REPLACE(TRIM(LOWER(words))," ","")