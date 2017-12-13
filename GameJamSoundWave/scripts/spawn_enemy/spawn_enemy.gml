randomize();

with (instance_create(random(room_width), random(room_height), argument0))
{
        
        var i = 0;
        var n = 8;
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
}
