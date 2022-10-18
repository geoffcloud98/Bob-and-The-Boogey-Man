//On start, spawn at a random point in the map
x = random_range(0, 1920);
y = random_range(0, 1080);


//check if boogeyman spawns inside walls
if(instance_place(x, y, obj_wall)) {
	instance_destroy();
}




