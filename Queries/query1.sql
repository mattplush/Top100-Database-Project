SELECT 
	po_pos AS Position,
	tr_title AS Title,
	person AS Artist,
	tr_dateentered AS DateEntered
FROM 
	position, tracks, people
WHERE 
	po_track_id = tr_id and tr_artist_id = p_id and po_date = '1968-09-07'
ORDER BY 
	Position