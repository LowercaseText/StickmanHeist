if (keyboard_check_pressed(ord("E")))
{
	if (distance_to_object(global.CurrentCharacter) < 40){ 
		instance_change(puzzle, true);	
	}
}


