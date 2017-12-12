/// collision_circle_list(x1,y1,radius,obj,prec,notme)
//
//  Returns a list data structure populated with the ids of instances 
//  colliding with a given circle, or noone if no instances found.
//
//      x1,y1       center of the collision circle (filled), real
//      radius      radius of the collision circle (filled), real
//      obj         object to check for collision (or all), real
//      prec        true for precise collision checking, bool
//      notme       true to ignore the calling instance, bool
{
    var x1,y1,obj,dsid,this,that,i;
    x1 = argument0;
    y1 = argument1;
    obj = argument2;
    dsid = ds_list_create();
    this = id;
    with (obj) {
        that = id;
        with (this) {
            i = instance_place(x1,y1,that);
            if (i != noone) ds_list_add(dsid,i);
        }
    }
    if (ds_list_empty(dsid)) {
        ds_list_destroy(dsid);
        dsid = noone;
    }
    return dsid;
}