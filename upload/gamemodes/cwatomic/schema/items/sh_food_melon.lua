--[[ 
    � 2015 CloudSixteen.com do not share, re-distribute or modify
    without permission of its author (kurozael@gmail.com).

    Clockwork was created by Conna Wiles (also known as kurozael.)
    http://cloudsixteen.com/license/clockwork.html

    Atomic was developed by NightAngel, if you have any questions or
    wish to give any feedback whatsoever, please send a message to
    http://steamcommunity.com/id/NA1455.
--]]

local ITEM = Clockwork.item:New();
	ITEM.name = "Melon";
	ITEM.cost = 10;
	ITEM.model = "models/props_junk/watermelon01.mdl";
	ITEM.batch = 1;
	ITEM.weight = 0.35;
	ITEM.access = "T";
	ITEM.business = true;
	ITEM.useText = "Eat";
	ITEM.business = true;
	ITEM.useSound = "npc/barnacle/barnacle_crunch3.wav";
	ITEM.category = "Consumables"
	ITEM.description = "A green fruit, it has a hard outer shell.";

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		player:SetHealth(math.Clamp(player:Health() + 4, 0, player:GetMaxHealth()));
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();