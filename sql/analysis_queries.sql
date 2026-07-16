-- Top Goal Scorers
SELECT
    player_name,
    team,
    SUM(goals) AS total_goals
FROM player_performance
GROUP BY player_name, team
ORDER BY total_goals DESC
LIMIT 10;

-- Top Assist Providers
SELECT
    player_name,
    team,
    SUM(assists) AS total_assists
FROM player_performance
GROUP BY player_name, team
ORDER BY total_assists DESC
LIMIT 10;

-- Highest Rated Players
SELECT
    player_name,
    team,
    ROUND(AVG(player_rating),2) AS average_rating
FROM player_performance
GROUP BY player_name, team
HAVING COUNT(*) >= 3
ORDER BY average_rating DESC
LIMIT 10;

-- Teams with the Most Goals
SELECT
    team,
    SUM(goals_team) AS total_goals
FROM player_performance
GROUP BY team
ORDER BY total_goals DESC
LIMIT 10;

-- Players with the Best Pass Accuracy
SELECT
    player_name,
    team,
    ROUND(AVG(pass_accuracy), 2) AS average_pass_accuracy
FROM player_performance
GROUP BY player_name, team
HAVING COUNT(*) >= 3
ORDER BY average_pass_accuracy DESC
LIMIT 10;