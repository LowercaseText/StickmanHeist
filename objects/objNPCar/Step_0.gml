image_angle = direction;

colcheck.direction = direction;
colcheck.x = x;
colcheck.y = y;

if (colcheck.trigger == true )
{
	if (colcheck.dist <= 20)
	{
		path_speed -= 2;
	}
	else
	{
		path_speed -= 0.1;
		if (path_speed < 0)
		{
			 path_speed = 0;
		}
	}

}
else
{
	if path_speed < speedlimit path_speed +=0.3

}