#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
shouldDraw =0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if ( distance_to_object(oPlayer) < 64){
    shouldDraw = 2;//room_speed

    if not sound_isplaying("sfxpack_42") {
    sfx_play("npc")
    }
}


shouldDraw -=1
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite(snpc,0,x,y)

draw_set_font(global.myFont);
draw_set_color(c_white);

if ( shouldDraw > 0){
    dialogue("npc")
}
