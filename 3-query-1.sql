mysql> select * from student s left join enrolment e on s.id = e.student_id WHERE `from`>=2017-07-01 AND `to`>=2017-07-01;
+----+-----------+----------+---------------------+---------------------+------------+---------+
| id | firstname | lastname | from                | to                  | student_id | year_id |
+----+-----------+----------+---------------------+---------------------+------------+---------+
|  1 | Olivier   | Martin   | 2015-01-01 00:00:00 | 2015-12-31 00:00:00 |          1 |       1 |
|  1 | Olivier   | Martin   | 2016-01-01 00:00:00 | 2016-12-31 00:00:00 |          1 |       2 |
|  1 | Olivier   | Martin   | 2017-01-01 00:00:00 | 2017-12-31 00:00:00 |          1 |       3 |
|  2 | Pierre    | Martin   | 2015-01-01 00:00:00 | 2015-12-31 00:00:00 |          2 |       1 |
|  2 | Pierre    | Martin   | 2016-01-01 00:00:00 | 2016-12-31 00:00:00 |          2 |       2 |
|  2 | Pierre    | Martin   | 2017-01-01 00:00:00 | 2017-12-31 00:00:00 |          2 |       3 |
|  3 | Jacques   | Martin   | 2017-01-01 00:00:00 | 2017-12-31 00:00:00 |          3 |       2 |
+----+-----------+----------+---------------------+---------------------+------------+---------+
7 rows in set, 2 warnings (0.00 sec
                           
                           
------------------------
                           
                           autre tentative
                           
mysql> select firstname,lastname,label from year y right join enrolment e on y.id = e.year_id left join student s on s.id = e.student_id;
+-----------+----------+-----------------------+
| firstname | lastname | label                 |
+-----------+----------+-----------------------+
| Olivier   | Martin   | first year(Bsc)       |
| Pierre    | Martin   | first year(Bsc)       |
| Olivier   | Martin   | second year(Bsc Hons) |
| Pierre    | Martin   | second year(Bsc Hons) |
| Jacques   | Martin   | second year(Bsc Hons) |
| Olivier   | Martin   | third year(MSC)       |
| Pierre    | Martin   | third year(MSC)       |
+-----------+----------+-----------------------+
                           