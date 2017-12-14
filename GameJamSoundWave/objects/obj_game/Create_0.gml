/// @descriptions
window_set_cursor(cr_none);
cursor_sprite = spr_cursor;

TOGGLE_PAUSE = 0;
paused = false;
pause_sprite_ = noone;

globalvar SlowMo;
SlowMo = 1;

global.grid = noone;

SecondsBetweenEnemySpawn = 20;
SecondsSinceLastEnemySpawn = 0;
globalvar EnemiesDestroyed;
EnemiesDestroyed = 0