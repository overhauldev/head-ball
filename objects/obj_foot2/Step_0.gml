/// @description Insert description here
// You can write your code in this editor
var _kick = keyboard_check(ord("M"))

y_foot = obj_foot2.y
x_foot = obj_foot2.x

y_ball = obj_ball.y 
x_ball = obj_ball.x
// kick function
y_dist = abs(y_foot - y_ball)
x_dist = abs(x_foot - x_ball)

// checks distance of the ball from foot and applies the force depending on how close it is to
// the ball to simulate harder and softer kicks
if (y_dist < 50 and x_dist < 30) {
	bigshoot = true
}
else if (y_dist < 50 and x_dist < 50) {
	medshoot = true
}
else if (y_dist < 50 and x_dist < 70) {
	smallshoot = true
}
else {
	bigshoot = false
	medshoot = false
	smallshoot = false
}
if (bigshoot and _kick){ 
	obj_ball.vsp -= 20
	obj_ball.hsp -= 70
}
if (medshoot and _kick){ 
	obj_ball.vsp -= 10
	obj_ball.hsp -= 60
}
if (smallshoot and _kick){ 
	obj_ball.vsp -= 5
	obj_ball.hsp -= 60
}