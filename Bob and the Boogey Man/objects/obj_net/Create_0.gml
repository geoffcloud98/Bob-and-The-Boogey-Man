hspeed = hspd;
image_xscale = obj_Bob.image_xscale;


//if bob is facing left, move left
if (obj_Bob.image_xscale == -1) {
	hspeed = hspd * -10;	
} 
//if bob is facing right, move right
if (obj_Bob.image_xscale == 1) {
	hspeed = hspd * 10;	
}
	
audio_play_sound(snd_netThrow, 2, false);
