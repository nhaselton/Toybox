#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///Movement

DOWN = (keyboard_check(vk_up) or keyboard_check(ord('W')))
UP = (keyboard_check(vk_down) or keyboard_check(ord('S')))
RIGHT = (keyboard_check(vk_left) or keyboard_check(ord('A')))
LEFT = (keyboard_check(vk_right) or keyboard_check(ord('D')))

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

///Animate
if image_index > anims[animIndex,1]
    image_index = anims[animIndex,0]
#define Collision_holepar
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sfx_play("Die")
o = instance_create(x,y,osign1)
with o{
    event_perform(ev_collision,oPlayer)
    instance_destroy()
}
instance_destroy()
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
action_id=202
applies_to=oundergroundtilemirror
invert=0
arg0=omirhole
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
#define Collision_oundergroundtilemirror
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
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
