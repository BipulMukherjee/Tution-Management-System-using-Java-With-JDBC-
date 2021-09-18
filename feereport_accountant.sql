CREATE TABLE  feereport_accountant
(
  id int(10) NOT NULL AUTO_INCREMENT,
  name varchar(100) NOT NULL,
  password varchar(100) NOT NULL,
  email varchar(100) NOT NULL,
  contactno varchar(20) NOT NULL,
  PRIMARY KEY (id)
);

--
-- Dumping data for table feereport_accountant
--

INSERT INTO feereport_accountant 
VALUES(1, 'prateek', 'prateek', 'prateek@gmail.com', '9199291212');
INSERT INTO feereport_accountant 
VALUES(2, 'sonoo', 'sonoo123', 'sonoo@gmail.com', '939292932');
INSERT INTO feereport_accountant 
VALUES(3, 'salman', 'salman', 'salman@gmail.com', '939929322');
INSERT INTO feereport_accountant 
VALUES(4, 'varun', 'varun', 'varun@gmail.com', '9399239239');
INSERT INTO feereport_accountant 
VALUES(5, 'abhi', 'abhi', 'abhi@gmail.com', '93923923');
INSERT INTO feereport_accountant 
VALUES(6, 'Roshan', 'roshan', 'roshan@gmail.com', '9953030303');

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


