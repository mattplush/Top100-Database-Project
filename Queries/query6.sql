SELECT 
	tr_title AS Title,
    person AS Artist,
    COUNT(*) AS Count
FROM 
	tracks, position, people
WHERE 
	tr_id = po_track_id AND 
    tr_artist_id = p_id AND
    po_pos <= 100 AND
    YEAR(po_date) = 1972
GROUP BY
    tr_title
ORDER BY 
	Count DESC
LIMIT 2;