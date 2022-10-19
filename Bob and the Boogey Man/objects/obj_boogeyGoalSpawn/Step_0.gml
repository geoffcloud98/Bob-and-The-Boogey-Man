//check if boogeyman spawns inside walls
if(instance_exists(obj_Boogeyman)) {
	if(instance_place(obj_Boogeyman.x, obj_Boogeyman.y, obj_wall)) {
		instance_destroy(obj_Boogeyman);
	}
}

if(instance_number(obj_goal) < 1) {
	//if a goal count is less than 1
	instance_create_layer(x,y, "Instances", obj_goal);
}