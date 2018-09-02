/// scr_create_event_tutorial_clerk()

var _new_event = instance_create(0, 0, struct_event_tutorial_clerk);

_new_event = scr_enqueue_message(_new_event, CHAR_CLERK, "TODO: event_tutorial_clerk");

with (obj_kingdom)
{
    ds_list_add(events, _new_event);
}
