SELECT
    people.person AS Artist,
    COUNT(*) NumberOnes
FROM
    tracks, position, people
WHERE
	tracks.tr_id = position.po_track_id AND
    tracks.tr_artist_id = people.p_id AND
	position.po_pos = 1
GROUP BY
    tracks.tr_artist_id
HAVING
    COUNT(*) >= 10
ORDER BY
  NumberOnes DESC;

