/// scr_create_spawn(x, y, colour, rate, path, hp, speed)

var _x = argument[0];
var _y = argument[1];
var _colour = argument[2];
var _rate = argument[3];
var _path = argument[4];
var _hp = argument[5];
var _speed = argument[6];

var _new_spawn = instance_create(_x, _y, obj_spawn);
_new_spawn.colour = _colour;
_new_spawn.spawn_rate = _rate;
_new_spawn.alarm[0] = _rate;
_new_spawn.path = _path;
_new_spawn.hp = _hp;
_new_spawn.enemy_speed = _speed;
