-- ROWNUM �������� �Ϸù�ȣ 

select ROWNUM, emp.* 

from emp where ROWNUM <=5 ; 

-- 6������ 10������? (�ο���� 1������ �ӽ÷� ��ȣ�� �ű�°Ŷ� �ٸ� �������δ� �˻��ȵ�) 

select ROWNUM, emp.* 
from emp where ROWNUM BETWEEN 6 AND 10; 

-- ���̺� ���������� �Է½� ��ȣ ROWNUM�� �ִ� ���̺� 

SELECT * FROM (select ROWNUM AS RN,emp.* from emp)   
WHERE RN BETWEEN 6 AND 10; 

 

-- ����(order by) ������ ROWNUM ��ȣ�� �ű�� ������ ���������� 

SELECT ROWNUM, EMP.*  
FROM EMP  
WHERE ROWNUM <= 5 ORDER BY ENAME; 

-- ������ ���̺��� ���������� ���� ������ �ο������ ��ȣ 

SELECT ROWNUM, A.* 
FROM ( 
    SELECT EMPNO, ENAME FROM EMP ORDER BY ENAME 
) A 
WHERE ROWNUM <= 5; 

 