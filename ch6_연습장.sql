-- �ǽ� 6-1 
select ename, upper(ename), lower(ename), initcap(ename) from emp;


-- �ǽ� 6-2
select ename from emp
where upper(ename) = upper('scott');

-- �ǽ� 6-3
select ename from emp
where ename like upper('%scott%');
select ename from emp;

-- �ǽ� 6-4
select ename, length(ename) from emp;

-- �ǽ� 6-5
select ename, length(ename) from emp
where length(ename) > 5;

-- �ǽ� 6-6
-- dual : ���� ���̺�, ���� ������ Ȯ�ν� �����. ��¥, ��� ��, 
--  ������ : 1����, 1����Ʈ, �ѱ� : 1����, 2 ~ 3 ����Ʈ Ȯ��. 
select length('�̻��'),lengthb('�̻��'),length('abc'),lengthb('abc') from dual;

-- �ǽ� 6-7
-- substr , ���ڿ����� Ư�� ������ �ڸ��� �� ��, ���. 
--substr(���� �÷�, ������ġ(1���ͽ���), ���̸�ŭ ����)
--substr(���� �÷�, ������ġ(1���ͽ���)): ���� ��ġ ���� ������ ���. 
select job , substr(job,1,2), substr(job,6) from emp;

-- �ǽ� 6-8
select job , substr(job,-length(job)), substr(job,-length(job),3) from emp;

-- �ǽ� 6-9
SELECT INSTR('HELLO HI LOTTO','L') AS INSTR_1,
INSTR('HELLO HI LOTTO','L',5) AS INSTR_2,
INSTR('HELLO, ORACLE!','L',2,2) AS INSTR_3,
INSTR('HELLO HI LOTTO','O',2,2) AS INSTR_4
FROM DUAL;

-- �ǽ� 6-10
select * from emp
where instr(ename,'S') > 0;

-- �ǽ� 6-11
select * from emp
where ename like '%S%';

-- �ǽ� 6-12
select '010-1234-5678' as ������_���ڿ�,
 replace('010-1234-5678','-',' ') as ����1���ڿ�,
 replace('010-1234-5678','-') as ����2���ڿ�
 from dual;

-- �ǽ� 6-13
select 'Oracle', lpad('Oracle',10,'#') as LPAD_ex1, 
rpad('Oracle',10,'#') as RPAD_ex2,
lpad('Oracle',10) as LPAD_ex3,
rpad('Oracle',10) as RPAD_ex4
from dual;

-- �ǽ� 6-14
select rpad('971225-1',14,'*') as rpad_ex1,
rpad('lsy1111',20,'*') as rpad_ex2
from dual;

-- �ǽ� 6-15
select concat(ename, empno) as concat_ex1 from emp;

-- �ǽ� 6-16
select ename || empno as concat_ex1 from emp;


-- �ǽ� 6-17
select '[' || trim('  Oracle  ') || ']' as Trim,
'[' || trim(leading from '  Oracle  ') || ']' as Trim_leading_ex,
'[' || trim(trailing from '  Oracle  ') || ']' as Trim_trailing_ex2,
'[' || trim(both from '  Oracle  ') || ']' as Trim_both_ex3
from dual;

-- �ǽ� 6-18 
SELECT '[' || TRIM(' _Ora  cle_ ') || ']' AS TRIM, 
       '[' || LTRIM(' _Oracle_ ') || ']' AS LTRIM, 
       '[' || LTRIM('<_Oracle_>', '_<') || ']' AS LTRIM_2, 
       '[' || RTRIM(' _Oracle_ ') || ']' AS RTRIM, 
       '[' || RTRIM('<_Oracle_>', '>_') || ']' AS RTRIM_2 
  FROM DUAL; 
  
  -- �ǽ� 6-19 
SELECT ROUND(1234.5678) AS ROUND, 
       ROUND(1234.5678, 0) AS ROUND_0, 
       ROUND(1234.5678, 1) AS ROUND_1, 
       ROUND(1234.5678, 2) AS ROUND_2, 
       ROUND(1234.5678, -1) AS ROUND_MINUS1, 
       ROUND(1234.5678, -2) AS ROUND_MINUS2 
  FROM DUAL; 
  
  -- �ǽ� 6-20 
SELECT TRUNC(1234.5678) AS TRUNC, 
       TRUNC(1234.5678, 0) AS TRUNC_0, 
       TRUNC(1234.5678, 1) AS TRUNC_1, 
       TRUNC(1234.5678, 2) AS TRUNC_2, 
       TRUNC(1234.5678, -1) AS TRUNC_MINUS1, 
       TRUNC(1234.5678, -2) AS TRUNC_MINUS2 
  FROM DUAL; 

-- �ǽ� 6-21 
SELECT CEIL(3.14), -- 3 ---- 4 ���� �߿���,ū�� 
       FLOOR(3.14), -- 3 ---- 4 ���� �߿���,������
       CEIL(-3.14), -- -4 -- -3.14-- -3 ���� �߿���,ū��
       FLOOR(-3.14) -- -4 -- -3.14-- -3 ���� �߿���,������
  FROM DUAL; 

-- �ǽ� 6-22 
SELECT MOD(15, 6), 
       MOD(10, 2), 
       MOD(11, 2) 
  FROM DUAL; 
  
  -- �ǽ� 6-23 
SELECT SYSDATE AS NOW, 
       SYSDATE-1 AS YESTERDAY, 
       SYSDATE+1 AS TOMORROW 
  FROM DUAL; 
  
-- �ǽ� 6-24 
SELECT SYSDATE, 
       ADD_MONTHS(SYSDATE, 3) 
  FROM DUAL; 
  
-- �ǽ� 6-25 
SELECT EMPNO, ENAME, HIREDATE, 
       ADD_MONTHS(HIREDATE, 120) AS WORK10YEAR 
  FROM EMP;   
  
-- �ǽ� 6-26 
SELECT EMPNO, ENAME, HIREDATE, SYSDATE ,ADD_MONTHS(HIREDATE,600)
  FROM EMP 
 WHERE ADD_MONTHS(HIREDATE,500) > SYSDATE; 
  
select *  from emp;

SELECT EMPNO, ENAME, HIREDATE, SYSDATE ,ADD_MONTHS(HIREDATE,600)
  FROM EMP 
 WHERE ADD_MONTHS(HIREDATE,500) > SYSDATE;   
 
-- �ǽ� 6-27 
SELECT EMPNO, ENAME, HIREDATE, SYSDATE, 
       MONTHS_BETWEEN(HIREDATE, SYSDATE) AS MONTHS1, 
       MONTHS_BETWEEN(SYSDATE, HIREDATE) AS MONTHS2, 
       TRUNC(MONTHS_BETWEEN(SYSDATE, HIREDATE))/12 AS MONTHS3 
FROM EMP;  
 
 -- �ǽ� 6-28 
SELECT SYSDATE, 
       NEXT_DAY(SYSDATE, '������'), 
       LAST_DAY(SYSDATE) 
  FROM DUAL; 
  
  -- �ǽ� 6-30 
-- ���� ����� ���� ����. 
SELECT SYSDATE, 
       TRUNC(SYSDATE, 'CC') AS FORMAT_CC, 
       TRUNC(SYSDATE, 'YYYY') AS FORMAT_YYYY, 
       TRUNC(SYSDATE, 'Q') AS FORMAT_Q, 
       TRUNC(SYSDATE, 'DDD') AS FORMAT_DDD, 
       TRUNC(SYSDATE, 'HH') AS FORMAT_HH 
  FROM DUAL; 
  
-- �ǽ� 6-31 
SELECT EMPNO, ENAME, EMPNO + '500' 
  FROM EMP 
 WHERE ENAME = 'SCOTT';   
 
 -- �ǽ� 6-33 
SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD HH24:MI:SS') AS ���糯¥�ð� 
  FROM DUAL; 
  
  -- �ǽ� 6-34 

SELECT SYSDATE, 
       TO_CHAR(SYSDATE, 'MM') AS MM, 
       TO_CHAR(SYSDATE, 'MON') AS MON, 
       TO_CHAR(SYSDATE, 'MONTH') AS MONTH, 
       TO_CHAR(SYSDATE, 'DD') AS DD, 
       TO_CHAR(SYSDATE, 'DY') AS DY, 
       TO_CHAR(SYSDATE, 'DAY') AS DAY 
  FROM DUAL; 
  
  -- �ǽ� 6-35 

SELECT SYSDATE, 
       TO_CHAR(SYSDATE, 'MM') AS MM, 
       TO_CHAR(SYSDATE, 'MON', 'NLS_DATE_LANGUAGE = KOREAN' ) AS MON_KOR, 
       TO_CHAR(SYSDATE, 'MON', 'NLS_DATE_LANGUAGE = JAPANESE') AS MON_JPN, 
       TO_CHAR(SYSDATE, 'MON', 'NLS_DATE_LANGUAGE = ENGLISH' ) AS MON_ENG, 
       TO_CHAR(SYSDATE, 'MONTH', 'NLS_DATE_LANGUAGE = KOREAN' ) AS MONTH_KOR, 
       TO_CHAR(SYSDATE, 'MONTH', 'NLS_DATE_LANGUAGE = JAPANESE') AS MONTH_JPN, 
       TO_CHAR(SYSDATE, 'MONTH', 'NLS_DATE_LANGUAGE = ENGLISH' ) AS MONTH_ENG 
  FROM DUAL; 

 

-- �ǽ� 6-36 

SELECT SYSDATE, 
       TO_CHAR(SYSDATE, 'MM') AS MM, 
       TO_CHAR(SYSDATE, 'DD') AS DD, 
       TO_CHAR(SYSDATE, 'DY', 'NLS_DATE_LANGUAGE = KOREAN' ) AS DY_KOR, 
       TO_CHAR(SYSDATE, 'DY', 'NLS_DATE_LANGUAGE = JAPANESE') AS DY_JPN, 
       TO_CHAR(SYSDATE, 'DY', 'NLS_DATE_LANGUAGE = ENGLISH' ) AS DY_ENG, 
       TO_CHAR(SYSDATE, 'DAY', 'NLS_DATE_LANGUAGE = KOREAN' ) AS DAY_KOR, 
       TO_CHAR(SYSDATE, 'DAY', 'NLS_DATE_LANGUAGE = JAPANESE') AS DAY_JPN, 
       TO_CHAR(SYSDATE, 'DAY', 'NLS_DATE_LANGUAGE = ENGLISH' ) AS DAY_ENG 
  FROM DUAL; 

 

-- �ǽ� 6-37 

SELECT SYSDATE, 
       TO_CHAR(SYSDATE, 'HH24:MI:SS') AS HH24MISS, 
       TO_CHAR(SYSDATE, 'HH12:MI:SS AM') AS HHMISS_AM, 
       TO_CHAR(SYSDATE, 'HH:MI:SS P.M.') AS HHMISS_PM 
  FROM DUAL; 
  
  - �ǽ� 6-38 

SELECT SAL, 

       TO_CHAR(SAL, '$999,999') AS SAL_$, 

       TO_CHAR(SAL, 'L999,999') AS SAL_L, 

       TO_CHAR(SAL, '999,999.00') AS SAL_1, 

       TO_CHAR(SAL, '000,999,999.00') AS SAL_2, 

       TO_CHAR(SAL, '000999999.99') AS SAL_3, 

       TO_CHAR(SAL, '999,999,00') AS SAL_4 

  FROM EMP; 

 

-- �ǽ� 6-39 

SELECT 1300 - '1500', 

      '1300' + 1500 

 FROM DUAL; 

 

-- �ǽ� 6-40 

SELECT '1,300' - '1,500' 

  FROM DUAL; 

 

-- �ǽ� 6-41 

SELECT TO_NUMBER('1,300', '999,999') - TO_NUMBER('1,500', '999,999') 

  FROM DUAL; 
  
 