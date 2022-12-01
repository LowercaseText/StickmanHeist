if (distance_to_object(instance_nearest(x, y, objPlayer)) < 20)
{
if (letterdrawcd == 0)
{
DisplayedDialogText = DisplayedDialogText + string_char_at(CurrentDialogText, CurrentLetter);
CurrentLetter++;
}
if (letterdrawcd > 0)
{
	letterdrawcd--;
}
}
else 
{
		//DisplayedDialogText = DisplayedDialogText + ;
		DisplayedDialogText = "";
		CurrentLetter = 1;
}
