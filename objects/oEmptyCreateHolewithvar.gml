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
sfx_blockdrop()

// Handles the first puzzle's crates
/*
variable_global_get("crate")
variable_global_set("crate","+1")  <---- Broken. idk how to code
/*
