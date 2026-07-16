ALTER TABLE player_match_performance
ADD CONSTRAINT fk_player
FOREIGN KEY (player_id)
REFERENCES players(player_id);

ALTER TABLE player_match_performance
ADD CONSTRAINT fk_match
FOREIGN KEY (match_id)
REFERENCES matches(match_id);