//Horizontal Collisions
if ( place_meeting( x + hsp , y , obj_Wall ) )
{
    while ( !place_meeting ( x + sign(hsp) , y , obj_Wall ) )
    {
        x += sign( hsp );
    }
    hsp = 0;
}
x += hsp;

//Vertical Collisions
if ( place_meeting(x,y + vsp,obj_Wall) )
{
    while ( !place_meeting (x,y + sign(vsp),obj_Wall) )
    {
        y += sign( vsp );
    }
    vsp = 0;
}

y += vsp;

