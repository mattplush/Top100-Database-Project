SELECT 
	tr_title AS Title,
    person AS Artist,
    po_pos AS Position
FROM 
	tracks, position, people
WHERE 
	tr_id = po_track_id AND 
    tr_artist_id = p_id AND 
    po_pos <= 40 AND
    po_date = '1964-04-04'
ORDER BY 
	Position;