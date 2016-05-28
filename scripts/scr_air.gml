
//Direction we are pressing
hdir = key_right - key_left;

//Air Acceleration 
if ( hdir != 0)
{
    diffSpeed = hdir*topSpeed - hspeed;
    diffSpeed = clamp(diffSpeed,-airAcceleration,airAcceleration);
    hspeed += diffSpeed;
}
else //Friction
{
    friccion = clamp(-hspeed,-airFriction,airFriction);
    hspeed += friccion;
}

//Gravity
vspeed += GRAVITY;

//Double Jump
if ( key_jump && doubleJump )
{
    vspeed = -jumpSpeed;
    doubleJump = false;
}

//Wall Jumping
right_wall = place_meeting(x+1,y,obj_Wall);
left_wall = place_meeting(x-1,y,obj_Wall);
if ( right_wall || left_wall )
{
    jumpDir = left_wall - right_wall;
    if( key_jump && !hdir  )
    {
        hspeed = jumpDir*wallJumpSpeed;
        vspeed = -1.7*jumpSpeed;
        doubleJump = true;
    }
}

//Animation

if (hspeed != 0 )
{
    sprite_index = sprPlayerJump;
    image_xscale = -sign(hspeed);
}
else
{
    sprite_index = sprPlayerJump;
    image_xscale = -dirAim;
}


//Change state??
grounded = place_meeting(x,y+1,obj_Wall);
if(grounded)
{
    if(dirAim=1)
    sprite_index=sprPlayerRight
    else if(image_xscale=-1)
    sprite_index=sprPlayerLeft
    
    
    state = GROUND;
}
