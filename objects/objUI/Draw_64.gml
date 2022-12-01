if (global.debug && instance_exists(objGuard))
{
		var ng = instance_nearest(global.CurrentCharacter.x, global.CurrentCharacter.y, objGuard);
		draw_text(1100, 10, "DEBUG");
		draw_text(1100, 30, "Guard state: " + ng.aistate);
		draw_text(1100, 50, "Guard ID: " + string(ng));
}
