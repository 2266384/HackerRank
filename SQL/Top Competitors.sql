SELECT
    a.[hacker_id]
    ,a.[name]
FROM [Submissions] AS b
LEFT OUTER JOIN [Challenges] AS c ON b.[challenge_id] = c.[challenge_id]
LEFT OUTER JOIN [Difficulty] AS d on c.[difficulty_level] = d.[difficulty_level]
LEFT OUTER JOIN [Hackers] AS a ON b.[hacker_id] = a .[hacker_id]
WHERE b.[score] = d.[score]
GROUP BY a.[hacker_id], a.[name] HAVING COUNT(a.[hacker_id]) > 1
ORDER BY COUNT(a.[hacker_id]) DESC, a.[hacker_id] ASC
