/// scr_create_event_tribute_ignored()

var _new_event = instance_create(0, 0, struct_event_tribute_ignored);

_new_event.favour_change = -1;

with (obj_kingdom)
{
    favours[CHAR_DIPLOMAT] -= 1;
}

_new_event = scr_enqueue_message(_new_event, CHAR_DIPLOMAT,
"Too bad that you don't know what it means to fight with your brain instead of your brawn.
I will remember this!");

with (obj_kingdom)
{
    ds_list_add(events, _new_event);
}

return _new_event;
