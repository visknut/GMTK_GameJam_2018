/// scr_create_event_tutorial_diplomat()

var _new_event1 = instance_create(0, 0, struct_event_tutorial_diplomat);
var _new_event2 = instance_create(0, 0, struct_event_tutorial_diplomat);

_new_event1 = scr_enqueue_message(_new_event1, CHAR_DIPLOMAT,
"“The supreme art of war is to subdue the enemy without fighting.”
Did you know this quote? No? Oh, who I am?

I'm in charge of maintaining diplomatic relations with our neighbouring countries.
I'll keep you up to date with the movements of our enemies.");

_new_event2 = scr_enqueue_message(_new_event2, CHAR_DIPLOMAT,
"The lemmings of the west have agreed to a temporary truce,
although I can not say how long it will last. Because of their sheer numbers,
they are definitely more fickle than the strong and slow elephants of the northeast.
My guess is that the deer of the south will be fastest to agree to my offers."
);

with (obj_kingdom)
{
    ds_list_add(events, _new_event1);
    ds_list_add(events, _new_event2);
}
