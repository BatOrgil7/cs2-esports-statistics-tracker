-- Insert Teams
INSERT INTO Team (team_name, region, date_founded) VALUES
('Natus Vincere', 'Europe', '2009-12-17'),
('FaZe Clan', 'International', '2016-01-23'),
('Team Vitality', 'Europe', '2013-08-01'),
('G2 Esports', 'Europe', '2014-02-15'),
('FURIA Esports', 'Brazil', '2017-07-01');

-- Insert Players
INSERT INTO Player (team_id, player_name, role, nationality) VALUES
(1, 's1mple', 'AWPer', 'Ukraine'),
(1, 'electroNic', 'In-Game Leader', 'Ukraine'),
(2, 'karrigan', 'In-Game Leader', 'Denmark'),
(2, 'rain', 'Rifler', 'Norway'),
(3, 'ZywOo', 'AWPer', 'France'),
(3, 'apEX', 'In-Game Leader', 'France'),
(4, 'm0NESY', 'AWPer', 'Russia'),
(4, 'NiKo', 'Rifler', 'Bosnia and Herzegovina'),
(5, 'yuurih', 'Rifler', 'Brazil'),
(5, 'arT', 'In-Game Leader', 'Brazil');

-- Insert Tournaments
INSERT INTO Tournament (tournament_name, location, start_date, end_date, prize_pool) VALUES
('PGL Major Copenhagen 2024', 'Copenhagen', '2024-03-17', '2024-03-31', 1250000.00),
('IEM Katowice 2024', 'Katowice', '2024-02-03', '2024-02-11', 1000000.00),
('BLAST Premier World Final 2024', 'Abu Dhabi', '2024-12-12', '2024-12-17', 1000000.00);

-- Insert Matches
INSERT INTO `Match` (tournament_id, team1_id, team2_id, winning_team_id, match_date) VALUES
(1, 1, 2, 1, '2024-03-20'),
(1, 3, 4, 3, '2024-03-21'),
(2, 2, 3, 2, '2024-02-05'),
(2, 4, 5, 4, '2024-02-06'),
(3, 1, 3, 3, '2024-12-14');

-- Insert Map_Stats
INSERT INTO Map_Stats (match_id, map_name, team1_score, team2_score) VALUES
(1, 'Mirage', 16, 12),
(1, 'Inferno', 10, 16),
(1, 'Nuke', 19, 17),
(2, 'Ancient', 16, 8),
(2, 'Overpass', 14, 16),
(3, 'Mirage', 9, 16),
(4, 'Inferno', 16, 10),
(5, 'Nuke', 12, 16),
(5, 'Ancient', 16, 14);

-- Insert Player_Stats
INSERT INTO Player_Stats (player_id, map_stat_id, kills, deaths, assists, average_damage_per_round) VALUES
(1, 1, 25, 18, 5, 95.60),
(1, 2, 22, 20, 3, 88.40),
(1, 3, 30, 22, 6, 102.30),
(2, 1, 18, 20, 8, 72.10),
(2, 2, 16, 22, 4, 68.50),
(3, 1, 20, 22, 4, 80.50),
(3, 3, 19, 24, 5, 76.80),
(4, 1, 15, 19, 6, 65.20),
(5, 4, 28, 14, 2, 110.20),
(5, 5, 24, 18, 5, 98.70),
(6, 4, 19, 16, 7, 82.40),
(7, 6, 16, 20, 3, 65.80),
(7, 7, 26, 16, 4, 105.40),
(8, 7, 22, 18, 6, 88.90),
(9, 8, 19, 21, 6, 78.90),
(9, 9, 17, 19, 4, 72.30),
(10, 8, 14, 22, 8, 61.50);