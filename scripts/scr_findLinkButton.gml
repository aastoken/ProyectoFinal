
for ( i=0;i< instance_number(obj_buttonDoor);i+=1)
    {
        otherButton = instance_find(obj_ButtonDoor,i);
        if ( otherTeleport == argument0)
        {
            if ( i%2 == 0)
            {
                otherTeleport = instance_find(obj_teleport,i+1);
            }
            else
            {
                otherTeleport = instance_find(obj_teleport,i-1);
            }
            break;
        }
    }
