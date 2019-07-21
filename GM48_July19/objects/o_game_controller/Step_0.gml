global.seconds_passed = delta_time/1000000;

if (global.game_over && !end_screen_spawned) {
	end_screen_spawned = true;
	instance_create_depth(0, 0, 0, o_end_screen);	
}
else if (!global.game_over) {
	global.player_score += 1;
}

if (global.player_score == target_score) {
	global.difficulty++;
	if (target_score < 10000) {
		target_score += 1250;	
	}
	else {
		target_score += 5000;
	}
}

