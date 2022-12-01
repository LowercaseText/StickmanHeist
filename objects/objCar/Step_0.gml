
if (global.CurrentCharacter.incar == true && active)
{
	/// STEP_EVENT
// input buttons
var gas  = keyboard_check(ord("W")) - keyboard_check(ord("S"));
//left turn is positive since GML angles goes counterclockwise
var turn = keyboard_check(ord("A")) - keyboard_check(ord("D"));

if(gas!=0) // pressing one of directions
{
    spd+=acc*gas; // adding acceleration to speed in direction of gas
    spd=clamp(spd, -mspd/2, mspd); // can't go faster than max speed
}
else // gas buttons are released
{
    spd=lerp(spd, 0, bspd); // stopping car
}

/*
Initialize variable for turning.
For drifting you"ll need to do things different there.
Since this is basic car movement, car angle is controlling
movement direction.
*/
var angle=image_angle;
if(turn!=0) // same as gas - turning button is held
{
    angle+=rspd*turn; // adding turn in held direction
}

// for this example hspd & vspd could be var
hspd=lengthdir_x(spd, angle); // extracting horizontal movement
vspd=lengthdir_y(spd, angle); // extracting vertical movement

//classic collision, may not be the best and must be carefull since it can freeze the game
if(place_meeting(x+hspd, y, obj_Wall)) // checking collision for next horizontal possition
{
    while(!place_meeting(x+sign(hspd), y, obj_Wall))
    { // do loop while no collision 1 pixel in our H direction
        x+=sign(hspd); // move player by 1 pixel in H direction
    }
    hspd=0; // since we can't move anymore set to 0
}
x+=hspd; // move object by hspd amount

// exactly the same as hspd only done for vertical movement
if(place_meeting(x, y+vspd, obj_Wall))
{
    while(!place_meeting(x, y+sign(vspd), obj_Wall))
    {
        y+=sign(vspd);
    }
    vspd=0;
}
y+=vspd;

/*
Since we can check collision only for angle we are now
we need to save value before rotation.
*/
var prev_angle = image_angle; // save current angle
image_angle = angle; // turn object according to controlls
if(place_meeting(x, y, obj_Wall)) // check if we are colliding now
{
    while(place_meeting(x, y,obj_Wall)) // here we do opposite - loop while we are collided
    {
        image_angle+= sign(prev_angle - angle); // turn back by 1 degree in direction of previous angle
    }
}
//move_wrap(1, 1, sprite_width);
}
