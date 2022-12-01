if (audio_is_playing(mscAlarmLoop) ||  audio_is_playing(mscAlarmStart))
{
	playingmusic = true;
}
 
else
{
	playingmusic = false;	
}

if (!playingmusic)
{
	if (global.Alarm == true)
	{
		
		if (!playedstart)
		{
			
			audio_play_sound(mscAlarmStart, 0, false);
			playedstart = true;
			
		}
		else
		{
			audio_play_sound(mscAlarmLoop, 0, false);
		}
		
	}
	
	
	
	
}

