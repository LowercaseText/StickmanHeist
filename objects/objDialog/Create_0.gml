padding = 50;	
width = window_get_width() - (padding * 2);	
height = 200;
xOrgin = padding;
yOrgin = 10;



borderSize = 20;
innerBoxWidth = width - borderSize;
innerBoxHeight = height - borderSize;
innerBoxXOrgin = xOrgin + (borderSize / 2);	
innerBoxYOrgin = yOrgin + (borderSize / 2);
	

//CurrentDialogText = "Time limit reached. You have reached your time limit on talking. Shut the fuck up. ";
DisplayedDialogText = "";
CurrentLetter = 1;

letterdrawcd = 0;
letterremovecd = 0;

active = false;