SELECT
    MIN(plans.plans_price) AS faturamento_minimo,
    MAX(plans.plans_price) AS faturamento_maximo,
    ROUND(AVG(plans.plans_price), 2) AS faturamento_medio,
    SUM(plans.plans_price) AS faturamento_total
FROM
    SpotifyClone.subscription_plans AS plans
INNER JOIN
    SpotifyClone.user ON plans.plans_id = user.plans_id; 