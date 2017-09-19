
private ["_veh","_backpack"];

_backpack = backpack player;

if (_backpack == "RDF_M11_a_d") then {
	_veh = vehicle player;
	if (_veh != player) then {
		player action ["getOut", _veh];
		Hint "Antennen er foldet ud";
	};
};
