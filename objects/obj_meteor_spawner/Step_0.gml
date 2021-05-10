/// @description Insert description here
// You can write your code in this editor
next_spawn = next_spawn - 1;


next_spawn = next_spawn - 1;
if(next_spawn <= 0){
	instance_create_layer(x,y, "Instances", obj_meteor);
	next_spawn = irandom_range(5, 20) * 60;
}
