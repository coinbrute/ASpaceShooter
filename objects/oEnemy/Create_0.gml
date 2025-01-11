path = choose(true, false);
hp_ = 4;
image_speed = 0;
image_index = 0;

if (path == true) {
	path_start(choose(path0, path1, path2, path3), 2, path_action_stop, true);
} else {
	speed = random_range(2, 4);
	direction = 180;
	x = room_width + 16;
	y = random_range(16, 240);
}
