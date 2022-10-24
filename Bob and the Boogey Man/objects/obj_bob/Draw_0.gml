/// @description Insert description here
// You can write your code in this editor
if damagedBob = true{
	shader_set(Shader3);
	draw_self();
	//shader_set(Shader3);
	shader_reset();
}

else{
	draw_self();
}

/* Canceled enum for timeline
enum times
{
	a = 0,
	b = 1800,
	c = 3600,
	d = 5400,
	e = 7200,
	f = 9000,
	g = 10800,
	h = 12600,
	i = 14400,
	j = 16200,
	k = 18000
}
*/
