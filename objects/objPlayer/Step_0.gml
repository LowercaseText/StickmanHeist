/*
	WASD movement
 	E/LMB - interact
	RMB - grab
*/

var h = keyboard_check(ord("D")) -  keyboard_check(ord("A"));
var v = keyboard_check(ord("S")) - keyboard_check(ord("W"));
var sprint = keyboard_check_pressed(vk_shift)

var interact1 = mouse_check_button(mb_left);
var interact = keyboard_check_pressed(ord("E"));
var grab = mouse_check_button(mb_right);

var nokey = keyboard_check(vk_nokey);

//bozo

// movement
if (instance_nearest(x,y,objCharacterManager).chari == i && canmove)
{
	
	if (h != 0 || v != 0) // animate
	{
		sprite_index = sprStickmanWalk;// animate
	}
	else
	{
		sprite_index = sprStickmanIdle;	 // animate
	}
	
	x += h*movespeed // move
	y += v*movespeed // move
}
// check if pressing E, close to car, and is current character
if (interact && distance_to_object(instance_nearest(x,y, objCar)) < 20 && instance_nearest(x,y,objCharacterManager).chari == i)
{
	if (incar) // toggle the player to be out of the car if the player was in the car
	{
		incar = false;
		car = instance_nearest(x,y, objCar);
		car.active = false;
		
	}
	else // toggle the player to be in the car if the player was not in the car
	{
		incar = true;
		car = instance_nearest(x,y, objCar);
		car.active = true;
	}
}
// if the player is in the car, go to the car's position
if (incar)
{
	x = car.x;
	y = car.y;
}



if (!global.switchingcharacter)
{
	if (mouse_wheel_down() &&  instance_nearest(x,y,objCharacterManager).chari == i )
	{
		cis++;
		if cis > 4 cis = 1;
	}
	if (mouse_wheel_up() && instance_nearest(x,y,objCharacterManager).chari == i )
	{
		cis--;
		if cis < 0 cis = 4;
	}
	
	if (keyboard_check_pressed(ord(1)))
	{
		cis = 0;
	}
	else if (keyboard_check_pressed(ord(2)))
	{
		cis = 1;
	}
	else if (keyboard_check_pressed(ord(3)))
	{
		cis = 2;
	}
	else if (keyboard_check_pressed(ord(4)))
	{
		cis = 3;
	}
	else if (keyboard_check_pressed(ord(5)))
	{
		cis = 4;
	}
}
/*
headhitbox.x = x;
headhitbox.y = y;
armshitbox.x = x + 4;
armshitbox.y = y - 1;
torsohitbox.x = x;
torsohitbox.y = y;
leg1hitbox.x = x + 2;
leg1hitbox.y = y + 4;
leg2hitbox.x = x;
leg2hitbox.y = y + 4;
*/
// if the mouse was pressed
guncooldown--;


if (guncooldown < 0)
{
if (instance_nearest(x,y,objCharacterManager).chari == i &&  canmove)
{
	
	//if (inventory[cis] != nothing)
	//{
	//	walksprite = sprStickmanWalkNoArms;
	//	idlesprite = sprStickmanIdleNoArms;
	//}
	//else
	//{
	//	walksprite = sprStickmanWalk;
	//	idlesprite = sprStickmanIdle;
	//}
}
}
if (health <= 0 && dead = false)
{	
	audio_play_sound_at(sndoof, x, y, 0, 100, 300, 1, true, 1);
	dead = true
}

if (inventory[cis].itemtype == "gun" && canshoot)
{
	if (mouse_check_button_pressed(mb_left) && inventory[cis].type == "semi")
	{
			inventory[cis].use();
	}
	else if (mouse_check_button_pressed(mb_left) && inventory[cis].type == "burst")
	{
			inventory[cis].use();
	}
	else if (mouse_check_button_pressed(mb_left) && inventory[cis].type == "shotgun")
	{
			inventory[cis].use();
	}
	// if the mouse is being held down
	else if (mouse_check_button(mb_left) && inventory[cis].type == "auto")
	{
			inventory[cis].use();
	}
}

if (grab)
{
		
}

//move_wrap(1, 1, sprite_width);