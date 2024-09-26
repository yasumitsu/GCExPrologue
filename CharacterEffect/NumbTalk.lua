UndefineClass('NumbTalk')
DefineClass.NumbTalk = {
	__parents = { "Perk" },
	__generated_by_class = "ModItemCharacterEffectCompositeDef",


	object_class = "Perk",
	msg_reactions = {},
	unit_reactions = {
		PlaceObj('UnitReaction', {
			Event = "OnDamageDone",
			Handler = function (self, target, attack_target, dmg, hit_descr)
				if not IsMerc(target) and not HasPerk(attack_target, "NumbTalk") then
					target:AddStatusEffect("Berserk")
				end
			end,
		}),
	},
	DisplayName = T(910302453241, --[[ModItemCharacterEffectCompositeDef NumbTalk DisplayName]] "Taunt the pussies"),
	Description = T(302553154193, --[[ModItemCharacterEffectCompositeDef NumbTalk Description]] "Numb can taunt hand hit the nerves of anyone he can see."),
	OnAdded = function (self, obj)  end,
	OnRemoved = function (self, obj)  end,
	Icon = "Mod/GCExPrologue/Images/PerkNUMBBlu 2",
	Tier = "Personal",
}

