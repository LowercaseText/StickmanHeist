

global.CurrentCharacter.canmove = true;
global.CurrentCharacter.canshoot = true;


if (failed)
{
	instance_change(objPuzzleActivator, true);	
}
else
{
	instance_destroy(pins[0])
instance_destroy(pins[1])
instance_destroy(pins[2])
instance_destroy(pins[3])
instance_destroy(pins[4])
instance_destroy(pins[5])
	doorx = door.x;
doory = door.y;
doordir = door.image_angle;

with (door) 
{
	instance_destroy();
}

door = instance_create_layer(doorx, doory, "Level", objDoorOpen);
door.image_angle = doordir;
}
	