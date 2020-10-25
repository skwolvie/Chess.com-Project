-- Testing imported data


-- PLAYERS
SELECT USERNAME
    FROM PLAYERS;
    
SELECT COUNTRY, COUNT(COUNTRY)
    FROM PLAYERS
    GROUP BY COUNTRY
    ORDER BY COUNT(COUNTRY) DESC;
    
SELECT USERNAME, BLITZ, BULLET, RAPID, ROUND((BLITZ+BULLET+RAPID/3), 3) as Average
    FROM PLAYERS;
    
 SELECT USERNAME, BLITZ, BULLET, RAPID, ROUND((BLITZ+BULLET+RAPID/3), 3) as Average
    FROM PLAYERS
    WHERE (BLITZ+BULLET+RAPID/3) > 1000;
    
-- MATCHES

-- LEADERBOARDS

-- JOINS?