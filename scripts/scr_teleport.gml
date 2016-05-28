
//argument0 --> Platform to teleport to.

//Entering the teleport
if ( animIn )
{
    image_speed = 1;
    //Finds the other teleport
    scr_findLinkTeleport(actualTeleport);
    if(image_index >= image_number-1 )
    {
        x = otherTeleport.x;
        y = otherTeleport.y;
        animOut = true;
        animIn = false;  
        image_index = 0;
    } 
}

//Coming out of the teleport
if( animOut )
{
    image_speed = 0.8;
    sprite_index = spr_playerTeleportOut;
    if ( image_index >= image_number - 1)
    {
        image_speed = 0;
        animOut = false;
        sprite_index = sprPlayerDown;
    }  
}

//Drop down to the ground without activating the jumpAnimation
if ( !animIn && !animOut )
{
    vsp+=GRAVITY;
    scr_collisions();
    grounded = place_meeting(x,y+1,obj_Wall) ;
    if( grounded)
    {
        state = GROUND;
    }
}

