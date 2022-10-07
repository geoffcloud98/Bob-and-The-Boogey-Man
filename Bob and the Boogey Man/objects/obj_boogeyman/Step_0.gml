//If boogeyman goes out of bounds
if (y - sprite_yoffset > room_height) {
	y = 0;
	x = irandom_range(sprite_xoffset, room_width - sprite_xoffset);
}
else if (y - sprite_yoffset < room_height) {
	y = room_height - sprite_yoffset;
}


