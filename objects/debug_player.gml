#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///Player Globals
hsp = 0
vsp = 0
walkSpeed = 10
holding = noone
spawnX = x
spawnY = y
#define Step_0
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

if ( objHor == noone){
    x += hsp
}
if ( objVer == noone)
    y += vsp

//Swapping Rooms
roomWidth = 800
roomHeight = 608

relx = x - view_xview[0]
rely = y - view_yview[0]

if ( relx > roomWidth )
    view_xview[0] += roomWidth
if ( relx < 0 )
    view_xview[0] -= roomWidth

if ( rely > roomHeight)
    view_yview[0] += roomHeight
if ( rely < 0 )
    view_yview[0] -= roomHeight

//dont care is scuffed
if ( relx > roomWidth or relx < 0 or rely > roomHeight or rely < 0){
    spawnX = x
    spawnY = y
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///MISC

///Create View
if ( keyboard_check_pressed(ord('T')))
{

}
