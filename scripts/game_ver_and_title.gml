///set_title(text)
// the window caption seems to only be set for one frame. so I have to set the room caption instead :skull:
global.windowCaption = string(argument0);
if window_get_caption() != global.windowCaption
{
    if global.windowCaption != ""
        window_set_caption(string(global.windowCaption));
    else
        window_set_caption("");
    room_caption = window_get_caption();
}

// Huge thanks to BinaryCode - https://codeberg.org/BinaryCode
