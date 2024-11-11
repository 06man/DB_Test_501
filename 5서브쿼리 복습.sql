-- ��������  
-- SCOTT ������ ����Ϻ��� ���Ŀ� ���� ������  
-- ������ ���������� �������� ����� ���ٸ� ���;� �ȴ�.  

 select ename �̸�, hiredate �������  
from emp  
where hiredate > ( select hiredate   
                    from emp   
                    where ename = 'SCOTT');  

 

-- �����Լ� ��������  
select ename �̸�, job ����, sal �޿�  
from emp  
where sal = (select min(sal) from emp);   

 

-- ���� Ǯ�� 1  
SELECT ename �̸�, sal �޿�  
FROM emp  
WHERE sal > ( SELECT sal FROM emp WHERE ename = 'SCOTT');  

 

-- ���� Ǯ�� 2  

SELECT empno ������ȣ, ename �̸�, deptno �μ���ȣ, sal �޿�  
FROM emp  
WHERE deptno = ( SELECT deptno FROM emp WHERE ename = 'SCOTT')  
AND sal > ( SELECT sal FROM emp WHERE ename = 'SMITH');
SELECT sal FROM emp WHERE ename = 'SMITH';

 

-- ���� Ǯ�� 3  
SELECT ename �̸�, sal �޿�, mgr �Ŵ���  
FROM emp  
WHERE mgr = ( SELECT empno FROM emp WHERE ename = 'SCOTT');  
select * from emp;


-- ���� Ǯ�� 4  
 SELECT *   
FROM emp  
WHERE deptno = ( SELECT deptno FROM dept WHERE deptno = 10 );  

-- ������ ��������  


select min(sal)  
from emp  
group by deptno;  

-- �μ��� �ּұ޿��� ���� �޿��� �޴� ������  
select empno, ename  
from emp  
where sal IN (select min(sal)  
                from emp  
                group by deptno);  

 

-- ���߿� ANY������ : �������� ����� �ϳ��� ���̸� �˻���               
SELECT empno, ename, job, sal  
FROM emp  
WHERE sal  < ANY  
                   ( SELECT sal  
                      FROM emp
                      WHERE job = 'MANAGER')  
AND job <> 'MANAGER' 
ORDER BY sal DESC;  
 SELECT sal  
                      FROM emp
                      WHERE job = 'MANAGER';

 

-- ALL: �������� ����� ��� ���̿����� �˻���  

SELECT empno, ename, job, sal  
FROM emp  
WHERE sal  < ALL  
                    ( SELECT sal  
                      FROM emp  
                      WHERE job = 'MANAGER')  
AND job <> 'MANAGER'  
ORDER BY sal DESC;  

  

 

-- ���� 1  

 SELECT empno, ename, job  ����, sal �޿�  
FROM emp  
WHERE mgr IN (SELECT mgr FROM emp WHERE deptno = 20)  
 AND deptno != 20;  
 

-- ���� 2    

 SELECT empno, ename, job  ����, sal �޿�  
FROM emp  
WHERE sal < ANY(SELECT sal FROM emp WHERE job = 'MANAGER');  


-- ���� 3  

 

SELECT empno, ename, job  ����, sal �޿�  

 

FROM emp  

 

WHERE sal < ALL(SELECT sal FROM emp WHERE job = 'MANAGER');  

 

  

 

-- �������� ���߿�  

 

-- ��罺�� ���� ������ ���� ��縦 ���� ������  
 SELECT empno, ename, job, sal, mgr  
FROM emp  
WHERE (mgr, job) IN  (SELECT mgr, job  
                                FROM emp  
                                WHERE ename = 'SCOTT')  
AND ename <> 'SCOTT';  

 

  

 

-- ���տ����� (UNION, INTERSECT, MINUS)  

--UNION (107 + 10) = 117 �ε� �� 115��  

select empno, job  
from emp  
union  
select deptno, dname  
from dept;  

 

--INTERSECT (�ߺ��Ǵ� ���� ����)  
select empno, job  
from emp  
INTERSECT  
select deptno, dname  
from dept;  

 

--���̳ʽ� A-B�� ���� �ߺ��� 2���� ������ �� 105�� ���  

 

select empno, job  
from emp  

MINUS  
 

select empno, job  

 

from emp  

 

INTERSECT  

 

select deptno, dname  

 

from dept;  

 

  

 

-- ���� 1  

 

SELECT deptno �μ���ȣ FROM emp  

 

UNION  

 

SELECT deptno FROM dept;  

 

-- ���� 2  

 

SELECT deptno �μ���ȣ FROM emp  

 

UNION ALL  

 

SELECT deptno FROM dept;  

 

-- ���� 3  

 

SELECT deptno �μ���ȣ FROM emp  

 

INTERSECT  

 

SELECT deptno FROM dept;  

 

-- ���� 4  

 

SELECT deptno �μ���ȣ FROM emp  

 

MINUS  

 

SELECT deptno FROM dept;  

 

  

 

  

 

  

 

  

 

  

 

  

 

  

 

  

 

  

 

  

 

  

 

  