/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_enter)){
	switch(room){
		case rm_start:
			room_goto(rm_game);
			break;
			
		case rm_lose:
			room_goto(rm_start);
			break;
	}
}

if(lives == 0){
	room_goto(rm_lose);
}