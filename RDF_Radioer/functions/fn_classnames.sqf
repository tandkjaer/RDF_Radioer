//Hinzufügen von Classnames hier und in fn_Helm und in Init
private ["_param"];
_handover = nil;
_param = _this select 0;

_disassemble_antenna = 
[
	["RDF_M11_a_d", "RDF_M11_d"]
];

_assemble_antenna = 
[
	["RDF_M11_d", "RDF_M11_a_d"]
	
];

_assemble_dd_antenna = 
[
	["RDF_M11_d","RDF_M11_a_d","RDF_M11_blade_d", "RDF_M11_dd_d"]
	
];

_assemble_blade_antenna = 
[
	["RDF_M11_d","RDF_M11_a_d","RDF_M11_dd_d", "RDF_M11_blade_d"]
	
];

_assemble_whip_antenna = 
[
	["RDF_M11_d","RDF_M11_dd_d", "RDF_M11_blade_d"]
	
];

_backpacks =
[
	"RDF_M11_d",
	"RDF_M11_a_d",
	"RDF_M11_dd_d",
	"RDF_M11_blade_d"
];

if (_param == "disassemble_antenna") then {_handover = _disassemble_antenna;};
if (_param == "assemble_antenna") then {_handover = _assemble_antenna;};
if (_param == "assemble_dd_antenna") then {_handover = _assemble_dd_antenna;};
if (_param == "assemble_blade_antenna") then {_handover = _assemble_blade_antenna;};
if (_param == "assemble_whip_antenna") then {_handover = _assemble_whip_antenna;};
if (_param == "backpacks") then {_handover = _backpacks;};
_handover