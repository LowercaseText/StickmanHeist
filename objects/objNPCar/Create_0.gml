image_xscale = 0.8;
image_yscale = 0.8;
pp = 0;
spd = random_range(1,3);
speedlimit = 3.5
path_start(pthStraightRoad, spd, path_action_restart, true);



colcheck = instance_create_layer(x,y, "NPCs",objCarLineCast);
colcheck.direction = direction;
colcheck.x = x;
colcheck.y = y;
path_position = random(1);
//path_end()