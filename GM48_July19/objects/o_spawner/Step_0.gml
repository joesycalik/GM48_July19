randomize();

var spawn = irandom_range(0, 100) == 50 ? true : false;

if (spawn) {
	var xVal = irandom_range(0, room_width);
	var yVal = irandom_range(0, 1);
	if (yVal == 1) yVal = room_height;
	
	oRing = o_ring;
	
	obstacle = instance_create_depth(xVal, yVal, 0, o_obstacle);
	
	obstacle.direction = point_direction(xVal, yVal, oRing.x, oRing.y);
}