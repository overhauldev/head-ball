// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function jump_scr(input){
	if input == "W" {
		var _up = keyboard_check_pressed(ord(input))
		var _upheld = keyboard_check(ord(input))
		show_debug_message(input)
	}
	else {
		var _up = keyboard_check_pressed(input)	
		var _upheld = keyboard_check(input)
	}


	// reset the jump count
	if place_meeting(x,y+1,player_collide_obj)
	{
		jumpCount = 0
	}
	else
	{
		if jumpCount == 0
		{
			jumpCount = 1
		}
	}
	// initiate our jump
	if _up && jumpCount < jumpMax
	{
		// count up your number of performed jumps
		jumpCount++
		
		// set the jump timer
		jumpTimer = jumpHoldFrames
	}
	
	// end the jump early by stopping the timer if the jump button is not held
	if !_upheld { jumpTimer = 0 }
	
	// jump based on timer
	if jumpTimer > 0
	{
		// constantly set the yspd to be the jumpSpd
		vsp = jumpSpd
		// count down the jump timer
		jumpTimer--
		
	}
}
