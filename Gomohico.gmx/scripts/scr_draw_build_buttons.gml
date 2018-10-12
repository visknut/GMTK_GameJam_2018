/// scr_draw_build_buttons()

var _x = 84;
var _y = 448;

scr_draw_build_marker(_x, _y);

// Draw catapult button.
if (scr_draw_button(_x, _y, spr_catapult_button, 0, ""))
{

    if (current_build == BUILD_CATAPULT)
    {
        current_build = BUILD_NONE;
        //sprite_index += 1;
    } else
    {
        current_build = BUILD_CATAPULT;
        //sprite_index -= 1;
    }
}

draw_set_halign(fa_center);
draw_set_colour(c_white);
draw_set_font(fnt_small);
draw_text(_x + 16, _y + 40, "catapult");
draw_set_font(fnt_medium);
draw_text(_x + 16, _y + 54, string(PRICE_CATAPULT) + "g");
draw_set_halign(fa_left);

// Draw firetower button.
_x += 128;
if (scr_draw_button(_x, _y, spr_firetower_button, 0, ""))
{

    if (current_build == BUILD_FIRETOWER)
    {
        current_build = BUILD_NONE;
        //sprite_index += 1;
    } else
    {
        current_build = BUILD_FIRETOWER;
        //sprite_index -= 1;
    }
}

draw_set_halign(fa_center);
draw_set_colour(c_white);
draw_set_font(fnt_small);
draw_text(_x + 16, _y + 40, "bomb tower");
draw_set_font(fnt_medium);
draw_text(_x + 16, _y + 54, string(PRICE_FIRETOWER) + "g");
draw_set_halign(fa_left);

// Draw archertower button.
_x += 128;
if (scr_draw_button(_x, _y, spr_archertower_button, 0, ""))
{

    if (current_build == BUILD_ARCHERTOWER)
    {
        current_build = BUILD_NONE;
        //sprite_index += 1;
    } else
    {
        current_build = BUILD_ARCHERTOWER;
        //sprite_index -= 1;
    }
}

draw_set_halign(fa_center);
draw_set_colour(c_white);
draw_set_font(fnt_small);
draw_text(_x + 16, _y + 40, "archers");
draw_set_font(fnt_medium);
draw_text(_x + 16, _y + 54, string(PRICE_ARCHERTOWER) + "g");
draw_set_halign(fa_left);

// Draw palace button.
_x += 128;
if (scr_draw_button(_x, _y, spr_palace_button, 0, ""))
{

    if (current_build == BUILD_PALACE)
    {
        current_build = BUILD_NONE;
        //sprite_index += 1;
    } else
    {
        current_build = BUILD_PALACE;
        //sprite_index -= 1;
    }
}

draw_set_halign(fa_center);
draw_set_colour(c_white);
draw_set_font(fnt_small);
draw_text(_x + 16, _y + 40, "palace");
draw_set_font(fnt_medium);
draw_text(_x + 16, _y + 54, string(PRICE_PALACE) + "g");
draw_set_halign(fa_left);

// Draw palace button.
_x += 128;
if (scr_draw_button(_x, _y, spr_farm_button, 0, ""))
{

    if (current_build == BUILD_FARM)
    {
        current_build = BUILD_NONE;
        //sprite_index += 1;
    } else
    {
        current_build = BUILD_FARM;
        //sprite_index -= 1;
    }
}

draw_set_halign(fa_center);
draw_set_colour(c_white);
draw_set_font(fnt_small);
draw_text(_x + 16, _y + 40, "farm");
draw_set_font(fnt_medium);
draw_text(_x + 16, _y + 54, string(PRICE_FARM) + "g");
draw_set_halign(fa_left);
