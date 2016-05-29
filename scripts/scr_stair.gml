
//Vertical movement
vdir = key_down - key_up;
vsp = vdir*5;
//Be able to move right or left if i'm not inside a wall
if( !place_meeting(x,y,obj_Wall))
{
    hdir = key_right - key_left;
    hsp = hdir*5;
}
    

//COLLISIONS__________
//Horizontal collisions
if ( place_meeting(x+hsp,y,obj_Wall) )
{
    while(!place_meeting(x+sign(hsp),y,obj_Wall)) 
        x+= sign(hsp);
    hsp = 0;
}
x+= hsp;

//Vertical collisions
if ( vsp >0 && verticalCollisions){
    if ( place_meeting(x,y+vsp,obj_Wall) )
    {
        while(!place_meeting(x,y+sign(vsp),obj_Wall)) 
            y+= sign(vsp);
        vsp = 0;
    }
}
//In order to reach the top of the stairs without jumping
if( !place_meeting(x,y+vsp,obj_stairsMiddle) )
{
    while( place_meeting(x,y,obj_stairsMiddle) )
        y+= sign(vsp);
    vsp = 0;
}
y+=vsp;

//Activates vertical collisions 
verticalCollisions = !place_meeting(x,y,obj_Wall);



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
if (grounded && hdir != 0)
    state = GROUND;

