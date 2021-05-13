/// @description Initialize some variables

global.hp = 3;
global.max_hp = 3;
global.sapphires = 0;

display_set_gui_size(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));

//Start the music
audio_play_sound(a_title, 10, false);