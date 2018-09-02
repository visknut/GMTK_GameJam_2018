/// scr_create_event_tutorial_general()

var _new_event = instance_create(0, 0, struct_event_tutorial_general);

_new_event = scr_enqueue_message(_new_event, CHAR_GENERAL, "TODO: event_tutorial_general");

with (obj_kingdom)
{
    ds_list_add(events, _new_event);
}
