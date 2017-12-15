if !obj_game.paused and !obj_player.dead {
	
	secs += (delta_time*0.000001)*room_speed 
	
	time = string(secs div 3600) + ":" + string((secs div 60) mod 60) + ":" + string(int64(secs mod 60))
}
else {
		
	ini_open("highscore.ini")
	if secs > ini_read_real("Highscore","Score", 0) ini_write_real("Highscore","Score", secs)
	ini_close()
	
	secs = 0
}

