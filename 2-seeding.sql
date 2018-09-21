mysql> insert into module values (1,'linux',1);
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`tp`.`module`, CONSTRAINT `fk_year` FOREIGN KEY (`year`) REFERENCES `year` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION)
mysql>
mysql> insert into module (id, name, year) values (1,'linux',1);
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`tp`.`module`, CONSTRAINT `fk_year` FOREIGN KEY (`year`) REFERENCES `year` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION)
mysql> insert into year values (1,'First year(Bsc);
    '> );
    '> ;
    '> fezsrfsg;
    '> ';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> insert into year values (1,'first year(Bsc)');
Query OK, 1 row affected (0.00 sec)

mysql> insert into year values (2,'second year(Bsc Hons)');
Query OK, 1 row affected (0.00 sec)

mysql> insert into year values (,'third year(MSC)');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''third year(MSC)')' at line 1
mysql> insert into year values (3,'third year(MSC)');
Query OK, 1 row affected (0.00 sec)

mysql> insert into student values ('Olivier','Martin');
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> insert into student values (1,'Olivier','Martin');
Query OK, 1 row affected (0.00 sec)

mysql> insert into student values (2,'Pierre','Martin'),(3,'Jacques','Martin'),(4,'Martin'),(5,'Jennifer','Garner');
ERROR 1136 (21S01): Column count doesn't match value count at row 3
mysql> insert into student (id,firstname, lastname) values (2,'Pierre','Martin'),(3,'Jacques','Martin'),(4,'Martin'),(5,'Jennifer','Garner');
ERROR 1136 (21S01): Column count doesn't match value count at row 3
mysql> insert into student (id,firstname, lastname) values (2,'Pierre','Martin'),('3,'Jacques','Martin'),('4,'Martin'),(5,'Jennifer','Garner');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Jacques','Martin'),('4,'Martin'),(5,'Jennifer','Garner')' at line 1
mysql> insert into student (id,firstname, lastname) values ('2,'Pierre','Martin'),('3,'Jacques','Martin'),('4,'Martin'),(5,'Jennifer','Garner');
    '> '
    -> '
    '> '
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Pierre','Martin'),('3,'Jacques','Martin'),('4,'Martin'),(5,'Jennifer','Garner');' at line 1
mysql> insert into student (id,firstname, lastname) values (2,'Pierre','Martin'),(3,'Jacques','Martin'),(4,'Martin','Francois'),(5,'Jennifer','Garner');
Query OK, 4 rows affected (0.00 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> insert into module (id, name,year) values (1, 'linux',1), (2,'docker',1),(3,'symfony',2),(4,'asp.net core',2),(5,'aspect oriented architecture',3),(6,'ddd and hexagonal architecture',3);
Query OK, 6 rows affected (1.87 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> insert into enrolment (id_student, id_year,from,to) values (1,1,"2015-01-01 00:00:00","2015-12-31 00:00:00"),(1,2,"2016-01-01 00:00:00","2016-12-31 00:00:00"),(1,3,"2017-01-01 00:00:00","2017-12-31 00:00:00"),(2,1,"2015-01-01 00:00:00","2015-12-31 00:00:00"),(2,2,"2016-01-01 00:00:00","2016-12-31 00:00:00"),(2,3,"2017-01-01 00:00:00","2017-12-31 00:00:00"),(3,2,"2017-01-01 00:00:00","2017-12-31 00:00:00");
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from,to) values (1,1,"2015-01-01 00:00:00","2015-12-31 00:00:00"),(1,2,"2016-01-' at line 1
mysql> insert into enrolment (id_student, id_year,`from`,`to`) values (1,1,"2015-01-01 00:00:00","2015-12-31 00:00:00"),(1,2,"2016-01-01 00:00:00","2016-12-31 00:00:00"),(1,3,"2017-01-01 00:00:00","2017-12-31 00:00:00"),(2,1,"2015-01-01 00:00:00","2015-12-31 00:00:00"),(2,2,"2016-01-01 00:00:00","2016-12-31 00:00:00"),(2,3,"2017-01-01 00:00:00","2017-12-31 00:00:00"),(3,2,"2017-01-01 00:00:00","2017-12-31 00:00:00");
ERROR 1054 (42S22): Unknown column 'id_student' in 'field list'
mysql> insert into enrolment (student_id, year_id,`from`,`to`) values (1,1,"2015-01-01 00:00:00","2015-12-31 00:00:00"),(1,2,"2016-01-01 00:00:00","2016-12-31 00:00:00"),(1,3,"2017-01-01 00:00:00","2017-12-31 00:00:00"),(2,1,"2015-01-01 00:00:00","2015-12-31 00:00:00"),(2,2,"2016-01-01 00:00:00","2016-12-31 00:00:00"),(2,3,"2017-01-01 00:00:00","2017-12-31 00:00:00"),(3,2,"2017-01-01 00:00:00","2017-12-31 00:00:00");
Query OK, 7 rows affected (0.01 sec)
Records: 7  Duplicates: 0  Warnings: 0

mysql> insert into assessment (student_id, module_id, attempted,passed,grade) values (1,2,"2017-12-31 00:00:00","2018-01-25",12);
Query OK, 1 row affected (0.00 sec)

mysql> insert into assessment (student_id, module_id, attempted,passed,grade) values (2,5,"2015-12-31 00:00:00","2016-01-25",8);
Query OK, 1 row affected (0.00 sec)

mysql> insert into assessment (student_id, module_id, attempted,passed,grade) values (3,4,"2016-12-31 00:00:00","2017-01-25",16);
Query OK, 1 row affected (0.00 sec)

mysql> insert into assessment (student_id, module_id, attempted,passed,grade) values (1,5,"2016-12-31 00:00:00","2016-01-25",10);
Query OK, 1 row affected (0.00 sec)

mysql> insert into assessment (student_id, module_id, attempted,passed,grade) values (2,3,"2016-12-31 00:00:00","2017-01-25",10);
Query OK, 1 row affected (0.00 sec)