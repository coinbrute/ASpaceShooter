if (canHurt == true) {
	hp_ -= 1;
	canHurt = false;
	image_alpha = .5;
	alarm[2] = 60;
}


effect_create_above(ef_explosion, x, y, .5, c_orange);
effect_create_below(ef_ring, x, y, .5, c_white);
effect_create_below(ef_smokeup, x, y, .5, c_dkgray);

instance_destroy(other, false);
