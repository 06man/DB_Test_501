-- �ǽ� 5-1 
select * from emp;

-- �ǽ� 5-2
select * from emp where deptno = 30;
select * from emp where JOB = 'CLERK';

-- �ǽ� 5-3
select * from emp 
where 
deptno = 30 
and 
job = 'SALESMAN'
;

-- �ǽ� 5-5
select * from emp 
where 
deptno = 30 
or 
job = 'CLERK'
;

-- �ǽ� 5-5
select * from emp 
where SAL * 12 = 36000;

-- �ǽ� 5-6
select * from emp 
where SAL > 3000;

-- �ǽ� 5-7, 
-- �̸��� ù���ڸ� f�� �������� ������ ����
select * from emp 
where ENAME <'F';

-- �ǽ� 5-8, 
-- � ��
select * from emp 
where sal != 3000;

select * from emp 
where sal <> 3000;

select * from emp 
where sal ^= 3000;

select * from emp 
where not sal = 3000;

-- �ǽ� 5-13, 
-- or 
select * from emp 
where job = 'MANAGER' 
OR job = 'SALESMAN' 
OR job = 'CLERK';

-- �ǽ� 5-14, 
-- IN �����ڷ� ��ü�ϱ�.  
select * from emp 
where job IN ('MANAGER','SALESMAN','CLERK');

-- �ǽ� 5-16, 
-- not IN �����ڷ� ��ü�ϱ�.  
select * from emp 
where job not IN ('MANAGER','SALESMAN','CLERK');

-- �ǽ� 5-17, 
-- between a and b �����ڷ� ��ü�ϱ�.  
select * from emp 
where sal >= 2000 and sal <= 3000;

select * from emp 
where sal between 2000 and 3000;

-- �ݴ� ��� 
select * from emp 
where sal not between 2000 and 3000;
