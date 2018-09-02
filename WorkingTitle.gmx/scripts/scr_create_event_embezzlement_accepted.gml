/// scr_create_event_embezzlement_accepted(int amount)

var _amount = argument[0];

var _new_event = instance_create(0, 0, struct_event_embezzlement_accepted);

with (obj_kingdom)
{
    money -= _amount;
    embezzled_money += _amount;
}

_new_event = scr_enqueue_message(_new_event, CHAR_CLERK, "TODO: embezzlement_accepted");

with (obj_kingdom)
{
    ds_list_add(events, _new_event);
}

return _new_event;
