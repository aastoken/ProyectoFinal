key_up = keyboard_check(ord('W')) || (gamepad_axis_value(1,gp_axislv)<0);
key_down = keyboard_check(ord('S'))|| (gamepad_axis_value(1,gp_axislv)>0);
key_right = keyboard_check(ord('D'))|| (gamepad_axis_value(1,gp_axislh)>0);
key_left = keyboard_check(ord('A'))|| (gamepad_axis_value(1,gp_axislh)<0);
key_jump = keyboard_check_pressed(vk_space) || (gamepad_button_check_pressed(1,gp_face1));
key_run = keyboard_check(vk_shift)|| (gamepad_button_check(1,gp_face2))|| (gamepad_button_check(1,gp_shoulderrb));
key_shoot = mouse_check_button(mb_left)|| (gamepad_button_check_pressed(1,gp_face3));
key_interact=keyboard_check(ord('E'))|| (gamepad_button_check(1,gp_face4));

//Look inside the step event of objGameManager for the restart code
