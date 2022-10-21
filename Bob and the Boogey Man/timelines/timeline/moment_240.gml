/// @description Eleven O'Clock

//Stop snd_backgroundMusic and play snd_elevenOClock
var stopMusic = audio_play_sound(snd_backgroundMusic, 1, false); 
audio_sound_gain(stopMusic, 0, 0);

audio_play_sound(snd_elevenOClock, 1, true);