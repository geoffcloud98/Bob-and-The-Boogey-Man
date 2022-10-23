hspeed = hspd;
image_xscale = 0.05;
image_yscale = 0.05;
image_angle = 90;


//if bob is facing left, move left
if (obj_Bob.image_xscale == -1) {
	hspeed = hspd * -10;	
} 
//if bob is facing right, move right
if (obj_Bob.image_xscale == 1) {
	hspeed = hspd * 10;	
}
	
audio_play_sound(snd_netThrow, 2, false);
