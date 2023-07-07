SELECT DISTINCT A.tr_title AS Title, 
                P.person AS Artist, 
                MAX(po_pos) AS HighestPosition, 
                MAX(po_date) AS PeakDate
FROM 
	tracks A, tracks B, position, people P
WHERE
	A.tr_title = B.tr_title AND 
    A.tr_artist_id <> B.tr_artist_id AND 
    A.tr_year = '1969' AND 
    B.tr_year = '1969' AND 
    A.tr_id = position.po_track_id AND
    B.tr_artist_id = P.p_id
GROUP BY 
	A.tr_title, P.person
ORDER BY 
	Title, HighestPosition;