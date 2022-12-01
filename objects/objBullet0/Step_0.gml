if (distance_to_object(global.CurrentCharacter) > sprite_get_width(global.CurrentCharacter.inventory[global.CurrentCharacter.cis]) * global.CurrentCharacter.gunscale)
{
	visible = true;
}
x += lengthdir_x(4,direction);
y += lengthdir_y(4,direction);
