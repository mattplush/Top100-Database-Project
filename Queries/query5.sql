SELECT 
	tr_title AS Title,
    person AS Artist,
    tr_peakpos AS HighestPosition
FROM 
	tracks, wrote, people
WHERE 
	tr_id = wr_track_id AND wr_p_id = p_id AND tr_artist_id = p_id AND tr_year = '1973' AND tr_peakpos <= 20
ORDER BY 
	Artist;