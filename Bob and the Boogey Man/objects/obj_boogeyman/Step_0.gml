//If boogeyman goes out of bottom bounds, reset at the top of the screen
if (y - sprite_yoffset > room_height) {
	y = 0;
	x = irandom_range(sprite_xoffset, room_width - sprite_xoffset);
}

