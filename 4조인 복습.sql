-- �⺻ ���� ���  

select empno ������ȣ, ename �̸�, e.deptno �μ���ȣ, dname �μ���  
from emp e JOIN dept d  
ON e.deptno = d.deptno;  
 

-- 3�� ���̺� ����  
select e.empno, e.ename, d.dname , e2.empno , e2.ename 
from emp e  
JOIN dept d  
    ON e.deptno = d.deptno  
JOIN emp e2  
    ON e.mgr = e2.empno;  

 -- ���ΰ� �Բ� where �������� ���´ٰ� �ϸ�  

 

select empno ������ȣ, ename �̸�, e.deptno �μ���ȣ, dname �μ���  

from emp e JOIN dept d  
    ON e.deptno = d.deptno  


where d.deptno = 30;  

 

  
-- ��ü���� (���� ���̺����� �����ϰ� �������)  

 

select e.ename ����, m.ename �Ŵ���  

 

from emp e JOIN emp m  

 

    ON e.mgr = m.empno;  

 

  

 

-- �ܺ�����  

 

-- ���� �ܺ�����  

 

select ename ����, e.deptno �μ���ȣ, d.dname �μ���  

 

from emp e LEFT OUTER JOIN dept d  

 

    ON e.deptno = d.deptno;  

 

-- ������ �ܺ�����  

 

select ename ����, d.deptno �μ���ȣ, d.dname �μ���  

 

from emp e RIGHT OUTER JOIN dept d  

 

    ON e.deptno = d.deptno;  

 

-- Ǯ �ܺ�����  

 

select ename ����, d.deptno �μ���ȣ, d.dname �μ���  

 

from emp e FULL OUTER JOIN dept d  

 

    ON e.deptno = d.deptno;  

 

  

 