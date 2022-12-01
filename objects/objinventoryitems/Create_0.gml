
sprNothingIcon = sprNothing


function shoot()
{
	if (global.CurrentCharacter.mousedirection < 90 || global.CurrentCharacter.mousedirection > 270)
			{	
				for (var i = 0; i < bulletamount; ++i) 
				{
					var b = instance_create_layer(global.CurrentCharacter.x +global.CurrentCharacter.distancefromgun, global.CurrentCharacter.y, "Bullets", objBullet);
					b.damage = damage;
					 global.CurrentCharacter.guncooldown = firerate;
					b.direction = global.CurrentCharacter.mousedirection;
					b.speed = 15;
				}				
				
			}
			else	
			{
				for (var i = 0; i < bulletamount; ++i) 
				{
					var b = instance_create_layer(global.CurrentCharacter.x-global.CurrentCharacter.distancefromgun+ 1, global.CurrentCharacter.y, "Bullets", objBullet);
					b.damage = damage;
					 global.CurrentCharacter.guncooldown = firerate;
					b.direction = global.CurrentCharacter.mousedirection;
					b.speed = 15;
				}
			}
}

nothing =
{
	sprite : sprNothing,
	Icon : sprNothingIcon,
	itemtype : "gun",
	type : "none",	
	use : function()		
	{
		
	},
	firerate : 0,
	damage : 0,
	bulletamount : 0,
	maxamo : 0,
	magsize : 0,
	magamount : 5,
		
}
pistol =
{
	sprite : sprGlock19,
	Icon : sprGlock19Icon,
	itemtype : "gun",
	type : "semi",
	
	firerate : 90,
	damage : 15,
	bulletamount : 1,
	maxamo : 60,
	magsize : 12,
	magamount : 5,	
}

AK47 =
{
	sprite : sprAK47,
	Icon : sprAK47Icon,
	itemtype : "gun",
	type : "auto",
	use : function()
	{	
		shoot()
	},
	firerate : 60,
	damage : 10,
	bulletamount : 1,
	maxamo : 100,
	magsize : 20,
	magamount : 5,
}
AWP2 =
{
	sprite : sprAWP2,
	Icon : sprAWP2Icon,
	itemtype : "gun",
	type : "semi",
	use : function()
	{
		
		shoot()
	},
	firerate : 60,
	damage : 10,
	bulletamount : 1,
	maxamo : 100,
	magsize : 20,
	magamount : 5,
		
	}
	AWTW =
	{
		sprite : sprAWTW,
		Icon : sprAWTWIcon,
		itemtype : "gun",
		type : "auto",
		use : function()
		{
			
			shoot()
		},
		firerate : 60,
		damage : 10,
		bulletamount : 1,
		maxamo : 100,
		magsize : 20,
		magamount : 5,
		
		
	}
	Famas3 =
	{
		sprite : sprFamas3,
		Icon : sprFamasIcon,
		itemtype : "gun",
		type : "burst",
		use : function()
		{
			
			shoot()
		},
		firerate : 60,
		damage : 10,
		bulletamount : 1,
		maxamo : 100,
		magsize : 20,
		magamount : 5,
		
		
	}
	FranzPfannl =
	{
		sprite : sprFranzPfannl,
		Icon : sprFranzPfannlIcon,
		itemtype : "gun",
		type : "semi",
		use : function()
		{
			
			shoot()
		},
		firerate : 60,
		damage : 10,
		bulletamount : 1,
		maxamo : 100,
		magsize : 20,
		magamount : 5,
		
		
	}
	GrenadeLauncher =
	{
		sprite : sprGrenadeLauncher,
		Icon : sprGrenadeLauncherIcon,
		itemtype : "gun",
		type : "semi",
		use : function()
		{
			
			shoot()
		},
		firerate : 60,
		damage : 10,
		bulletamount : 1,
		maxamo : 100,
		magsize : 20,
		magamount : 5,
		
		
	}
	KA12 =
	{
		sprite : sprKA12,
		Icon : sprKA12Icon,
		itemtype : "gun",
		type : "semi",
		use : function()
		{
			
			shoot()
			
		},
		firerate : 60,
		damage : 10,
		bulletamount : 1,
		maxamo : 100,
		magsize : 20,
		magamount : 5,
		
		
	}
	LMT =
	{
		sprite : sprLMT ,
		Icon : sprLMTIcon,
		type : "semi",
		itemtype : "gun",
		use : function()
		{
			
			shoot()
		},
		firerate : 0,
		damage : 0,
		bulletamount : 0,
		maxamo : 0,
		magsize : 0,
		magamount : 5,
		
		
	}
	M16 =
	{
		sprite : sprM16,
		Icon : sprM16Icon,
		type : "auto",
		itemtype : "gun",
		use : function()
		{
			
			shoot()
		},
		firerate : 60,
		damage : 10,
		bulletamount : 1,
		maxamo : 100,
		magsize : 20,
		magamount : 5,
		
		
	}
	M249 =
	{
		sprite : sprM249,
		Icon : sprM249Icon,
		type : "auto",
		itemtype : "gun",
		use : function()
		{
			
			shoot()
		},
		firerate : 60,
		damage : 10,
		bulletamount : 1,
		maxamo : 100,
		magsize : 20,
		magamount : 5,
		
		
	}
	M4A1 =
	{
		sprite : sprM4A1,
		Icon : sprM4A1Icon,
		type : "semi",
		itemtype : "gun",
		use : function()
		{
			
			shoot()
		},
		firerate : 60,
		damage : 10,
		bulletamount : 1,
		maxamo : 100,
		magsize : 20,
		magamount : 5,
		
		
	}
	Magnum9 =
	{
		sprite : sprMagnum9,
		Icon : sprMagnum9Icon,
		type : "semi",
		itemtype : "gun",
		use : function()
		{
			
			shoot()
		},
		firerate : 60,
		damage : 10,
		bulletamount : 1,
		maxamo : 100,
		magsize : 20,
		magamount : 5,
		
		
	}
	Minigun =
	{
		sprite : sprMinigun,
		Icon : sprMinigunIcon,
		type : "auto",
		itemtype : "gun",
		use : function()
		{
			
			shoot()
		},
		firerate : 60,
		damage : 10,
		bulletamount : 1,
		maxamo : 100,
		magsize : 20,
		magamount : 5,
		
		
	}
	Musket =
	{
		sprite : sprMusket,
		Icon : sprMusketIcon,
		type : "semi",
		itemtype : "gun",
		use : function()
		{
			
			shoot()
		},
		firerate : 60,
		damage : 10,
		bulletamount : 1,
		maxamo : 100,
		magsize : 20,
		magamount : 5,
		
		
	}
	Remington800 =
	{
		sprite : sprRemington800,
		Icon : sprRemington800Icon,
		type : "semi",
		itemtype : "gun",
		use : function()
		{
			shoot()
		},
		firerate : 60,
		damage : 10,
		bulletamount : 1,
		maxamo : 100,
		magsize : 20,
		magamount : 5,
		
		
	}
	Remington900 =
	{
		sprite : sprRemington900,
		Icon : sprRemington900Icon,
		type : "semi",
		itemtype : "gun",
		use : function()
		{
			
			shoot()
		},
		firerate : 60,
		damage : 10,
		bulletamount : 1,
		maxamo : 100,
		magsize : 20,
		magamount : 5,
		
		
	}
	RocketLauncher =
	{
		sprite : sprRocketLauncher,
		Icon : sprRocketLauncherIcon,
		type : "semi",
		itemtype : "gun",
		use : function()
		{
			shoot()
		},
		firerate : 60,
		damage : 10,
		bulletamount : 1,
		maxamo : 100,
		magsize : 20,
		magamount : 5,
		
		
	}
	RocketLauncher1 =
	{
		sprite : sprRocketLauncher1,
		Icon : sprRocketLauncher1Icon,
		type : "semi",
		itemtype : "gun",
		use : function()
		{
			
			shoot()
		},
		firerate : 60,
		damage : 10,
		bulletamount : 1,
		maxamo : 100,
		magsize : 20,
		magamount : 5,
		
		
	}
	Skorpion =
	{
		sprite : sprSkorpion,
		Icon : sprSkorpionIcon,
		type : "semi",
		itemtype : "gun",
		use : function()
		{
			shoot()
		},
		firerate : 60,
		damage : 10,
		bulletamount : 1,
		maxamo : 100,
		magsize : 20,
		magamount : 5,
		
	
	}
	SNP8 =
	{
		sprite : sprSNP8,
		Icon : sprSNP8Icon,
		type : "semi",
		itemtype : "gun",
		use : function()
		{
			shoot()
		},
		firerate : 60,
		damage : 10,
		bulletamount : 1,
		maxamo : 100,
		magsize : 20,
		magamount : 5,
		
		
	}
	SubmachineGun =
	{
		sprite : sprSubmachineGun,
		Icon : sprSubmachineGunIcon,
		type : "semi",
		itemtype : "gun",
		use : function()
		{
			shoot()
		},
		firerate : 60,
		damage : 10,
		bulletamount : 1,
		maxamo : 100,
		magsize : 20,
		magamount : 5,
		
		
	}
	UZI =
	{
		sprite : sprUZI,
		Icon : sprUZIIcon,
		type : "semi",
		itemtype : "gun",
		use : function()
		{
			
			shoot()
		},
		firerate : 60,
		damage : 10,
		bulletamount : 1,
		maxamo : 100,
		magsize : 20,
		magamount : 5,
		
		
	}
FlashLight1 = 
{
	sprite : sprFlashLight1,
	Icon : sprFlashLight1Icon,
	itemtype : "flashlight",
	LightSprite : sprFlashlightlight,
	charge : 60*200,
	color : c_white,
	update : function(xpos, ypos,lightdirection)
	{
		size = 32;
		gpu_set_blendmode(bm_subtract);
		surface_set_target(global.light);
		//draw_ellipse_color(x - size/2 - view_xport[0], y - size/2 - view_yport[0],x + size/2 - view_xport[0],y + size/2 - view_yport[0], c_yellow, c_black, false  )
		draw_sprite_ext(LightSprite, 0, xpos,ypos,1,1,lightdirection,c_white,0);
		//draw_triangle(
		surface_reset_target();
		gpu_set_blendmode(bm_normal);
	},
	LightSprite : sprFlashlightlight,
	charge : 60*200,
	color : c_white,
}

redkey =
{
	sprite : sprKeyRed,
	Icon : sprKeyRed,
	itemtype : "key",
	door : sprLockRed,
	use : function(door)
	{
		
	},
	
}
bluekey =
{
	
}
greenkey =
{
	
}
yellowkey =
{
	
}
pinkkey =
{
		
}
orangekey =
{
		
}

pistol.use = method(pistol, shoot)
AWP2.use = method(AWP2, shoot)
AWTW.use = method(AWTW, shoot)
Famas3.use = method(Famas3, shoot)
FranzPfannl.use = method(FranzPfannl, shoot)
GrenadeLauncher.use = method(GrenadeLauncher, shoot)
KA12.use = method(KA12, shoot)
LMT.use = method(LMT, shoot)
M16.use = method(M16, shoot)
M249.use = method(M249, shoot)
M4A1.use = method(M4A1, shoot)
Magnum9.use = method(Magnum9, shoot)
Minigun.use = method(Minigun, shoot)
Musket.use = method(Musket, shoot)
Remington800.use = method(Remington800, shoot)
Remington900.use = method(Remington900, shoot)
RocketLauncher.use = method(RocketLauncher, shoot)
RocketLauncher1.use = method(RocketLauncher1, shoot)
Skorpion.use = method(Skorpion, shoot)
SNP8.use = method(SNP8, shoot)
SubmachineGun.use = method(SubmachineGun, shoot)
UZI.use = method(UZI, shoot)


//show_message(string(Test[0,1]))


/*
*/