//start patrol route


//var path_toPlayer = path_add();

if object_exists(obj_Bob){
	if distance_to_object(obj_Bob) < aggro_range{
		path_end()
		direction = point_direction(x, y, obj_Bob.x, obj_Bob.y)
	}
}

/*
if inflictDamage = true{
	obj_Bob.bob_hp -= 20;
	alarm[0] = 1
}
*/


