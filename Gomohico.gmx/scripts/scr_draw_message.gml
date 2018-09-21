/// scr_draw_message(str content)

var _x = 220;
var _y = 426;

var _content = argument[0];

//make text white and reset again
var _tmpcol = draw_get_color()
draw_set_font(fnt_small);
draw_set_color(c_white);
scr_draw_str_cbyc(_x, _y, _content);
draw_set_color(_tmpcol);
