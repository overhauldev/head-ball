// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ball_collide(){
	var _space = keyboard_check(vk_space)
	if _space {
	    // Calculate horizontal and vertical components of the force
	    var force_x = lengthdir_x(hsp, rot_angle);
	    var force_y = lengthdir_y(vsp, rot_angle);
    
	    // Apply the force
		x += force_x;
	    y += force_y;
	}

}