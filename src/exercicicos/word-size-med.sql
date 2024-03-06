-- O comprimento médio das palavras, a mediana, etc

WITH tb_word_sizes AS (

SELECT id, 
    words, 
    LENGTH(TRIM(REPLACE(words, " ", ""))) AS tamanhoDaPalavra

FROM tb_all

GROUP BY id

HAVING tamanhoDaPalavra IS NOT NULL

ORDER BY tamanhoDaPalavra

)

SELECT *

FROM tb_word_sizes

WHERE id = (
    SELECT COUNT(words)/2 FROM tb_word_sizes
    )