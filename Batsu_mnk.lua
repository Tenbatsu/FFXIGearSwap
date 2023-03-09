send_command('wait 3; input /lockstyleset 6;wait 5;input /macro book 1; wait 2; input /macro set 3')


function get_sets()
    
	--Set for standing around town
	sets.aftercast = {}
		
	sets.aftercast.Idle = {
		ammo="Ginsen",
		head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3',}},
		body = "Ashera Harness",
		hands={ name="Adhemar Wristbands", augments={'STR+10','DEX+10','Attack+15',}},
		legs={ name="Samnuha Tights", augments={'STR+8','DEX+9','"Dbl.Atk."+3','"Triple Atk."+2',}},
		feet={ name="Herculean Boots", augments={'Accuracy+24 Attack+24','Crit. hit damage +2%','DEX+9','Attack+4',}},
		neck="Twilight Torque",
		waist="Black Belt",
		left_ear="Sherida Earring",
		right_ear="Bhikku Earring +1",
		left_ring="Defending Ring",
		right_ring="Vocane Ring +1",
		back="Shadow Mantle"
	}
	
	--Set for face punching
	sets.aftercast.TP = {
		ammo="Ginsen",
		head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3',}},
		body = "Ashera Harness",
		hands={ name="Adhemar Wristbands", augments={'STR+10','DEX+10','Attack+15',}},
		legs={ name="Samnuha Tights", augments={'STR+8','DEX+9','"Dbl.Atk."+3','"Triple Atk."+2',}},
		feet = "Tatena. Sune. +1",
		neck="Combatant's Torque",
		waist="Windbuffet Belt +1",
		left_ear="Sherida Earring",
		right_ear="Bhikku Earring +1",
		left_ring="Niqmaddu Ring",
		right_ring="Epona's Ring",
		back="Atheling Mantle"
	}
	
	--Set for resting
	sets.aftercast.hHP = {
		body = "Hes. Cyclas +1",
		back = "Melee Cape"
	}
	
	--Establish the base precast set
	sets.precast = {}
	
	--Some Job Abilities
	
	--Hundred Fists
	sets.precast.HundredFists = {legs = "Hes. Hose +1"}
	
	--Boost
	sets.precast.Boost = {hands = "Anchor. Gloves +3",}
	
	--Focus
	sets.precast.Focus = {head = "Anch. Crown +3"}
	
	--Dodge
	sets.precast.Dodge = {feet = "Anch. Gaiters +2"}
	
	--Chi Blast (Stack MND)
	sets.precast.ChiBlast = {
		head = "Anch. Crown +3",
		body = "Nyame Mail",
		ring1 = "Aqua Ring",
		ring2 = "Aqua Ring",
		back = "Melee Cape",
		waist = "Luminary Sash",
		legs = "Nyame Flanchard",
		feet = "Shukuyu Sune-Ate"}
		
	--Counterstance
	sets.precast.Counterstance = {feet = "Hes. Gaiters +1"}
	
	--Impetus
	sets.precast.Impetus = {body = "Bhikku Cyclas +1"}
	
	--Footwork
	sets.precast.Footwork = {feet = "Bhikku Gaiters +1"}
	
	--Forlmless Strikes
	sets.precast['Formless Strikes'] = {"Hes. Cyclas +1"}
	
	--Chakra (Stack VIT)
	sets.precast.Chakra = {
		head = "Anch. Crown +3",
		neck = "Promise Badge",
		ear1 = "Kemas Earring",
		body = "Anch. Cyclas +2",
		hands = "Hes. Gloves +1",
		back = "Anchoret's Mantle",
		waist = "Warwolf Belt",
		legs = "Anch. Hose +2",
		feet = "Anch. Gaiters +2"
	}
	
	--Finally some weaponskill action
	
	--Victory Smite 80% STR
	sets.precast['Victory Smite'] = {
		neck = "Fotia Gorget",
		--back = "Smertrios's Mantle",
		ring1 = "Ilabrat Ring",
		ring2 = "Niqmaddu Ring",
		ear1 = "Ishvara Earring",
		ear2 = "Moonshade Earring",
		waist = "Fotia Belt",
		ammo = "Knobkierrie"}
		
	--Asuran Fists 15% STR 15% VIT
	sets.precast['Asuran Fists'] = {
		neck = "Fotia Gorget",
		--back = "Smertrios's Mantle",
		ring1= "Regal Ring",
		ring2= "Niqmaddu Ring",
		hands = "Anchor. Gloves +3",
		ear1 = "Ishvara Earring",
		ear2 = "Moonshade Earring",
		waist = "Fotia Belt",
		ammo = "Knobkierrie"}
	
	--Shijin Spiral 85%DEX
	sets.precast['Shijin Spiral'] = {
		neck = "Fotia Gorget",
		--back = "Smertrios's Mantle",
		ring1= "Regal Ring",
		ring2= "Niqmaddu Ring",
		hands = "Anchor. Gloves +3",
		ear1 = "Ishvara Earring",
		ear2 = "Moonshade Earring",
		waist = "Fotia Belt",
		ammo = "Knobkierrie"}
	
	--Tornado Kick 40% STR 40% VIT
	sets.precast['Tornado Kick'] = {
		neck = "Fotia Gorget",
		--back = "Smertrios's Mantle",
		ring1= "Regal Ring",
		ring2= "Niqmaddu Ring",
		hands = "Anchor. Gloves +3",
		ear1 = "Ishvara Earring",
		ear2 = "Moonshade Earring",
		waist = "Fotia Belt",
		ammo = "Knobkierrie"}
	
	--Ascetic's Fury 50% STR 50% VIT
	sets.precast['Ascetic\'s Fury'] = {
		neck = "Fotia Gorget",
		--back = "Smertrios's Mantle",
		ring1= "Regal Ring",
		ring2= "Niqmaddu Ring",
		hands = "Anchor. Gloves +3",
		ear1 = "Ishvara Earring",
		ear2 = "Moonshade Earring",
		waist = "Fotia Belt",
		ammo = "Knobkierrie"}
	
	--Spinning Attack
	sets.precast['Spinning Attack'] = {
		neck = "Fotia Gorget",
		--back = "Smertrios's Mantle",
		ring1= "Regal Ring",
		ring2= "Niqmaddu Ring",
		hands = "Anchor. Gloves +3",
		ear1 = "Ishvara Earring",
		ear2 = "Moonshade Earring",
		waist = "Fotia Belt",
		ammo = "Knobkierrie"}
	
	sets.precast.WS = sets.aftercast.TP
	
	--Set for Fast Casting Utsusemi
	sets.precast.FastCast = {
	--neck="Magoraga Beads",
	ear1 = "Loquac. Earring"
	}
	
end --End Function get_sets

function precast(spell) --Equip Items based on Abilities or Spells

if spell.action_type == 'Magic' then
	equip(sets.FastCast)
elseif sets.precast[spell.english] then
	equip(sets.precast[spell.english])
elseif spell.type == "WeaponSkill" then
	equip(sets.precast.WS)
else

end

end --End Function precast(spell)

function midcast(spell)
end

function aftercast(spell)
    if player.status =='Engaged' then
        equip(sets.aftercast.TP)
    else
        equip(sets.aftercast.Idle)
    end
end--End Function aftercast (spell)

function status_change(new,old) --State Changing between punching and idle and resting
    --if T{'Idle','Resting'}:contains(new) then
	if new == 'Idle' then
		equip(sets.aftercast.Idle)
	elseif new == 'Resting' then
		equip(sets.aftercast.hHP)
    elseif new == 'Engaged' then
        equip(sets.aftercast.TP)
    end
end --End Function status_change(new,old)

function self_command(command)
    if command == 'equipBattle' then
       equip(sets.TP)
    else
        equip(sets.Idle)
    end
end