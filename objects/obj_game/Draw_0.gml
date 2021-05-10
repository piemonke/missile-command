/// @description Insert description here
// You can write your code in this editor
switch(room){
	case rm_game:
		draw_text(20, 20, "SCORE: "+string(score));
		draw_text(20, 40, "BUILDINGS: "+string(lives));
		draw_text(20, 60, "MISSILES: "+string(global.missiles));
		break;

	case rm_start:
		draw_set_halign(fa_center);
		var w = c_white;
		draw_text_transformed_color(
			room_width/2, 300, "MISSILE COMMAND",
			5, 5, 0, w,w,w,w, 1);
		draw_text_transformed(
			room_width/2, 400, 
			@"SHOOT METEORS DO DEFEND YOUR BUILDINGS
			SHOOT ALIEN SHIPS TO GET MORE MISSILES",
			2, 2, 0);
		draw_text_transformed_color(
			room_width/2, 500, 
			@"SCORE AS HIGH AS YOU CAN
			
			UP/LEFT/DOWN/RIGHT: MOVE CROSSHAIR
			SPACE: FIRE MISSILE FROM SILO NEAREST CROSSHAIR
			
			PRESS ENTER TO START",
			3, 3, 0, w,w,w,w, 1);
			
		draw_set_halign(fa_left);
		break;

	

	case rm_lose:
		draw_set_halign(fa_center);
		draw_text_transformed(
			room_width/2, 300, "GAME OVER",
			5, 5, 0);
		draw_text_transformed(
			room_width/2, 500, "FINAL SCORE: "+string(global.final),
			3, 3, 0);
		draw_text_transformed(
			room_width/2, 700, "PRESS ENTER TO RESTART",
			3, 3, 0);
		break;
}