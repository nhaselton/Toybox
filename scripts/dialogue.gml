// Just a warning. the font needs to be in all caps or it won't display

if argument0 = "npc"
{
    draw_text(view_xview[0] + -3+16, view_yview[0] + 10+16, " DISTRUST THE EMPTY VOID ");
    draw_text(view_xview[0] + 27+16, view_yview[0] + 35+16, " MAY NATURE GUIDE THY ");
    draw_text(view_xview[0] + 267+16, view_yview[0] + 60+16, " PATH ");
}

if argument0 = "end"
{
    draw_text(view_xview[0] + -3+16, view_yview[0] + 10+16, " THE BOSS IS ON HOLIDAY ");
    draw_text(view_xview[0] + 27+16, view_yview[0] + 35+16, " AND YOUR PRINCESS IS ");
    draw_text(view_xview[0] + 27+16, view_yview[0] + 60+16, " IN ANOTHER CASTLE ");
}

if argument0 == "rock"
{
    draw_text(view_xview[0] + -3+16, view_yview[0] + 10+16, " THE ROCK IS TOO HARD");

}
