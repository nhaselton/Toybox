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
