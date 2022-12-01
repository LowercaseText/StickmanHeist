if (keyboard_check(vk_alt))
{
	switchChar = true;	
	if (mouse_wheel_down())
	{
		chari++;
		if(chari == 4){chari = 0;}
	}
	if (mouse_wheel_up())
	{
		chari--;
		if(chari == -1){chari = 3;}
	}
	
}
else
{
	switchChar = false;	
}
if (!switchChar)
{
	global.CurrentCharacter = characters[chari]
}
/*
if (keyboard_check_pressed(vk_tab))
{
	if (global.map)
	{
		global.map = false;
		view_visible[0] = false;
		view_visible[1] = true;
		global.CurrentCharacter.canmove = false;	
	}
	else
	{
		view_visible[0] = true;
		view_visible[1] = false;
		global.map = true;
		global.CurrentCharacter.canmove = true;
	}
}



if (chari == 1)
{
	global.CurrentCharacter = objGregoryKanstantinov;

}
else if (chari == 0)
{
	global.CurrentCharacter = objRobinDabank;
	
	
}
else if (chari == 2)
{
	global.CurrentCharacter = objChrisLarris;

}
else if (chari == 3)
{
	global.CurrentCharacter = objRickCassel;
	
}
*/ 
global.switchingcharacter = switchChar
