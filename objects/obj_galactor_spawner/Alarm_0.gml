// Set up the sprite indices at the beginning
if (!instance_exists(obj_galactor_spawner)) {
    currentUFOIndex = 0;
}

if (self.x < room_width / 2) {
    // Spawn a new galactor and update the current sprite index
    var galactor = instance_create_layer(-100, irandom_range(room_height / 2 - 256, room_height / 2 + 256), "Instances", obj_galactor);
    galactor.hspeed = 20;

    // Choose the appropriate sprite based on the currentUFOIndex
    switch (currentUFOIndex) {
        case 0:
            galactor.sprite_index = spr_galactor;
            break;
        case 1:
            galactor.sprite_index = spr_galactor2;
            break;
        case 2:
            galactor.sprite_index = spr_galactor3;
            break;
        case 3:
            galactor.sprite_index = spr_galactor4;
            break;
    }

    currentUFOIndex = (currentUFOIndex + 1) % 4; // Assuming you have 4 UFO sprites
} else {
    // Spawn a new galactor and update the current sprite index
    var galactor = instance_create_layer(room_width + 100, irandom_range(room_height / 2 - 256, room_height / 2 + 256), "Instances", obj_galactor);
    galactor.hspeed = -20;
    galactor.image_angle += 180;
    galactor.image_index += 1;

    // Choose the appropriate sprite based on the currentUFOIndex
    switch (currentUFOIndex) {
        case 0:
            galactor.sprite_index = spr_galactor;
            break;
        case 1:
            galactor.sprite_index = spr_galactor2;
            break;
        case 2:
            galactor.sprite_index = spr_galactor3;
            break;
        case 3:
            galactor.sprite_index = spr_galactor4;
            break;
    }

    currentUFOIndex = (currentUFOIndex + 1) % 4; // Assuming you have 4 UFO sprites
}

// Set the alarm based on the global.year
if (global.year > 18) {
    alarm[0] = room_speed * (20 - (global.year - 3));
} else {
    alarm[0] = room_speed * 5;
}

audio_play_sound(Sxf_shopmoving, 1, false);

