#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
wl = instance_create(x,y,oInvisWall)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
p = instance_find(oPlayer,0)

if ( p.holding != noone){
    if ( p.holding.object_index == olensoftruth ){
        wl.x = -999
    }else{
        wl.x = x
    }
}else{
    wl.x = x
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
p = instance_find(oPlayer,0)
if p.holding != noone{
    if ( p.holding.object_index == olensoftruth ){

    //p.sprite_index = swall1
    }else{
         draw_sprite(swall1,0,x,y)
    }
}else{
    draw_sprite(swall1,0,x,y)
}
