-- �ǽ� 9-1 

SELECT SAL 
  FROM EMP 
 WHERE ENAME = 'JONES'; 

 

-- �ǽ� 9-2 
SELECT * 
  FROM EMP 
 WHERE SAL > 2975; 

 

-- �ǽ� 9-3 

SELECT * 
  FROM EMP 
 WHERE SAL > (SELECT SAL 
                FROM EMP 
               WHERE ENAME = 'JONES'); 

 

-- �ǽ� 9-4 

SELECT * 
  FROM EMP 
 WHERE HIREDATE > (SELECT HIREDATE 
                     FROM EMP 
                    WHERE ENAME = 'SCOTT'); 

 

-- �ǽ� 9-5 
SELECT E.EMPNO, E.ENAME, E.JOB, E.SAL, D.DEPTNO, D.DNAME, D.LOC 
  FROM EMP E, DEPT D 
 WHERE E.DEPTNO = D.DEPTNO 
   AND E.DEPTNO = 20 
   AND E.SAL > (SELECT AVG(SAL) 
                  FROM EMP); 
SELECT AVG(SAL) 
                  FROM EMP;
 

-- �ǽ� 9-6 

SELECT * 
  FROM EMP 
 WHERE DEPTNO IN (20, 30); 

-- �ǽ� 9-7 

SELECT * 
  FROM EMP 
 WHERE SAL IN (SELECT MAX(SAL) -- 2850,3000,5000
                 FROM EMP 
               GROUP BY DEPTNO); 
SELECT deptno,MAX(SAL) 
                 FROM EMP 
               GROUP BY DEPTNO;               


-- �ǽ� 9-8 
SELECT MAX(SAL) 
  FROM EMP 
GROUP BY DEPTNO; 

 

-- �ǽ� 9-9 

SELECT * 
  FROM EMP 
 WHERE SAL = ANY (SELECT MAX(SAL) -- 2850,3000,5000
                    FROM EMP 
                  GROUP BY DEPTNO); 

 

-- �ǽ� 9-10 

SELECT * 

  FROM EMP 

 WHERE SAL = SOME (SELECT MAX(SAL) 

                     FROM EMP 

                   GROUP BY DEPTNO); 

 

-- �ǽ� 9-11 
SELECT * 
  FROM EMP 
 WHERE SAL < ANY (SELECT SAL 
                    FROM EMP 
                   WHERE DEPTNO = 30) 
                  ORDER BY SAL, EMPNO;
SELECT SAL 
FROM EMP 
WHERE DEPTNO = 30;

-- �ǽ� 9-12 

SELECT SAL 

  FROM EMP 

 WHERE DEPTNO = 30; 

 

-- �ǽ� 9-13 

SELECT * 
  FROM EMP 
 WHERE SAL > ANY (SELECT SAL --�ּ� �޿� 950
                    FROM EMP 
                   WHERE DEPTNO = 30); 

 

-- �ǽ� 9-14 

SELECT * 
  FROM EMP 
 WHERE SAL < ALL (SELECT SAL 
                    FROM EMP 
                   WHERE DEPTNO = 30); 

 

-- �ǽ� 9-15 

SELECT * 
  FROM EMP 
 WHERE SAL >  (SELECT MAX(SAL) -- 950 �̻� 2850 ���� ����
                    FROM EMP 
                   WHERE DEPTNO = 30); 

 

-- �ǽ� 9-16 
SELECT * 
  FROM EMP 
 WHERE EXISTS (SELECT DNAME 
                 FROM DEPT 
                WHERE DEPTNO = 12); 
SELECT DNAME 
                 FROM DEPT 
                WHERE DEPTNO = 12;
 

-- �ǽ� 9-17 

SELECT * 

  FROM EMP 

 WHERE EXISTS (SELECT DNAME 

                 FROM DEPT 

                WHERE DEPTNO = 50); 

 

-- �ǽ� 9-18 

SELECT * 
  FROM EMP 
 WHERE (DEPTNO, SAL) IN (SELECT DEPTNO, MAX(SAL) 
                           FROM EMP 
                         GROUP BY DEPTNO); 
SELECT DEPTNO, MAX(SAL) 
                           FROM EMP 
                         GROUP BY DEPTNO;                         

 

-- �ǽ� 9-19 

SELECT E10.EMPNO, E10.ENAME, E10.DEPTNO, D.DNAME, D.LOC 
  FROM (SELECT * FROM EMP WHERE DEPTNO = 10) E10, 
       (SELECT * FROM DEPT) D 
 WHERE E10.DEPTNO = D.DEPTNO; 

 

-- �ǽ� 9-20 

WITH 
E10 AS (SELECT * FROM EMP WHERE DEPTNO = 10), 
D AS (SELECT * FROM DEPT) 
SELECT E10.EMPNO, E10.ENAME, E10.DEPTNO, D.DNAME, D.LOC 
  FROM E10, D 
 WHERE E10.DEPTNO = D.DEPTNO; 

 

-- �ǽ� 9-21 
select * from SALGRADE;
SELECT EMPNO, ENAME, JOB, SAL, 
       (SELECT GRADE  
          FROM SALGRADE 
         WHERE E.SAL BETWEEN LOSAL AND HISAL) AS SALGRADE, 
       DEPTNO, 
      (SELECT DNAME 
         FROM DEPT 
        WHERE E.DEPTNO = DEPT.DEPTNO) AS DNAME 
FROM EMP E; 

 