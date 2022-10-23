//if player exists set its x and y on the player
image_xscale = obj_Bob.image_xscale;

if(instance_exists(obj_Bob)) {
		if(obj_Bob.image_xscale == 1) {
			x = obj_Bob.x + 14;
			y = obj_Bob.y + 5;
		}
		if(obj_Bob.image_xscale == -1) {
			x = obj_Bob.x -14;
			y = obj_Bob.y + 5;
		}
}




