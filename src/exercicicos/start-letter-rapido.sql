SELECT SUBSTR(words, 1, 1) AS letras, 
    COUNT(*) AS qtLetras

FROM tb_all

WHERE words IS NOT NULL

GROUP BY 1