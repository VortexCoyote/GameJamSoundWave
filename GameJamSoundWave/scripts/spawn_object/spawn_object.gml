randomize();

with (instance_create(random(room_width), random(room_height), argument0))
{
        var in_x = x < obj_player.x + view_w /2 and x > obj_player.x - view_w /2;
		var in_y = y < obj_player.y + view_h /2 and y > obj_player.y - view_h /2;
        var i = 0;
        var n = 1;
        while (!place_empty(x,y) and  i < n)
        {
            i += 1;
            x += 36;
            if (x > room_width - 36)
            {
                x = 36;
                y += 36;
                if (y > room_height - 36)
                {
                    y = 36;
                }
            }
            if (i == n)
            {
                instance_destroy();
            }
        }   
		if(object_get_parent(object_index) == obj_enemy)
		{
			if(in_x or in_y)
			{
				x = choose(obj_player.x + view_w/2,obj_player.x - view_w/2);
				y = choose(obj_player.y + view_h/2,obj_player.y - view_w/2);
			}	
		}
		
}
