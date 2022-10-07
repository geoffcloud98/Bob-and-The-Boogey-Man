//Logic for player movement (Arrow keys)
if(keyboard_check(ord("W"))) vspeed -= 4;
if(keyboard_check(ord("S"))) vspeed += 4;
if(keyboard_check(ord("A"))) x -= 4;
if(keyboard_check(ord("D"))) x += 4;

vspeed = clamp(vspeed, -4, 4);
//Constrain the out of bounds for the player
x = clamp(x, sprite_width/2, room_width-sprite_width/2);
y = clamp(y, sprite_height/2, room_height-sprite_height/2);

//Logic for deceleration after moving up(arrow keys)
if(!(keyboard_check(ord("W"))) && !(keyboard_check(ord("S")))) {
	vspeed -= sign(vspeed);	
}