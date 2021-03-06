--[[ 
    � 2015 CloudSixteen.com do not share, re-distribute or modify
    without permission of its author (kurozael@gmail.com).

    Clockwork was created by Conna Wiles (also known as kurozael.)
    http://cloudsixteen.com/license/clockwork.html

    Atomic was developed by NightAngel, if you have any questions or
    wish to give any feedback whatsoever, please send a message to
    http://steamcommunity.com/id/NA1455.
--]]

local ITEM = Clockwork.item:New("alcohol_base");
	ITEM.cost = 4;
	ITEM.name = "Beer";
	ITEM.model = "models/props_junk/garbage_glassbottle001a.mdl";
	ITEM.batch = 1;
	ITEM.weight = 0.25;
	ITEM.access = "T";
	ITEM.business = true;
	ITEM.description = "A glass bottle filled with liquid, it has a funny smell.";

	-- Called when a player drinks the item.
	function ITEM:OnDrink(player)
		local instance = Clockwork.item:CreateInstance("empty_beer_bottle");

		player:GiveItem(instance, true);
	end;
ITEM:Register();