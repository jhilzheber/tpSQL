mysql>  select distinct avg(a.grade),year,firstname,lastname   from module m left join assessment a on m.id = a.module_id right join student s on s.id = a.student_id where year=3;
+--------------+------+-----------+----------+
| avg(a.grade) | year | firstname | lastname |
+--------------+------+-----------+----------+
|       9.0000 |    3 | Pierre    | Martin   |
+--------------+------+-----------+----------+
1 row in set (0.00 sec)

mysql> select grade,year,firstname, lastname from module m left join assessment a on m.id = a.module_id right join student s on s.id = a.student_id where year=3;
+-------+------+-----------+----------+
| grade | year | firstname | lastname |
+-------+------+-----------+----------+
|     8 |    3 | Pierre    | Martin   |
|    10 |    3 | Olivier   | Martin   |
+-------+------+-----------+----------+
2 rows in set (0.00 sec)
