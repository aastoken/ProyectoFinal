
//Direction we're pressing
hdir = key_right - key_left;

//Acceleration
difSpeedX = hdir*(topSpeed + key_run*runSpeed ) - hspeed;
difSpeedX = clamp(difSpeedX,-acceleration,acceleration);
hspeed += difSpeedX;

//Jumping
if( key_jump )
{
    vspeed = -jumpSpeed;
    doubleJump = true;
}

//Ringing the bell
if (key_shoot && canShoot)
{
    image_xscale = dirAim;
    sprite_index = spr_playerBell;
    canShoot = false;
    instance_create(x + dirAim*16 , y-sprite_height/2,objEffects);
    alarm[0] = room_speed;
}


//Animation left-right
if(hspeed!=0)
{
    image_xscale = 1;
    dirAim = sign(hspeed);
    
    if ( key_run )//Animate faster if running
        image_speed = imageSpeed*1.7;
    else
        image_speed = imageSpeed;
    if ( dirAim > 0)
    {
        sprite_index = sprPlayerRight;
    }
    else
    {
        sprite_index = sprPlayerLeft;
    }
} 
else
{
    image_speed = 0;
    image_index = 0;
}

//Change state??
grounded = place_meeting(x,y+1,obj_Wall);
if ( !grounded )
{
    state = AIR;
}

if ( place_meeting(x,y,obj_teleport) && key_interact )
{
    hspeed = 0;
    actualTeleport = instance_nearest(x,y,obj_teleport );
    x = actualTeleport.x;
    y = actualTeleport.y;
    sprite_index = spr_playerTeleport;
    state = TELEPORT;
    animIn = true;
}
