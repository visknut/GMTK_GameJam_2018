/// scr_create_event_tutorial_diplomat()

var _new_event = instance_create(0, 0, struct_event_tutorial_diplomat);

_new_event.message = scr_enqueue_message(CHAR_DIPLOMAT, "TODO: tutorial_diplomat");

with (obj_kingdom)
{
    ds_list_add(events, _new_event);
}
