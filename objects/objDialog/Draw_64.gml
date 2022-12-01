if (distance_to_object(instance_nearest(x, y, objPlayer)) < 20)
{
	draw_set_color(c_white);
	draw_rectangle(xOrgin, yOrgin, xOrgin + width, yOrgin + height, false);
	draw_set_color(c_black);
	draw_rectangle(innerBoxXOrgin, innerBoxYOrgin, innerBoxXOrgin + innerBoxWidth, innerBoxYOrgin + innerBoxHeight, false);
	draw_set_color(c_white);


if (letterdrawcd == 0)
{
	DisplayedDialogText = DisplayedDialogText + string_char_at(CurrentDialogText, CurrentLetter);
	CurrentLetter++;
	if (string_char_at(CurrentDialogText, CurrentLetter) = ".")
	{
		letterdrawcd = 10;
	}
	else 
	{
		letterdrawcd = 5;
	}
}
	//draw_set_font(GameFont);
	draw_text_ext(xOrgin + 20, yOrgin + 20, DisplayedDialogText, 25, 1200)
}
