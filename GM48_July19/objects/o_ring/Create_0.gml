origin_x = room_width / 2;
origin_y = room_height / 2;
ring_radius = spr_ring.sprite_height / 2;
radius = 300;
x = origin_x;
y = origin_y;
t = 0;

dot_offset = 0;
spin_speed = 5;

for (i = 0; i < 3; i++) {
	dots[i] = instance_create_depth(x, y, 0, o_dot);
}

image_alpha = 0.25;