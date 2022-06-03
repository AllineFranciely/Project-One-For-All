SELECT
	ROUND(MIN(val.value), 2) AS 'faturamento-minimo',
    ROUND(MAX(val.value), 2) AS 'faturamento_maximo',
    ROUND(AVG(val.value), 2) AS 'faturamento-medio',
    ROUND(SUM(val.value), 2) AS 'faturamento-total'
FROM SpotifyClone.plan AS val
INNER JOIN SpotifyClone.users AS u
ON val.plan_id = u.plan_id;