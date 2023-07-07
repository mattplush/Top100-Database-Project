SELECT 
	DISTINCT tr_title AS Title,
    person AS Artist,
    tr_datepeaked AS PeakDate, 
    po_pos AS Position
FROM 
	position, tracks, people
WHERE 
	po_track_id = tr_id AND 
    tr_artist_id = p_id AND 
    tr_year = "1969" AND 
    YEAR(po_date) = tr_year AND 
    po_pos = 1
ORDER BY 
	PeakDate ASC;
