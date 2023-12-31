#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
spawnX = x
spawnY = y
armed = false
armedTimer = 0
armedCooldown = room_speed
pickupCooldown = armedCooldown + 1
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if ( armed){
    armedTimer -= 1
}


event_inherited()


//Explosion
if ( armed and armedTimer <= 0){
    armedTimer = 0;
    armed = false;
    sfx_play("Bomb")

    numToDestroy = 0
    toDestroy[0] = noone
    // Queue up rocks to blow up within 3 blocks
    range = ( sqrt(32 * 32 + 32 * 32) * 1)
    for ( i = 0; i < instance_number(orock) i+=1){
        rock = instance_find(orock,i)
        if (distance_to_object(rock) < range){
            toDestroy[numToDestroy] = rock
            numToDestroy += 1
        }
    }

    //Destroy rocks
    for ( i = 0; i < numToDestroy; i += 1){
        with toDestroy[i]
            instance_destroy()
    }

    //Respawn
    x = spawnX;
    y = spawnY;
    sprite_index = sbomb

}
#define Collision_oPlayer
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//(Hack) we know you dropped it if you are touhcing and therse a cooldown
if (!held and pickupTimer > 0 and ! armed){
    armedTimer = armedCooldown
    armed = true
    sprite_index = sbombred
}

//Give you a second to get off it
if ( (pickupCooldown - pickupTimer) < armedCooldown * .5){
   /*
     if ( other.hsp != 0)
         x += sign(other.hsp) * 32 * 3
    if ( other.vsp != 0)
        y += sign(other.vsp) * 32 * 3
    */


    xdir = sign(other.hsp) * 32
    ydir = sign(other.vsp) * 32

    //Move it all the way out
    x += xdir * 3
    y += ydir * 3
    //Push it back in if its hitting anything
    for (  i = 0; i < 3; i+=1){
        with ( obomb){
            ob = instance_place(x,y,oSolid)
            if ( ob != noone ){
                x = ob.x - xdir
                y = ob.y - ydir
            }else{
                break;
            }
        }
    }
}
