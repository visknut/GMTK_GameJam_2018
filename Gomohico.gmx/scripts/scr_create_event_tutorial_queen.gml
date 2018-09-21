/// scr_create_event_tutorial_king()

var _new_event = instance_create(0, 0, struct_event_tutorial_king);

_new_event = scr_enqueue_message(_new_event, CHAR_QUEEN,
"Ah, high constable!
I see you've already met my husband, the King. 
We've been expecting you for quite some time.
Please keep in mind that we've been at peace for quite a while-
I'd rather feed my people than splurge on military equipment.");

with (obj_kingdom)
{
    ds_list_add(events, _new_event);
}
