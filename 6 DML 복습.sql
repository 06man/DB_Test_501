-- �Է� INSERT 
-- ���̺� ���� ������Ÿ�� ������ ���� 
DESC dept; 
INSERT INTO dept(deptno,dname,loc) 
VALUES(11, '���Ӻ�', '�λ꼭��');
select * from dept;

-- ���̸� �����Ҷ�(��� ���� ���Է��ؾ���) 

INSERT INTO dept 

VALUES(12, '���Ӻ�2', '�λ꼭��2'); 

-- �ΰ��� �Էµɶ�(�Է��� ���� ������ ��) 

INSERT INTO dept(deptno,dname) 

VALUES(13, '���Ӻ�3'); 

 

--�������̺� �Է� 

DESC emp; 

INSERT INTO emp(empno, ename, job, mgr, hiredate, sal, comm, deptno) 
VALUES(2070,'�̻��','TEA',null,sysdate, 1000, 500, null); 
INSERT INTO emp(empno, ename, job, mgr, hiredate, sal, comm, deptno) 

VALUES(2071,null,'TEA',null,sysdate, 1000, 500, null); 
select * from emp;

-- ���� 1 

INSERT INTO dept VALUES(14, '���Ӻ�4', '�λ꼭��4'); 

INSERT INTO dept VALUES(15, '���Ӻ�5', '�λ꼭��5');

INSERT INTO dept VALUES(16, '���Ӻ�6', '�λ꼭��6');

 

-- ���� UPDATE (���� :where�� ������ ������� ������Ʈ ��) 

-- ���Ǻμ��� �Ŵ����� �����̼� �����ϱ� 

UPDATE dept 
SET dname = '�����μ�1', loc = '��������1' 
WHERE deptno = 11; 
select * from dept;

-- ���� �μ���ȣ 10���� 12������ �Ŵ���ID�� 100���� �����ϱ� 

UPDATE dept 
SET dname = '�����μ�2', loc = '��������2' 
WHERE deptno between 10 and 12;  
select * from dept;
 

-- �����ϱ� DELETE 

delete from dept 
where dname = '����2'; 
delete from dept 

where dname = '����'; 

-- ���� �����ϴ� �����͸� �����ϴ� ���̺�� �����Ͱ� ������� �����ϴ� �����͸� ���� �����ؾ� �������� 

DELETE FROM emp where ename = '�̻��'; 

-- ������ where���� ��������? : ��ü�� ����ǹǷ� ���� 

UPDATE emp SET eanme = '��ü ���� ���� �ѹ� �� ����'; 

 

-- ���� ���·� ����(������ ������ commit ���·� ���ư�) 

rollback; 
select * from dept;

-- �Է� ���� ���� �����ϱ� 

-- scott ���� 

delete from sal; 

 

 

 

 

 

 

 

 