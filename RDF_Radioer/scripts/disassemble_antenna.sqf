private ["_backpacks","_items","_mags"];

_backpacks = nil;
_items = backpackItems player;
_mags = backpackMagazines player;

_disassemble_antenna = ["disassemble_antenna"] call fn_classnames;

{
	if (backpack player == _x select 0) then {_backpacks =  _x select 1};
} forEach _disassemble_antenna;

//Store TFAR radio settings and active channel
_settings = (call TFAR_fnc_activeLrRadio) call TFAR_fnc_getLrSettings;
_channel = (call TFAR_fnc_ActiveLrRadio) call TFAR_fnc_getLrChannel;

removeBackpack player; 
player addbackpack  _backpacks; 

//Apply previously saved TFAR settings to the new backpack radio
[(call TFAR_fnc_activeLrRadio), _settings] call TFAR_fnc_setLrSettings;
_settings set [0, _channel]; // sets the active channel to 2

{player addItemToBackpack _x} forEach _items;
{player addMagazine _x} forEach _mags; 

//////////////
/* _pos = getPos player;  // position of reference.
_dist = 1; //Distance from position of reference.
_offdir = 0; //Relative direction from position of reference 0 - 360. (0 = forward, 180 = backwards).

//Find compass direction to spawn from position of reference.
_compassDir = ((getDir player)+_offdir) mod 360;

//Find absolute coordinates by adding relative to position of reference.
_newX = (_pos select 0) + (sin _compassDir * _dist);
_newY = (_pos select 1) + (cos _compassDir * _dist);
_newPos = [_newX, _newY, 0];  // position found

_backpackTemp = createVehicle ["GroundWeaponHolder", _newPos, [], 0, "CAN_COLLIDE"];

_backpackTemp setDir (getDir player); */
/////////////////

player playAction "medicStop";