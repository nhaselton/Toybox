#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
shouldDraw =0
#define Collision_oPlayer
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=302
invert=0
arg0=1000
arg1=1
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=105
relative=1
applies_to=oPlayer
invert=0
arg0=0
arg1=64
arg2=3
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sfx_play("BlockDrop")
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=541
applies_to=self
invert=0
arg0=schestopen
arg1=0
arg2=1
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=302
invert=0
arg0=2500
arg1=1
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sfx_play("npc")
shouldDraw = 2;

draw_set_font(global.myFont);
draw_set_color(c_white);

dialogue("end")
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=302
invert=0
arg0=1000
arg1=1
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=222
invert=0
arg0=0
*/
