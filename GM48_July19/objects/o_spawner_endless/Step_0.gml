randomize();

switch (global.difficulty) {
	case 0: // Spawn only 1-speed dot
		spawner_top_range = 300;
		break;
		
	case 1: // Spawn 1 or 2 speed dot
		spawner_top_range = 350;
		break;
		
	case 2: // Spawn only 1 speed box
		spawner_top_range = 200;
		break;
		
	case 3: // Spawn 1 or 2 speed box
		spawner_top_range = 250;
		break;
		
	case 4: // Spawn 1 or 2 speed dot or box
		spawner_top_range = 250;
		break;
		
	case 5: // Spawn 1 speed rotating box
		spawner_top_range = 150;
		break;
		
	case 6: // Spawn 1 or 2 speed rotating box
		spawner_top_range = 200;
		break;
		
	case 7: // Spawn 1 or 2 speed dot, box, or rotating box
		spawner_top_range = 200;
		break;
}

var val = irandom_range(0, spawner_top_range);
var spawn = false;

for (i = 0; i < valid_value_length; i++) {
	if (val == valid_values[0]) {
		spawn = true;
	}
}

time_since_last_spawn += global.seconds_passed;
if (time_since_last_spawn > force_spawn_time) {
	spawn = true;	
}

// Spawn only 1-speed dot
// Spawn 1 or 2 speed dot
// Spawn only 1 speed box
// Spawn 1 or 2 speed box
// Spawn 1 or 2 speed dot or box
// Spawn 1 speed rotating box
// Spawn 1 or 2 speed rotating box
// Spawn 1 or 2 speed dot, box, or rotating box

if (spawn) {
	time_since_last_spawn = 0;
	switch (global.difficulty) {
		case 0:
			// Spawn only 1-speed dot
			scr_spawn_obstacle(o_obstacle_dot, 1, false);
			break;
			
		case 1:
			// Spawn 1 or 2 speed dot
			var rand = irandom_range(0, 1);
	
			if (rand == 0) {
				scr_spawn_obstacle(o_obstacle_dot, 1, false);	
			}
			else if (rand == 1) {
				scr_spawn_obstacle(o_obstacle_dot, 2, false);
			}
			break;
			
		case 2:
			// Spawn only 1 speed box
			scr_spawn_obstacle(o_obstacle_box, 1, false);
			break;
			
		case 3:
			// Spawn 1 or 2 speed box
			var rand = irandom_range(0, 1);
	
			if (rand == 0) {
				scr_spawn_obstacle(o_obstacle_box, 1, false);	
			}
			else if (rand == 1) {
				scr_spawn_obstacle(o_obstacle_box, 2, false);
			}
			break;
			
		case 4:
			// Spawn 1 or 2 speed dot or box
			var rand = irandom_range(0, 3);
	
			if (rand == 0) {
				scr_spawn_obstacle(o_obstacle_dot, 1, false);	
			}
			else if (rand == 1) {
				scr_spawn_obstacle(o_obstacle_dot, 2, false);
			}
			else if (rand == 2) { 
				scr_spawn_obstacle(o_obstacle_box, 1, false);
			}
			else if (rand == 3) { 
				scr_spawn_obstacle(o_obstacle_box, 2, false);
			}
			break;
			
		case 5:
			// Spawn 1 speed rotating box
			scr_spawn_obstacle(o_obstacle_box, 1, true);
			break;
			
		case 6:
			// Spawn 1 or 2 speed rotating box
			var rand = irandom_range(0, 1);
	
			if (rand == 0) {
				scr_spawn_obstacle(o_obstacle_dot, 1, false);	
			}
			else if (rand == 1) {
				scr_spawn_obstacle(o_obstacle_dot, 2, false);
			}
			break;
			
		case 7:
		default:
			// Spawn 1 or 2 speed dot, box, or rotating box
			var rand = irandom_range(0, 5);
	
			if (rand == 0) {
				scr_spawn_obstacle(o_obstacle_dot, 1, false);	
			}
			else if (rand == 1) {
				scr_spawn_obstacle(o_obstacle_dot, 2, false);
			}
			else if (rand == 2) { 
				scr_spawn_obstacle(o_obstacle_box, 1, false);
			}
			else if (rand == 3) {
				scr_spawn_obstacle(o_obstacle_box, 2, false);
			}
			else if (rand == 4) { 
				scr_spawn_obstacle(o_obstacle_box, 1, true);
			}
			else if (rand == 5) {
				scr_spawn_obstacle(o_obstacle_box, 2, true);
			}
			break;
	}
}

if (global.difficulty > previous_difficulty) {
	valid_values[valid_value_length] = valid_value_length;
	valid_value_length++;
	previous_difficulty = global.difficulty;
}