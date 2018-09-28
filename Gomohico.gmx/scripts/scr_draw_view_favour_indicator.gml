/// scr_draw_view_favour indicators(x, y, cur_char)

var _x = argument[0];
var _y = argument[1];
var _cur_char = argument[2];

var _favour = 0;
var _radius = 55;

var _brake = 200;
if (alarm[1] == -1)
{
    alarm[1] = 360*_brake;
}

// if we have more than zero favour with a character,
// draw hearts in a cirle around them for each favour
_favour = obj_kingdom.favours[_cur_char];
if (_favour > 0)
{
    var _radian = 2*pi/_favour;
    for (var _j = 0; _j < _favour; _j += 1)
    {
        draw_sprite(spr_favour, (alarm[1]/1.5 + _j/2 + _cur_char*3) %18, _x + _radius * cos(_radian*_j-alarm[1]/_brake) + 56,
                                                                         _y + _radius * sin(_radian*_j-alarm[1]/_brake) + 50);
    }
}
