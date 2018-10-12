/// scr_build_draw_marker(start_x, start_y)

var _x = argument[0] - 8;
var _y = argument[1] - 8;

switch (current_build)
{
    case BUILD_NONE:
        break;
    case BUILD_CATAPULT:
        draw_sprite(spr_build_marker, 0, _x, _y);
        break;
    case BUILD_FIRETOWER:
        draw_sprite(spr_build_marker, 0, _x + 128, _y);
        break;
    case BUILD_ARCHERTOWER:
        draw_sprite(spr_build_marker, 0, _x + 256, _y);
        break;
    case BUILD_PALACE:
        draw_sprite(spr_build_marker, 0, _x + 384, _y);
        break;
    case BUILD_FARM:
        draw_sprite(spr_build_marker, 0, _x + 512, _y);
        break;
}
