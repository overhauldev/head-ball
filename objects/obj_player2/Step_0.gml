/// @description Insert description here
// You can write your code in this editor


var _right = keyboard_check(vk_right)
var _left = keyboard_check(vk_left)
var _up = keyboard_check_pressed(vk_up)
var _upheld = keyboard_check(vk_up)


var hmove = _right - _left
if hmove != 0
	{
		hsp = player_speed * hmove
	}
	else
	{
		hsp = 0
	}
 
vsp += grv

// jump
// reset the jump count
if place_meeting(x,y+1,collide_obj)
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
	audio_play_sound(jump_sound,1,false)

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

//collision script run
collisions()
player_collide()
x += hsp
y += vsp

// foot position update
foot.x = x
foot.y = y

