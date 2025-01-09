function follow(objectToFollow, _x, _y) {
	if (instance_exists(objectToFollow)) {
		x = objectToFollow.x + _x;
		y = objectToFollow.y + _y;
	} else {
		instance_destroy();
	}
}