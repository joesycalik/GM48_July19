origin_x = room_width / 2;
origin_y = room_height / 2;
ring_radius = spr_ring.sprite_height / 2;
movement_radius = room_width / 4; // Portrait
//movement_radius = room_height / 4; // Landscape
x = origin_x;
y = origin_y;
t = 0;

move_speed = 4;

dot_offset = 0;
spin_speed = 3;


dot_colors[0] = c_aqua;
dot_colors[1] = c_lime;
dot_colors[2] = c_red;

for (i = 0; i < 3; i++) {
	dots[i] = instance_create_depth(x, y, 0, o_dot);
	dots[i].color = dot_colors[i];
}

image_alpha = 0.25;

dir = 0;