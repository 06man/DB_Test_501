-- �� view ������ ���̺� 
CREATE VIEW EMP_V2 
AS 
select empno ������ȣ, ename �̸�, hiredate, job 
from emp; 

 

select * from emp_v2; 

INSERT INTO emp_v2 VALUES(1234,'�̻��',sysdate,'����'); 

-- ��� ���� �������� ���̺��� �ƴѵ� �Է��� ���� => ������ �並 ���� ���̺� �Էµ�! 

Delete from emp_v2 where ������ȣ = 1234; 

select * from emp; 

 

-- �б⸸ ������ ��� �����(with read only) 

CREATE VIEW EMP_read(������ȣ,�̸�,��,�̸���,�������,����) 

AS 

select empno, ename, hiredate, job 

from emp with read only; 

 

select * from emp_read; 

Delete from emp_read where ������ȣ = 1234; 

-- �б⸸ ������ ��� DML(�Է�,����,����)�� �ȵ�.  