if(place_meeting(obj_Player.x,obj_Player.y,obj_button))
{
    while(image_index <=6)
    {   
        image_index += 1;
    }
}

if(!place_meeting(obj_Player.x,obj_Player.y,obj_button))
{
    if(image_index==6)
    {
      while(image_index>=0)
      {
        image_index -=1;
        
      }  
    }   
    
}
