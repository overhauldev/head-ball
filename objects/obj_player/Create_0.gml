player_speed = 7
hsp = 0
vsp = 0
grv = .3

//jumos
jumpSpd = -8
jumpMax = 1
jumpCount = 0
jumpHoldFrames = 25
jumpTimer = 0

playerID = 0

foot = instance_create_layer(x,y, "Instances", obj_foot)
obj_foot.image_angle=-30
kick_reach = 48
kick_height = -24

kick_x = x + 80

kick = false
khsp = 0
kvsp = 0

bigshoot = true
medshoot= true
smallshoot= true
range = 60