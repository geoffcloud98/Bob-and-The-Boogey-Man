//If kid is not free, cant move
if(!isFree) {
	kid_speed = 0;
}
//if kid is free, go home
if(isFree) {
	kid_speed = 5;
//find closest house to kid
var closest_house = instance_nearest(x, y, obj_house);

//path to the house
var path_toHouse = path_add();
//make potential path
mp_potential_path_object(path_toHouse, closest_house.x, closest_house.y, 0.5, 3, obj_wall);
//start path
path_start(path_toHouse, kid_speed, path_action_stop, true);
}

