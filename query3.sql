SELECT 
    UTS.COUNTRY,
    ROUND(AVG(UTS.TEMPO)) AS AVERAGE_TEMPO,
    ROUND(AVG(EXTRACT(YEAR FROM UTS.ALBUM_RELEASE_DATE)) - 0.5) AS AVERAGE_YEAR,
COUNT(DISTINCT UTS.NAME)
FROM 
    GROUP10.UNIVERSAL_TOP_SPOTIFY_SONGS UTS, GROUP10.SPOTIFY_2023
WHERE 
     UTS.NAME IN (SELECT TRACK_NAME FROM GROUP10.SPOTIFY_2023)
GROUP BY 
    UTS.COUNTRY;
