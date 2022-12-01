
	sprite_index = sprSpikeTrapTrigger;
	global.CurrentCharacter.x = x;
	global.CurrentCharacter.y = y;
	global.CurrentCharacter.canmove = false;
	
	alarm_set(0, 120);
