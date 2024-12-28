MariaDB [my_database]> USE library;
Database changed
MariaDB [library]> 
MariaDB [library]> CREATE TABLE authors (
    ->     id INT AUTO_INCREMENT PRIMARY KEY,
    ->     name VARCHAR(255),
    ->     birthdate DATE
    -> );
Query OK, 0 rows affected (0.019 sec)

MariaDB [library]> 
MariaDB [library]> CREATE TABLE books (
    ->     id INT AUTO_INCREMENT PRIMARY KEY,
    ->     title VARCHAR(255),
    ->     author_id INT,
    ->     published_year INT,
    ->     FOREIGN KEY (author_id) REFERENCES authors(id)
    -> );
Query OK, 0 rows affected (0.046 sec)

MariaDB [library]> INSERT INTO authors (name, birthdate) VALUES 
    -> ('J.K. Rowling', '1965-07-31'),
    -> ('George R.R. Martin', '1948-09-20'),
    -> ('J.R.R. Tolkien', '1892-09-03'),
    -> ('Agatha Christie', '1890-09-15'),
    -> ('Isaac Asimov', '1920-01-02');
Query OK, 5 rows affected (0.016 sec)
Records: 5  Duplicates: 0  Warnings: 0

MariaDB [library]> 
MariaDB [library]> INSERT INTO books (title, author_id, published_year) VALUES 
    -> ('Harry Potter and the Sorcerer\'s Stone', 1, 1997),
    -> ('A Game of Thrones', 2, 1996),
    -> ('The Hobbit', 3, 1937),
    -> ('Murder on the Orient Express', 4, 1934),
    -> ('Foundation', 5, 1951);
Query OK, 5 rows affected (0.003 sec)
Records: 5  Duplicates: 0  Warnings: 0

MariaDB [library]> SELECT b.title, a.name 
    -> FROM books b 
    -> JOIN authors a ON b.author_id = a.id;
+---------------------------------------+--------------------+
| title                                 | name               |
+---------------------------------------+--------------------+
| Harry Potter and the Sorcerer's Stone | J.K. Rowling       |
| A Game of Thrones                     | George R.R. Martin |
| The Hobbit                            | J.R.R. Tolkien     |
| Murder on the Orient Express          | Agatha Christie    |
| Foundation                            | Isaac Asimov       |
+---------------------------------------+--------------------+
5 rows in set (0.009 sec)

MariaDB [library]> 

