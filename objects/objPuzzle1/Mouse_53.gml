if (place_meeting(x,y, pins[cp]))
{
	pins[cp].active = false;
	if (cp < 5)
	{
		cp++;
		pins[cp].active = true;
	}
	else
	{
		instance_destroy(self, true);	
	}
}
else
{
	failed = true;
	instance_destroy(pins[0])
	instance_destroy(pins[1])
	instance_destroy(pins[2])
	instance_destroy(pins[3])
	instance_destroy(pins[4])
	instance_destroy(pins[5])
	instance_create_layer(door.x ,door.y,"UI", objPuzzleActivator);
	alarm_set(0, 100)
}