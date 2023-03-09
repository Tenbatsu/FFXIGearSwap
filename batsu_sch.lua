res = require('resources')
-- send_command('wait 3; input /lockstyleset 13;')

modes = {"Standard", "Bursting", "HighAccuracy"}
curMode = "Bursting"

-- Locus Ring Mugen Band


function get_sets()
    
	sets.idle = {}
	sets.idle.mogGarden = {body="Jubilee Shirt", hands="Field Gloves", waist="Field Rope", feet="Field Boots", neck="Field Torque"}
	
	
	sets.aftercast = {}
	sets.aftercast.reive = set_combine(sets.idle, {neck="Adoulin's Refuge +1"})
    sets.aftercast.adoulin = set_combine(sets.idle, {body="Councilor's Garb"})
	
	sets.aftercast.Idle = {
		main = "Akademos",
		sub = "Oneiros grip",
		range = "Aureole",
		head = "Jhakri Coronal +2",
		neck = "Twilight Torque",
		ear1 = "Etiolation Earring",
		ear2 = "Eabani earring",
		body = "Jhakri robe +2",
		hands = "Jhakri Cuffs +2",
		ring1 = "Defending Ring",
		ring2 = "Vocane Ring +1",
		back = "Solemnity Cape",
		waist = "Refoccilation Stone",
		legs = "Assid. Pants +1",
		feet = "Amalric nails"
	}
	
	sets.aftercast.Engaged = {
		main = "Akademos",
		sub = "Bloodrain Strap",
		range = "Aureole",
		head = "Jhakri Coronal +2",
		neck = "Combatant's Torque",
		ear1 = "Cessance earring",
		ear2 = "Digni. earring",
		body = "Jhakri robe +2",
		hands = "Jhakri Cuffs +2",
		ring1 = "Apate Ring",
		ring2 = "Rajas Ring",
		back = "Solemnity Cape",
		waist = "Eschan Stone",
		legs={ name="Merlinic Shalwar", augments={'"Counter"+2','CHR+9','Quadruple Attack +2','Mag. Acc.+18 "Mag.Atk.Bns."+18',}},
		feet = "Jhakri Pigaches +2"
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
	sets.precast['Enlightenment'] = {body ='Pedagogy Gown +1'}
    sets.precast['Tabula Rasa'] = {legs ='Pedagogy Pants +1'}
	
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
		main = "Akademos",
		sub = "Enki Strap",
		range = "Aureole",
		head = "Jhakri Coronal +2",
		neck = "Erra Pendant",
		ear1 = "Digni. Earring",
		ear2 = "Gwati Earring",
		body = "Jhakri Robe +2",
		hands = "Jhakri Cuffs +2",
		ring1 = "Rahab Ring",
		ring2 = "Acumen Ring",
		back = "Bookworm's Cape",
		waist = "Luminary Sash",
		legs = "Jhakri slops +2",
		feet = "Jhakri pigaches +2"
	}
	
	sets.midcast.Bursting = {
		main="Akademos",
		sub="Enki Strap",
		range="Aureole",
		head="Merlinic Hood",
		body="Jhakri Robe +2",
		hands = { name="Amalric Gages", augments={'INT+10','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
		legs = { name="Merlinic Shalwar", augments={'Mag. Acc.+12 "Mag.Atk.Bns."+12','Magic burst dmg.+10%','CHR+3','"Mag.Atk.Bns."+10',}},
		feet = "Jhakri Pigaches +2",
		neck = "Mizu. Kubikazari",
		waist = "Hachirin-no-obi",
		left_ear = "Crematio Earring",
		right_ear = "Friomisi Earring",
		left_ring = "Locus Ring",
		right_ring = "Mujin Band",
		back = "Bookworm's Cape"
	}
	
	sets.midcast.Standard = {
		main = "Akademos",
		range = "Aureole",
		head = "Jhakri Coronal +2",
		neck = "Sanctity Necklace",
		ear1 = "Crematio Earring",
		ear2 = "Friomisi Earring",
		body = "Jhakri Robe +2",
		hands = "Jhakri Cuffs +2",
		ring1 = "Shiva Ring",
		ring2 = "Shiva Ring",
		back = "Bookworm's Cape",
		waist = "Refoccilation Stone",
		legs = "Merlinic Shalwar",
		feet = "Amalric Nails"
	}
	
	sets.midcast.Dark = {
		range = "Aureole",
		head = "Jhakri Coronal +2",
		neck = "Erra Pendant",
		ear1 = "Crematio Earring",
		ear2 = "Hirudinea Earring",
		body = "Jhakri Robe +2",
		hands = "Jhakri Cuffs +2",
		ring1 = "Evanescence Ring",
		ring2 = "Rahab Ring",
		back = "Bookworm's Cape",
		waist = "Luminary Sash",
		legs = "Jhakri slops +2",
		feet = "Jhakri pigaches +2"
	}
	
	sets.midcast.Cures = {
		main = "Serenity",
		sub = "Enki Strap",
		range = "Aureole",
		head = "Jhakri Coronal +2",
		neck = "Erra Pendant",
		ear1 = "Digni. Earring",
		ear2 = "Gwati Earring",
		body = "Jhakri Robe +2",
		hands = "Telchine Gloves",
		ring1 = "Rahab Ring",
		ring2 = "Kunaji Ring",
		back = "Solemnity Cape",
		waist = "Luminary Sash",
		legs = "Jhakri slops +2",
		feet = "Jhakri pigaches +2"	
	}
	
	sets.midcast.Regens = set_combine(sets.midcast.Cures, {main="Coeus", back="Lugh's Cape"})
	
end --End Function get_sets


function precast(spell) --Equip Items based on Abilities or Spells
	if spell.action_type == 'Magic' then
		equip(sets.precast.FastCast)
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
        equip(sets.aftercast.Engaged)
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
	else
	end
 end