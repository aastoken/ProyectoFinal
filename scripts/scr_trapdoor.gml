if( image_index == 0 && obj_button.pressed )
{
    image_speed = 0.5;
}
if ( image_index == 6 && !obj_button.pressed )
    image_speed = -0.5;


if ( image_speed > 0 )
{
    if ( image_index >= 6)
        image_speed = 0;
}
else if ( image_speed < 0) 
{
    if ( image_index <= 0)
        image_speed = 0;
}

