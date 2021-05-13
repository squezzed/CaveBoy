// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function direction_move_bounce(){
	var collision_object = argument0;
	
		//Horizontal Collisions
		if (place_meeting(x + xspeed, y , collision_object)) {
			while (!place_meeting(x + sign(xspeed), y , collision_object)) {
				x += sign(xspeed);	
			}
			xspeed = -(xspeed / 4);
		}
	
		x += xspeed;
	
		// Vertical Collisions
		if (place_meeting(x, y + yspeed, collision_object)) {
			while(!place_meeting(x, y + sign(yspeed), collision_object)) {
				y += sign(yspeed);	
			}
			yspeed = -(yspeed / 4);
			if (abs(yspeed) < 2) {
				yspeed = 0;	
			}
		}
	
		y += yspeed;

}