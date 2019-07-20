if (global.game_over && !end_screen_spawned) {
	end_screen_spawned = true;
	instance_create_depth(0, 0, 0, o_end_screen);	
}
else if (!global.game_over) {
	global.player_score += 1;
}

