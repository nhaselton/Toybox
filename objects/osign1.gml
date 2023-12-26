#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=605
invert=0
arg0=we don't want to delete ALL crates.. just the ones in this room
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
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=202
applies_to=self
invert=0
arg0=osign1a
arg1=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=oCrate
invert=0
*/
#define Collision_oPlayer
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

for ( i = 0 ; i < instance_number(oCrate); i+=1 ){
    o = instance_find(oCrate,i);

    if ( o.spawnX > view_xview[0] and o.spawnX < view_xview[0] + view_wview[0]
        and o.spawnY > view_yview[0] and o.spawnY < view_yview[0] + view_hview[0]){
            with o{
                x = spawnX;
                y = spawnY;
            }
        }
}
