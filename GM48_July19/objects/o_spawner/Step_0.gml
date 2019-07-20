randomize();

var val = irandom_range(0, 250);
var spawn = false;

for (i = 0; i < valid_value_length; i++) {
	if (val == valid_values[0]) {
		spawn = true;
	}
}

var xVal = irandom_range(0, room_width);
var yVal = irandom_range(0, 1);
if (yVal == 1) yVal = room_height;

var interface_width = room_width / 2;
var interface_height = room_height / 2;
	
oRing = o_ring;

if (spawn && global.player_score < 1250) {	
	obstacle = instance_create_depth(xVal, yVal, 0, o_obstacle_dot);
	
	obstacle.direction = point_direction(xVal, yVal, interface_width, interface_height);
}
else if (spawn) {
	var rand = irandom_range(0, 1);
	
	if (rand == 0) {
		obstacle = instance_create_depth(xVal, yVal, 0, o_obstacle_dot);
	
		obstacle.direction = point_direction(xVal, yVal, interface_width, interface_height);	
	}
	else if (rand == 1) {
		obstacle = instance_create_depth(xVal, yVal, 0, o_obstacle_box);
	
		obstacle.direction = point_direction(xVal, yVal, interface_width, interface_height);
	}
}

if (difficulty == 0 && global.player_score < 2500) {
	difficulty++;
}
else if (difficulty == 1 && global.player_score < 5000) {
	difficulty++;	
}

if (difficulty > previous_difficulty) {
	valid_values[valid_value_length] = valid_value_length;
	valid_value_length++;
	
	previous_difficulty = difficulty;
}