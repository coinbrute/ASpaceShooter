draw_set_font(fOne);
draw_set_halign(fa_left);

draw_text(960, 8, "Score: " + string(score_));
draw_text(960, 40, "Weapon Power: " + string(weaponPower));
draw_text(960, 72, "Lives: " + string(lives_));