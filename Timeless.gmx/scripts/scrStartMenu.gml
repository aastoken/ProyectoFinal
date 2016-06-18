// Choose option
switch (menu[option]){

    case "Start":
        if (audio_is_playing(soundMenu))
            audio_stop_sound(soundMenu);
        room_goto(tutorial1);
        break;

    case "Options":
        room_goto(roomOptions);
        break;

    case "Exit":
        game_end();
        break;

    default:
        show_debug_message("Bug in scrStartMenu");
        break;

}
