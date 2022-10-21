//on destroy spawn hearts, make bob move faster 
instance_create_layer(x, y+3, "Instances", obj_life);

obj_Bob.move_speed = obj_Bob.move_speed + 1;


