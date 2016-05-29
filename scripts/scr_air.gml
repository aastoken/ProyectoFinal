
//Direction we are pressing
hdir = key_right - key_left;

//Air Acceleration 
if ( hdir != 0)
{
    diffSpeed = hdir*topSpeed - hsp;
    diffSpeed = clamp(diffSpeed,-airAcceleration,airAcceleration);
    hsp += diffSpeed;
}
else //Friction
{
    friccion = clamp(-hsp,-airFriction,airFriction);
    hsp += friccion;
}

//Double Jump
if ( key_jump && doubleJump )
{
    vsp = -jumpSpeed;
    doubleJump = false;
}

//Wall Jumping
right_wall = place_meeting(x+1,y,obj_Wall);
left_wall = place_meeting(x-1,y,obj_Wall);
if ( right_wall || left_wall )
{
    jumpDir = left_wall - right_wall;
    if( key_jump && hdir == 0  )
    {
        hsp = jumpDir*wallJumpSpeed;
        vsp = -1.7*jumpSpeed;
        doubleJump = true;
    }
}

//Gravity and Wall friction
if ( (right_wall || left_wall) && vsp > 0)
    vsp += GRAVITY/3;
else
    vsp += GRAVITY;

//Animation

if (hsp != 0 )
{
    sprite_index = sprPlayerJump;
    image_xscale = sign(hsp);
    dirAim = image_xscale;
}
else
{
    sprite_index = sprPlayerJump;
    image_xscale = dirAim;
}

scr_collisions();

//Change state??
grounded = place_meeting(x,y+1,obj_Wall);
if(grounded)
{
    if (image_xscale = 1 )
        sprite_index = sprPlayerRight;
    else
        sprite_index = sprPlayerLeft;
    state = GROUND;
    image_xscale = 1;
}
