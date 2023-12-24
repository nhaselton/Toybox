#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
pushTimer = 0
pushCooldown = room_speed / 4
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
pushTimer -= 1
#define Collision_oPlayer
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if ( pushTimer <= 0){
    if ( other.hsp != 0 && other.vsp == 0) {
        x += sign(other.hsp) * 32
    }
    else if ( other.hsp == 0 && other.vsp != 0){
        y += sign(other.vsp) * 32
    }
    //Can not push diagonally, Figure out which directino is clsoer and use that
    else{
        dx = abs(x - other.x)
        dy = abs(y - other.y)
        if ( dx >= dy)
            x += sign(other.hsp) * 32;
        else
            y += sign(other.vsp) * 32
    }
    pushTimer = pushCooldown
}
