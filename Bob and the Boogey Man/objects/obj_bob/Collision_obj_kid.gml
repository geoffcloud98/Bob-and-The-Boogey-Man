//when bob collides with kid, kid is free
var kidtobeFreed = instance_nearest(x, y, obj_kid);
kidtobeFreed.isFree = true;

audio_play_sound(snd_saveKid, 1, false);