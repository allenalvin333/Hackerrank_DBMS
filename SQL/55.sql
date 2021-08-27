-- https://www.hackerrank.com/challenges/harry-potter-and-wands/problem

SELECT W1.ID, P1.AGE, W1.COINS_NEEDED, W1.POWER FROM WANDS AS W1
INNER JOIN WANDS_PROPERTY AS P1 ON W1.CODE=P1.CODE WHERE P1.IS_EVIL=0
AND W1.COINS_NEEDED = 
    (SELECT MIN(COINS_NEEDED) FROM WANDS AS W2
    INNER JOIN WANDS_PROPERTY AS P2 ON W2.CODE=P2.CODE
    WHERE W2.POWER=W1.POWER AND P2.AGE=P1.AGE)
ORDER BY W1.POWER DESC, P1.AGE DESC;