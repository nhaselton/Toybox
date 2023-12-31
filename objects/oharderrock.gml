#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
canDraw = false
#define Collision_oPlayer
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if ( distance_to_object(oPlayer) <= 32){
    canDraw = true
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_self()
player = instance_find(oPlayer,0);

if ( canDraw and player.holding != noone){
    if ( player.holding.object_index == oPickaxe){
        draw_set_font(global.myFont);
        draw_set_color(c_white);
        dialogue("rock");
    }
}
canDraw -=1
