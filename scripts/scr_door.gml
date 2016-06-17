
door = position_meeting(x,y,obj_door);

image_speed = 0.4;

if ( door.spawnDoor ) //Do the OUT animation
{
    sprite_index = spr_playerDoorOut;
}
else    //Do the IN animation
{
    sprite_index = spr_playerDoor;
}

//When animation is finished we can check for STATES
if ( (image_index >= (image_number -1)) && !door.spawnDoor  )
{  
    room_goto_next();
}



