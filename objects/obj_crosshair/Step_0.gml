/// @description Insert description here
// You can write your code in this editor
var silo = instance_nearest(x,y, obj_silo);

if(keyboard_check_pressed(vk_space)){
	if(global.missiles > 0){		
		with(silo){
			instance_create_layer(x,y, "Instances", obj_missile);
			global.missiles -= 1;
		}
	}
}