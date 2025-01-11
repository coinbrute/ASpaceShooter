image_angle = direction;

var dir, accel, ex, ey, enemy, maxSpeed;

enemy = oEnemy;
accel = .5;
maxSpeed = 6;

if (instance_exists(enemy)) {
	ex = instance_nearest(x, y, enemy).x;
	ey = instance_nearest(x, y, enemy).y;
	dir = point_direction(x, y, ex, ey);
	motion_add(dir, accel);
	if (speed >= maxSpeed) {
		speed = maxSpeed;
	}
	if (distance_to_object(enemy) < 15) {
		move_towards_point(ex, ey, speed);
	}
} else {
	direction = 0;
	if (speed < maxSpeed) {
		speed += accel;
	}
}