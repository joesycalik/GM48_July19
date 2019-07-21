/// @arg object
/// @arg object_speed
/// @arg obj_spinning

var obj = argument0;
var obj_speed = argument1;
var obj_spinning = argument2;

// point[0] = edge (0 - top | 1 - right | 2 - bottom | 3 - left)
// point[1] = xVal
// point[2] = yVal
var point = scr_get_edge_point();
while (!place_empty(point[1], point[2])) {
	point = scr_get_edge_point();
}

obstacle = instance_create_depth(point[1], point[2], 0, obj);
switch (point[0]) {
	case 0:
		//obstacle.direction = point_direction(point[1], point[2], interface_center_x, point[2]);
		obstacle.direction = point_direction(point[1], point[2], point[1], interface_center_y);
		break;
		
	case 1:
		//obstacle.direction = point_direction(point[1], point[2], point[1], interface_center_y);
		obstacle.direction = point_direction(point[1], point[2], interface_center_x, point[2]);
		break;
		
	case 2:
		//obstacle.direction = point_direction(point[1], point[2], interface_center_x, point[2]);
		obstacle.direction = point_direction(point[1], point[2], point[1], interface_center_y);
		break;
		
	case 3:
		//obstacle.direction = point_direction(point[1], point[2], point[1], interface_center_y);
		obstacle.direction = point_direction(point[1], point[2], interface_center_x, point[2]);
		break;
}

obstacle.speed = obj_speed;
obstacle.spinning = obj_spinning;
if (obj_spinning) {
	obstacle.image_index = spr_obstacle_box_long;	
}

var rand = irandom_range(0, 1);
if (rand == 1) {
	obstacle.image_angle = 90;	
}