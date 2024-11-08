 

 

-- ������ ��ȸ�ϱ� 

select deptno �μ���ȣ, dname �μ��̸�  

from dept; 

-- �������(+-*/) 

select ename �̸�, job ����, salary ����, salary+100 ���ʽ�����, salary - salary*0.1 ���� 

from emp; 

-- DISTINCT �ߺ� �� ���� (�Ȱ��� ���� ������� �ϳ��� ǥ�õ�) 

select DISTINCT job ���� 

from emp; 

-- ���� ���� Ǯ�� 

--1 

select empno, ename, ename 

from emp; 

--2 

select ename, salary,  salary * 1.1  AS �������� 

from emp; 

--3 

select empno �����ȣ, ename �̸�, ename �� 

from emp; 

-- ���� ������ || ���ڿ��� ���� 

SELECT ename || ' is a '|| job as �������� 

from emp; 

-- ���� 4 

SELECT empno, ename||' '||ename Ǯ����, email||'@company.com' �̸��� 

from emp; 

-- WHERE ������ 

select * 

from emp 

where salary > 14000; 

 

select * 

from emp 

where ename = 'King'; -- ������� = , �����ʹ� ��ҹ��ڸ� �����Ѵ�. ���ڿ��� �Ѱ�����ǥ 

 

SELECT *  

FROM emp 

WHERE hire_date < '2002-06-10'; --��¥�� �񱳰� �ȴ�. �񱳽� ���ڿ��� ��¥���·� ������ �ڵ���ȯ�� 

-- AND OR NOT ������ 

select ename, deptno, salary 

from emp 

where deptno = 60 

OR deptno = 80 AND salary > 10000;  

--NOT 

select * 

from emp 

where not(hire_date >'2004/01/01' OR salary > 5000); 

-- where (hire_date <='2004/01/01' AND salary <= 5000); 

-- 1 

select * from emp 

where salary > 4000 AND job = 'IT_PROG'; 

-- 2 

select * from emp 

where salary > 4000 AND (job = 'IT_PROG' OR job = 'FI_ACCOUNT'); 

 

-- IN ������ 

select * from emp 

where salary = 4000 OR salary = 3000 OR salary = 2700; 

 

select * from emp 

where salary IN(4000, 3000, 2700); 

--1  

select * from emp 

where salary IN(10000, 17000, 24000); 

--2 

select * from emp 

where deptno NOT IN(30,50,80,100,110); 

 

-- BETWEEN 

--1 

select * from emp 

where salary BETWEEN 10000 AND 20000; 

--2 

select * from emp 

where hire_date BETWEEN '2004-01-01' AND '2004-12-30'; 

--3 

select * from emp 

where salary NOT BETWEEN 7000 AND 17000; 

 

-- LIKE ������ ���ڿ� Ű���� ��ȸ�� % �Ǵ� _ ���� ��� 

SELECT * 

FROM emp 

WHERE ename LIKE 'B%'; --B�� �����ϴ� ��� ���ڿ� �˻� 

SELECT * 

FROM emp 

WHERE ename LIKE '%b%'; --�߰��� b�� ���� ��� ���ڿ� 

SELECT * 

FROM emp 

WHERE ename LIKE '____y'; -- �����_�� �� �� ���ڸ� �ǹ� 

-- ���� 1 

SELECT * FROM emp 

WHERE job LIKE '%AD%'; 

-- ���� 2 

SELECT * FROM emp 

WHERE job LIKE '%AD___'; 

-- ���� 3 

SELECT * FROM emp 

WHERE phone_number LIKE '%1234'; 

-- ���� 4 

SELECT * FROM emp 

WHERE phone_number NOT LIKE '%3%' AND phone_number LIKE '%9'; 

-- ���� 5 

SELECT * FROM emp 

WHERE job LIKE '%MGR%' OR  job LIKE '%ASST%'; 

 

-- �ΰ��� �˻��Ҷ� is null 

SELECT * FROM emp 

where commission_pct is null; 

-- ���� �ƴ� ��� is not null 

SELECT * FROM emp 

where commission_pct is not null; 

-- ����  

SELECT * FROM emp 

where manager_id is null; 

 

-- ORDER BY ���ļ����� ���� 

SELECT * FROM emp 

ORDER BY salary DESC; -- ASC(������,����Ʈ ��������) DESC(��������) 

-- 2�� �̻� ���� ���Ľ� 

SELECT deptno, empno, ename, ename  

FROM emp 

ORDER BY deptno , empno; -- ó���� �μ���ȣ���̰� ������ ������ȣ���� 

-- ��Ī���� ���� 

SELECT deptno, ename, salary*12 ���� 

FROM emp 

ORDER BY ���� DESC; --������ ū������ ���� 

--1 

SELECT empno, ename, ename 

FROM emp 

ORDER BY empno DESC; 

--2 

SELECT * FROM emp 

where job LIKE '%CLERK%' 

ORDER BY salary DESC; 

-- 3 

SELECT empno ������ȣ, ename �̸�, deptno �μ���ȣ, salary ���� 

FROM emp 

where empno BETWEEN 120 AND 150 

ORDER BY deptno DESC, salary DESC; 

 

