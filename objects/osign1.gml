#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
signTimer = 0
signCooldown = room_speed / 4
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
signTimer -= 4
#define Collision_oPlayer
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=oCrate
invert=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=201
relative=1
applies_to=ocratespawn
invert=0
arg0=oCrate
arg1=0
arg2=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=202
applies_to=oFullCrateHole
invert=0
arg0=oEmptyCreateHole
arg1=0
*/
