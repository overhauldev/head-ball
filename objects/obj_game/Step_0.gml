/// @description Insert description here
// You can write your code in this editor


if (start_timer == true) {timer = room_speed * 60;}

if (timer > 0) {timer--;}

if (timer == 0)
{
 // do alarm stuff
	timer = -1; // This is important, or the timer will trigger every step once it runs out
}

if (goal_scored =  true) { 
	// move to temp room then back to room to reset
	room_goto(temp_room)
	room_goto(Room1)
	goal_scored = false
	// get rAndom room state to go to after a goal
	ran_num = random_range(0,array_length(game_state))
	ran_state = game_state[ran_num]
}

// Choose and change properties of room
if room = Room1 {
	if (ran_state == "normal") {
		obj_player.grv = .3
		obj_player2.grv = .3
		ball.grv = .3
		game_set_speed(60, gamespeed_fps)
	}
	if (ran_state == "speedy") {
		obj_player.grv = .3
		obj_player2.grv = .3
		ball.grv = .3
		game_set_speed(120, gamespeed_fps)
	}
	if (ran_state == "low gravity") {
		obj_player.grv = .15
		obj_player2.grv = .15
		ball.grv = .15
		game_set_speed(60, gamespeed_fps)
	}
	if (ran_state == "big goals") {
		obj_player.grv = .3
		obj_player2.grv = .3
		ball.grv = .3
		game_set_speed(60, gamespeed_fps)
		room_goto(BigGoalsRoom)
		
	}
}
else if (room = blu_winner6 or room = red_winner) {
	ran_state = "normal"
}


if (score1 > 4) {
	room_goto(red_winner)
	score1 = 0
	score2 = 0
}
if (score2 > 4) {
	room_goto(blu_winner6)
	score1 = 0
	score2 = 0
}

if (room == red_winner or room == blu_winner6) {
	if !audio_is_playing(mogging) {
		audio_stop_all()
		audio_play_sound(deeeneeeyy,1,false)
		audio_play_sound(mogging, 1, true)
	}
}
else {
	audio_stop_sound(mogging)
}
if (room == Room1 or room = BigGoalsRoom) {
	if ( ! audio_is_playing(Bkg_sound) )  {
        audio_play_sound(Bkg_sound, 1, true);
    }
	if ( ! audio_is_playing(crowd) )  {
	        audio_play_sound(crowd, 1, true);
	    }
	


}
show_debug_message(ran_state)