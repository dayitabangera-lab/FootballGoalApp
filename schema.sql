CREATE TABLE team (
    name VARCHAR(50) PRIMARY KEY,
    city VARCHAR(50),
    coach VARCHAR(50),
    points INT,
    goals_for INT,
    goals_against INT
);

CREATE TABLE player (
    player_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    team_name VARCHAR(50),
    position VARCHAR(30),
    goals_scored INT,

    FOREIGN KEY (team_name)
        REFERENCES team(name)
);

CREATE TABLE matches (
    match_id INT PRIMARY KEY,
    match_date DATE,
    home_team VARCHAR(50),
    away_team VARCHAR(50),
    stadium VARCHAR(100),
    home_score INT,
    away_score INT,

    FOREIGN KEY(home_team)
        REFERENCES team(name),

    FOREIGN KEY(away_team)
        REFERENCES team(name)
);

CREATE TABLE goal (
    goal_id INT PRIMARY KEY,
    match_id INT,
    player_id INT,
    goal_time INT,

    FOREIGN KEY(match_id)
        REFERENCES matches(match_id),

    FOREIGN KEY(player_id)
        REFERENCES player(player_id)
);