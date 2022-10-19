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
isMoving = true;
}
//right
if(keyboard_check(ord("D")) and !instance_place(x + move_speed, y, obj_wall)) {
x += move_speed;
isMoving = true;
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
	equipped = obj_stick;	
}
//if bob touches net pickup, equip net as the secondary
if(instance_place(x, y, obj_net_pickup)) {
	secondary_equipped = obj_net;
	net_count += 2;
}
//if number of nets is greater than 0, Bob can throw nets
if(net_count > 0) {
	can_shoot = true;
} else {
	can_shoot = false;	
}
//if bob is holding sword
if (equipped == obj_sword) {
// if space is pressed, draw sword
	if (keyboard_check_pressed(vk_space)) {
		instance_create_layer(x, y, "Instances", obj_sword);
	}
}
//if bob is holding stick
if (equipped == obj_stick) {
// if space is pressed, draw stick
	if (keyboard_check_pressed(vk_space)) {
		instance_create_layer(x, y, "Instances", obj_stick);
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

show_debug_message(obj_Bob.bob_hp);