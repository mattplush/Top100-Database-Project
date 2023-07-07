SELECT 
  DISTINCT tr_title AS Title,
  person AS Artist
FROM 
	tracks, people, position
WHERE 
	tr_artist_id = p_id AND 
    tr_id = po_track_id AND 
    po_date >= '1970-01-01' AND 
    po_date < '1971-01-01' AND 
    po_pos = 10
ORDER BY 
	Title