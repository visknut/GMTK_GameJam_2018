/// scr_create_event_money_high();

var _new_event = instance_create(0, 0, struct_event_money_high);

var _embezzled;

with (obj_kingdom)
{
    favours[CHAR_KING] += 1;
    _embezzled = floor((money - 999) / 2);
    embezzled_money = _embezzled;
    money = 999;
}

_new_event.message = scr_enqueue_message(CHAR_CLERK, "TODO: money_high");

with (obj_kingdom)
{
    ds_list_add(events, _new_event);
}
