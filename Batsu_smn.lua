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
        "Camisado", "Blindside", --Diabolos'
		"Welt", "Roundhouse", "Hysteric Assault" --Siren
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
        "Ruinous Omen", "Night Terror", "Nether Blast", --Diabolos,
		"Tornado II", "Sonic Buffet" --Siren		
		}

HybridBloodPacts = T{"Flaming Crush"}

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
        "Noctoshield", "Dream Shroud", --Diabolos
		"Wind's Blessing", "Katabatic Blades", "Chinook" --Siren
		}

DebuffBloodPacts = T{"Sleepga", "Diamond Storm", --Shiva
        "Shock Squall", --Ramuh
        "Slowga", "Tidal Roar", --Leviathan
        "Mewing Lullaby", --Cait Sith
        "Lunar Cry", "Lunar Roar", --Fenrir
        "Somnolence", "Nightmare", "Ultimate Terror", "Pavor Nocturnus", --Diabolos
		"Lunatic Voice", "Bitter Elegy" --Siren
	}

function get_sets()

sets.idle = { -- What to wear when no pet is out
		main="Nirvana",
		sub="Oneiros Grip",
        ammo="Sancus Sachet +1",
        head="Convoker's Horn +3",
        neck="Caller's Pendant",
        ear1="Evans Earring",
        ear2="Gifted Earring",
        body="Shomonjijoe +1",
        hands="Merlinic Dastanas",
        ring1="Defending Ring",
        ring2="Vocane Ring +1",
        back="Shadow Mantle",
        waist="Incarnation Sash",
        legs="Apogee Slacks",
        feet="Apogee Pumps"
        }
    
	sets.idle.Perpetuation = { --What to wear when there is a pet out
		main="Nirvana",
		sub="Oneiros Grip",
	    ammo="Sancus Sachet +1",
        head="Convoker's Horn +3",
        neck="Caller's Pendant",
        ear1="Evans Earring",
        ear2="Gifted Earring",
        body="Shomonjijoe +1",
        hands="Merlinic Dastanas",
        ring1="Varar Ring +1",
        ring2="Varar Ring +1",
        back={ name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Pet: Attack+10 Pet: Rng.Atk.+10','Pet: Haste+10','Pet: "Regen"+5',}},
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
	    main="Nirvana",
		sub="Oneiros Grip",
		ammo="Sancus Sachet +1",
		head="Convoker's Horn +3",
		body="Con. Doublet +3",
		hands="Glyphic Bracers +1",
		legs="Assid. Pants +1",
		feet={ name="Apogee Pumps", augments={'Pet: Attack+20','Pet: "Mag.Atk.Bns."+20','Blood Pact Dmg.+7',}},
		neck="Caller's Pendant",
		waist="Lucidity Sash",
		left_ear="Evans Earring",
		right_ear="Gifted Earring",
		left_ring="Fervor Ring",
		right_ring="Varar Ring +1",
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
		main="Nirvana",
		sub="Elan Strap",
		ammo="Sancus Sachet +1",
		head= "C. Palug Crown",
		body="Con. Doublet +3",
		hands="Merlinic Dastanas",
		legs="Apogee Slacks",
		feet="Convo. Pigaches +3",
		neck="Smn. Collar +2",
		waist="Incarnation Sash",
		left_ear="Gelos Earring",
		right_ear="Lugalbanda Earring",
		left_ring="Varar Ring +1",
		right_ring="Varar Ring +1",
		back={ name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Pet: Attack+10 Pet: Rng.Atk.+10','Pet: Haste+10','Pet: "Regen"+5',}}
    }
	
    sets.midcast.BPMagical = {
		--main={ name="Grioavolr", augments={'Blood Pact Dmg.+9','Pet: Mag. Acc.+16','Pet: "Mag.Atk.Bns."+22','DMG:+12',}},
		main = "Nirvana",
		sub="Elan Strap",
		ammo="Sancus Sachet +1",
		head= "C. Palug Crown",
		body="Con. Doublet +3",
		hands="Merlinic Dastanas",
		legs="Enticer's Pants",
		feet={ name="Apogee Pumps", augments={'Pet: Attack+20','Pet: "Mag.Atk.Bns."+20','Blood Pact Dmg.+7',}},
		neck="Smn. Collar +2",
		waist="Regal Belt",
		left_ear="Gelos Earring",
		right_ear="Lugalbanda Earring",
		left_ring="Varar Ring +1",
		right_ring="Varar Ring +1",
		back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Pet: Magic Damage+10','Pet: Haste+10','Pet: "Regen"+5',}}
    }
	
    sets.midcast.BPHybrid = {
		main="Nirvana",
		sub="Elan Strap",
		ammo="Sancus Sachet +1",
		head= "C. Palug Crown",
		body="Con. Doublet +3",
		hands="Merlinic Dastanas",
		legs="Apogee Slacks",
		feet={ name="Apogee Pumps", augments={'Pet: Attack+20','Pet: "Mag.Atk.Bns."+20','Blood Pact Dmg.+7',}},
		neck="Smn. Collar +2",
		waist="Incarnation Sash",
		left_ear="Gelos Earring",
		right_ear="Lugalbanda Earring",
		left_ring="Speaker's Ring",
		right_ring="Varar Ring +1",
		back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Pet: Magic Damage+10','Pet: Haste+10','Pet: "Regen"+5',}}	
    }
	
    sets.midcast.BPBuff = {
		main="Nirvana",
		sub="Vox Grip",
		ammo="Sancus Sachet +1",
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
		back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Pet: Magic Damage+10','Pet: Haste+10','Pet: "Regen"+5',}}
    }
	
    sets.midcast.BPDebuff = {
		main="Nirvana",
		sub="Vox Grip",
		ammo="Sancus Sachet +1",
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
    sets.JA["Avatar's Favor"] = {
			head = "Beckoner's Horn +1"
	}
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
	elseif new == 'Astral Conduit' and bool then
		windower.add_to_chat(123, "Starting Astral Conduit")
		equip(sets.midcast.BPPhysical)
		--disable("Main", "Sub", "Range", "Ammo", "Head", "Neck", "Ear1", "Ear2", "Body", "Hands", "Ring1", "Ring2", "Back", "Waist", "Legs", "Feet")
		disable("Range", "Ammo", "Head", "Neck", "Ear1", "Ear2", "Body", "Hands", "Ring1", "Ring2", "Back", "Waist", "Legs", "Feet")
	elseif new == 'Astral Conduit' and not bool then
		windower.add_to_chat(123, "Astral Conduit Finished")
		--enable("Main", "Sub", "Range", "Ammo", "Head", "Neck", "Ear1", "Ear2", "Body", "Hands", "Ring1", "Ring2", "Back", "Waist", "Legs", "Feet")
		enable("Range", "Ammo", "Head", "Neck", "Ear1", "Ear2", "Body", "Hands", "Ring1", "Ring2", "Back", "Waist", "Legs", "Feet")
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