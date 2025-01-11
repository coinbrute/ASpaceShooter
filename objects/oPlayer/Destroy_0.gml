effect_create_above(ef_explosion, x, y, .5, c_orange);
effect_create_below(ef_ring, x, y, .5, c_white);
effect_create_below(ef_smokeup, x, y, .5, c_dkgray);

if (instance_exists(burner)) {
	instance_destroy(burner);
}

oStats.lives_ -= 1;

if (oStats.lives_ > 0) {
	instance_create_layer(16, room_height / 2, "Instances", oPlayer);
}