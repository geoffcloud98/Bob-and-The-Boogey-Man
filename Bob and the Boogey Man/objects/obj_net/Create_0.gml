hspeed = hspd;
image_xscale = obj_Bob.image_xscale;


//if bob is facing left, move left
if (image_xscale == -1) {
	hspeed = hspd * -1;	
} 
//if bob is facing right, move right
if (image_xscale == 1) {
	hspeed = hspd * 1;	
}
	
