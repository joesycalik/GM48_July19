var edge = irandom_range(0, 3);
var edge_buffer = 100;

var xVal = 0;
var yVal = 0;

if (edge == 0) {
	//Top edge - x = 0 - room_width | y = 0
	xVal = irandom_range(edge_buffer, room_width - edge_buffer);
	yVal = 0;
}
else if (edge == 1) {
	//Right edge - x = room_width | y = 0 - room_height
	xVal = room_width
	yVal = irandom_range(edge_buffer, room_height - edge_buffer);
} 
else if (edge == 2) {
	//Bottom edge - x = 0 - room_width | y = room_height
	xVal = irandom_range(edge_buffer, room_width - edge_buffer);
	yVal = room_height;
} 
else if (edge == 3) {
	//Left edge - x = 0 | y = 0 - room_height
	xVal = 0;
	yVal = irandom_range(edge_buffer, room_height - edge_buffer);
}

point[0] = edge;
point[1] = xVal;
point[2] = yVal;

return point;