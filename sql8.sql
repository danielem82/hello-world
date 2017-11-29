SELECT descrizione,nome,nazionalita
FROM prodotto JOIN marca ON prodotto.marca=marca.id
WHERE nazionalita
IN(
SELECT nazionalita
FROM marca
GROUP BY (nazionalita)
HAVING COUNT(*)>1
)
