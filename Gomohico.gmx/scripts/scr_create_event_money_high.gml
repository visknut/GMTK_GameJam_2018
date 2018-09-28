/// scr_create_event_money_high();

var _new_event = instance_create(0, 0, struct_event_money_high);

var _embezzled;

with (obj_kingdom)
{
    favours[CHAR_KING] += 1;
    _embezzled = floor((money - 999) / 2);
    embezzled_money = _embezzled;
    money = 999;

    _new_event = scr_enqueue_message(_new_event, CHAR_CLERK, "TODO: money_high");

    ds_list_add(events, _new_event);
}
