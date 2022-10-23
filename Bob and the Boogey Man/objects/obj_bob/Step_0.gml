// Set inflictDamage back to false
if (inflictDamage == true) and (alarm[0] == -1){
	//call an alarm to set it back to false
	alarm[0] = 60
}

if (damagedBob == true) and (alarm[1] == -1){
	//(Call shader to turn Bob red for an instant)
	alarm[1] = 60
}

//Logic for player movement (WASD)
//up
if(keyboard_check(ord("W")) and !instance_place(x, y - move_speed, obj_wall)) {
y -= move_speed;
isMoving = true;
}
//down
if(keyboard_check(ord("S")) and !instance_place(x, y + move_speed, obj_wall)) {
y += move_speed;
isMoving = true;
}
//left
if(keyboard_check(ord("A")) and !instance_place(x - move_speed, y, obj_wall))  {
x -= move_speed;
image_xscale = -1;
isMoving = true;
}
//right
if(keyboard_check(ord("D")) and !instance_place(x + move_speed, y, obj_wall)) {
x += move_speed;
image_xscale = 1;
isMoving = true;
}
if(!keyboard_check(ord("W")) and !keyboard_check(ord("A")) and !keyboard_check(ord("S")) and !keyboard_check(ord("D")))
{
	image_index = 0;
}

//CONSTRAINTS

//vspeed = clamp(vspeed, -4, 4);
//Constrain the out of bounds for the player
x = clamp(x, sprite_width/2, room_width-sprite_width/2);
y = clamp(y, sprite_height/2, room_height-sprite_height/2);


//Logic for deceleration after moving up(arrow keys)
if(!(keyboard_check(ord("W"))) && !(keyboard_check(ord("S")))) {
	vspeed -= sign(vspeed);	
}

		//WEAPON PICKUP LOGIC
		
//if bob touches sword pickup, equip sword from the ground
if (instance_place(x, y, obj_sword_pickup)) {
	//set equipped to sword
	equipped = obj_sword;
}
//if bob touches stick pickup, equip stick from the ground
if(instance_place(x, y, obj_stick_pickup)) {
	secondary_equipped = obj_stick;	
	stick_count += 5
}
//if bob touches net pickup, equip net as the secondary
if(instance_place(x, y, obj_net_pickup)) {
	secondary_equipped = obj_net;
	net_count += 2;
}
//if number of nets is greater than 0, Bob can throw nets
if(net_count > 0 or stick_count > 0) {
	can_shoot = true;
} else {
	can_shoot = false;	
}
//if bob is holding sword
if (equipped == obj_sword) {
// if space is pressed, draw sword
	if (keyboard_check_pressed(vk_space)) {
		instance_create_layer(x, y, "Instances", obj_sword);
		audio_play_sound(snd_swingWeapon, 2, false);
	}
}
//if bob is holding stick
if (secondary_equipped == obj_stick) {
	if(can_shoot) {
// if Z is pressed, throw stick
		if (keyboard_check_pressed(ord("Z"))) {
			instance_create_layer(x, y, "Instances", obj_stick);
			stick_count += -1;
		}
	}
}


//if bob has net as secondary
if(secondary_equipped == obj_net) {
	//if bob has enough traps
	if(can_shoot) {
		//if Z is pressed, throw net
		if(keyboard_check_pressed(ord("Z"))) {
			instance_create_layer(x, y, "Instances", obj_net);
			net_count += -1;
		}
	}
}


if bob_hp <= 0 and !instance_exists(obj_lose){
	var stopMusic = audio_play_sound(snd_backgroundMusic, 1, false); 
	audio_sound_gain(stopMusic, 0, 0);
	instance_create_layer(x, y, "Instances", obj_lose);
}

show_debug_message(obj_Bob.bob_hp);