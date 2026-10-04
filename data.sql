INSERT INTO team (name, city, coach, points, goals_for, goals_against)
VALUES
('Liverpool', 'Liverpool', 'Arne Slot', 20, 18, 8),
('Manchester City', 'Manchester', 'Pep Guardiola', 18, 16, 7),
('Arsenal', 'London', 'Mikel Arteta', 17, 15, 6),
('Tottenham', 'London', 'Ange Postecoglou', 16, 14, 9),
('Chelsea', 'London', 'Enzo Maresca', 12, 10, 10);



INSERT INTO player (player_id, name, team_name, position, goals_scored)
VALUES
(1, 'Mohamed Salah', 'Liverpool', 'Forward', 7),
(2, 'Erling Haaland', 'Manchester City', 'Forward', 6),
(3, 'Son Heung-min', 'Tottenham', 'Forward', 5),
(4, 'Bukayo Saka', 'Arsenal', 'Midfielder', 4),
(5, 'Darwin Núñez', 'Liverpool', 'Forward', 4),
(6, 'Julian Alvarez', 'Manchester City', 'Forward', 4),
(7, 'James Maddison', 'Tottenham', 'Midfielder', 3),
(8, 'Raheem Sterling', 'Chelsea', 'Forward', 3);

INSERT INTO matches
(match_id, match_date, home_team, away_team, stadium, home_score, away_score)
VALUES
(1, '2024-09-30', 'Liverpool', 'Tottenham', 'Anfield', 2, 1),
(2, '2024-10-01', 'Manchester City', 'Arsenal', 'Etihad Stadium', 3, 1),
(3, '2024-10-02', 'Chelsea', 'Liverpool', 'Stamford Bridge', 1, 2),
(4, '2024-10-03', 'Tottenham', 'Arsenal', 'Tottenham Stadium', 2, 2),
(5, '2024-10-04', 'Liverpool', 'Manchester City', 'Anfield', 3, 2),
(6, '2025-03-05', 'Arsenal', 'Chelsea', 'Emirates Stadium', 2, 0),
(7, '2025-02-06', 'Tottenham', 'Manchester City', 'Tottenham Stadium', 1, 3);


INSERT INTO goal (goal_id, match_id, player_id, goal_time)
VALUES
(1, 1, 1, 23),
(2, 1, 3, 45),
(3, 1, 5, 67),
(4, 2, 2, 12),
(5, 2, 6, 34),
(6, 2, 4, 55),
(7, 3, 8, 28),
(8, 3, 1, 60),
(9, 3, 5, 78),
(10, 4, 3, 15),
(11, 4, 7, 50),
(12, 4, 4, 65),
(13, 5, 1, 10),
(14, 5, 2, 25),
(15, 5, 5, 70);