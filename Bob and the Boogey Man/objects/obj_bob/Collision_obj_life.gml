//when bob colides with life heal him
//if bobs health is less than 100
if(obj_Bob.bob_hp < 100) {
	instance_destroy(other);
	
	obj_Bob.bob_hp += 25;
} 

//if bobs hp is greater or equal to 100, don't pick it up. 
//Bobs health is still 100
if(obj_Bob.bob_hp >= 100) {
	obj_Bob.bob_hp = 100;	
}