SELECT
  ROUND(MAX(val.value), 2) AS faturamento_maximo,
  ROUND(AVG(val.value), 2) AS faturamento_medio,
  ROUND(MIN(val.value), 2) AS faturamento_minimo,
  ROUND(SUM(val.value), 2) AS faturamento_total
FROM SpotifyClone.plan AS val
INNER JOIN SpotifyClone.users AS u
ON val.plan_id = u.plan_id;