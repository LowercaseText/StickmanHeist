switchChar = false;

instance_create_layer(x,y,"Controll",objInventory)

characters = [ instance_create_layer(random_range(x-6, x+6), random_range(y-6, y+6), "Characters", objPlayer) 
, instance_create_layer(random_range(x-6, x+6), random_range(y-6, y+6), "Characters", objPlayer)
, instance_create_layer(random_range(x-6, x+6), random_range(y-6, y+6), "Characters", objPlayer) 
, instance_create_layer(random_range(x-6, x+6), random_range(y-6, y+6), "Characters", objPlayer)];
chari = 0;
characters[0].i = 0;
characters[1].i = 1;
characters[2].i = 2;
characters[3].i = 3;
global.CurrentCharacter = characters[chari];
global.map = false;
