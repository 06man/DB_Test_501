-- �ǽ� 5-1 
select * from emp;

-- �ǽ� 5-2
select * from emp where deptno = 30;
select * from emp where JOB = 'CLERK';

-- �ǽ� 5-3
select ename, sal , mgr from emp 
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

-- �ǽ� 5-20
-- %, 0���� �̻�
-- S �ν����ϴ� ��� ���ڿ� �˻�. 
select * from emp 
where ename like 'S%';

-- �ǽ� 5-21
-- _ , ����ٴ� �ϳ��� ���ڸ� �ǹ�. 
select * from emp 
where ename like '__L%';


-- �ǽ� 5-22
select * from emp 
where ename like '%AM%';


-- �ǽ� 5-23
select * from emp 
where ename NOT like '%AM%';

-- �ǽ� 5-24
select * from emp;

-- �ǽ� 5-25
select * from emp
WHERE COMM = null;

-- �ǽ� 5-26
-- is null �� Ȯ�� �ٽ� �غ���. 
select * from emp
WHERE comm is null;

select * from emp
WHERE comm is not null;

-- �ǽ� 5-27
-- is not null �� Ȯ�� �ٽ� �غ���.
-- mgr , �ش� ����� ���ӻ���� ��� ��ȣ �ǹ�. 
select * from emp
WHERE mgr is not null;

-- �ǽ� 5-33, �� ���� �ݵ�� ��. 
select empno, ename, sal, deptno from emp where deptno =10
union
select sal, job, deptno, sal from emp where deptno =10;

