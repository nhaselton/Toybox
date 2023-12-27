#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///DONT TOUCH NUMGOALS
_id = 0

numGoals = 0 // will be set at gamestart
goals[0] = noone //will abso be set
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
open = true;
for ( i = 0; i < numGoals; i+=1 ){
    if ( goals[i].pressed = false){
        open = false;
        break;
    }
}
if (open){
    sprite_index = spathunblock
}else{
    sprite_index = spathblock
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
for ( i = 0; i < instance_number(oPlate); i+=1){
    o = instance_find(oPlate,i);
    if ( o._id == _id){
        goals[numGoals] = o
        numGoals +=1
    }
}
