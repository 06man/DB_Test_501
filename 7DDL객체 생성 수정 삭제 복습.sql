-- ���̺� ����� 

DROP TABLE comp; 

CREATE TABLE comp ( 
    ������ CHAR(10), 
    ������ VARCHAR2(10) 
); 

DESC comp; 

INSERT INTO comp VALUES('1','�ϳ�'); 

INSERT INTO comp VALUES('2','��'); 

INSERT INTO comp VALUES('3','��'); 

select * from comp; 

-- ���ڿ� ��¥ ���̺� 

CREATE TABLE ex_date( 
    id NUMBER(2), 
    start_date DATE DEFAULT SYSDATE 
); 

DESC ex_date; 

-- ����Ʈ���� �ش翭�� ���� �Է����� �ʾ����� �Էµ� 

INSERT INTO ex_date(id) VALUES(10); 

INSERT INTO ex_date(id) VALUES(11); 

INSERT INTO ex_date(id) VALUES(12); 

SELECT * from ex_date; 

 

DROP TABLE comp; 

DROP TABLE ex_date; 

-- ���̺� �������� 

drop table emp1; 

CREATE TABLE emp1 ( 
    id number(3) PRIMARY KEY,--�⺻Ű 
    name VARCHAR2(20) NOT NULL, --�ΰ��� �Է��Ҽ� ���� 
    sal NUMBER CHECK(sal>1000) --üũ�� ������ �Է� 
); 

DESC emp1; 

INSERT INTO emp1 VALUES( 1, '�浿', 1001); 

INSERT INTO emp1 VALUES( 2, '���', 10000); --�⺻Ű�� �ߺ��ȵ�, �ΰ��Է¾ȵ� 

 

-- ���� 

CREATE TABLE members2 ( 
    member_id   NUMBER(2)       PRIMARY KEY, 
    first_name  VARCHAR2(50)    NOT NULL, 
    last_name   VARCHAR2(50)    NOT NULL, 
    gender      VARCHAR2(5)     CHECK (gender IN('Man', 'Woman')), 
    birth_day   DATE    DEFAULT SYSDATE, 
    email       VARCHAR2(200)   UNIQUE NOT NULL 
); 

 

DESC �μ�; 

INSERT INTO �μ� VALUES(1,'�濵'); 

INSERT INTO �μ� VALUES(2,'����'); 

DELETE FROM �μ� WHERE ��ȣ = 1; 

 

DESC ����; 

INSERT INTO ���� VALUES(1,'ȫ�浿',1); 

INSERT INTO ���� VALUES(2,'���',2); 

 

-- CREATE TALBE AS 

DROP TABLE emp_temp; 

CREATE TABLE emp_temp 
AS 
select * from emp where 1!=1; --���ǿ� �����ϴ� �����Ͱ� ���� 

 

select * from emp_temp; 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 