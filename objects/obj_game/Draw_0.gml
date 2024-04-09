if (room = Room1 or room = BigGoalsRoom) {
	draw_set_font(pixel_font)
	draw_text(160,190,score1)
	draw_text(1215,190,score2)
	draw_text(room_width/2,100, ran_state)
	draw_set_halign(fa_center)
	draw_set_color(c_red)
}