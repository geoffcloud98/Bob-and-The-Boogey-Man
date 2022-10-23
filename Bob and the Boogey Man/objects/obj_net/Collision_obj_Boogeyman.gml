//when net hits boogeyman
instance_destroy();

obj_Boogeyman.hspd = 0;
obj_Boogeyman.trapped = true;

//Play monster scream sound
audio_play_sound(snd_boogeymanCaught, 2, false);

var stopBoogeyman = audio_play_sound(snd_boogeymanCaught, 1, false); 
audio_sound_gain(stopBoogeyman, 0, 0);


instance_create_layer(x, y, "Instances", obj_win);