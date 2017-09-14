res = require('resources')

send_command('wait 3; input /lockstyleset 14;')

PhysicalBloodPacts = T{"Poison Nails", --Carbuncle
        "Punch", "Burning Strike", "Double Punch", --Ifrit
        "Axe Kick", "Double Slap", "Rush", --Shiva
        "Claw", "Predator Claws", --Garuda
        "Rock Throw", "Rock Buster", "Megalith Throw", "Mountain Buster", "Crag Throw", --Titan
        "Shock Strike", "Chaotic Strike", "Volt Strike", --Ramuh
        "Barracuda Dive", "Tail Whip", "Spinning Dive", --Leviathan
        "Regal Scratch", "Regal Gash", --Cait Sith
        "Moonlit Charge", "Crescent Fang", "Eclipse Bite", --Fenrir
        "Camisado", "Blindside" --Diabolos'
		}
		
MagicalBloodPacts = T{"Searing Light", "Meteorite", "Holy Mist", --Carbuncle
        "Inferno", "Fire II", "Fire IV", "Meteor Strike", --Ifrit
        "Diamond Dust", "Blizzard II", "Blizzard IV", "Heavenly Strike", --Shiva
        "Aerial Blast", "Aero II", "Aero IV", "Wind Blade", --Garuda
        "Earthen Fury", "Stone II", "Stone IV", "Geocrush", --Titan
        "Judgement Bolt", "Thunder II", "Thunder IV", "Thunderstorm", --Ramuh
        "Tidal Wave", "Water II", "Water IV", "Grand Fall", --Leviathan
        "Level ? Holy", --Cait Sith
        "Howling Moon", "Lunar Bay", "Impact", --Fenrir
        "Ruinous Omen", "Night Terror" --Diabolos, 
		}

HybridBloodPacts = T{"Flaming Crush", "Nether Blast"}

BuffBloodPacts = T{"Healing Ruby", "Shining Ruby", "Glittering Ruby", "Healing Ruby II",
        "Soothing Ruby", "Pacifying Ruby", --Carbuncle
        "Crimson Howl", "Inferno Howl", --Ifrit
        "Frost Armor", "Crystal Blessing", --Shiva
        "Aerial Armor", "Whispering Wind", " Hastega", "Fleet Wind",
        "Hastega II",--Garuda
        "Earthen Ward", "Earthen Armor", --Titan
        "Rolling Thunder", "Lightning Armor", --Ramuh
        "Spring Water", "Soothing Current", --Leviathan
        "Altana's Favor", "Raise II", "Reraise II", "Eerie Eye", --Cait Sith
        "Ecliptic Growl", "Ecliptic Howl", "Heavenward Howl", --Fenrir
        "Noctoshield", "Dream Shroud" --Diabolos
		}

DebuffBloodPacts = T{"Sleepga", "Diamond Storm", --Shiva
        "Shock Squall", --Ramuh
        "Slowga", "Tidal Roar", --Leviathan
        "Mewing Lullaby", --Cait Sith
        "Lunar Cry", "Lunar Roar", --Fenrir
        "Somnolence", "Nightmare", "Ultimate Terror", "Pavor Nocturnus" --Diabolos
	}

function get_sets()

sets.idle = { -- What to wear when no pet is out
		main="Gridarvor",
		sub="Oneiros Grip",
        ammo="Sancus Sachet",
        head="Beckoner's Horn +1",
        neck="Caller's Pendant",
        ear1="Evans Earring",
        ear2="Gifted Earring",
        body="Shomonjijoe +1",
        hands="Merlinic Dastanas",
        ring1="Defending Ring",
        ring2="Vocane Ring",
        back="Shadow Mantle",
        waist="Incarnation Sash",
        legs="Apogee Slacks",
        feet="Apogee Pumps"
        }
    
	sets.idle.Perpetuation = { --What to wear when there is a pet out
		main="Gridarvor",
		sub="Oneiros Grip",
	    ammo="Sancus Sachet",
        head="Beckoner's Horn +1",
        neck="Caller's Pendant",
        ear1="Evans Earring",
        ear2="Gifted Earring",
        body="Shomonjijoe +1",
        hands="Merlinic Dastanas",
        ring1="Evoker's Ring",
        ring2="Varar Ring",
        back={ name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Pet: Attack+10 Pet: Rng.Atk.+10','Pet: Haste+10',}},
        waist="Incarnation Sash",
        legs="Assid. Pants +1",
        feet="Apogee Pumps"
	    }
	
	sets.idle.reive = set_combine(sets.idle.Perpetuation, {neck="Adoulin's Refuge +1"})
    sets.idle.adoulin = set_combine(sets.idle.Perpetuation, {body="Councilor's Garb"})
	sets.idle.mogGarden = {body="Jubilee Shirt", hands="Field Gloves", waist="Field Rope", feet="Field Boots", neck="Field Torque"}
	
	sets.resting = {}
	
	sets.engaged = {}
	sets.engaged.withPet = sets.idle.Perpetuation
	
	sets.precast = {}
	
	sets.precast.BPDelay = { -- BP minus and Blood Boon
	    main={ name="Espiritus", augments={'MP+50','Pet: "Mag.Atk.Bns."+20','Pet: Mag. Acc.+20',}},
		sub="Oneiros Grip",
		ammo="Sancus Sachet",
		head="Con. Horn +1",
		body="Con. Doublet +3",
		hands="Glyphic Bracers +1",
		legs="Assid. Pants +1",
		feet={ name="Apogee Pumps", augments={'Pet: Attack+20','Pet: "Mag.Atk.Bns."+20','Blood Pact Dmg.+7',}},
		neck="Caller's Pendant",
		waist="Lucidity Sash",
		left_ear="Evans Earring",
		right_ear="Gifted Earring",
		left_ring="Fervor Ring",
		right_ring="Varar Ring",
		back="Conveyance Cape"
		}
    
	sets.precast.FC = {
		ear1="Etiolation Earring",
        ear2="Loquac. Earring",
		neck="Voltsurge Torque",
        --body="Samnuha Coat",
        --back="Swith Cape +1",
        --waist="Witful Belt",
        --hands="Leyline Gloves",
        --legs="Lengo Pants",
        ring1="Rahab Ring",
		ring2="Kishar Ring"
        }
 
    
 
    sets.midcast = {}
	
    sets.midcast.BPPhysical = {
		main="Gridarvor",
		--main="Keraunos",
		sub="Oneiros Grip",
		ammo="Sancus Sachet",
		head={ name="Apogee Crown", augments={'Pet: Attack+20','Pet: "Mag.Atk.Bns."+20','Blood Pact Dmg.+7',}},
		body="Con. Doublet +3",
		hands="Merlinic Dastanas",
		legs="Enticer's Pants",
		feet="Convo. Pigaches +3",
		neck="Shulmanu Collar",
		waist="Incarnation Sash",
		left_ear="Gelos Earring",
		right_ear="Lugalbanda Earring",
		left_ring="Varar Ring",
		right_ring="Varar Ring",
		back={ name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Pet: Attack+10 Pet: Rng.Atk.+10','Pet: Haste+10',}}
    }
	
    sets.midcast.BPMagical = {
		main={ name="Grioavolr", augments={'Blood Pact Dmg.+8','Pet: "Mag.Atk.Bns."+17','DMG:+19',}},
		sub="Oneiros Grip",
		ammo="Sancus Sachet",
		head={ name="Apogee Crown", augments={'Pet: Attack+20','Pet: "Mag.Atk.Bns."+20','Blood Pact Dmg.+7',}},
		body="Con. Doublet +3",
		hands="Merlinic Dastanas",
		legs={ name="Enticer's Pants", augments={'MP+45','Pet: Accuracy+14 Pet: Rng. Acc.+14','Pet: Mag. Acc.+13','Pet: Damage taken -3%',}},
		feet={ name="Apogee Pumps", augments={'Pet: Attack+20','Pet: "Mag.Atk.Bns."+20','Blood Pact Dmg.+7',}},
		neck="Adad Amulet",
		waist="Incarnation Sash",
		left_ear="Gelos Earring",
		right_ear="Lugalbanda Earring",
		left_ring="Varar Ring",
		right_ring="Varar Ring",
		back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Pet: Magic Damage+10','Pet: Haste+10',}}
    }
	
    sets.midcast.BPHybrid = {
		--main="Gridarvor",
		main="Keraunos",
		sub="Oneiros Grip",
		ammo="Sancus Sachet",
		head={ name="Apogee Crown", augments={'Pet: Attack+20','Pet: "Mag.Atk.Bns."+20','Blood Pact Dmg.+7',}},
		body="Con. Doublet +3",
		hands="Merlinic Dastanas",
		legs="Enticer's Pants",
		--legs={ name="Enticer's Pants", augments={'MP+45','Pet: Accuracy+14 Pet: Rng. Acc.+14','Pet: Mag. Acc.+13','Pet: Damage taken -3%',}},
		feet={ name="Apogee Pumps", augments={'Pet: Attack+20','Pet: "Mag.Atk.Bns."+20','Blood Pact Dmg.+7',}},
		neck="Shulmanu Collar",
		waist="Incarnation Sash",
		left_ear="Gelos Earring",
		right_ear="Lugalbanda Earring",
		left_ring="Speaker's Ring",
		right_ring="Varar Ring",
		back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Pet: Magic Damage+10','Pet: Haste+10',}}	
    }
	
    sets.midcast.BPBuff = {
		main={ name="Espiritus", augments={'MP+50','Pet: "Mag.Atk.Bns."+20','Pet: Mag. Acc.+20',}},
		sub="Vox Grip",
		ammo="Sancus Sachet",
		head="Beckoner's Horn +1",
		body="Beck. Doublet +1",
		hands="Lamassu Mitts +1",
		legs="Beck. Spats +1",
		feet={ name="Apogee Pumps", augments={'Pet: Attack+20','Pet: "Mag.Atk.Bns."+20','Blood Pact Dmg.+7',}},
		neck="Caller's Pendant",
		waist="Lucidity Sash",
		left_ear="Evans Earring",
		right_ear="Gifted Earring",
		left_ring="Fervor Ring",
		right_ring="Evoker's Ring",
		back="Conveyance Cape"
    }
	
    sets.midcast.BPDebuff = {
		main={ name="Espiritus", augments={'MP+50','Pet: "Mag.Atk.Bns."+20','Pet: Mag. Acc.+20',}},
		sub="Vox Grip",
		ammo="Sancus Sachet",
		head="Beckoner's Horn +1",
		body="Con. Doublet +3",
		hands="Lamassu Mitts +1",
		legs="Glyphic Bracers +1",
		feet="Convo. Pigaches +3",
		neck="Caller's Pendant",
		waist="Lucidity Sash",
		left_ear="Evans Earring",
		right_ear="Lugalbanda Earring",
		left_ring="Fervor Ring",
		right_ring="Evoker's Ring",
		back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Pet: Magic Damage+10','Pet: Haste+10',}}
    }
    
    sets.midcast.Cures = {
    }
    
    -- JA sets
    sets.JA = {}
    sets.JA["Mana Cede"] = {}
    sets.JA["Apogee"] = {}
    sets.JA["Avatar's Favor"] = {}
    sets.JA["Elemental Siphon"] = {
		head="Beckoner's Horn +1",
		body="Beck. Doublet +1",
		hands="Lamassu Mitts +1",
		ring1="Evoker's Ring",
		ring2="Fervor Ring",
		sub="Vox Grip",
		back="Conveyance Cape",
		legs="Beck. Spats +1"
	}
 
    -- WS sets
    sets.WS = {}
    sets.WS["Myrkr"] = set_combine(sets.WS, {ear2="Moonshade Earring"})
	sets.WS["Retribution"] = set_combine(sets.WS, {ear2="Moonshade Earring"})

end

-- Mechanics
  function change_zone()
    new_zone = res.zones[windower.ffxi.get_info().zone].english
    if new_zone == "Western Adoulin" or new_zone == "Eastern Adoulin" then
       equip(sets.idle.adoulin)
	elseif new_zone == "Mog Garden" then --must not be called mog garden?
		equip(sets.idle.mogGarden)
	else aftercast()
    end
 end
 
 function buff_change(new, bool)
	if new == 'Reive Mark' and bool then
		equip(sets.idle.reive)
		disable('neck')
	elseif new == 'Reive Mark' and not bool then
		enable('neck')
		aftercast()
	end
end

function precast(spell)
	if (spell.type == 'BloodPactRage' or spell.type == 'BloodPactWard') and not buffactive['Astral Conduit'] then
		--windower.add_to_chat(123, spell.english .. " is a blood pact command equipping BPDelay")
		equip(sets.precast.BPDelay)
    elseif spell.action_type == 'Magic' then
        equip(sets.precast.FC)
    elseif spell.type == 'JobAbility' then
        if sets.JA[spell.name] then
            equip(sets.JA[spell.name])
		else
			equip (sets.JA)
        end
    elseif spell.type == 'WeaponSkill' then
        if sets.WS[spell.name] then
            equip(sets.WS[spell.name])
        else
            equip(sets.WS)
        end
	else
		--windower.add_to_chat(123,"Precast: " .. spell.english .. " is type " .. spell.type)
    end
end

function midcast(spell)
	--windower.add_to_chat(123,"Midcast")
    if string.find(spell.english, 'Cure') or string.find(spell.english, ' Cura') then
            equip(sets.midcast.Cures)
    end
end

function equipBPType(spell)
	--windower.add_to_chat(123,"Equip BP Gear")
	if PhysicalBloodPacts:contains(spell.english) then
		--windower.add_to_chat(123, "Physical: " .. spell.english .. " Found")
		equip(sets.midcast.BPPhysical)
    elseif MagicalBloodPacts:contains(spell.english) then
		--windower.add_to_chat(123, "Magical: " .. spell.english .. " Found")
		equip(sets.midcast.BPMagical)
    elseif HybridBloodPacts:contains(spell.english) then
		--windower.add_to_chat(123, "Hybrid: " .. spell.english .. " Found")
		equip(sets.midcast.BPHybrid)
    elseif BuffBloodPacts:contains(spell.english) then
		--windower.add_to_chat(123, "Buff: " .. spell.english .. " Found")
		equip(sets.midcast.BPBuff)
    elseif DebuffBloodPacts:contains(spell.english) then
		--windower.add_to_chat(123, "Debuff: " .. spell.english .. " Found")
		equip(sets.midcast.BPDebuff)
    else
		--windower.add_to_chat(123, "Unable to find spell: " .. spell.english)
		equip(sets.midcast.BPPhysical)
    end
end
 
function aftercast(spell)
	if spell and string.find(spell.type, 'BloodPact') and not spell.interupted then
		--windower.add_to_chat(123, "Aftercast: Uninterupted Bloodpact " .. spell.english)
		equipBPType(spell)
	elseif spell and spell.type == 'SummonerPact' then
		if player.stats == 'Engaged' then
			--windower.add_to_chat(123, "1 Aftercast Engaged with pet")
			equip(sets.engaged.withPet)
		else
			--windower.add_to_chat(123, "1 Aftercast with pet")
			equip(sets.idle.Perpetuation)
		end
	elseif spell and spell.name == 'Release' then
		if player.stats == 'Engaged' then
			--windower.add_to_chat(123, "2Aftercast Engaged without pet")
			equip(sets.engaged)
		else
			--windower.add_to_chat(123, "2 Aftercast without pet")
			equip(sets.idle)
		end
	else
		if player.status =='Engaged' then
			if pet.isvalid then
				--windower.add_to_chat(123, "3 Aftercast Engaged with pet")
				equip(sets.engaged.withPet)
			else
				--windower.add_to_chat(123, "3 Aftercast Engaged without pet.")
				equip(sets.engaged)
			end
		elseif player.status == 'Idle'then
			if pet.isvalid then
				--windower.add_to_chat(123, "4 Aftercast Idle with pet.")
				equip(sets.idle.Perpetuation)
			else
				--windower.add_to_chat(123, "4 Aftercast Idle without pet.")
				equip(sets.idle)
			end
		end
	end
end


function pet_aftercast(spell)
	if player.status =='Engaged' then
		if pet.isvalid then
			--windower.add_to_chat(123, "3 Pet Aftercast Engaged with pet")
			equip(sets.engaged.withPet)
		else
			--windower.add_to_chat(123, "3 Pet Aftercast Engaged without pet.")
			equip(sets.engaged)
		end
	elseif player.status == 'Idle'then
		if pet.isvalid then
			--windower.add_to_chat(123, "4 Pet Aftercast Idle with pet.")
			equip(sets.idle.Perpetuation)
		else
			--windower.add_to_chat(123, "4 Pet Aftercast Idle without pet.")
			equip(sets.idle)
		end
	end
end
 
function status_change(new,old)
	if new == 'Idle' then
		if pet.isvalid then
			equip(sets.idle.Perpetuation)
		else
			equip(sets.idle)
		end
	elseif new == 'Resting' then
		if pet.isvalid then
			equip(sets.idle.Perpetuation)
		else
			equip(sets.resting)
		end
	elseif new == 'Engaged' then
		if pet.isvalid then
			equip(sets.engaged.withPet)
		else
			equip(sets.engaged)
		end
	end
end