#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///Animation Globals
//Start Indx | EndIndx | Speed

//0 Idle
//1 Walking
//2 Dying

//Idle
anims[0,0] = 0
anims[0,1] = 0
anims[0,2] = 0

//Walking
anims[1,0] = 10
anims[1,1] = 13
anims[1,2] = .1

//Dying
anims[2,0] = 4
anims[2,1] = 9
anims[2,2] = .1


animIndex = 0
scr_changeAnim(0)
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///Player Globals
hsp = 0
vsp = 0
walkSpeed = 5
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///Animate
if image_index > anims[animIndex,1]
    image_index = anims[animIndex,0]
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///Movement

UP = (keyboard_check(vk_up) or keyboard_check(ord('W')))
DOWN = (keyboard_check(vk_down) or keyboard_check(ord('S')))
LEFT = (keyboard_check(vk_left) or keyboard_check(ord('A')))
RIGHT = (keyboard_check(vk_right) or keyboard_check(ord('D')))

hsp = 0
vsp = 0
if ( UP ){
    vsp = -walkSpeed
}
if ( DOWN ){
    vsp = walkSpeed
}
if ( LEFT ) {
    hsp = -walkSpeed
}
if ( RIGHT ){
    hsp = walkSpeed
}

//Flip to face correct Side
if hsp != 0
    image_xscale = sign(hsp)

//Update Animation (State machine?)
if ( hsp != 0 or vsp != 0){
    if ( animIndex != 1)
        scr_changeAnim(1)
}
else{
    scr_changeAnim(0)
}

x += hsp
y += vsp
#define Collision_owall1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=101
relative=0
applies_to=self
invert=0
arg0=000010000
arg1=0
*/
#define Collision_owall2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=101
relative=0
applies_to=self
invert=0
arg0=000010000
arg1=0
*/
#define Collision_orock
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=101
relative=0
applies_to=self
invert=0
arg0=000010000
arg1=0
*/
