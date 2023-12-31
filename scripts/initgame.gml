//font
global.myFont = font_add_sprite(sfont, ord(' '), false, 0);

/*
initializes all music and sounds at once. Before I just ran the add
command upon playing. This caused errors in the debugger. So I don't
do that anymore.. God, my code is shit.. Yours scornfully - Pikakid98
*/

sound_add_directory("Data\Music\",".mp3",0,false)
sound_add_directory("Data\Sfx\",".wav",0,false)
