///bullet();
///@param bulletType
switch(argument0) {
#region standard
	case "standard":
		if (oStats.weaponPower == 0) {
			instance_create_layer(x, y, "Instances", oBullet);	
		}
		
		if (oStats.weaponPower == 1) {
			instance_create_layer(x, y-2, "Instances", oBullet);
			instance_create_layer(x, y+2, "Instances", oBullet);
			oBullet.damage_ = 2;
		}
		
		if (oStats.weaponPower == 2) {
			instance_create_layer(x, y-5, "Instances", oBullet);
			instance_create_layer(x, y, "Instances", oBullet);
			instance_create_layer(x, y+5, "Instances", oBullet);
			oBullet.damage_ = 3;
		}
		
		if (oStats.weaponPower == 3) {
			instance_create_layer(x, y-7, "Instances", oBullet);
			instance_create_layer(x, y-2, "Instances", oBullet);
			instance_create_layer(x, y+2, "Instances", oBullet);
			instance_create_layer(x, y+7, "Instances", oBullet);
			oBullet.damage_ = 4;
		}
		
		if (oStats.weaponPower >= 4) {
			instance_create_layer(x, y-9, "Instances", oBullet);
			instance_create_layer(x, y-5, "Instances", oBullet);
			instance_create_layer(x, y, "Instances", oBullet);
			instance_create_layer(x, y+5, "Instances", oBullet);
			instance_create_layer(x, y+9, "Instances", oBullet);
			oBullet.damage_ = 5;
		}
	break;	 
#endregion standard

#region spread
	case "spread":
		if (oStats.weaponPower == 0) {
			var a, b, c;
			a = instance_create_layer(x, y, "Instances", oBullet);
			b = instance_create_layer(x, y, "Instances", oBullet);
			c = instance_create_layer(x, y, "Instances", oBullet);
			a.direction = 20;
			b.direction = 0;
			c.direction = 340;
		}
		
		if (oStats.weaponPower == 1) {
			var a, b, c, d;
			a = instance_create_layer(x, y, "Instances", oBullet);
			b = instance_create_layer(x, y, "Instances", oBullet);
			c = instance_create_layer(x, y, "Instances", oBullet);
			d = instance_create_layer(x, y, "Instances", oBullet);
			a.direction = 25;
			b.direction = 10;
			c.direction = 335;
			d.direction = 350;
		}
		
		if (oStats.weaponPower == 2) {
			var a, b, c, d, e;
			a = instance_create_layer(x, y, "Instances", oBullet);
			b = instance_create_layer(x, y, "Instances", oBullet);
			c = instance_create_layer(x, y, "Instances", oBullet);
			d = instance_create_layer(x, y, "Instances", oBullet);
			e = instance_create_layer(x, y, "Instances", oBullet);
			a.direction = 20;
			b.direction = 10;
			c.direction = 0;
			d.direction = 340;
			e.direction = 350;
		}
		
		if (oStats.weaponPower == 3) {
			var a, b, c, d, e, f;
			a = instance_create_layer(x, y, "Instances", oBullet);
			b = instance_create_layer(x, y, "Instances", oBullet);
			c = instance_create_layer(x, y, "Instances", oBullet);
			d = instance_create_layer(x, y, "Instances", oBullet);
			e = instance_create_layer(x, y, "Instances", oBullet);
			f = instance_create_layer(x, y, "Instances", oBullet);
			a.direction = 30;
			b.direction = 15;
			c.direction = 5;
			d.direction = 330;
			e.direction = 345;
			f.direction = 355;
		}
		
		if (oStats.weaponPower >= 4) {
			var a, b, c, d, e, f, g;
			a = instance_create_layer(x, y, "Instances", oBullet);
			b = instance_create_layer(x, y, "Instances", oBullet);
			c = instance_create_layer(x, y, "Instances", oBullet);
			d = instance_create_layer(x, y, "Instances", oBullet);
			e = instance_create_layer(x, y, "Instances", oBullet);
			f = instance_create_layer(x, y, "Instances", oBullet);
			g = instance_create_layer(x, y, "Instances", oBullet);
			a.direction = 30;
			b.direction = 15;
			c.direction = 5;
			d.direction = 330;
			e.direction = 345;
			f.direction = 355;
			g.direction = 0;
		}
	break;
#endregion spread

#region homing
	case "homing":
		instance_create_layer(x, y, "Bullets", oMissle);
	break;
#endregion homing

#region snipe
	case "snipe":
		instance_create_layer(x, y, "Bullets", oSniperBullet);		
	break;
#endregion snipe
}