currentInterval ++
if (currentInterval == shootingSpeed){
	currentInterval = 0
	sprite_index = cannon_Attacking
}

if (sprite_index == cannon_Attacking && image_index > 5 && alreadyShot == false){
	var instance = instance_create_layer(x+35,y,"player",cannonBall)
	with (instance){
		image_xscale = other.image_xscale
	}
	alreadyShot = true
}
show_debug_message(image_xscale)