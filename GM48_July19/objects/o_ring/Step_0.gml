x = origin_x + radius * cos(degtorad(t));
y = origin_y - radius * sin(degtorad(t));
t++;

if (keyboard_check(ord("A"))) {
	dot_offset += 1 * spin_speed;
}

if (keyboard_check(ord("D"))) {
	dot_offset -= 1 * spin_speed;
}

if (dot_offset > 359 || dot_offset < -359) {
	dot_offset = 0;
}

for (i = 0; i < 3; i++) {
	var xPoint = x + lengthdir_x(ring_radius, dot_offset + ((i) * (360 / 3)));
	var yPoint = y + lengthdir_y(ring_radius, dot_offset + ((i) * (360 / 3)));
	dots[i].x = xPoint;
	dots[i].y = yPoint;
	//draw_sprite(spr_dot, 0, xPoint, yPoint);	
}