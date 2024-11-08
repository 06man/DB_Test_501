--�������Լ� 

select LOWER('ABC'), UPPER('abc'), INITCAP('abc') 
from dual; 

-- CONCAT , ������ || �� ������
-- SUBSTR(���ڿ�,������ġ,���ڿ�����) 

select CONCAT('��ο�',' ����!'), 
SUBSTR('��ο����',2,2), LENGTH('��ο�'), 
INSTR('��ο�','��'), TRIM('   ����   '),
'    ����   '  
from dual; 

-- ������ �Լ� ���� 
SELECT deptno, ename, deptno 
FROM emp 
WHERE lower(ename) = 'higgins'; 

 

select ename, CONCAT('�������� ',job) as ������ 
from emp 
where SUBSTR(job,4,3) = 'REP'; 

-- ���ڿ� ġȯ �Լ� replace 

SELECT REPLACE('��ο����','����','����') FROM DUAL; 

-- ���� 1,2 

SELECT ename �̸�, LOWER(ename), UPPER(ename), INITCAP(ename) 
FROM emp; 

 

SELECT job ������, SUBSTR(job, 1,2) ����2�� FROM emp; 

 

-- ������ �Լ� round�� �ݿø�, trunc�� ���� 

select ROUND(15.193,1) �Ҽ�ù°, ROUND(15.193) ����, ROUND(15.193,2) �Ҽ���° 

from dual; 

select TRUNC(15.193,1) �Ҽ�ù°, TRUNC(15.193) ����, TRUNC(15.193,2) �Ҽ���° 

from dual; 

-- mod �� ���� ������ 

-- ¦����° ��ȣ�� ���� �������� ��� 

select empno ¦����ȣ, ename �̸� 

from emp 

where MOD(empno, 2) = 0 

order by 1; --ù��° ���� ���� 

-- ��¥�� �Լ� 

SELECT  ROUND(sysdate, 'DD') ��, 

        ROUND(sysdate, 'MM') ��,    

        ROUND(sysdate, 'YYYY') �⵵,  

        MONTHS_BETWEEN('2017/10/10', '2017/07/10') ������, 

        ADD_MONTHS('2017/07/10', 3) �ֵ�վ� 

FROM dual; 

-- ��¥ ���� 

SELECT SYSDATE-1 ����, SYSDATE ����, SYSDATE+1 ���� 

FROM DUAL; 

-- 90�� �μ� �������� �ٹ�����(���ñ���) 

SELECT ename, FLOOR(SYSDATE - hiredate) �ٹ��ϼ�  

FROM emp 

WHERE deptno = 30; 

 

-- ���� 1 

SELECT sysdate, hiredate, TRUNC(MONTHS_BETWEEN(SYSDATE,hiredate), 1) ������ 

FROM emp where deptno = 30; 

-- ���� 2 

SELECT hiredate, ADD_MONTHS(hiredate , 3) ���ϱ�3����, ADD_MONTHS(hiredate , -3) ����3���� 

FROM emp WHERE empno BETWEEN 7000 AND 8000; 

 

-- ��ȯ�� �Լ� 

-- TO_CHAR ���ڸ� ���Ŀ� �°� ���ڿ��� ǥ�� 

SELECT  

TO_CHAR(12345678,'999,999,999') �޸�, 

TO_CHAR(123.45678,'999,999,999.99') �Ҽ���, 

TO_CHAR(123.45678,'$999,999,999.99') �޷�, 

TO_CHAR(12345678,'L999,999,999') ��ȭ 

FROM DUAL; 

-- ��¥�� ���ڿ��� ��ȯ 

-- ��,��,��,��,��,�� ���� 

SELECT TO_CHAR(SYSDATE, 'YYYY MM DD HH24:MI:SS') ���糯¥�ð� 

FROM DUAL; 

 

-- ���� 1,2 

SELECT empno , TO_CHAR(hiredate, 'MM/YY') �Ի�� 

FROM emp WHERE deptno = 30; 

 

SELECT ename �̸� , TO_CHAR( sal, '$99,999.99') ���� 

FROM emp WHERE sal > 1000 ORDER BY sal DESC; 

 

-- ���ڿ��� DATE Ÿ������ ��ȯ�ϴ� ���� 

SELECT TO_DATE('2011-01-01','YYYY-MM-DD')  

FROM DUAL; 

-- ���ڸ� ���ڷ� ��ȯ�ϴ� ������ �����̴�. 

SELECT TO_NUMBER('012') + 10 

FROM DUAL;  

 

-- �ΰ� ���� �Լ� 

-- NVL�Լ��� null�� ��ſ� ���� �ٲپ��ش�. 

select ename, NVL(mgr, 0) �Ŵ��� 

from emp where ename = 'KING'; 

--NVL2�� �ش翭�� �ΰ��� �ƴҰ��� �ΰ��ΰ�� ��� ���� �ٲپ��ش�. 

select ename, NVL2(mgr, 1, 0) �Ŵ��� 

from emp where ename = 'KING'; 

-- ���� 1 

SELECT ename �̸�, sal ����, NVL(comm, 0) Ŀ�̼�,  

        sal*12 + sal*12*NVL(comm, 0) ���� 

FROM emp ORDER BY ���� DESC; 

-- ���� 2 

SELECT ename �̸�, sal ����, NVL(comm, 0) Ŀ�̼�,  

        sal*12 + sal*12*NVL(comm, 0) ����, 

        NVL2(comm, '����+Ŀ�̼�' ,'���޸�' ) ��������� 

FROM emp ORDER BY ���� DESC; 

 

-- decode �Լ� 

SELECT ename �̸�, job, sal, 

    DECODE(job, 'IT_PROG',  sal * 1.10, 

                   'ST_CLERK', sal * 1.15, 

                   'SA_REP',   sal * 1.20, 

                               sal)  "��������" 

FROM emp; 

--����� ���� 

SELECT ename �̸�, job ����, sal ����, 

    DECODE( TRUNC(sal/2000),  0,  0, 

                                 1,  0.09, 

                                 2,  0.2, 

                                 3,  0.3, 

                                 4,  0.4, 

                                 5,  0.42, 

                                 6,  0.44, 

                                     0.45 )  ���� 

FROM emp; 

-- CASE ���� �� ���� 

SELECT ename �̸�, job, sal, 

    CASE  WHEN sal<5000   THEN 'Low' 

          WHEN sal<10000  THEN 'Medium' 

          WHEN sal<20000  THEN 'Good' 

          ELSE                    'Excellent'   

    END "�޿� ���" 

FROM emp; 

 

-- CASE ����  

SELECT ename �̸�, job, sal, 

    CASE  WHEN sal>=3000   THEN '�����޿�' 

          WHEN sal>=2000   THEN '�����޿�' 

          ELSE                     '�����޿�'   

    END  �޿���� 

FROM emp WHERE job = 'MANAGER'; 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 