//if closed and press the button
if( image_index == 0 && obj_button.pressed )
{
    //Open animation
    image_speed = 0.5;
}
//if opened and button not pressed
else if ( image_index == 6 && !obj_button.pressed )
{
    //Close animation
    image_speed = -0.5;
}//else if( image_index == 6 && obj_button.pressed )



//Stops the animation when it reaches the end of it
if ( image_speed > 0 )//Opening animation
{
    if ( image_index >= 6 )
        image_speed = 0;
}
if ( image_speed < 0)//Closing animation
{
    if ( image_index <= 0 )
        image_speed = 0;
}

