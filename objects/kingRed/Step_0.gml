var xDirection = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var jump = keyboard_check_pressed(ord("W"));
var onTheGround = place_meeting(x, y + 1, oWall);

if (xDirection != 0) image_xscale = xDirection;

xSpeed = xDirection * spd;
ySpeed++;

if (onTheGround) {
  if (xDirection != 0) { 
		sprite_index = kingRed_Run; 
	} 
  else { 
		sprite_index = kingRed_Idle; 
	}
	if (jump) {
		ySpeed = -12;
	} 
}
else {
	//check if the sprite is jumping or falling
	if(sign(ySpeed) == -1){
		sprite_index = kingRed_Jumping;
	}
	else {
		sprite_index = KingRed_Falling
	}
}

if (place_meeting(x + xSpeed, y, oWall)) { 
  while (!place_meeting(x + sign(xSpeed), y, oWall)) {
    x += sign(xSpeed);
  }
xSpeed = 0;
}

x += xSpeed;

if (place_meeting(x, y + ySpeed, oWall)) { 
  while (!place_meeting(x, y + sign(ySpeed), oWall)) {
		y += sign(ySpeed);
	}
ySpeed = 0; 
}

y += ySpeed;