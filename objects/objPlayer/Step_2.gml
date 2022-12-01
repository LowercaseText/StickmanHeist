if (!incar && instance_nearest(x,y,objCharacterManager).chari == i)
{
if (inventory[cis].itemtype == "flashlight")
{	
	//inventory[cis].update(x,y, mousedirection)
	
	if (mousedirection < 90 || mousedirection > 270)
	{
		
		if (mousedirection <= 360 && mousedirection >= 270)
		{
			inventory[cis].update(x+distancefromgun,y, mousedirection)
		}
		else 
		{
			inventory[cis].update(x+distancefromgun,y, mousedirection)		
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
			inventory[cis].update(x-distancefromgun+1,y, mousedirection)
		}
		else 
		{ 
			inventory[cis].update(x-distancefromgun+1,y, mousedirection)
		}
	}
}
}
			
