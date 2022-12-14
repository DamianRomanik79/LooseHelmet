params [
	["_unit", objNull],
	["_type", "HELMET"],
	["_fasten", true]
];

// Defaults
private _variable = "";
private _hintFastened = "";
private _hintUnfastened = "";

switch (_type) do {
	case "GUN": {
		_variable = "ACPL_LooseWeapon_fix_gun";
		_hintFastened = localize "STR_ACPL_LooseHelmet_hint_gun_has_been_fastened";
		_hintUnfastened = localize "STR_ACPL_LooseHelmet_hint_gun_has_been_unfastened";
	};
	case "HELMET": {
		_variable = "ACPL_LooseWeapon_fix_helmet";
		_hintFastened = localize "STR_ACPL_LooseHelmet_hint_helmet_has_been_fastened";
		_hintUnfastened = localize "STR_ACPL_LooseHelmet_hint_helmet_has_been_unfastened";
	};
};

// Perhaps add visual effects, like shoulder tap
if (_variable != "") then {_unit setVariable [_variable, _fasten, true]};

private _hint = if _fasten then {_hintFastened} else {_hintUnfastened};
if (_hint != "") then {[_hint] remoteExec ["hint", _unit]};
