global.CurrentCharacter.canmove = false;
x = global.CurrentCharacter.x - sprite_get_width(sprYellowLine)/2 *  1.7;
y = global.CurrentCharacter.y;
global.CurrentCharacter.canshoot = false;
image_xscale =  1.7;
image_yscale = 1;
pins = [
instance_create_layer(x + 5,y,"UI", objPin),
instance_create_layer(x + 25,y,"UI", objPin),
instance_create_layer(x + 45,y,"UI", objPin),
instance_create_layer(x + 65,y,"UI", objPin),
instance_create_layer(x + 85,y,"UI", objPin),
instance_create_layer(x + 104,y,"UI", objPin)
];
cp = 0;
pins[cp].active = true;
failed = false;

door = instance_nearest(x,y, objDoorPuzzleLocked);

//pins[cp].yvel = 
