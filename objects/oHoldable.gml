#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
player = instance_find(oPlayer,0)
held = false
pickupTimer = 0
pickupCooldown = 1 * room_speed
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if held {
    x = player.x
    y = player.y

    if heldpickupsfx < 1 {
        sfx_play("Pickup")
    }

    if sound_isplaying("sfxpack_14")
    {
        heldpickupsfx = 1;
    }
} else {
     heldpickupsfx = 0;
}

pickupTimer -= 1
