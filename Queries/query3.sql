SELECT
	DISTINCT person AS Composer,
    tr_title AS Title,
    tr_year AS Year,
	po_pos AS HighestPosition
FROM 
	position, tracks, wrote, people
WHERE 
	po_track_id = tr_id AND 
    tr_id = wr_track_id AND 
    wr_p_id = p_id AND 
    tr_year = '1972' AND  
    po_pos = 1
ORDER BY 
	Composer