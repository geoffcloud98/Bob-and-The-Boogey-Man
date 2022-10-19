//if goal is too far destroy it
if(instance_exists(obj_Boogeyman)) {
	if(distance_to_object(obj_Boogeyman) > spawn_range) {
		instance_destroy();
	}
}

