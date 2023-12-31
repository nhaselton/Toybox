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
draw_self()

draw_set_font(global.myFont);
draw_set_color(c_white);

if ( shouldDraw > 0){
// Just a warning. the font needs to be in all caps or it won't display
    draw_text(view_xview[0] + 12+16, view_yview[0] + 10+16, " LOREM IPUS ");
    draw_text(view_xview[0] + 12+16, view_yview[0] + 30+16, " DO YOU KNOW WHAT THAT ");
    draw_text(view_xview[0] + 12+16, view_yview[0] + 50+16, " MEANS? ");
}
