_backpack = backpack player;

if (_backpack == "RDF_M11_a_d") then {
	player forceWalk true;
	hint "Du kan kun gå med antennen foldet ud";
} else {
	player forceWalk false;
};



// eventhandlers in Init.sqf
