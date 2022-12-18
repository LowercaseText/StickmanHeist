playerx = instance_nearest(x,y, objPlayer).x;
playery = instance_nearest(x,y, objPlayer).y;


// DO NOT TOUCH 
// I KNOW IT'S SHITTY BUT IT WORKS FINE

switch (state)
{
//----------------------------------------------------------------------------------------------------------------------------------------------------------------
	case "unaware easy":
		if (collision_line(x, y, playerx, playery, obj_Wall, true, true) == noone && distance_to_object(global.CurrentCharacter) < 60)
		{
			previusstate = "unaware easy";
			state = "chase"	;
			
		}
		
		if (global.guardsaware)
		{
			state = "aware";	
		}

		break;
//----------------------------------------------------------------------------------------------------------------------------------------------------------------		
	case "hard partrol":
		if (collision_line(x, y, playerx, playery, obj_Wall, true, true) == noone && distance_to_object(global.CurrentCharacter) < 60)
		{
			previusstate = "hard partrol";
			state = "chase"	;
			
		}
		
		if (global.guardsaware)
		{
			state = "aware";	
		}

		break;
//----------------------------------------------------------------------------------------------------------------------------------------------------------------
	case "aware":
		global.guardsaware = true;
		if (x = startx && y = starty)
		{
	 		path_start(path, 0.5, path_action_reverse, false);
		}
		else
		{
			//mp_potential_step_object(startx,starty, 0.5, obj_Wall)	
			mp_potential_step(playerx, playery, ms, true);
		}
		if (collision_line(x, y, playerx, playery, obj_Wall, true, true)  == noone && distance_to_object(global.CurrentCharacter) < 60)
		{
			previusstate = "aware";
			state = "chase"	;
		}
		if (global.Alarm)
		{
			if (global.Difficulty == 1)
			{
				state = "alarm easy"					
			}
			else if (global.Difficulty == 2)
			{					
				state = "alarm hard"
			}
		}
		speak("ayo where tf is this mf", 1)
		break;
		
//----------------------------------------------------------------------------------------------------------------------------------------------------------------
	case "alarm easy":	
		mp_potential_step_object(270.1118,482.4583, 0.7, obj_Wall)
		if (x == 270.1118 && y == 482.4583)
		{
			path_start(levelpath, 0.7, path_action_restart, false);		
		}
		if (collision_line(x, y, playerx, playery, obj_Wall, true, true)  == noone && distance_to_object(global.CurrentCharacter) < 60)
		{
			previusstate = "alarm easy";
			state = "chase";
		}
		break;		
//----------------------------------------------------------------------------------------------------------------------------------------------------------------
	case "alarm hard":
		//mp_potential_step_object(playerx, playery, ms, obj_Wall);
		mp_potential_step(playerx, playery, ms, true);
		break;
//----------------------------------------------------------------------------------------------------------------------------------------------------------------
	case "chase":
		
		path_end();
		//mp_potential_step_object(playerx, playery, ms, obj_Wall);
		mp_potential_step(playerx, playery, ms, true);
		if (distance_to_object(global.CurrentCharacter) > 60)
		{
			
			if (previusstate == "unaware")
			{
				previusstate = "chase";
				state = "aware";				
			}
			else if (previusstate == "aware")
			{
				
				if (global.Difficulty == 1)
				{
					global.Alarm = true;
					state = "alarm easy";
				}
				else
				{
					global.Alarm = true;
					state = "alarm hard"
				}
				
			}
			else if (previusstate == "alarm easy")
			{
				state = "alarm easy";
			}
			else if (previusstate == "alarm hard")
			{
				state = "alarm hard";
			}
		}
		
		break;
//----------------------------------------------------------------------------------------------------------------------------------------------------------------
}



/*
//point_distance(x, y, playerx, playery)

*/
