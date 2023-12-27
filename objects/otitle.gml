#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_font(global.myFont);
draw_set_color(c_white);

// Just a warning. the font needs to be in all caps or it won't display
draw_text(146+32, 80+16, " ADVENTURE GUY ");
draw_text(100+64, 120+16, " A GAME MADE BY ");
draw_text(12+12, 150+32, " NHASELTON AND PIKAKID98 ");
draw_text(12+12, 170+40, " FOR TOM HALL'S GAME JAM ");
draw_text(32+32, 400+24, " PRESS ENTER TO START ");
#define KeyPress_13
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop_all()
sfx_title()
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=224
invert=0
arg0=r_GrassWorld
arg1=4
*/
