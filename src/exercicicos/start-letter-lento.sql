WITH tb_letters AS (
    SELECT CASE
            WHEN words LIKE "A%" THEN "A"
            WHEN words LIKE "B%" THEN "B"
            WHEN words LIKE "C%" THEN "C"
            WHEN words LIKE "D%" THEN "D"
            WHEN words LIKE "E%" THEN "E"
            WHEN words LIKE "F%" THEN "F"
            WHEN words LIKE "G%" THEN "G"
            WHEN words LIKE "H%" THEN "H"
            WHEN words LIKE "I%" THEN "I"
            WHEN words LIKE "J%" THEN "J"
            WHEN words LIKE "K%" THEN "K"
            WHEN words LIKE "L%" THEN "L"
            WHEN words LIKE "M%" THEN "M"
            WHEN words LIKE "N%" THEN "N"
            WHEN words LIKE "O%" THEN "O"
            WHEN words LIKE "P%" THEN "P"
            WHEN words LIKE "Q%" THEN "Q"
            WHEN words LIKE "R%" THEN "R"
            WHEN words LIKE "S%" THEN "S"
            WHEN words LIKE "T%" THEN "T"
            WHEN words LIKE "U%" THEN "U"
            WHEN words LIKE "V%" THEN "V"
            WHEN words LIKE "W%" THEN "W"
            WHEN words LIKE "X%" THEN "X"
            WHEN words LIKE "Y%" THEN "Y"
            WHEN words LIKE "Z%" THEN "Z"
        END AS letras
    FROM tb_all
)

SELECT *, COUNT(letras) AS qtLetras
FROM tb_letters
WHERE letras IS NOT NULL
GROUP BY letras