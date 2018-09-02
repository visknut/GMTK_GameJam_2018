/// scr_create_event_tribute_ignored()

var _new_event = instance_create(0, 0, struct_event_tribute_ignored);

_new_event.favour_change = -1;

with (obj_kingdom)
{
    favours[CHAR_DIPLOMAT] -= 1;
}

_new_event.message = scr_enqueue_message(CHAR_DIPLOMAT, "TODO: event_tribute_ignored");

with (obj_kingdom)
{
    ds_list_add(events, _new_event);
}
