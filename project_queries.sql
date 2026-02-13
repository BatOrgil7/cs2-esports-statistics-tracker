-- Query 1: Aggregate Query
-- "Show the average kills per player for each team, ordered from highest to lowest average."

SELECT 
    t.team_name,
    ROUND(AVG(ps.kills), 2) AS average_kills
FROM 
    Player_Stats ps
NATURAL JOIN Player p
NATURAL JOIN Team t
GROUP BY 
    t.team_name
ORDER BY 
    average_kills DESC;

-- Query 2: Nested Query
-- "Find all players who have a higher average damage per round than the overall average ADR of all players."

SELECT 
    player_name,
    ROUND(AVG(average_damage_per_round), 2) AS player_adr
FROM 
    Player_Stats ps
NATURAL JOIN Player
WHERE 
    average_damage_per_round > (
        SELECT AVG(average_damage_per_round) 
        FROM Player_Stats
    )
GROUP BY 
    player_id, player_name
ORDER BY 
    player_adr DESC;

-- Query 3: Dr. Trotter's Question
-- "What are the total kills, total deaths, and total assists for each player, ordered from most kills to least?"

SELECT 
    p.player_name,
    t.team_name,
    SUM(ps.kills) AS total_kills,
    SUM(ps.deaths) AS total_deaths, 
    SUM(ps.assists) AS total_assists
FROM 
    Player_Stats ps
NATURAL JOIN Player p
NATURAL JOIN Team t
GROUP BY 
    p.player_id, p.player_name, t.team_name
ORDER BY 
    total_kills DESC;