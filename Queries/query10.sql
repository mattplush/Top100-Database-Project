SELECT 
	DISTINCT tr_title AS Title,
    person AS Artist,
    tr_datepeaked AS PeakDate,
    tr_peakpos AS HighestPosition
FROM 
	tracks, position, people
WHERE 
	tr_id = po_track_id AND 
    tr_artist_id = p_id AND 
    tr_year = '1968' AND 
    tr_peakpos <= 10 AND 
    tr_peakpos > 5
ORDER BY 
	PeakDate;