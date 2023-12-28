#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///Player Globals
hsp = 0
vsp = 0
walkSpeed = 5
holding = noone
spawnX = x
spawnY = y

preX = x// for moving
preY = y

moveTimer = 0
moveSpeed = room_speed  / 10 // How long to go from 1 square to the next

dx = x
dy = y
dir = 1
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

if ( moveTimer < 0){
    if ( RIGHT ) hsp = 1
    else if ( LEFT ) hsp = -1
    else if ( UP ) vsp = -1
    else if ( DOWN) vsp =  1;
    if ( LEFT or RIGHT or UP or DOWN){

        hit = instance_place(x + hsp, y + vsp, oSolid);
        if ( hit == noone){
            moveTimer = moveSpeed
            if ( animIndex != 1)
                scr_changeAnim(1)
            if hsp != 0{
                dir = sign(hsp)
            }

        }else{
            with hit
                event_perform(ev_collision,oPlayer)
        }
     }
}



if ( moveTimer > 0 ){
    x += hsp * ((1/moveSpeed) * 32)
    y += vsp * ((1/moveSpeed) * 32)


}
moveTimer -=1

if (moveTimer <= 0){
    //image_index = 0
    hsp = 0
    vsp = 0
        //Fix floating point error
    x = round ( x / 32 ) * 32
    y = round ( y / 32 ) * 32
}
if ( moveTimer == -2){ //-1 so animation doesnt stop if holding down a key the entire time
    scr_changeAnim(0)
}
//Swapping Rooms
roomWidth = 800
roomHeight = 608

if ( moveTimer <= 0){
    relx = x - view_xview[0]
    rely = y - view_yview[0]

    if ( relx >= roomWidth )
        view_xview[0] += roomWidth
    if ( relx < 0 )
        view_xview[0] -= roomWidth

    if ( rely >= roomHeight)
        view_yview[0] += roomHeight
    if ( rely < 0 )
        view_yview[0] -= roomHeight

    //dont care is scuffed
    if ( relx >= roomWidth or relx < 0 or rely > roomHeight or rely < 0){
        spawnX = x
        spawnY = y
    }
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///MISC

///Create View
if ( keyboard_check_pressed(vk_space))
{
    if ( holding != noone){
        with holding
        {
            held = false;
            pickupTimer = pickupCooldown
        }
        holding = noone
    }
}
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
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///Actions

if ( keyboard_check_pressed(vk_space)){
    if ( holding ){
        holding.pickupTimer = holding.pickupCooldown
        holding.held = false;
        holding = noone
    }
}
#define Collision_oHoldable
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (other.pickupTimer <= 0) {
    if (holding == noone) {
        holding = instance_find(other.id,0)
        holding.held = true
    }
}
#define Collision_holepar
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
moveTimer = 0
x = spawnX
y = spawnY
//sfx_die()
#define Collision_oundergroundtilemirror
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
x = spawnX
y = spawnY
sfx_die()
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=oplayermirror
invert=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=202
applies_to=omirnospawn
invert=0
arg0=omirpawn
arg1=0
*/
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
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=202
applies_to=oplayernoescape
invert=0
arg0=oplayernoescapeoff
arg1=0
*/
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if ( dir == 1){
    draw_sprite_ext(sprite_index, image_index, x, y, dir, image_yscale, 0, image_blend, image_alpha);
}
else{
    draw_sprite_ext(sprite_index, image_index, x + 32, y, dir, image_yscale, 0, image_blend, image_alpha);
}

draw_text(view_xview[0] + 16,view_yview[0] + 32,string(x) + ", " + string(y))
draw_text(view_xview[0] + 16,view_yview[0] + view_hview[0] - 64,"FPS: " + string(fps))

if 0{
draw_sprite(splayer,0,dx,dy)

draw_sprite(sbombred,0,spawnX,spawnY)
draw_sprite(sbomb,0,x,y)
}
