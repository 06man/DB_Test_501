desc emp;
desc dept;
desc salgrade;

-- �ǽ� 4-4 
-- * , ��� �÷�. 
select * from emp;
select * from dept;
select ename,mgr,job from emp;

-- distinct
select distinct deptno from emp;

-- 4-7 distinct, �ߺ�����
select distinct job,deptno from emp;
select job from emp;
select distinct job from emp;

-- 4-8 , all ��� 
select all job,deptno from emp;
select job,deptno from emp;


-- 4-9, �� �÷��� alias , ��Ī�� �����ؼ�, �����ִ� �÷� �� 
-- �����ϱ�. 
select ename, sal, sal*12+comm, 
    comm from emp;
    
-- 4-10 alias , ��Ī ����, ���� ���� ���� �̸��� ���ϱ�.
-- �÷� as �÷������� ����� ������. 
select ename, sal, sal*12+comm as ����, 
    comm from emp;
    
    
-- order by �⺻������ ��������,asc 
-- ��������, desc 
-- 4-12
select * from emp order by sal;
select * from emp order by sal desc;
-- �ð��� Ŭ���� �ֽ���. ���� �ֱٿ� �Ի��� ����. 
select * from emp order by hiredate desc;
-- �ð��� �������� ������������.
select * from emp order by hiredate;