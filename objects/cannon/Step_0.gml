currentInterval ++
if (currentInterval == shootingSpeed){
	currentInterval = 0
	sprite_index = cannon_Attacking
}

if (sprite_index == cannon_Attacking && image_index > 5 && alreadyShot == false){
	instance_create_layer(x+35,y,"player",cannonBall)
	alreadyShot = true
}