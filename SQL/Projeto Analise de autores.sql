USE pubs

;WITH AUTHOR_REVENUE AS 
	(
	SELECT
		a.au_id,
		a.au_fname + ' ' + au_fname as Name,
		SUM (s.qty * t.price) TotalRevenue
	FROM authors a
	INNER JOIN titleauthor as TA ON TA.au_id = a.au_id
	INNER JOIN titles as T ON T.title_id = TA.title_id
	INNER JOIN sales as S ON S.title_id = T.title_id
	GROUP BY A.au_id, A.au_fname, a.au_lname
	)

SELECT TOP 5
	Name,
	TotalRevenue
FROM AUTHOR_REVENUE
ORDER BY TotalRevenue DESC
