// Choose sound
var sound = noone;
switch(room){
    case 0: // Start menu
        sound = soundMenu;
        break;
    case 1: // Options menu
        sound = soundMenu;
        break;
    case 2: // Level 1
        sound = soundBgLvl1;
        break;
    case 3: // Level 2
        sound = soundBgLvl2;
        break;
    case 4: // Level 3
        sound = soundBgLvl3;
        break;
    case 5: // Level 4
        sound = soundBgLvl4;
        break; 
    default:
        show_debug_message("Bug in scrMgrBgSound");
        break;
}
// Play sound
if (isSound && !audio_is_playing(sound))
    audio_play_sound(sound, 0, 1);
else if (!isSound)
    audio_stop_sound(sound);
