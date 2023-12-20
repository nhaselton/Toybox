#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Animation =
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


animIndex = 2
image_index = anims[animIndex,0]
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=605
invert=0
arg0=Animation
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = anims[animIndex,2]
if image_index > anims[animIndex,1]
    image_index = anims[animIndex,0]


if ( keyboard_check_pressed(vk_space)){
    animIndex += 1
    if animIndex > 2
        animIndex = 0
    image_index = anims[animIndex,0]
    image_speed = anims[animIndex,2]
}
