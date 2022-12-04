startx = x;
starty = y;
//path_start(path, 0.5, path_action_reverse, false);
ms = random_range(0.8, 0.9);
nextstate = "chase"
aistate = "unaware";
previusstate = "none";
/*
possible sstates:

-unaware easy: guard is unaware of player
-unaware hard: randomly walk around the building
-aware: alarm has not been set of but the guard is aware that player is in building
-alarm easy: alarm has been set off and the player will patrol througout the building
-alarm hard: all guards know where the player is and will chase 
-chase player: chase player normally
