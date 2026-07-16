-- =====================================================
-- FIFA World Cup 2026 Player Performance Analytics
-- Database Schema
-- =====================================================

CREATE TABLE players (
    player_id INT PRIMARY KEY,
    player_name VARCHAR(100) NOT NULL,
    age INT,
    nationality VARCHAR(50),
    team VARCHAR(50),
    jersey_number INT,
    position VARCHAR(30),
    height_cm INT,
    weight_kg INT,
    preferred_foot VARCHAR(20),
    club_name VARCHAR(100),
    market_value_eur NUMERIC(15,2)
);

CREATE TABLE matches (
    match_id INT PRIMARY KEY,
    match_date DATE,
    stadium VARCHAR(100),
    city VARCHAR(100),
    opponent_team VARCHAR(50),
    tournament_stage VARCHAR(50),
    match_result VARCHAR(20),
    goals_team INT,
    goals_opponent INT
);

CREATE TABLE player_match_performance (
    performance_id SERIAL PRIMARY KEY,

    player_id INT NOT NULL,
    match_id INT NOT NULL,

    minutes_played INT,
    goals INT,
    assists INT,

    shots INT,
    shots_on_target INT,

    expected_goals_xg DECIMAL(5,2),
    expected_assists_xa DECIMAL(5,2),

    key_passes INT,
    successful_passes INT,
    total_passes INT,
    pass_accuracy DECIMAL(5,2),

    dribbles_attempted INT,
    successful_dribbles INT,

    crosses INT,
    successful_crosses INT,

    tackles INT,
    interceptions INT,
    clearances INT,
    blocks INT,

    aerial_duels_won INT,
    aerial_duels_lost INT,

    recoveries INT,
    defensive_actions INT,

    fouls_committed INT,
    fouls_suffered INT,

    yellow_cards INT,
    red_cards INT,
    offsides INT,

    saves INT,
    save_percentage DECIMAL(5,2),
    punches INT,
    clean_sheet BOOLEAN,
    goals_conceded INT,
    penalty_saves INT,

    distance_covered_km DECIMAL(5,2),
    sprint_distance_km DECIMAL(5,2),
    top_speed_kmh DECIMAL(5,2),

    accelerations INT,
    decelerations INT,

    stamina_score DECIMAL(5,2),

    player_rating DECIMAL(4,2),
    performance_score DECIMAL(5,2),
    offensive_contribution DECIMAL(5,2),
    defensive_contribution DECIMAL(5,2),
    possession_impact DECIMAL(5,2),
    pressure_resistance DECIMAL(5,2),
    creativity_score DECIMAL(5,2),
    consistency_score DECIMAL(5,2),
    clutch_performance_score DECIMAL(5,2),

    total_goals_tournament INT,
    total_assists_tournament INT,
    total_minutes_tournament INT,
    player_of_match_awards INT,
    tournament_rating DECIMAL(4,2)
);