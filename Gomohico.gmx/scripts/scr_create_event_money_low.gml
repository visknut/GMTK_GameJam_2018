/// scr_create_event_money_low()

var _new_event = instance_create(0, 0, struct_event_money_low);
var _money = 0;

_money = obj_kingdom.money;

// Determine lost favour.
if (_money < -500)
{
    favour_change = -4;
} else if (_money < -250)
{
    favour_change = -3;
} else if (_money < -50)
{
    favour_change = -2;
} else if (_money < 0)
{
    favour_change = -1;
}

scr_add_favour(CHAR_KING, favour_change);

_new_event = scr_enqueue_message(_new_event, CHAR_KING,
"My dear high constable,
It has come to my ears that you are quite the big spender,
even going so far as to going in to debt.

It would be an understatement to say that I am unhappy about this.");

ds_list_add(obj_kingdom.events, _new_event);
