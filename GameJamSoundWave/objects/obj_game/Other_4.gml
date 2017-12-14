/// @description Insert description here
// You can write your code in this editor
if(global.grid != noone || global.grid != 0 || instance_exists(global.grid))//hur man nu än ska checka detta
{
	mp_grid_destroy(global.grid);
}
//Grid for Pathfinding
cell_width = 32;
cell_height = 32; 

hcells = room_width div cell_width;
vcells = room_height div cell_height;

global.grid = mp_grid_create(0,0,hcells,vcells,cell_width,cell_height);
//Add Solids
mp_grid_add_instances(global.grid ,obj_solid,false);

text_alpha = 1;