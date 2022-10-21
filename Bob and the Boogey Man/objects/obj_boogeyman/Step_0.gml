//check if boogeyman spawns inside walls
if(instance_exists(obj_Boogeyman)) {
	if(instance_place(obj_Boogeyman.x, obj_Boogeyman.y, obj_wall)) {
		instance_destroy(obj_Boogeyman);
	}
}
//if trashcan exists
var obj_tobeCursed = noone;
if(instance_exists(obj_trashcan)) {
	//hold id of the closest obj_trashcan
	var obj_tobeCursed = instance_nearest(x, y, obj_trashcan);
	//if closest obj is within curse range and is not cursed
	if(distance_to_object(obj_tobeCursed) < curse_range and obj_tobeCursed.cursed == false) {
		cursing = true;
	} else {
		cursing = false;
	}
}
else if(instance_exists(obj_bush)) {
	//hold id of the closest obj_trashcan
	var obj_tobeCursed = instance_nearest(x, y, obj_bush);
	//if closest obj is within curse range and is not cursed
	if(distance_to_object(obj_tobeCursed) < curse_range and obj_tobeCursed.cursed == false) {
		cursing = true;
	} else {
		cursing = false;
	}
}

//if boogeyman is cursing, go to a random obj and curse it
if(cursing) {

	
	//path variable for boogeyman
	var curse_path = path_add();
	//make potential paths to the obj to be cursed
	mp_potential_path_object(curse_path, obj_tobeCursed.x, obj_tobeCursed.y, 0.5, 4, obj_wall);
	//start best path to take
	path_start(curse_path,hspd, path_action_stop,true);
	
	//Once a threshold is reached, curse the obj
	if(distance_to_object(obj_tobeCursed) < 5) {
		obj_tobeCursed.cursed = true;
	}
	
}
//set parameters for path finding
mp_potential_settings(45,10,10, true);
//If boogeyman is not cursing
if(!cursing) {
		if(instance_exists(obj_goal)){
			//for the factor argument, the larger the number, the more path ideas the obj can create
			//path variable for obj_boogeyman
			var my_path = path_add();
			//generates potential paths to take based on obstacles
			mp_potential_path_object(my_path, obj_goal.x, obj_goal.y, 0.5, 4, obj_wall);
			//start the best path to take
			path_start(my_path, hspd, path_action_stop, true);
			//if boogey man reaches goal, destroy it
			if(instance_place(x,y,obj_goal)) {
				instance_destroy(obj_goal);
			}
		}
}


