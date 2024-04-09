player_speed = 7
hsp = 0
vsp = 0
grv = .3
image_xscale *= -1


var _right = keyboard_check(vk_right)
var _left = keyboard_check(vk_left)
var _up = keyboard_check_pressed(vk_up)
var _upheld = keyboard_check(vk_up)

//jumos
jumpSpd = -8
jumpMax = 1
jumpCount = 0
jumpHoldFrames = 25
jumpTimer = 0

playerID = 1
foot = instance_create_layer(x,y, "Instances", obj_foot2)
obj_foot2.image_angle= 30
kick_reach = -48
kick_height = -24

kick_x = x-80