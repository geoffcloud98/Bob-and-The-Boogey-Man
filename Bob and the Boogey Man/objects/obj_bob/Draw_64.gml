if(obj_Boogeyman.trapped == true) {
	draw_sprite(spr_winscreen, 0, 300, 275);	
}

if(!instance_exists(obj_Bob)) {
	draw_sprite(spr_losescreen, 0, 300, 275);	
}

