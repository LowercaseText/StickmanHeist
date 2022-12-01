


if (!incar)
{
	draw_self();//draw_sprite(sprStickmanIdle, 0, x, y);
	draw_sprite_ext(sprFace, face, x + 0.5 , y - 6.3, 0.3, 0.3, 0, c_white, 1);
	
	
	if (instance_nearest(x,y,objCharacterManager).chari == i && !global.switchingcharacter)
	{
		mousedirection = point_direction(x, y, mouse_x, mouse_y);
	}
	
	if (mousedirection < 90 || mousedirection > 270)
	{
		if (instance_nearest(x,y,objCharacterManager).chari == i)
			{
				mousedirection = point_direction(x + distancefromgun, y, mouse_x, mouse_y);
			}
		if (mousedirection <= 360 && mousedirection >= 270)
		{
			draw_sprite_ext(inventory[cis].sprite, 0, x+distancefromgun, y , gunscale, gunscale, mousedirection, c_white, 1);
			
			//draw_line_width_color(x - 1, y, x+distancefromgun , y  , 1,  c_white, c_white);
			//draw_line_width_color(x, y, x+distancefromgun , y , 1,  c_white, c_white);		
		}
		else 
		{
			draw_sprite_ext(inventory[cis].sprite, 0, x+distancefromgun, y , gunscale, gunscale, mousedirection, c_white, 1);
			//draw_line_width_color(x - 1, y, x +distancefromgun  ,y , 1,  c_white, c_white); 
			//draw_line_width_color(x, y, x+distancefromgun ,y, 1,  c_white, c_white);			
		}
		
	}
	else 
	{
		if (instance_nearest(x,y,objCharacterManager).chari == i && !global.switchingcharacter)
		{
				mousedirection = point_direction(x - distancefromgun + 1, y, mouse_x, mouse_y);
		}
		if (mousedirection <= 270 && mousedirection >= 180)
		{
			draw_sprite_ext(inventory[cis].sprite, 0, x-distancefromgun+1 , y , gunscale, -gunscale, mousedirection, c_white, 1);
			//draw_line_width_color(x, y, x-distancefromgun  , y , 1,  c_white, c_white);
			//draw_line_width_color(x, y, x-distancefromgun, y , 1,  c_white, c_white);
		}
		else 
		{ 
			draw_sprite_ext(inventory[cis].sprite, 0, x-distancefromgun+1 , y, gunscale, -gunscale, mousedirection, c_white, 1);
			//draw_line_width_color(x, y, x-distancefromgun - 1
			//, y , 1,  c_white, c_white);
			//draw_line_width_color(x, y, x-distancefromgun, y, 1,  c_white, c_white);
			
		}
	}
	draw_sprite_ext(sprShirt, shirttype, x , y + 2, 1, 1, 0, shirtcolor, 1);
	
}