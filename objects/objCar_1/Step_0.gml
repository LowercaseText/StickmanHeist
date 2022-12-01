if (global.CurrentCharacter.incar == true && active)
{
	if (keyboard_check(ord("W")))
	{	
		forward_x = -lengthdir_x(155, -phy_rotation - 90);
		forward_y = -lengthdir_y(155, -phy_rotation- 90);
	
		physics_apply_force(x,y,forward_x, forward_y);
	}
	if (keyboard_check(vk_shift))
	{
		phy_speed_x = lerp(phy_speed_x, 0,0.05);
		phy_speed_y = lerp(phy_speed_y, 0,0.05);
	
	}
	if (keyboard_check(ord("A")))
	{
		phy_rotation -=   2.7;
	}
	if (keyboard_check(ord("D")))
	{
		phy_rotation +=   2.7;
	}

	move_wrap(1, 1, sprite_width);
}