
send_command('wait 3; input /lockstyleset 18;wait 5;input /macro book 18; wait 2; input /macro set 1')

function get_sets()
    
--	sets.mogGarden = {body="Jubilee Shirt", hands="Field Gloves", waist="Field Rope", feet="Field Boots", neck="Field Torque"}
	
	--Set for standing around town
	sets.aftercast = {}
	
	sets.aftercast.Idle = {
		head = "Nyame Helm",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
		neck = "Twilight Torque",
		waist = "Flume Belt +1",
		left_ear = "Etiolation Earring",
		right_ear = "Cassie Earring",
		left_ring = "Defending Ring",
        right_ring = "Vocane Ring +1",
		back = "Solemnity Cape"
	}
	
	--Set for face punching
	sets.aftercast.Melee = {
		head = "Dampening Tam",
		body = "Adhemar Jacket",
		hands = "Adhemar Wristbands",
		legs = "Samnuha Tights",
		feet = { name="Herculean Boots", augments={'Accuracy+24 Attack+24','Crit. hit damage +2%','DEX+9','Attack+4',}},
		neck = "Combatant's Torque",
		waist = "Windbuffet Belt +1",
		left_ear = "Telos Earring",
		right_ear = "Dignitary's Earring",
		left_ring = "Ilabrat Ring",
        right_ring = "Epona's Ring",
		back = "Atheling Mantle"
	}
	
	
	--Set for resting
	sets.aftercast.hHP = set_combine(sets.aftercast.Melee,{})
	
	--Establish the base precast and midcast sets
	sets.precast = {}
	sets.midcast = {}
	
	
	--Set for face shooting
	--Precast = Snapshot/Rapid Shot
	sets.precast.RA = {
		ammo = "Eminent Bullet",
		--head = "Chausser's Tricorne +1",
		neck = "Iskur Gorget",
		left_ear = "Telos Earring",
		right_ear = "Cessance Earring",
		body = "Laksamana's Frac +3",
		hands = "Lanun Gants +1",
		left_ring = "Dingir Ring",
        right_ring = "Regal Ring",
		back = "Gunslinger's Cape",
		waist = "Eschan Stone",
		legs = "Lanun Trews +1",
		feet = "Laksamana's Bottes +2",
	}
	--Midcast = STP, RAcc
	sets.midcast.RA = {
		--head = "Chausser's Tricorne +1",
		neck = "Iskur Gorget",
		left_ear = "Telos Earring",
		right_ear = "Dedition Earring",
		body = "Herculean Vest",
		hands = "Adhemar Wristbands",
		left_ring = "Dingir Ring",
        right_ring = "Regal Ring",
		back = "Gunslinger's Cape",
		waist = "Eschan Stone",
		legs = "Samnuha Tights",
		feet = { name="Herculean Boots", augments={'Accuracy+24 Attack+24','Crit. hit damage +2%','DEX+9','Attack+4',}},
	}
	
	
	--Job Abilities
	
	sets.precast.PhantomRoll = {
		head = "Lanun Tricorne +1",
		hands = "Chasseur's Gants +1",
		neck = "Regal Necklace",
		left_ring = "Luzaf's Ring",
		back = "Gunslinger's Cape"
	}
	
	sets.precast['Blitzer\'s Roll'] = set_combine(sets.precast.PhantomRoll, {head = "Chasseur's Tricorne"})
	sets.precast['Tactician\'s Roll'] = set_combine(sets.precast.PhantomRoll, {body = "Chasseur's Frac +1"})
	sets.precast['Allies\' Roll'] = set_combine(sets.precast.PhantomRoll, {hands = "Chasseur's Gants +1"})
	sets.precast['Caster\'s Roll'] = set_combine(sets.precast.PhantomRoll, {legs = "Chasseur's Culottes"})
	sets.precast['Courser\'s Roll'] = set_combine(sets.precast.PhantomRoll, {feet = "Chasseur's Bottes"})
	
	sets.precast["Wild Card"] = { feet = "Lanun Bottes +2"}
	
	sets.precast["Quick Draw"] = { 
		head = "Laksamana's Tricorne +2",
		feet = "Laksamana's Bottes +2"
		}
		
	sets.precast["Fold"] = { hands = "Lanun Gants +1"}
	sets.precast["Random Deal"] = { body = "Lanun Frac +3"}
	sets.precast["Triple Shot"] = { body = "Chasseur's Frac +1"}
	sets.precast["Snake Eye"] = {legs = "Lanun Trews +1"}
	
	
	sets.precast.WS = {
		head = "Nyame Helm",
		right_ear = "Moonshade Earring",
		left_ear = "Telos Earring",
		neck = "Fotia Gorget",
		waist = "Fotia Belt",
		back = "Camulus's Mantle"
	}
	
	sets.precast['Savage Blade'] = {
		neck = "Fotia Gorget",
		right_ear = "Moonshade Earring",
		left_ear = "Telos Earring",
		head = "Nyame Helm",
		body = "Nyame Mail",
		hands = "Adhemar Wristbands",
		left_ring = "Regal Ring",
		right_ring = "Ilabrat Ring",
		waist = "Fotia Belt",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
		back = "Camulus's Mantle"
	}
		
	sets.precast['Leaden Salute'] = {
		head = "Pixie Hairpin +1",
		neck = "Fotia Gorget",
		right_ear = "Moonshade Earring",
		left_ear = "Friomisi Earring",
		head = "Nyame Helm",
		body = "Lanun Frac +3",
		hands = "Nyame Gauntlets",
		right_ring = "Dingir Ring",
		left_ring = "Archon Ring",
		waist = "Eschan Stone",
		legs = "Nyame Flanchard",
		feet = "Lanun Bottes +2",
		back = "Camulus's Mantle"
	}
	
	sets.precast['Wildfire'] = {
		head = "Nyame Helm",
		neck = "Fotia Gorget",
		right_ear = "Moonshade Earring",
		left_ear = "Friomisi Earring",
		head = "Nyame Helm",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		right_ring = "Dingir Ring",
		waist = "Fotia Belt",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
		back = "Camulus's Mantle"
	}		
	
end --End Function get_sets

--Mechanics

function precast(spell) --Equip Items based on Abilities or Spells
	--windower.add_to_chat(123, spell.type)
	--windower.add_to_chat(123, spell.name)
	if sets.precast[spell.english] then
		equip(sets.precast[spell.english])
	elseif spell.type == "WeaponSkill" then
		equip(sets.precast.WS)
	elseif spell.type == "CorsairRoll" then
		--windower.add_to_chat(123, "Rolling")
		equip(sets.precast.PhantomRoll)
	elseif spell.name == "Ranged" then
		--windower.add_to_chat(123, "Shooting")
		equip(sets.precast.RA)
	end --end if
end --end function precast


function midcast(spell)
	if sets.midcast[spell.english] then
		equip(sets.midcast[spell.english])
	elseif spell.name == "Ranged" then
		--windower.add_to_chat(123, "Midcast")
		equip(sets.midcast.RA)
	end --end if
end

function aftercast(spell)
    if player.status =='Engaged' then
        equip(sets.aftercast.Melee)
    else
        equip(sets.aftercast.Idle)
    end
end--End Function aftercast (spell)

function status_change(new,old) --State Changing between punching and idle and resting
    --if T{'Idle','Resting'}:contains(new) then
	if new == 'Idle' then
		--send_command('@input /echo Idle')
		equip(sets.aftercast.Idle)
	elseif new == 'Resting' then
		--send_command('@input /echo Resting')
		equip(sets.aftercast.hHP)
    elseif new == 'Engaged' then
        equip(sets.aftercast.Melee)
    end
end --End Function status_change(new,old)

function buff_change(new, bool)
	if new == 'Reive Mark' and bool then
		--equip(sets.idle.reive)
		disable('neck')
	elseif new == 'Reive Mark' and not bool then
		enable('neck')
		aftercast()
	end
end

function change_zone()
    new_zone = res.zones[windower.ffxi.get_info().zone].english
    if new_zone == "Western Adoulin" or new_zone == "Eastern Adoulin" then
       equip(sets.idle.adoulin)
	else aftercast()
    end
 end
