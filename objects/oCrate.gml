#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
pushTimer = 0
pushCooldown = room_speed / 4

spawnX = x
spawnY = y
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
        sfx_push()
    }
    else if ( other.hsp == 0 && other.vsp != 0){
        y += sign(other.vsp) * 32
        sfx_push()
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
#define Collision_oSolid
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=101
relative=0
applies_to=self
invert=0
arg0=000010000
arg1=0
*/
