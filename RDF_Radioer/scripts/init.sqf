private ["_action_ILBEAP","_action_assemble_antenna","_action_disassemble_antenna"];

sleep 5;

_action_assemble_antenna =
	[
		"tfw_ilbe_assemble_antenna",
		"Extend whip antenna",
		"y\tfw_radios\addons\ilbe\data\icons\interact_icon.paa",
		{nul = [] execvm "\RDF_Radioer\scripts\assemble_antenna.sqf"},
		{backpack player == "RDF_M11_d"}
	] call ace_interact_menu_fnc_createAction;

[typeOf player, 1, ["ACE_SelfActions", "ACE_Equipment"], _action_assemble_antenna] call ace_interact_menu_fnc_addActionToClass;

_action_disassemble_antenna =
	[
		"tfw_ilbe_disassemble_antenna",
		"Disassemble whip antenna",
		"y\tfw_radios\addons\ilbe\data\icons\interact_icon.paa",
		{nul = [] execvm "\RDF_Radioer\scripts\disassemble_antenna.sqf"},
		{backpack player == "RDF_M11_a_d"
		}
	] call ace_interact_menu_fnc_createAction;

[typeOf player, 1, ["ACE_SelfActions", "ACE_Equipment"], _action_disassemble_antenna] call ace_interact_menu_fnc_addActionToClass;

_action_assemble_dd =
	[
		"tfw_ilbe_assemble_dd_antenna",
		"Assemble DD antenna",
		"y\tfw_radios\addons\ilbe\data\icons\interact_icon.paa",
		{nul = [] execvm "\RDF_Radioer\scripts\assemble_dd_ant.sqf"},
		{(backpack player == "RDF_M11_d"
			or backpack player == "RDF_M11_a_d"
			or backpack player == "RDF_M11_blade_d"
			) && "tfw_dd" in (items player + assignedItems player);
		}
	] call ace_interact_menu_fnc_createAction;

[typeOf player, 1, ["ACE_SelfActions", "ACE_Equipment"], _action_assemble_dd] call ace_interact_menu_fnc_addActionToClass;

_action_assemble_blade =
	[
		"tfw_ilbe_assemble_blade_antenna",
		"Assemble Blade antenna",
		"y\tfw_radios\addons\ilbe\data\icons\interact_icon.paa",
		{nul = [] execvm "\RDF_Radioer\scripts\assemble_blade_ant.sqf"},
		{(backpack player == "RDF_M11_d"
			or backpack player == "RDF_M11_a_d"
			or backpack player == "RDF_M11_dd_d"
			) && "tfw_blade" in (items player + assignedItems player);
		}
	] call ace_interact_menu_fnc_createAction;

[typeOf player, 1, ["ACE_SelfActions", "ACE_Equipment"], _action_assemble_blade] call ace_interact_menu_fnc_addActionToClass;

_action_assemble_whip =
	[
		"tfw_ilbe_assemble_whip_antenna",
		"Assemble Whip antenna",
		"y\tfw_radios\addons\ilbe\data\icons\interact_icon.paa",
		{nul = [] execvm "\RDF_Radioer\scripts\assemble_whip_ant.sqf"},
		{(backpack player == "RDF_M11_blade_d"
			or backpack player == "RDF_M11_dd_d"
			) && "tfw_whip" in (items player + assignedItems player);}
	] call ace_interact_menu_fnc_createAction;

[typeOf player, 1, ["ACE_SelfActions", "ACE_Equipment"], _action_assemble_whip] call ace_interact_menu_fnc_addActionToClass;