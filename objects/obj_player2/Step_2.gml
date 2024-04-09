if (instance_exists(foot))
	var _kick = keyboard_check(ord("M"))
	if (_kick = 1)
	{
		foot.image_angle += 21
		if (foot.x < x + kick_reach && foot.y < y + kick_height)
		{
			foot.x -= 8
			foot.y += 1
		}
		else
		{
			foot.x = x + kick_reach
			foot.y = y + kick_height
		}
		if (foot.image_angle > -90) 
		{
			foot.image_angle = -90
		}
	}
	else
	{
		foot.image_angle = 30
	}