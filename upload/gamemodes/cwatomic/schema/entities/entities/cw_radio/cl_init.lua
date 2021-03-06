--[[ 
    © 2014 CloudSixteen.com do not share, re-distribute or modify
    without permission of its author (kurozael@gmail.com).

    Clockwork was created by Conna Wiles (also known as kurozael.)
    http://cloudsixteen.com/license/clockwork.html
--]]

include("shared.lua");

local glowMaterial = Material("sprites/glow04_noz");

-- Called when the target ID HUD should be painted.
function ENT:HUDPaintTargetID(x, y, alpha)
	local frequency = self:GetFrequency();
	local power = "ON";

	if (self:IsOff()) then
		power = "OFF";
	end;

	if (frequency == "") then
		frequency = "N/A";
	end;

	Atomic:DrawInfoUI("Stationary Radio", "POWER", power, "FREQ", frequency, alpha);
end;

-- Called when the entity should draw.
function ENT:Draw()
	self:DrawModel();
	
	local r, g, b, a = self:GetColor();
	local glowColor = Color(0, 255, 0, a);
	local position = self:GetPos();
	local forward = self:GetForward() * 9;
	local right = self:GetRight() * 5;
	local up = self:GetUp() * 8;
	
	if (self:IsOff()) then
		glowColor = Color(255, 0, 0, a);
	end;
	
	cam.Start3D(EyePos(), EyeAngles());
		render.SetMaterial(glowMaterial);
		render.DrawSprite(position + forward + right + up, 16, 16, glowColor);
	cam.End3D();
end;
