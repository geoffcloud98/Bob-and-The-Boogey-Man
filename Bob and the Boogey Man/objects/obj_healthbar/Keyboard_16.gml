/// @description Insert description here
// You can write your code in this editor




if (keyboard_check_pressed(ord("H"))){
	obj_Bob.bob_hp = 100;
}
if (keyboard_check_pressed(ord("R"))){
	room_restart();
}
if (keyboard_check_pressed(ord("K"))){
	instance_destroy(obj_evilTrash);
}
if (keyboard_check_pressed(ord("N"))){
	obj_Bob.net_count += 10;
}