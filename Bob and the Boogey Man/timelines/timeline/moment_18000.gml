/// @description Midnight

audio_play_sound(snd_midnight, 1, false);
audio_play_sound(snd_boogeymanLaugh, 2, false);
instance_create_layer(x, y, "Instances", obj_lose);
