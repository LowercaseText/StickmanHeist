col = make_colour_rgb(235, 235, 235);

surface_set_target(global.light);
draw_set_color(col);
draw_rectangle(0,0, window_get_width(), window_get_height(),false)
surface_reset_target();

