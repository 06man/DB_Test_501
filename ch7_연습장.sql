-- �ǽ� 7-1
select sum(sal) from emp;


-- �ǽ� 7-2
-- ������, ������ �Լ��� ���ÿ� ���� ���� 
select ename,sum(sal) from emp;

-- �ǽ� 7-3
select sum(comm) from emp;

-- �ǽ� 7-4
-- distinct , all 
select sal from emp;
select sum(distinct sal), sum(all sal), sum(sal) from emp;


-- �ǽ� 7-5
select count(*) from emp;

-- �ǽ� 7-6 

SELECT COUNT(*) 
  FROM EMP 
 WHERE DEPTNO = 30; 

 

-- �ǽ� 7-7 

SELECT COUNT(DISTINCT SAL), 
       COUNT(ALL SAL), 
       COUNT(SAL) 
  FROM EMP; 

 

-- �ǽ� 7-8 

SELECT COUNT(COMM) 
  FROM EMP; 

 -- �ǽ� 7-9 
SELECT COUNT(COMM) 
  FROM EMP 
 WHERE COMM IS NOT NULL; 
 
 -- �ǽ� 7-10 

SELECT MAX(SAL) 

  FROM EMP 

 WHERE DEPTNO = 10; 

 

-- �ǽ� 7-11 

SELECT MIN(SAL) 

  FROM EMP 

 WHERE DEPTNO = 10; 

 

-- �ǽ� 7-12 

SELECT MAX(HIREDATE) 

  FROM EMP 

 WHERE DEPTNO = 20; 

 

-- �ǽ� 7-13 

SELECT MIN(HIREDATE) 

  FROM EMP 

 WHERE DEPTNO = 20; 

 

-- �ǽ� 7-14 

SELECT AVG(SAL) 

  FROM EMP 

 WHERE DEPTNO = 30; 

 

-- �ǽ� 7-15 

SELECT AVG(DISTINCT SAL) 

  FROM EMP 

 WHERE DEPTNO = 30; 

 

-- �ǽ� 7-16 

SELECT AVG(SAL), '10' AS DEPTNO FROM EMP WHERE DEPTNO = 10 

UNION ALL 

SELECT AVG(SAL), '20' AS DEPTNO FROM EMP WHERE DEPTNO = 20 

UNION ALL 

SELECT AVG(SAL), '30' AS DEPTNO FROM EMP WHERE DEPTNO = 30; 

 
