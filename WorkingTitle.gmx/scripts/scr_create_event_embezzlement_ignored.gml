/// scr_create_event_embezzlement_ignored()

var _new_event = instance_create(0, 0, struct_event_embezzlement_ignored);

_new_event = scr_enqueue_message(_new_event, CHAR_CLERK,
"Too bad. Just believe me when I say that you'll rue this day when you leave the court without a penny.");

with (obj_kingdom)
{
    ds_list_add(events, _new_event);
}

return _new_event;
