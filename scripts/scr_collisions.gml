//Horizontal Collisions
if ( place_meeting( x + hspeed , y , obj_Wall ) )
{
    while ( !place_meeting ( x + sign(hspeed) , y , obj_Wall ) )
    {
        x += sign( hspeed );
    }
    hspeed = 0;
}

// Out room
var widthPlayer = sign(hspeed) * sprite_get_width(sprPlayerRight) * 0.5;
var nextPos = x + hspeed + widthPlayer;
var isOutRoom = nextPos < 0 || nextPos > room_width;

if (isOutRoom)
    hspeed = 0;

//Vertical Collisions
if ( place_meeting(x,y + vspeed,obj_Wall) )
{
    while ( !place_meeting (x,y + sign(vspeed),obj_Wall) )
    {
        y += sign( vspeed );
    }
    vspeed = 0;
}

