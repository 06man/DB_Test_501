-- �ǽ� 7-1
select sum(sal) from emp;


-- �ǽ� 7-2
-- ������, ������ �Լ��� ���ÿ� ���� ���� 
select ename,sum(sal) from emp;

-- �ǽ� 7-3
select sum(comm) from emp;

-- �ǽ� 7-4
-- distinct , all 
select sum(distinct sal), sum(all sal), sum(sal) from emp;

