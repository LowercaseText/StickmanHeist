
face = irandom_range(0, 4);
shirtcolor = choose( c_green, c_blue, c_orange, c_yellow, c_lime, c_navy, c_red, c_dkgrey, c_aqua, c_purple);
shirttype = irandom_range(0, 1);

health = 100;
dead = false;
WALL = obj_Wall;
xVel = 0;
yVel = 0;
originalspeed = 1;
movespeed = originalspeed;
canmove = true;
incar = false;
guncooldown = 0;
distancefromgun = 5;
gunscale = 0.3;
mousedirection = 0;
canshoot = true;

walksprite = sprStickmanWalk;
idlesprite = sprStickmanIdle;


InventoryItemss = instance_create_layer(x,y,"Controll",objInventoryItems);

inventory = [InventoryItemss.FlashLight1,InventoryItemss.pistol,InventoryItemss.nothing,InventoryItemss.nothing,InventoryItemss.nothing];
cis = 0;

/*
headhitbox = instance_create_layer(x, y, "Characters", objPlayerHitbox);
headhitbox.visible = false;
armshitbox = instance_create_layer(x, y, "Characters", objPlayerHitbox);
armshitbox.sprite_index = sprArms;
armshitbox.visible = false;
torsohitbox = instance_create_layer(x, y, "Characters", objPlayerHitbox);
torsohitbox.sprite_index = sprTorso;
torsohitbox.visible = false;
leg1hitbox = instance_create_layer(x, y, "Characters", objPlayerHitbox);
leg1hitbox.sprite_index = sprLeg;
leg1hitbox.visible = false;
leg2hitbox = instance_create_layer(x, y, "Characters", objPlayerHitbox);
leg2hitbox.sprite_index = sprLeg;
leg2hitbox.visible = false;
*/
