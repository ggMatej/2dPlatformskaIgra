x_speed=0;
y_speed+=grv;
scr_colide_and_move();

if(place_meeting(x,y,obj_player))
	{
		if(obj_player.y < y-5)
			{
				with(obj_player) y_speed=-10;
				hp=0;
				
			}
	}

if(hp<=0)
	{
		var i,dropRate
		dropRate=random(2);
		for(i=0;i<dropRate;i++)
			{
				instance_create_layer(x,y,"layer_player",obj_coin);
			}
			
		instance_create_layer(x,y,"layer_player",obj_snake_lava_dead);
		instance_destroy();
	}