/// @description 11:00
if instance_exists(obj_Bob){
	//400x 150y
	var snd = audio_play_sound(snd_backgroundMusic)
	audio_sound_gain(snd, 0, 0)
	audio_play_sound(snd_elevenOClock, 1, true)
	draw_text(obj_Bob.x + 40, obj_Bob.y + 15, "11:00")
}