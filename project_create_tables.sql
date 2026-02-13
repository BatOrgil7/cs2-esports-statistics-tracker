-- Team table
CREATE TABLE Team (
    team_id INT AUTO_INCREMENT PRIMARY KEY,
    team_name VARCHAR(100) NOT NULL,
    region VARCHAR(50),
    date_founded DATE
);

-- Player table
CREATE TABLE Player (
    player_id INT AUTO_INCREMENT PRIMARY KEY,
    team_id INT,
    player_name VARCHAR(100) NOT NULL,
    role VARCHAR(50),
    nationality VARCHAR(50),
    FOREIGN KEY (team_id) REFERENCES Team(team_id)
);

-- Tournament table
CREATE TABLE Tournament (
    tournament_id INT AUTO_INCREMENT PRIMARY KEY,
    tournament_name VARCHAR(150) NOT NULL,
    location VARCHAR(100),
    start_date DATE,
    end_date DATE,
    prize_pool DECIMAL(12,2)
);

-- Match table
CREATE TABLE `Match` (
    match_id INT AUTO_INCREMENT PRIMARY KEY,
    tournament_id INT,
    team1_id INT,
    team2_id INT,
    winning_team_id INT,
    match_date DATE,
    FOREIGN KEY (tournament_id) REFERENCES Tournament(tournament_id),
    FOREIGN KEY (team1_id) REFERENCES Team(team_id),
    FOREIGN KEY (team2_id) REFERENCES Team(team_id),
    FOREIGN KEY (winning_team_id) REFERENCES Team(team_id)
);

-- Map_Stats table
CREATE TABLE Map_Stats (
    map_stat_id INT AUTO_INCREMENT PRIMARY KEY,
    match_id INT,
    map_name VARCHAR(50),
    team1_score INT,
    team2_score INT,
    FOREIGN KEY (match_id) REFERENCES `Match`(match_id)
);

-- Player_Stats table
CREATE TABLE Player_Stats (
    player_stat_id INT AUTO_INCREMENT PRIMARY KEY,
    player_id INT,
    map_stat_id INT,
    kills INT,
    deaths INT,
    assists INT,
    average_damage_per_round DECIMAL(5,2),
    FOREIGN KEY (player_id) REFERENCES Player(player_id),
    FOREIGN KEY (map_stat_id) REFERENCES Map_Stats(map_stat_id)
);