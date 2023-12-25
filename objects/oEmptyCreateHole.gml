#define Collision_oCrate
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Make filled thing
instance_create(x,y,oFullCrateHole)
//Destroy Crate
with(other)
    instance_destroy()
//Destroy Self
instance_destroy()
