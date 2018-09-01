/// scr_draw_view_build()

draw_set_colour(c_black);
draw_rectangle(0, 416, 720, 560, false);

draw_sprite(spr_catapult_button, 0, 32, 432);
draw_set_halign(fa_center);
draw_set_colour(c_white);
draw_set_font(fnt_medium);
draw_text(32, 464, "40g");
draw_set_font(fnt_small);
draw_text(32, 496, "high damage");
