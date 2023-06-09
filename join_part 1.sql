-- Create a database named join_test_db and run the SQL provided in the Join Example DB section above; to create the same setup used for this lesson.
USE cerberus_raymond;
CREATE TABLE roles
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE users
(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name    VARCHAR(100) NOT NULL,
    email   VARCHAR(100) NOT NULL,
    role_id INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name)
VALUES ('admin');
INSERT INTO roles (name)
VALUES ('author');
INSERT INTO roles (name)
VALUES ('reviewer');
INSERT INTO roles (name)
VALUES ('commenter');

INSERT INTO users (name, email, role_id)
VALUES ('bob', 'bob@example.com', 1),
       ('joe', 'joe@example.com', 2),
       ('sally', 'sally@example.com', 3),
       ('adam', 'adam@example.com', 3),

SELECT *
FROM roles;
SELECT *
FROM users;

-- Insert 4 new users into the database. One should have a NULL role. The other three should be authors.

    INSERT INTO users (name, email, role_id)
VALUES ('albert', 'albert@codeup.com', 2),
       ('jimmy', 'jimmy@codeup.com', 2),
       ('yadi', 'yadi@codeup.com', 2),
       ('adam', 'adam@codeup.com', NULL);

-- Use JOIN, LEFT JOIN, and RIGHT JOIN to combine results from the users and roles tables as we did in the lesson. Before you run each query, guess the expected number of results.

-- Join/Inner Join
SELECT users.name as user_name, roles.name as role_name
FROM users
         JOIN roles ON users.role_id = roles.id;

-- Left Join
SELECT users.name AS user_name, roles.name AS role_name
FROM users
         LEFT JOIN roles ON users.role_id = roles.id;

-- Right Join
SELECT users.name AS user_name, roles.name AS role_name
FROM users
         RIGHT JOIN roles ON users.role_id = roles.id;

-- Although not explicitly covered in the lesson, aggregate functions like count can be used with join queries. Use COUNT and the appropriate join type to get a list of roles along with the number of users that have a given role. Hint: You will also need to use GROUP BY in the query.
SELECT COUNT(role_id) AS role_count, roles.name AS role_name
FROM users
         RIGHT JOIN roles ON users.role_id = roles.id
GROUP BY role_id