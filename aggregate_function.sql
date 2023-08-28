# Analyze hacker news trends 

SELECT strftime ('%H', timestamp) AS 'Hour',
  ROUND(AVG(score), 1) AS 'Average Score',
  COUNT (*) AS 'Number of Stories'
FROM hacker_news
WHERE timestamp IS NOT NULL
GROUP BY 1 
ORDER BY 2 DESC;
