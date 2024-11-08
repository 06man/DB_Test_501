 

 

-- ������ ��ȸ�ϱ� 

select deptno �μ���ȣ, dname �μ��̸�  

from dept; 

-- �������(+-*/) 

select ename �̸�, job ����, sal ����, sal+100 ���ʽ�����, sal - sal*0.1 ���� 
from emp; 

-- DISTINCT �ߺ� �� ���� (�Ȱ��� ���� ������� �ϳ��� ǥ�õ�) 

select DISTINCT job ���� 
from emp; 

-- ���� ���� Ǯ�� 

--1 

select empno, ename, ename 
from emp; 

--2 

select ename, sal,  sal * 1.1  AS �������� 
from emp; 

--3 

select empno �����ȣ, ename �̸�, ename �� 

from emp; 

-- ���� ������ || ���ڿ��� ���� 

SELECT ename || ' is a '|| job as �������� 
from emp; 

-- ���� 4 
SELECT empno, ename||' '||ename Ǯ���� from emp; 

-- WHERE ������ 

select * 
from emp 
where sal > 4000; 

select * 
from emp 
where ename = 'KING'; -- ������� = , �����ʹ� ��ҹ��ڸ� �����Ѵ�. ���ڿ��� �Ѱ�����ǥ 

 

SELECT *  
FROM emp 
WHERE hiredate < '2002-06-10'; --��¥�� �񱳰� �ȴ�. �񱳽� ���ڿ��� ��¥���·� ������ �ڵ���ȯ�� 

-- AND OR NOT ������ 

select ename, deptno, sal 
from emp 
where (deptno = 30 
OR deptno = 20)
AND sal > 2000;  

-- blake 3000 �ʰ�
select ename, deptno, sal 
from emp 
where deptno = 30;
-- jones, scott, ford , 2000 �ʰ�
select ename, deptno, sal 
from emp 
where deptno = 20;

--NOT 
select * 
from emp 
where not(hiredate >'1981/01/01' OR sal > 2000); 

-- where (hiredate <='2004/01/01' AND sal <= 5000); 

-- 1 

select * from emp 
where sal > 2000 AND job = 'MANAGER'; 

-- 2 

select * from emp 
where sal > 2000 AND (job = 'MANAGER' OR job = 'CLERK'); 

 

-- IN ������ 
select * from emp 
where sal = 4000 OR sal = 3000 OR sal = 2700; 

 

select * from emp 
where sal IN(4000, 3000, 2700); 

--1  

select * from emp 
where sal IN(10000, 17000, 24000); 

--2 

select * from emp 
where deptno NOT IN(30,50); 

 

-- BETWEEN 

--1 

select * from emp 
where sal BETWEEN 1000 AND 3000; 

--2 

select * from emp 
where hiredate BETWEEN '1980-01-01' AND '1982-12-31'; 

--3 

select * from emp 
where sal NOT BETWEEN 7000 AND 17000; 

 

-- LIKE ������ ���ڿ� Ű���� ��ȸ�� % �Ǵ� _ ���� ��� 

SELECT * 
FROM emp 
WHERE ename LIKE 'B%'; --B�� �����ϴ� ��� ���ڿ� �˻� 

SELECT * 
FROM emp 
WHERE ename LIKE '%B%'; --�߰��� b�� ���� ��� ���ڿ� 

SELECT * 

FROM emp 
WHERE ename LIKE '_A%'; -- �����_�� �� �� ���ڸ� �ǹ� 

-- ���� 1 

SELECT * FROM emp 
WHERE job LIKE '%A%'; 

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
where comm is null; 

-- ���� �ƴ� ��� is not null 

SELECT * FROM emp 
where comm is not null; 

-- ����  

SELECT * FROM emp 
where mgr is not null; 

 

-- ORDER BY ���ļ����� ���� 

SELECT * FROM emp 
ORDER BY sal DESC; -- ASC(������,����Ʈ ��������) DESC(��������) 

-- 2�� �̻� ���� ���Ľ� 

SELECT deptno, empno, ename, ename  
FROM emp 
ORDER BY deptno , empno DESC; -- ó���� �μ���ȣ���̰� ������ ������ȣ���� 

-- ��Ī���� ���� 

SELECT deptno, ename, sal*12 ���� 
FROM emp 
ORDER BY ���� DESC; --������ ū������ ���� 

--1 

SELECT empno, ename, ename 
FROM emp 
ORDER BY empno DESC; 

--2 

SELECT * FROM emp 
where job LIKE '%CLERK%' 
ORDER BY sal DESC; 

-- 3 

SELECT empno ������ȣ, ename �̸�, deptno �μ���ȣ, sal ���� 
FROM emp 
where empno BETWEEN 7100 AND 8000 
ORDER BY deptno DESC, sal DESC; 

 

 