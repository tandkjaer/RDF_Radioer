private ["_backpacks","_items","_mags"];

_backpacks = nil;
_mags = backpackMagazines player;

_assemble_whip_antenna = ["assemble_whip_antenna"] call fn_classnames;

{
	if (backpack player == _x select 1) then {_backpacks =  _x select 0};
} forEach _assemble_whip_antenna;
{
	if (backpack player == _x select 1) then {player addItemToBackpack "tfw_dd"};
} forEach _assemble_whip_antenna;
{
	if (backpack player == _x select 2) then {_backpacks =  _x select 0};
} forEach _assemble_whip_antenna;
{
if (backpack player == _x select 2) then {player addItemToBackpack "tfw_blade"};
} forEach _assemble_whip_antenna;

_items = backpackItems player;

//Store TFAR radio settings and active radio channel
_settings = (call TFAR_fnc_activeLrRadio) call TFAR_fnc_getLrSettings;
_channel = (call TFAR_fnc_ActiveLrRadio) call TFAR_fnc_getLrChannel;

removeBackpack player; 
player addbackpack  _backpacks; 

//Apply previously saved TFAR settings to the new backpack radio
[(call TFAR_fnc_activeLrRadio), _settings] call TFAR_fnc_setLrSettings;
_settings set [0, _channel]; // sets the active channel to 2

{player addItemToBackpack _x} forEach _items;
player removeItem "tfw_whip";
{player addMagazine _x} forEach _mags; 

player playAction "medicStop";
