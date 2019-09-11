# SQL Goals

* have an understanding of what the language is.
* Have an understanding of the RDBMS
# From Online Sources:

### What is SQL

SQL (Structured Query Language) is a programming language used to communicate with data stored in a relational database management system (RDBMS). SQL syntax is similar to the English language, which makes it relatively easy to write, read, and interpret.

Many RDBMSs use SQL (and variations of SQL) to access the data in tables. For example, SQLite is a relational database management system. SQLite contains a minimal set of SQL commands (which are the same across all RDBMSs). Other RDBMSs may use other variants.

(SQL is often pronounced in one of two ways. You can pronounce it by speaking each letter individually like “S-Q-L”, or pronounce it using the word “sequel”.)

### WHAT IS A RELATIONAL DATABASE MANAGEMENT SYSTEM (RDBMS)?
A relational database management system (RDBMS) is a program that allows you to create, update, and administer a relational database. Most relational database management systems use the SQL language to access the database.

#### MySQL

MySQL is the most popular open source SQL database. It is typically used for web application development, and often accessed using PHP.

The main advantages of MySQL are that it is easy to use, inexpensive, reliable (has been around since 1995), and has a large community of developers who can help answer questions.

Some of the disadvantages are that it has been known to suffer from poor performance when scaling, open source development has lagged since Oracle has taken control of MySQL, and it does not include some advanced features that developers may be used to.

We will be downloading MySQL workbench from [here](https://dev.mysql.com/downloads/workbench/) which we will use as our GUI (Graphic User Interface) -ish to make our SQL queries. We will also need the server interface to work with it locally (we will not need this to work with external servers). To download the server: [windows](https://dev.mysql.com/downloads/installer/), [mac](https://dev.mysql.com/downloads/mysql/). Once installed and made sure we kept the password, we can continue.


## Basics

As we may remember SQL is established in tables (like Excel) in databases (storage).

### Querying keywords

Each query is called a statement, this statements are set up just like english statement sentences where we implicitly say what we want the database to give us. 
ie. in a database of my fridge, if I want to get everything that exists on it I would say something like (**database**) `"select all from fridge"`. which in SQL will read:
`SELECT * FROM fridge;` <---- here, `SELECT` and `FROM` are specific SQL keywords, we will always  use `SELECT` if we want to get a value from a table, `FROM` is more self explanatory since it mainly pertains to direction, `*` is also an specific character (that is also used in other languages to convey the same meaning) that denotes **ALL** or **EVERYTHING**, as well, something very worth mentioning, it shall always end with a colon, that will let the DB know in SQL that you have finished your statement. What we are selecting (requesting) from the tables is always data from the columns on the table, not the rows. Back to the example, lets figure that my fridge db looks like so:

**id** | **veggies** | **fruits** | **dairy** | **sauces**| **meats**
----------------------------------------------------------------------
   1   |    [...]    |   [...]    |   [...]   |   [...]   |   [...]     } _this would be the freezer_
----------------------------------------------------------------------
   2   |    [...]    |   [...]    |   [...]   |   [...]   |   [...]     } _this first shelf_
----------------------------------------------------------------------
   3   |    [...]    |   [...]    |   [...]   |   [...]   |   [...]     } _second shelf_
----------------------------------------------------------------------
   4   |    [...]    |   [...]    |           |           |             } _veggie drawer(it is a small fridge)_


Then if I wanted to get all the fruits I would query: `SELECT fruits FROM fridge;`

Let's review this and learn more keywords with practice. if you didn't download the shared file for the jedis sql exercised (shared eons ago) I can slack it to you right now.

* KEYWORDS (select, group by, where, and, or, in, between, like, limit, update, delete)
* DATA TYPES (int, boolean, date, datetime, decimal, enum, varchar, json, time, timestamp)

Useful References: [https://www.w3schools.com/sql/sql_ref_mysql.asp](https://www.w3schools.com/sql/sql_ref_mysql.asp) , [https://www.mysqltutorial.org/](https://www.mysqltutorial.org/)