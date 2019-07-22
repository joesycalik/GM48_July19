var interface_width = display_get_gui_width();
var interface_height = display_get_gui_height();

draw_set_alpha(alpha);
draw_rectangle_color(0, 0, interface_width, interface_height, 
	c_gray, c_gray, c_gray, c_gray, false);

scr_font_set(fnt_reg, fa_center, fa_bottom);
draw_text_color(interface_width * 0.5, 100, 
	"HOW TO PLAY", 
	c_maroon, c_maroon, c_maroon, c_maroon, alpha);
	
scr_font_set(fnt_reg, fa_center, fa_top);
draw_text_color(interface_width * 0.5, 100, 
	"Avoid letting one of your colored dots touch an obstacle!", 
	c_black, c_black, c_black, c_black, alpha);


scr_font_set(fnt_reg, fa_center, fa_bottom);
draw_text_color(interface_width * 0.5, interface_height * 0.5, 
	"CONTROLS",
	c_maroon, c_maroon, c_maroon, c_maroon, alpha);

scr_font_set(fnt_reg, fa_center, fa_top);
draw_text_color(interface_width * 0.5, interface_height * 0.5, 
	"Rotate left using A or the Left Arrow Key\nRotate right using D or the Right Arrow Key",
	c_black, c_black, c_black, c_black, alpha);
	
scr_font_set(fnt_reg, fa_center, fa_center);
draw_text_color(interface_width * 0.5, interface_height - 50, 
	"Press 'C' to return\nto the main menu", 
	c_maroon, c_maroon, c_maroon, c_maroon, alpha);