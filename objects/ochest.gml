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
draw_sprite(schestclosed,0,x,y)

draw_set_font(global.myFont);
draw_set_color(c_white);

if ( shouldDraw > 0){
// Just a warning. the font needs to be in all caps or it won't display
    sound_stop_all()
    dialogue("final")
}
