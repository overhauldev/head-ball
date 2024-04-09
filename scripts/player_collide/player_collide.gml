// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_collide(){
	if place_meeting(x + hsp, y, player_collide_obj )
	{
		var _pixelCheck = sign(hsp)
		while(!place_meeting(x + _pixelCheck, y, player_collide_obj ))
			{
				x += _pixelCheck
			}
			hsp = 0
	}

	// vertical collidesion
	if place_meeting(x, y + vsp, player_collide_obj)
	{	
		var _pixelCheck = sign(vsp)
		while (!place_meeting(x, y+_pixelCheck, player_collide_obj))
			{
				y += _pixelCheck
			}
			vsp = 0
	}
}