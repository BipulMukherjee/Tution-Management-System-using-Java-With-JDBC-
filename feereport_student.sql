--
-- Table structure for table feereport_student
--

CREATE TABLE feereport_student (
  rollno int(10) NOT NULL ,
  name varchar(200) NOT NULL,
  email varchar(200) NOT NULL,
  course varchar(100) NOT NULL,
  fee int(10) NOT NULL,
  paid int(10) NOT NULL,
  due int(10) NOT NULL,
  addres varchar(300) NOT NULL,
  city varchar(200) NOT NULL,
  state varchar(200) NOT NULL,
  country varchar(100) NOT NULL,
  contactno varchar(20) NOT NULL,
  registereddate systimestamp,
  PRIMARY KEY (rollno)
);

--
-- Dumping data for table `feereport_student`
--

INSERT INTO feereport_student VALUES
(1, 'Prateek Kumar', 'prateekpathak0451@gmail.com', 'Java',
11000, 11000, 0, 'D-23, Sec-18, Noida	', 'Noida', 'UP', 'INDIA',
'9329293900', '2016-12-07 09:28:13');
INSERT INTO feereport_student VALUES
(2, 'sallu', 'sallu@gmail.com', 'java', 9000, 9000, 0, 'abc		', 
'noida', 'UP', 'India', '32923923', '2016-12-06 09:06:47');
INSERT INTO feereport_student VALUES
(3, 'Mayank', 'mayank@gmail.com', 'Java', 11000, 10000, 1000, '',
'noida', 'UP', 'India', '9329392932', '2016-12-17 08:38:47');


CREATE SEQUENCE dept_seq START WITH 1;
Trigger definition:

CREATE OR REPLACE TRIGGER dept_bir 
BEFORE INSERT ON departments 
FOR EACH ROW

BEGIN
  SELECT dept_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/


