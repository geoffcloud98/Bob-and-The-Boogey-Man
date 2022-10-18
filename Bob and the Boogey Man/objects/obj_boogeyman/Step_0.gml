//face right
if (direction >= 0 and direction <= 90) {
	image_xscale = 1;
}
//face right
if(direction >= 270 and direction <= 360) {
	image_xscale = 1;
}
//face left
if (direction > 90 and direction <= 180) {
	image_xscale = -1;
}//face left
if(direction > 180 and direction < 270) {
	image_xscale = -1;	
}

//If a goal exists
if(instance_exists(obj_goal)) {
	//if boogeyman reaches goal, destroy it
	if(instance_place(x, y, obj_goal)) {
		instance_destroy(obj_goal);	
	}
}
//if goal does not exist, create one
if (!instance_exists(obj_goal)) {
	instance_create_layer(x, y, "Instances", obj_goal);
}
//look up mp_potential_paths in GM documentation for info about the arguments
//for the factor argument, the larger the number, the more path ideas the obj can create
	
//path variable for obj_pathfinder
var my_path = path_add();
//generates potential paths to take based on obstacles
mp_potential_path(my_path, obj_goal.x, obj_goal.y, 2, 4, false);
//start the best path to take
path_start(my_path, hspd, path_action_stop, true);

