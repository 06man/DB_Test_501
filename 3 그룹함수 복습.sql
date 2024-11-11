-- �׷��Լ�(�����Լ�) 

SELECT ROUND(AVG(sal)) ��տ���, MAX(sal), 
       MIN(sal), SUM(sal) ���޵�������, COUNT(sal) �Ѱ��� 
FROM emp 
WHERE job = 'MANAGER'; 

-- �׷��� GROUP BY �׷캰 �����Լ� 

SELECT deptno �μ�, ROUND(AVG(sal)) ��ձ޿� 
FROM emp 
GROUP BY deptno 
ORDER BY deptno; 


-- ���� 1 
SELECT deptno �μ���ȣ, COUNT(*) �����, MAX(sal) �ְ�޿�, MIN(sal) �ּұ޿�, 
       SUM(sal) �޿��հ�, ROUND(AVG(sal)) ��ձ޿� 
FROM emp 
GROUP BY deptno  
ORDER BY �޿��հ� DESC;  

 

-- ���� 2 

SELECT deptno �μ���ȣ, job ����, SUM(sal), COUNT(*) ������ 
FROM emp 
GROUP BY deptno, job 
ORDER BY deptno; 

-- ���� 3 

SELECT  
   ROUND(AVG( MAX(sal) )) �μ����ְ�������, 
   AVG( MIN(sal) ) �μ�������������� 
FROM emp 
GROUP BY deptno; 

-- �׷��Լ� Having ������ 

select deptno �μ�, COUNT(*) ����� 
from emp 
group by deptno 
having count(*) > 3; --�׷��������� ���Ǽ�(�����)�� 5�� �Ѵ� �׷� 

-- ���� 1 
SELECT job ����, SUM(sal) �޿��հ� 
FROM emp WHERE job != 'MANAGER' 
GROUP BY job 
HAVING AVG(sal) > 2000  
ORDER BY �޿��հ� DESC; 

 

-- ���� 2 
SELECT deptno �μ���ȣ, ROUND( AVG(sal) ) ��ձ޿� 
FROM emp WHERE deptno != 40 
GROUP BY deptno 
HAVING AVG(sal) <= 5000; 
-- ���� 3 

SELECT job ������ȣ, SUM(sal) �޿��հ� 
FROM emp WHERE job NOT LIKE '%REP%' 
GROUP BY job 
HAVING SUM(sal) >= 3000 
ORDER BY �޿��հ� DESC; 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 