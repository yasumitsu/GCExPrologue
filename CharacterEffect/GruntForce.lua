UndefineClass('GruntForce')
DefineClass.GruntForce = {
	__parents = { "Perk" },
	__generated_by_class = "ModItemCharacterEffectCompositeDef",


	object_class = "Perk",
	msg_reactions = {},
	unit_reactions = {
		PlaceObj('UnitReaction', {
			Event = "OnDamageTaken",
			Handler = function (self, target, attacker, dmg, hit_descr)
				if target ~= attacker then 
					--local maxHp = target:GetInitialMaxHitPoints()
					local minHp = MulDivRound(target:GetInitialMaxHitPoints(), self:ResolveValue("minHp"), 100)
					if target.HitPoints <= minHp then
						target:AddStatusEffect("Heroic")
					end
				end
			end,
		}),
	},
	DisplayName = T(250195279118, --[[ModItemCharacterEffectCompositeDef GruntForce DisplayName]] "Grunt Force"),
	Description = T(216030389932, --[[ModItemCharacterEffectCompositeDef GruntForce Description]] "Nothing can shake this man, Stogie gets heroic if bellow 50% HP."),
	OnAdded = function (self, obj)  end,
	OnRemoved = function (self, obj)  end,
	Icon = "Mod/GCExPrologue/Images/PerkSTOGIEBlu 2",
	Tier = "Personal",
}

