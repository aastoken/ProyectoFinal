
//Direction we're pressing
hdir = key_right - key_left;

//Acceleration
difSpeedX = hdir*(topSpeed + key_run*runSpeed ) - hsp;
difSpeedX = clamp(difSpeedX,-acceleration,acceleration);
hsp += difSpeedX;

//Jumping
if( key_jump )
{
    vsp = -jumpSpeed;
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
if(hsp!=0)
{
    dirAim = sign(hsp);
    
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
staired = place_meeting(x,y+1,obj_stairsMiddle);
//Change to GROUND
if ( !grounded )
{
    state = AIR;
}
//Change to TELEPORT
if ( place_meeting(x,y,obj_teleport) && key_interact )
{
    hsp = 0;
    actualTeleport = instance_nearest(x,y,obj_teleport );
    x = actualTeleport.x;
    y = actualTeleport.y;
    sprite_index = spr_playerTeleport;
    state = TELEPORT;
    animIn = true;
}
//Change to STAIR
if ( staired && (key_up||key_down) )
    state = STAIR;
