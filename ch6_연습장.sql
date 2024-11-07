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


