/// scr_create_event_report()

var _new_event = instance_create(0, 0, struct_event_report);
var _most_damage = "north-western";
var _total_damage, _damage_class;

with (obj_kingdom)
{
    if (yellow_damage > blue_damage || green_damage > blue_damage)
    {
        if (green_damage > yellow_damage)
            _most_damage = "southern";
        else
            _most_damage = "western";
    }
    _total_damage = yellow_damage + green_damage + blue_damage;
    
    if (_total_damage > 20)
    {
        _new_event.favour_change = -3;
        favours[CHAR_GENERAL] -= 3;
        _damage_class = 4;
    } else if (_total_damage > 10)
    {
        _new_event.favour_change = -2;
        favours[CHAR_GENERAL] -= 2;
        _damage_class = 3;
    } else if (_total_damage > 5)
    {
        _new_event.favour_change = -1;
        favours[CHAR_GENERAL] -= 1;
        _damage_class = 2;
    } else if (_total_damage > 1)
    {
        _new_event.favour_change = 0;
        _damage_class = 1;
    } else
    {   
        favours[CHAR_GENERAL] += 1;
        _new_event.favour_change = 1;
        _damage_class = 0;
    }
}

_new_event.message = scr_enqueue_message(CHAR_GENERAL,
"Good morning High Constable,#"+
"it seems that yesterday " +
common_surprised_adverb[irandom(array_length_1d(common_surprised_adverb) - 1)] +
" did not bring the " +
common_fiendish_adjective[irandom(array_length_1d(common_fiendish_adjective) - 1)] +
" enemies unto our doorstep.##" +

"That is a " +
common_positive_adjective[irandom(array_length_1d(common_positive_adjective) - 1)] +
" thing, since that would have been " +
general_total_damage_classes[_damage_class] + ".");


_new_event.message = scr_enqueue_message(CHAR_GENERAL,
general_inspections[irandom(array_length_1d(general_inspections) - 1)] +
", I noticed that our " +
_most_damage +
" defense is clearly subpar.##" +

"I would advise you " +
common_accenting_adverb[irandom(array_length_1d(common_accenting_adverb) - 1)] +
" to improve them, " +
"as our enemies are sure to attack" +
common_soon_nouns[irandom(array_length_1d(common_soon_nouns) - 1)] +
", with defenses this weak.");

with (obj_kingdom)
{
    ds_list_add(events, _new_event);
}
