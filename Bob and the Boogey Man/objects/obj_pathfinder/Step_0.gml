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

/*
if(mouse_check_button_pressed(mb_left)) {
	if(instance_exists(obj_goal)) {
		instance_destroy(obj_goal);
	}
	instance_create_layer(mouse_x, mouse_y, "Instances", obj_goal);
	//look up mp_potential_paths in GM documentation for info about the arguments
	//for the factor argument, the larger the number, the more path ideas the obj can create
	
	//path variable for obj_pathfinder
	var my_path = path_add();
	//generates potential paths to take based on obstacles
	mp_potential_path(my_path, obj_goal.x, obj_goal.y, 2, 4, false);
	//start the best path to take
	path_start(my_path, 2, path_action_stop, true);
}

*/
//WARNING: in order to test pathfinding methods, make sure only one pathfinding method is being executed
//at runtime


/*
//mp linear step makes the object move in a linear line straight to  
//the goal w/o avoiding obstacles
if(instance_exists(obj_goal)) {
	mp_linear_step(obj_goal.x, obj_goal.y, 2, false);
}
*/
/*
//mp potential step makes the object move towards a goal while actively avoiding obstacles
if(instance_exists(obj_goal)) {
	mp_potential_step(obj_goal.x, obj_goal.y, 2, false);	
}
*/

 
