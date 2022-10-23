
//start patrol route

//var path_toPlayer = path_add();

if object_exists(obj_Bob){
	if distance_to_object(obj_Bob) < aggro_range{
		path_end()
		direction = point_direction(x, y, obj_Bob.x, obj_Bob.y)
	}
}

if(obj_Boogeyman.trapped == true) {
	cursed = false;
}
//turn back to trashcan
if(cursed == false) {
	move_speed = 0;
	instance_change(obj_bush, true);
}
