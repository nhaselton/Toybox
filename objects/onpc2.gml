#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
shouldDraw = 0
endWait = room_speed / 2
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if ( distance_to_object(oPlayer) < 64){
    shouldDraw = 2;//room_speed

    if sound_isplaying("09 Evil") {
        sound_stop_all()
        sfx_play("end")
    }
    endWait -= 1
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
    sound_stop_all()
    sfx_play("npc")
    dialogue("end")

    if endWait = 0 {
        endWait = 6;
        room_goto_next()
    }
}
