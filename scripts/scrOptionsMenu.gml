// Change sprite sprYesNo
var inst = instance_nearest(x, y, objYesNo);
with (inst)
    image_index = !image_index;

// Choose option
switch (menu[option]){

    case "Multiplayer":
        isMultiplayer = !isMultiplayer;
        break;

    case "Sound":
        isSound = !isSound;
        scrMgrBgSound();
        break;

    case "Full screen":
        window_set_fullscreen(!window_get_fullscreen());
        break;

    default:
        show_debug_message("Bug in scrOptionsMenu");
        break;

}
