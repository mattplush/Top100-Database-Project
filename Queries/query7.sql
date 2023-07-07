SELECT 
	DISTINCT tr_title AS Title,
    person AS Artist
FROM 
	tracks, position, people
WHERE 
	tr_id = po_track_id AND 
    tr_artist_id = p_id AND
    tr_year = '1969' AND
    MONTH(po_date) = 7 AND
    po_pos <= 10  
ORDER BY 
	Artist;