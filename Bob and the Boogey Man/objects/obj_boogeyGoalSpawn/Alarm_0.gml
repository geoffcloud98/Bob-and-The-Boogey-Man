//if boogeyman count is less than 1
if(instance_number(obj_Boogeyman) < 1) {
	//create one
	instance_create_layer(x,y, "Instances", obj_Boogeyman);
}
alarm[0] = -1;