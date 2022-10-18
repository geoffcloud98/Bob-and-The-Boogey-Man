
x = random_range(0, 1920);
y = random_range(0, 1080);
//if goal collides with a wall, destroy goal
if (instance_place(x, y, obj_wall)) {
	instance_destroy(obj_goal);
}

