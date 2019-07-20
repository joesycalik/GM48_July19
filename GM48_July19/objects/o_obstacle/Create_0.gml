xIncrement = 0;
yIncrement = 0;
speed = 1;

var xVal = irandom_range(0, room_width);
var yVal = irandom_range(0, 1);
if (yVal == 1) yVal = room_height;

x = xVal;
y = yVal;
	
oRing = o_ring;
	
//obstacle = instance_create_depth(xVal, yVal, 0, o_obstacle);
	
direction = point_direction(xVal, yVal, oRing.x, oRing.y);