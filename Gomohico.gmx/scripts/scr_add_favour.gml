/// scr_add_favour(int character, int amount)
// Add favour to a certain character.

var _character = argument[0];
var _amount = argument[1];

if (obj_kingdom.favours[_character] + _amount > 10)
{
    obj_kingdom.favours[_character] = 10;
} else {
    obj_kingdom.favours[_character] += _amount;
}
