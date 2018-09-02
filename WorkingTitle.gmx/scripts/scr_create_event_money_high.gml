/// scr_create_event_money_high();

var _new_event = instance_create(0, 0, struct_event_money_high);

var _embazzled;

with (obj_kingdom)
{
    favour_king += 1;
    _embazzled = floor((money - 999) / 2);
    embazzled_money = _embazzled;
    money = 999;
}

_new_event.message = scr_enqueue_message(CHAR_CLERK, "TODO: money_high");

with (obj_kingdom)
{
    ds_list_add(events, _new_event);
}
