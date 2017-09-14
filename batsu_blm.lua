res = require('resources')
send_command('wait 3; input /lockstyleset 13;')

modes = {"Standard", "Bursting", "HighAccuracy"}
curMode = "Standard"

-- Locus Ring Mugen Band


function get_sets()
    
	sets.mogGarden = {body="Jubilee Shirt", hands="Field Gloves", waist="Field Rope", feet="Field Boots", neck="Field Torque"}
	
	
	sets.aftercast = {}
	sets.aftercast.reive = set_combine(sets.idle, {neck="Adoulin's Refuge +1"})
    sets.aftercast.adoulin = set_combine(sets.idle, {body="Councilor's Garb"})
	
	sets.aftercast.Idle = {
		range = "Aureole",
		head = "Jhakri Coronal +1",
		neck = "Twilight Torque",
		ear1 = "Crematio earring",
		ear2 = "Hermetic earring",
		body = "Jhakri robe +1",
		hands = "Jhakri Cuffs +1",
		ring1 = "Defending Ring",
		ring2 = "Vocane Ring",
		back = "Shadow Mantle",
		waist = "Refoccilation Stone",
		legs = "Merlinic Shalwar",
		feet = "Amalric nails"
	}
	
	sets.aftercast.Engaged = {
		range = "Aureole",
		head = "Jhakri Coronal +1",
		neck = "Combatant's Torque",
		ear1 = "Cessance earring",
		ear2 = "Digni. earring",
		body = "Jhakri robe +1",
		hands = "Jhakri Cuffs +1",
		ring1 = "Apate Ring",
		ring2 = "Rajas Ring",
		back = "Taranus's Cape",
		waist = "Eschan Stone",
		legs = "Merlinic Shalwar",
		feet = "Jhakri Pigaches +1"
	}
	
	sets.aftercast.hMP = {
		neck = "Beak necklace",
		ear1 = "Antivenom Earring"
	}
		
	--Establish the base precast set
	sets.precast = {}
	
	--Weaponskills
	sets.precast.WS = set_combine(sets.aftercast.Engaged, {neck = "Fotia Gorget", ear1 = "Moonshade earring", waist = "Fotia Belt"})
	
	sets.precast["Myrkr"] = {
		neck = "Fotia Gorget",
		ear1 = "Moonshade earring",
		waist = "Fotia Belt"
	}
	
	--Job Abilities
	sets.precast.JA = {}
	
	--Set for Fast Casting
	sets.precast.FastCast = {
		ear1 = "Loquac. Earring",
		ear2 = "Etiolation Earring",
		neck = "Voltsurge Torque",
		head = "Goetia Petasos +2",
		waist = "Channeler's Stone",
		ring1 = "Kishar Ring",
		ring2 = "Rahab Ring",
		legs = "Lengo Pants",
		feet = "Amalric Nails"
	}
	
	--Base Midcast Set
	sets.midcast = {}
	
	sets.midcast.mACC = {
		range = "Aureole",
		head = "Jhakri Coronal +1",
		neck = "Erra Pendant",
		ear1 = "Digni. Earring",
		ear2 = "Gwati Earring",
		body = "Spaekona's Coat +2",
		hands = "Jhakri Cuffs +1",
		ring1 = "Rahab Ring",
		ring2 = "Acumen Ring",
		back = "Taranus's Cape",
		waist = "Luminary Sash",
		legs = "Jhakri slops +1",
		feet = "Jhakri pigaches +1"
	}
	
	sets.midcast.Bursting = {
		main={ name="Lathi", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
		sub="Enki Strap",
		range="Aureole",
		head="Merlinic Hood",
		body="Spaekona's Coat +2",
		hands={ name="Amalric Gages", augments={'INT+10','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
		legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+12 "Mag.Atk.Bns."+12','Magic burst dmg.+10%','CHR+3','"Mag.Atk.Bns."+10',}},
		feet="Jhakri Pigaches +1",
		neck="Mizu. Kubikazari",
		waist="Hachirin-no-obi",
		left_ear="Crematio Earring",
		right_ear="Friomisi Earring",
		left_ring="Shiva Ring",
		right_ring="Mujin Band",
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10',}},
	}
	
	sets.midcast.Standard = {
		range = "Aureole",
		head = "Jhakri Coronal +1",
		neck = "Sanctity Necklace",
		ear1 = "Crematio Earring",
		ear2 = "Friomisi Earring",
		body = "Spaekona's Coat +2",
		hands = "Jhakri Cuffs +1",
		ring1 = "Shiva Ring",
		ring2 = "Shiva Ring",
		back = "Taranus's Cape",
		waist = "Refoccilation Stone",
		legs = "Merlinic Shalwar",
		feet = "Amalric Nails"
	}
	
	sets.midcast.Dark = {
		range = "Aureole",
		head = "Jhakri Coronal +1",
		neck = "Erra Pendant",
		ear1 = "Crematio Earring",
		ear2 = "Hirudinea Earring",
		body = "Jhakri Robe +1",
		hands = "Jhakri Cuffs +1",
		ring1 = "Evanescence Ring",
		ring2 = "Rahab Ring",
		back = "Taranus's Cape",
		waist = "Luminary Sash",
		legs = "Jhakri slops +1",
		feet = "Jhakri pigaches +1"
	}
	
end --End Function get_sets


function precast(spell) --Equip Items based on Abilities or Spells
	if spell.action_type == 'Magic' then
		equip(sets.FastCast)
	elseif sets.precast[spell.english] then
		equip(sets.precast[spell.english])
	elseif spell.type == "WeaponSkill" then
		equip(sets.precast.WS)
	end --end if
end --end function precast


function midcast(spell)
	if sets.midcast[spell.english] then
		equip(sets.midcast[spell.english])
	elseif spell.skill == "Elemental Magic" then
		--windower.add_to_chat(123, "Elemental")
		if curMode == "Standard" then
			--windower.add_to_chat(123, "Standard")
			equip(sets.midcast.Standard)
		elseif curMode == "Bursting" then
			--windower.add_to_chat(123, "Bursting")
			equip(sets.midcast.Bursting)
		elseif curMode == "HighAccuracy" then
			--windower.add_to_chat(123, "High Accuracy")
			equip(sets.midcast.mACC)
		end --end if
	--elseif spell.english == "Death" then
		--equip(sets.midcast.Bursting)
	elseif spell.skill == "Dark Magic" then
		equip(sets.midcast.Dark)
	else
		equip(sets.midcast.mACC)
	end --end if
end --end function midcast

function aftercast(spell)
    if player.status =='Engaged' then
        equip(sets.aftercast.TP)
	--elseif player.status == 'Casting' then
		--midcast(spell)
    else
        equip(sets.aftercast.Idle)
    end
end --end function aftercast (spell)

function status_change(new,old) --State Changing between punching and idle and resting
	if new == 'Idle' then
		--send_command('@input /echo Idle')
		equip(sets.aftercast.Idle)
	elseif new == 'Resting' then
		--send_command('@input /echo Resting')
		equip(sets.aftercast.hMP)
    elseif new == 'Engaged' then
        equip(sets.aftercast.Engaged)
    end
end --End Function status_change(new,old)

function buff_change(new, bool)
	if new == 'Reive Mark' and bool then
		equip(sets.aftercast.reive)
		disable('neck')
	elseif new == 'Reive Mark' and not bool then
		enable('neck')
		aftercast()
	end
end

function change_zone()
    new_zone = res.zones[windower.ffxi.get_info().zone].english
    if new_zone == "Western Adoulin" or new_zone == "Eastern Adoulin" then
       equip(sets.aftercast.adoulin)
	else aftercast()
    end
 end

function descendingNuke(Element)
  windower.add_to_chat(123, Element)
end

 function self_command(command)
    if command == "Standard" then
		curMode = "Standard"
		windower.add_to_chat(123, "Standard")
    elseif command == "Bursting" then
        curMode = "Bursting"
		windower.add_to_chat(123, "Bursting")
	elseif command == "HighAccuracy" then
        curMode = "HighAccuracy"
		windower.add_to_chat(123, "HighAccuracy")
	elseif command == "descendingNuke" then
		descendingNuke("Ice")
	else
	end
 end