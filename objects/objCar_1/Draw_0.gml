draw_sprite_ext(sprite_index, 1, x, y, 0.8, 0.8, image_angle, c_white, 1); 

if (distance_to_object(global.CurrentCharacter) < 20 && !global.CurrentCharacter.incar)
{
	draw_sprite_ext(sprEnterCar,0, x, y, 0.5, 0.5, 0, c_white, 1);	
}