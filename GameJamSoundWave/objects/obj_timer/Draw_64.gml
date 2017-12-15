draw_set_halign(fa_left)

draw_text(16, 16, "TIMER: ")
draw_text(100, 16, time    )


ini_open("highscore.ini")

hs_value = ini_read_real("Highscore","Score", 0)

draw_text(16, 48, "HIGHSCORE: " + string(hs_value div 3600) + ":" + string((hs_value div 60) mod 60) + ":" + string( int64(hs_value mod 60) ))
ini_close()

