/// @description Insert description here
// You can write your code in this editor
if( mouse_check_button(mb_left)) {
	if (mouse_x >= bbox_left and mouse_x <= bbox_right and
		mouse_y >= bbox_top and mouse_y <= bbox_bottom) {
			audio_play_sound(button_click_sound,1,0)
			room_goto(help_room)
		}
}
		