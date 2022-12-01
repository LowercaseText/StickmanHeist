if (active)
{
	y += yvel;
	if (yvel > 0 && y >= topy)
	{
		yvel = -yvel;	
	}
	if (yvel < 0 && y <= boty)
	{
		yvel = -yvel;	
	}
}