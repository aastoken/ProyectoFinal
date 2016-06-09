vsp += GRAVITY;

// Collision player
if (place_meeting(x, y, obj_Player))
{
    with( obj_Player)
        instance_destroy();   
}

scr_collisions();

