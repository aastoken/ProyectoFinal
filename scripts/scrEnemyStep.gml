vsp += GRAVITY;

// Collision player
if (place_meeting(x, y, obj_Player)){
    if (show_question("Game Over. Restart game?")){
        audio_stop_all();
        room_goto(room);
    }
    else
        game_end();
}

scr_collisions();

