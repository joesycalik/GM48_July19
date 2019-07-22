x = origin_x + movement_radius * cos(degtorad(t));
y = origin_y - movement_radius * sin(degtorad(t));
//Ring movement speed
//if (global.difficulty < 3) {
//	t += 0.5;
//} else  if (global.difficulty < 5) {
//	t += 0.75;
//}
//else {
//	t += 1;	
//}
t += 0.5 + (0.05 * (global.difficulty / 2));

// Rotate dots left
if (keyboard_check(ord("A")) || keyboard_check(vk_left)) {
	dot_offset += 1 * spin_speed;
}

// Rotate dots right
if (keyboard_check(ord("D")) || keyboard_check(vk_right)) {
	dot_offset -= 1 * spin_speed;
}

if (dot_offset > 359 || dot_offset < -359) {
	dot_offset = 0;
}

// Set locations of the dots on the ring
for (i = 0; i < 3; i++) {
	var xPoint = x + lengthdir_x(ring_radius, dot_offset + ((i) * (360 / 3)));
	var yPoint = y + lengthdir_y(ring_radius, dot_offset + ((i) * (360 / 3)));
	dots[i].x = xPoint;
	dots[i].y = yPoint;
}