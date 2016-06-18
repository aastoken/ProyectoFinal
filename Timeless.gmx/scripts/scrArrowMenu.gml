// Beep sound
if (isSound)
    audio_play_sound(soundBeep, 0, 0);

// Down arrow
if (keyboard_check_released(vk_down) && option < maxOption){
    y += space;
    option ++;
}
// Up arrow
else if (keyboard_check_released(vk_up) && option > 0){
    y -= space;
    option --;
}

// Released vk_enter
if (keyboard_check_released(vk_enter)){

    switch(room){

        case 0: // Start menu
            scrStartMenu();
            break;

        case 1: // Options menu
            scrOptionsMenu();
            break;

        default:
            show_debug_message("Bug in scrArrowMenu");
            break;

    }

}
