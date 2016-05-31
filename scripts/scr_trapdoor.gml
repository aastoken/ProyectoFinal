
//Get the nearest button(temporary solution)
button = instance_nearest(x,y,obj_button);

//if closed and press the button
if( image_index == 0 && button.pressed )
{
    //Open animation
    image_speed = 0.5;
}
//if opened and button not pressed
else if ( (image_index == image_number-1) && !button.pressed )
{
    //Close animation
    image_speed = -0.5;
}

//Stops the animation when it reaches the end of it
if ( image_speed > 0 )//Opening animation
{
    if ( image_index >= (image_number-1) )
        image_speed = 0;
}
if ( image_speed < 0)//Closing animation
{
    if ( image_index <= 0 )
        image_speed = 0;
}

