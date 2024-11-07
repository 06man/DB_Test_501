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
