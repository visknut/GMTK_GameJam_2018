/// scr_create_event_income

var _new_event = instance_create(0, 0, struct_event_income);

// Pick amount.
var _enconomy_modifiers = ar(0.8, 0.9, 1, 1.1, 1.2);
_new_event.enconomy_modifier = _enconomy_modifiers[irandom(4)] + (instance_number((obj_farm) * 0.1));

var _favour_king, _favour_queen, _favour_diplomat, _favour_general;

with (obj_kingdom)
{
    _favour_king = favour_king;
    _favour_queen = favour_queen;
    _favour_diplomat = favour_diplomat;
    _favour_general = favour_general;
}

_new_event.income_royal_donation = _favour_king + _favour_queen * _new_event.enconomy_modifier;
_new_event.income_war_chest = _favour_general * 2 * _new_event.enconomy_modifier;
_new_event.income_trade = _favour_diplomat * 2 * _new_event.enconomy_modifier;
_new_event.total = _new_event.income_royal_donation + _new_event.income_war_chest + _new_event.income_trade;

with (obj_kingdom)
{
    money += _new_event.total;
}

_new_event.message = scr_enqueue_message(CHAR_CLERK, "TODO: event_income");

with (obj_kingdom)
{
    ds_list_add(events, _new_event);
}
