var interface_width = display_get_gui_width();
var interface_height = display_get_gui_height();

draw_set_alpha(alpha);
draw_rectangle_color(0, 0, interface_width, interface_height, 
	c_gray, c_gray, c_gray, c_gray, false);

scr_font_set(fnt_large, fa_center, fa_center);
draw_text_color(interface_width * 0.5, 100, 
	"Triple Threat", 
	c_maroon, c_maroon, c_maroon, c_maroon, alpha);


scr_font_set(fnt_reg, fa_center, fa_bottom);
draw_text_color(interface_width * 0.5, interface_height * 0.5 - 10, 
	"Press SPACE to begin",
	c_black, c_black, c_black, c_black, alpha);
	
scr_font_set(fnt_reg, fa_center, fa_top);
draw_text_color(interface_width * 0.5, interface_height * 0.5 + 10, 
	"Press 'C' for How To Play",
	c_black, c_black, c_black, c_black, alpha);
	
scr_font_set(fnt_reg, fa_center, fa_center);
draw_text_color(interface_width * 0.5, interface_height - 100, 
	"A Game Made in 48 Hours for\nJuly 2019 GM48\nCredits: Joe Sycalik", 
	c_maroon, c_maroon, c_maroon, c_maroon, alpha);