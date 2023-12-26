#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
spawnX = x
spawnY = y
armed = false
armedTimer = 0
armedCooldown = room_speed
pickupCooldown = armedCooldown + 1
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if ( armed){
    armedTimer -= 1
}

if ( armed and armedTimer <= 0){
    armedTimer = 0;
    armed = false;
    x = spawnX;
    y = spawnY;
}

event_inherited()
#define Collision_oPlayer
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//(Hack) we know you dropped it if you are touhcing and therse a cooldown
if (!held and pickupTimer > 0 and ! armed){
    armedTimer = armedCooldown
    armed = true
}

//Give you a second to get off it
if ( (pickupCooldown - pickupTimer) < armedCooldown * .5){
    if ( other.hsp != 0)
         x += sign(other.hsp) * 32 * 3
    if ( other.vsp != 0)
        y += sign(other.vsp) * 32 * 3
}
