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

 
