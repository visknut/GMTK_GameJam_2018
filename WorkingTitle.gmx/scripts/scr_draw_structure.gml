/// scr_draw_structure()

var _floor_x, _floor_y, _sprite, _range;

switch (current_build)
{
    case BUILD_NONE:
        return 0;
        break;
    case BUILD_CATAPULT:
         _sprite = spr_catapult;
         _range = spr_catapult_range;
         mask_index = spr_small_mask;
        break;
    case BUILD_FIRETOWER:
         _sprite = spr_firetower;
         _range = spr_firetower_range;
         mask_index = spr_small_mask;
        break;
    case BUILD_ARCHERTOWER:
         _sprite = spr_archertower;
         _range = spr_archertower_range;
         mask_index = spr_small_mask;
        break;
    case BUILD_PALACE:
        _sprite = spr_palace;
        _range = spr_no_range;
        mask_index = spr_medium_mask;
        break;
    case BUILD_FARM:
        _sprite = spr_farm;
        _range = spr_no_range;
        mask_index = spr_medium_mask;
        break;
}

// Check if the mouse is in map.
_floor_x = floor(mouse_x / 16) * 16;
_floor_y = floor(mouse_y / 16) * 16;
if (mouse_x > 176 
&& mouse_y > 144
&& mouse_x < 528
&& mouse_y < 384
&& place_free(_floor_x, _floor_y)) {
    _floor_x = floor(mouse_x / 16) * 16;
    _floor_y = floor(mouse_y / 16) * 16;
    
    draw_sprite( _range, 0, _floor_x, _floor_y);
    if (scr_draw_button(_floor_x, _floor_y, _sprite, 0, "", 1, 0.7))
    {
        scr_build_structure(_floor_x, _floor_y);
    }
}
