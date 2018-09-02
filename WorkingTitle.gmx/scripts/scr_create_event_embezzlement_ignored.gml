/// scr_create_event_embezzlement_ignored()

var _new_event = instance_create(0, 0, struct_event_embezzlement_ignored);

_new_event.message = scr_enqueue_message(CHAR_CLERK, "TODO: embezzlement_ignored");

with (obj_kingdom)
{
    ds_list_add(events, _new_event);
}
