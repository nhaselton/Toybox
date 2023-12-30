#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
creditTime = 0
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_font(global.myFont);
draw_set_color(c_white);

frame = ( creditTime ) / ( 4 * room_speed )

// Just a warning. the font needs to be in all caps or it won't display
if ( frame == 0){
draw_text(70+32, 250+16, " THANKS FOR PLAYING ");
draw_text(100+64, 280+16, " ADVENTURE GUY ");
}

if ( frame <= 1){

draw_text(100+32, 250+16, " PROGRAMMING BY ");
draw_text(20+32, 280+16, " NHASELTON & PIKAKID98 ");
}

else if ( frame <= 2 ){
draw_text(90+32, 250+16, " LEVEL DESIGN BY ");
draw_text(170+32, 280+16, " PIKAKID98 ");
}
else if ( frame <= 3 ){ 
draw_text(230+32, 250+16, " MUSIC BY ");
draw_text(260+32, 280+16, " GRUBER ");
}

else if ( frame <= 4){
draw_text(190+32, 250+16, " ENGINE USED ");
draw_text(140+32, 280+16, " GAME MAKER 8.2 ");
}
else if ( frame <= 5){
draw_text(220+32, 250+16, " MADE FOR ");
draw_text(100+32, 280+16, " TOY BOX JAM 2023 ");
draw_text(160+32, 310+16, " BY TOM HALL ");
}
else if ( frame <= 6){
   game_end()
}

//Game will probably close itself at this point

    creditTime +=1
