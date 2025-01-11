instance_create_layer(room_width+16, room_height/2, "Instances", choose(oPowerup, oSpread, oHoming, oSpread_1));
alarm[1] = random_range(room_speed*3, room_speed*5);