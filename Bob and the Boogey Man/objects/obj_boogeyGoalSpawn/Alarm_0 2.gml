

var spawned_bush = instance_create_layer(x, y, "Instances", obj_bush);

spawned_bush.image_xscale = 0.0625;
spawned_bush.image_yscale = 0.0625;

//check if boogeyman spawns inside walls
if(instance_exists(spawned_bush)) {
	if(instance_place(spawned_bush.x, spawned_bush.y, obj_wall)) {
		instance_destroy(spawned_bush);
	}
}

alarm[0] = 100;