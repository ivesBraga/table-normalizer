SELECT
    user.username AS usuario,
    IF(TIMEDIFF(MAX(history.date_listened), "2020-12-31 23:59::59") > 0, "Usuário ativo", "Usuário inativo") "condicao_usuario"
FROM
    user
    INNER JOIN
    playback_history as history ON history.user_id = user.user_id
GROUP BY user.username; 