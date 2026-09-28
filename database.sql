CREATE TABLE IF NOT EXISTS players (
    identifier VARCHAR(60) PRIMARY KEY,
    money INT DEFAULT 5000,
    bank INT DEFAULT 10000,
    job VARCHAR(50) DEFAULT 'unemployed'
);

CREATE TABLE IF NOT EXISTS inventory (
    identifier VARCHAR(60),
    item VARCHAR(50),
    count INT,
    PRIMARY KEY (identifier, item),
    FOREIGN KEY (identifier) REFERENCES players(identifier)
);

CREATE TABLE IF NOT EXISTS vehicles (
    plate VARCHAR(10) PRIMARY KEY,
    model VARCHAR(50),
    owner VARCHAR(60),
    FOREIGN KEY (owner) REFERENCES players(identifier)
);