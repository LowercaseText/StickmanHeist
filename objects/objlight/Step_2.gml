size = 32;
gpu_set_blendmode(bm_subtract);
surface_set_target(global.light);
draw_ellipse_color(x - size/2 - view_xport[0], y - size/2 - view_yport[0],x + size/2 - view_xport[0],y + size/2 - view_yport[0], c_yellow, c_black, false  )
//draw_sprite_ext(sprFlashlightlight, 0, x,y,1,1,0,c_white,0)
surface_reset_target();
gpu_set_blendmode(bm_normal)