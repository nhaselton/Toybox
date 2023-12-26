#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
spawnX = x
spawnY = y
#define Collision_oPlayer
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//(Hack) we know you dropped it if you are touhcing and therse a cooldown
if (!held and pickupTimer > 0 and ! armed){
    if ( armedTimer < 0 )
        armedTimer = armCooldown

    armed = true
}
