//when net hits boogeyman

obj_Boogeyman.hspd = 0;

//Play monster scream sound
audio_play_sound(snd_boogeymanCaught, 2, false);
audio_play_sound(snd_cheering, 3, false);
instance_create_layer(x, y, "Instances", obj_win);