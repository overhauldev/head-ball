var hit = false
var hit2 = false
var _space = keyboard_check(vk_space)

var insideL = false;
var insideR = false;


// Get the bounding box of ball
var l1 = bbox_left;
var r1 = bbox_right;
var t1 = bbox_top;
var b1 = bbox_bottom;

// goal left
var l2 = goalObjL.bbox_left;
var r2 = goalObjL.bbox_right;
var t2 = goalObjL.bbox_top;
var b2 = goalObjL.bbox_bottom;

// goal right
var l3 = goalObjR.bbox_left;
var r3 = goalObjR.bbox_right;
var t3 = goalObjR.bbox_top;
var b3 = goalObjR.bbox_bottom;
// apply gravity

vsp += grv
// collisionz


if place_meeting(x + hsp, y, collide_obj )
	{
		hsp /= 1.1
		while(!place_meeting(x + sign(hsp), y, collide_obj ))
			{
				x += sign(hsp)
			}
		hsp *= -bouncedecay
		poop = true
	}

// vertical collidesion
if place_meeting(x, y + vsp, collide_obj)
	{	
		vsp /= 1.1
		while (!place_meeting(x, y+sign(vsp), collide_obj))
			{
				y += sign(vsp)
			}
		if vsp > 1.5 {
			vsp *= -bouncedecay
		}
		poop = true
	}
if poop {
	if (!poopin) {
		poopin = true
		audio_play_sound(ball_hit,1,0)
		alarm[1] = 0.2*room_speed
	}
	
	poop = false
}
if place_meeting(x+hsp,y,obj_player)
	{
		hsp += sign(hsp)
		hit = true
	}

if place_meeting(x,y+vsp,obj_player)
{
	vsp += sign(vsp)
	hit = true		
}
	
if place_meeting(x+hsp,y,obj_player2)
	{
		hsp += sign(hsp)
		hit2 = true
	}
if place_meeting(x,y+vsp,obj_player2)
	{
		vsp += sign(vsp)
		hit2 = true	
	}
			
	

//force
var _space = keyboard_check(vk_space)
if _space {
	// Calculate horizontal and vertical components of the force
	vsp = random_range(-20,20)
	hsp = random_range(-20,20)

}

if hit == true {
	hit = true;

    var cur_move_speed = sqrt(sqr(hsp) + sqr(vsp));                 //pythagorean theorem. c = square root of a sqaured + b squared. used to calculate current move speed
    var new_angle = point_direction(obj_player.x, obj_player.y, x, y);
    hsp =  dcos(new_angle) * cur_move_speed;                       //same as = lengthdir_x(cur_move_speed, new_angle);
    vsp = -dsin(new_angle) * cur_move_speed;                       //same as = lengthdir_y(cur_move_speed, new_angle);  
	if (!hitting) {
		hitting = true
		audio_play_sound(ball_hit,1,0)
		alarm[0] = 0.5*room_speed;
	}
}
if hit2 == true {
	hit2 = true;

    var cur_move_speed = sqrt(sqr(hsp) + sqr(vsp));                 //pythagorean theorem. c = square root of a sqaured + b squared. used to calculate current move speed
    var new_angle = point_direction(obj_player2.x, obj_player2.y, x, y);
    hsp =  dcos(new_angle) * cur_move_speed;                       //same as = lengthdir_x(cur_move_speed, new_angle);
    vsp = -dsin(new_angle) * cur_move_speed;                       //same as = lengthdir_y(cur_move_speed, new_angle);  
	if (!hitting) {
		hitting = true
		audio_play_sound(ball_hit,1,0)
		alarm[0] = 0.5*room_speed;
	}
}

// audio

// if place_meeting(x,y,goalObjL) {
	
	
// check for goal

if (l1 > l2 && r1 < r2 && t1 > t2 && b1 < b2) {
    insideL = true;
}
if (l1 > l3 && r1 < r3 && t1 > t3 && b1 < b3) {
    insideR = true;
}

//update sccore

if insideL {
	obj_game.score2 += 1
	show_debug_message(obj_game.score2)
	audio_play_sound(deeeneeeyy,1,false)
	obj_game.goal_scored = true
}

if insideR {
	obj_game.score1 += 1
	audio_play_sound(deeeneeeyy,1,false)
	obj_game.goal_scored = true
}
	
// clamp speeds

// audio

vsp = clamp(vsp, -speed_max, speed_max)
hsp = clamp(hsp, -speed_max, speed_max)

y += vsp
x += hsp




hsp *= 0.998
