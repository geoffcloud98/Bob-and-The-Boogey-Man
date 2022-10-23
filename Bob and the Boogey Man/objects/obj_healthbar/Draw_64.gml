/// @description Insert description here
// You can write your code in this editor


switch (obj_Bob.bob_hp)
{
	case 100: 
	draw_sprite(spr_health100, 0, 20, 20);
	break;
	
	case 80: draw_sprite(spr_health80, 0, 20, 20);
	break;
	
	case 60: draw_sprite(spr_health60, 0, 20, 20);
	break;
	
	case 40: draw_sprite(spr_health40, 0, 20, 20);
	break;
	
	case 20: draw_sprite(spr_health20, 0, 20, 20);
	break;
	
	case 0: draw_sprite(spr_health0, 0, 20, 20);
	break;
}

