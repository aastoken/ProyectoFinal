
scr_get_input();

vdir = key_down - key_up;
hdir = key_right - key_left;
vspeed = vdir*5;
hspeed = hdir*5;


//Collisions
//Horizontal collisions
if ( place_meeting(x+hspeed,y,obj_Wall) )
{
    while(!place_meeting(x+sign(hspeed),y,obj_Wall)) 
        x+= sign(hspeed);
    hspeed = 0;
}

//Vertical collisions
if ( place_meeting(x,y+vspeed,obj_Wall) )
{
    while(!place_meeting(x,y+sign(vspeed),obj_Wall)) 
        y+= sign(vspeed);
    vspeed = 0;
}



//Animation
if (vspeed != 0)
{
    image_speed = 0.2;
    if( vspeed > 0)
        sprite_index = sprPlayerDown;
    else
        sprite_index = sprPlayerUp;
}
else
{
    image_speed = 0;
    image_index = 0;
}


grounded = place_meeting( x,y+1,obj_Wall );
stair = place_meeting( x,y,obj_stairsMiddle );


//Change State

if (!stair && !grounded)
{
    state = AIR;   
}
if (grounded && key_down)
    state = GROUND;

