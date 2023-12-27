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
// Just a warning. the font needs to be in all caps or it won't display
    draw_text(view_xview[0] + -3+16, view_yview[0] + 10+16, " DISTRUST THE EMPTY VOID ");
    draw_text(view_xview[0] + 27+16, view_yview[0] + 35+16, " MAY NATURE GUIDE THY ");
    draw_text(view_xview[0] + 267+16, view_yview[0] + 60+16, " PATH ");
}
