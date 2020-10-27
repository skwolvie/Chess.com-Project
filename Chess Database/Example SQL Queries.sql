-- Testing imported data


-- PLAYERS
SELECT USERNAME, DATE_JOINED, PROFILE_VIEWS, FOLLOWERS, POINTS
    FROM PLAYERS
    ORDER BY FOLLOWERS DESC;
    
SELECT COUNTRY, COUNT(COUNTRY)
    FROM PLAYERS
    GROUP BY COUNTRY
    ORDER BY COUNT(COUNTRY) DESC;

SELECT CITY, COUNT(CITY)
    FROM PLAYERS
    GROUP BY CITY
    ORDER BY COUNT(CITY) DESC;
    
SELECT USERNAME, BLITZ, BULLET, RAPID, ROUND((BLITZ+BULLET+RAPID/3), 3) as Average
    FROM PLAYERS;
    
 SELECT USERNAME, BLITZ, BULLET, RAPID, ROUND((BLITZ+BULLET+RAPID/3), 3) as Average
    FROM PLAYERS
    WHERE (BLITZ+BULLET+RAPID/3) > 1000;

SELECT TITLE, COUNT(TITLE)
    FROM PLAYERS
    GROUP BY TITLE
    ORDER BY COUNT(TITLE) DESC;
    
-- MATCHES

SELECT "FORMAT", COUNT("FORMAT")
    FROM MATCHES
    GROUP BY "FORMAT"
    ORDER BY COUNT("FORMAT") DESC;

SELECT "RESULT", COUNT("RESULT")
    FROM MATCHES
    GROUP BY "RESULT"
    ORDER BY COUNT("RESULT") DESC;

SELECT "FORMAT", "RESULT", COUNT("RESULT")
    FROM MATCHES
    GROUP BY "FORMAT", "RESULT"
    ORDER BY COUNT("RESULT") DESC;
    
-- LEADERBOARDS

-- JOINS?

-- accuracy + followers
-- userame + world rank