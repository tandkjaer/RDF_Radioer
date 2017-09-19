class CfgPatches
{
	class RDF_Radioer
	{
		units[]=
		{
			"RDF_M11_d",
			"RDF_M11_a_d",
			"RDF_M11_dd_d",
			"RDF_M11_blade_d"
		};
		weapons[]={};
		requiredVersion=0.1;
		requiredAddons[]=
		{
			

		};
	};
};
class CfgFunctions
{
	class RDF_radios
	{
		class RDF_R
		{
			file="\RDF_Radioer\functions";
			class init {
				postInit=1;
			};
		};
	};
};
class CfgVehicles 
{
	class TFAR_Bag_Base;
	class tfw_ilbe_wd;
	class RDF_M11_d: tfw_ilbe_wd 
	{
		author = "RDF_P.Petersen";
		displayName = "RDF Radio M371 Lang antenne (folet)";
		picture="y\tfw_radios\addons\ilbe\data\icons\ilbe_icon_d.paa";
		editorPreview = "";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"\RDF_Radioer\data\ilbe_co.paa"};
		tf_range = 15000;//17000
		tf_dialog = "rt1523g_radio_dialog";
		
		
	
	};
	
	class tfw_ilbe_a_wd;
	class RDF_M11_a_d: tfw_ilbe_a_wd 
	{
		author = "RDF_P.Petersen";
		displayName="RDF Radio M371 Lang antenne";
		picture="y\tfw_radios\addons\ilbe\data\icons\ilbe_icon_d.paa";
		editorPreview = "";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"\RDF_Radioer\data\ilbe_co.paa"};
		tf_range = 25000;
		mass=80;//80
		
		
		
	};
	
	
	class tfw_ilbe_dd_wd;
	class RDF_M11_dd_d: tfw_ilbe_dd_wd 
	{
		author = "RDF_P.Petersen";
		displayName="RDF Radio M371/ UHF Antenne";
		picture="y\tfw_radios\addons\ilbe\data\icons\ilbe_icon_d.paa";
		editorPreview = "";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"\RDF_Radioer\data\ilbe_co.paa"};
	};
	
	
	class tfw_ilbe_blade_wd;
	class RDF_M11_blade_d: tfw_ilbe_blade_wd 
	{
		author = "RDF_P.Petersen";
		displayName="RDF Radio M371 Blade Antenne";
		picture="y\tfw_radios\addons\ilbe\data\icons\ilbe_icon_d.paa";
		editorPreview = "";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"\RDF_Radioer\data\ilbe_co.paa"};
		tf_range = 10000; //18000
	};
	
};