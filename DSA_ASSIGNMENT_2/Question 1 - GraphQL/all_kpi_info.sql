-- Table for storing user information
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(255),
    lastname VARCHAR(255),
    jobtitle VARCHAR(255),
    position VARCHAR(255),
    role VARCHAR(255),
    objective VARCHAR(255),
    -- Additional user fields as needed
);

-- Table for storing objectives
CREATE TABLE objectives (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    objective_text TEXT,
    -- Additional objective fields as needed
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Table for storing KPIs
CREATE TABLE kpis (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    kpi_text TEXT,
    grade VARCHAR(255),
    -- Additional KPI fields as needed
    FOREIGN KEY (user_id) REFERENCES users(id)
);