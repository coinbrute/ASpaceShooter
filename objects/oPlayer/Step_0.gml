#region clamping
x = clamp(x, 8, room_width-8);
y = clamp(y, 8, room_height-8);
#endregion clamping

#region controls
var up, down, left, right, shoot, reset, leave, diag, hMove, vMove;

reset = keyboard_check(ord("R"));
leave = keyboard_check(vk_escape);
up    =	keyboard_check(vk_up);
down  =	keyboard_check(vk_down);
left  =	keyboard_check(vk_left);
right =	keyboard_check(vk_right);
shoot =	keyboard_check(ord("F"));
hMove = right - left;
vMove = down - up;
diag  = (up or down) and (left or right);
#endregion controls

#region restart/exit
if (reset) {
	game_restart();
}

if (leave) {
	game_end();
}
#endregion restart/exit

#region attack
if (canShoot and shoot) {
	bullet(bulletType);
	effect_create_below(ef_smoke, x+8, y, .25, c_dkgray);
	canShoot = false;
	alarm[0] = oStats.coolDown;
}
#endregion attack

#region movement
if (hMove != 0) {
	hspeed_ += hMove * oStats.accel_;
	hspeed_ = clamp(hspeed_, -oStats.maxSpeed, oStats.maxSpeed);
} else {
	hspeed_ = lerp(hspeed_, 0, oStats.friction_);
}

if (vMove != 0) {
	vspeed_ += vMove * oStats.accel_;
	vspeed_ = clamp(vspeed_, -oStats.maxSpeed, oStats.maxSpeed);
} else {
	vspeed_ = lerp(vspeed_, 0, oStats.friction_);
}

diagspeed_ = sqrt(oStats.maxSpeed)/2;

if (diagspeed_) {
	hspeed_ *= diagspeed_;
	vspeed_ *= diagspeed_;
} else {
	oStats.maxSpeed = oStats.originalSpeed;	
}

x += hspeed_;
y += vspeed_;
#endregion movement

#region afterburner
if (hspeed_ >= 1) {
	burner.image_xscale = 1.5;
}

if (hspeed_ == 0) {
	burner.image_xscale = 1;
}

if (hspeed_ <= -1) {
	burner.image_xscale = .75;	
}
#endregion afterburner

#region damage
if (hp_ <= 0) {
	instance_destroy();
}
#endregion damage