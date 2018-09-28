/// scr_create_event_tutorial_clerk()

var _new_event = instance_create(0, 0, struct_event_tutorial_clerk);

_new_event = scr_enqueue_message(_new_event, CHAR_CLERK,
"Godspeed, high constable!
I will be taking care of your finances.
Between us, I don't think you will last long.
However, I think together we can make this ordeal be wortwhile, don't you agree?.

I will speak to you tomorrow again, sir.");

with (obj_kingdom)
{
    ds_list_add(events, _new_event);
}
