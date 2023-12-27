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
draw_text(2734, 384, " TRUST NOT THE FOUL HOLES ");
draw_text(2734, 404, " BUT NATURE SHALL NOT ");
draw_text(2734, 424, " LEAD YOU ASTRAY ");
