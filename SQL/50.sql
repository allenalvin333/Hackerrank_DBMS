-- https://www.hackerrank.com/challenges/placements/problem

SELECT STUDENTS.NAME
FROM STUDENTS INNER JOIN FRIENDS ON STUDENTS.ID=FRIENDS.ID
    INNER JOIN PACKAGES PA ON STUDENTS.ID=PA.ID
    INNER JOIN PACKAGES PB ON FRIENDS.FRIEND_ID=PB.ID
WHERE PB.SALARY>PA.SALARY
ORDER BY PB.SALARY