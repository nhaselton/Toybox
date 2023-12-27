#define Collision_oPlayer
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*
Need a way to draw the text on the screen relevant to the player's
position.. otherwise the text will draw in a random spot. Currently
I'm just drawing to the exact coordinates. If this is called again
it will ONLY appear in that room. Not that we need it anywhere else

For future reference...
*/

draw_set_font(global.myFont);
draw_set_color(c_white);
// Just a warning. the font needs to be in all caps or it won't display
draw_text(0+16, 0+16, " LOREM IPUS ");
draw_text(0+16, 20+16, " DO YOU KNOW WHAT THAT ");
draw_text(0+16, 40+16, " MEANS? ");
