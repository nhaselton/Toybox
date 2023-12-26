#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///Set in creation code
_id = 0
pressed = false
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
pressed = (
    (place_meeting(x,y,oSolid)) or
    (place_meeting(x,y,oPlayer))
)
