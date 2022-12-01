image_angle = direction;

if (place_meeting(x,y,objCar))
{
	trigger = true;
	dist = distance_to_object(other);
}
else if (place_meeting(x,y,objNPCar))
{
	trigger = true;
	dist = distance_to_object(other);
}
else if (place_meeting(x,y,objEscapeVehicle))
{
	trigger = true;
	dist = distance_to_object(other);
}
/*else if (place_meeting(x,y,objGuard))
{
	trigger = true;
}
else if (place_meeting(x,y,objPlayer))
{
	trigger = true;
}*/
else
{
	trigger = false;
	dist = -1;
}
