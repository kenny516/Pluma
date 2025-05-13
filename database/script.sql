CREATE TABLE user_pluma (
    id INT PRIMARY KEY auto_increment,
    username VARCHAR(255) NOT NULL UNIQUE ,
    password VARCHAR(255) NOT NULL,
);

CREATE TABLE category(
    id INT PRIMARY KEY auto_increment,
    name VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE article(
    id INT PRIMARY KEY auto_increment,
    title VARCHAR(255) NOT NULL,
    content TEXT,
    id_user INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_user) REFERENCES user_pluma(id) ON DELETE CASCADE
);

CREATE TABLE article_category(
    id INT PRIMARY KEY auto_increment,
    id_article INT,
    id_category INT,
    FOREIGN KEY (id_article) REFERENCES article(id) ON DELETE CASCADE,
    FOREIGN KEY (id_category) REFERENCES category(id) ON DELETE CASCADE
);

CREATE TABLE comment(
    id INT PRIMARY KEY auto_increment,
    content TEXT,
    id_article INT,
    id_user INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_article) REFERENCES article(id) ON DELETE CASCADE,
    FOREIGN KEY (id_user) REFERENCES user_pluma(id) ON DELETE CASCADE
);


