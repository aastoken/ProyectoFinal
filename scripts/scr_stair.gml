
scr_get_input();

vdir = key_down - key_up;
hdir = key_right - key_left;
vsp = vdir*5;
hsp = hdir*5;


//Collisions
//Horizontal collisions
if ( place_meeting(x+hsp,y,obj_Wall) )
{
    while(!place_meeting(x+sign(hsp),y,obj_Wall)) 
        x+= sign(hsp);
    hsp = 0;
}

//Vertical collisions
if ( place_meeting(x,y+vsp,obj_Wall) )
{
    while(!place_meeting(x,y+sign(vsp),obj_Wall)) 
        y+= sign(vsp);
    vsp = 0;
}



//Animation
if (vsp != 0)
{
    image_speed = 0.2;
    if( vsp > 0)
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

