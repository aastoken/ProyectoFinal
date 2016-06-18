// argument0 --> Actual teleport we're on.

for ( i=0;i< instance_number(obj_teleport);i+=1)
    {
        otherTeleport = instance_find(obj_teleport,i);
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
