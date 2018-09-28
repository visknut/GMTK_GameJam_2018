/// scr_create_event_tutorial_general()

var _new_event1 = instance_create(0, 0, struct_event_tutorial_general);
var _new_event2 = instance_create(0, 0, struct_event_tutorial_general);

_new_event1 = scr_enqueue_message(_new_event1, CHAR_GENERAL,
"Aye sir,
As I am the only one here with actual military experience, let me tell you right now-
If I see any weaknesses in our defense I will work my ass off to get you removed from that
position- if you catch my drift.")

_new_event2 = scr_enqueue_message(_new_event2, CHAR_GENERAL,
"As you are from abroad, let me explain what kind of military equipment we are working with.
First we have the archertower, which will assist in defeating quick enemies. Second we have
catapults, which are able to damage the strongest foes.
Lastly, our firetowers throw small bombclusters which will damage all within a certain radius.");

with (obj_kingdom)
{
    ds_list_add(events, _new_event1);
    ds_list_add(events, _new_event2);
}
