function get_sets()
    
	--Set for standing around town
	sets.aftercast = {}
	
	--sets.aftercast.Idle = {
		--head = "Lilac Corsage",
		--neck = "Asperity Necklace",
		--ear1 = "Steelflash Earring",
		--ear2 = "Bladeborn Earring",
		--body = "Usukane Haramaki",
		--hands = "Usukane Gote",
		--ring1 = "Spiral Ring",
		--ring2 = "Epona's Ring",
		--back = "Atheling Mantle",
		--waist = "Black Belt",
		--legs = "Tantra Hose +2",
		--feet = "Hermes' Sandals"
	--}
	
	sets.aftercast.Idle = {
		main="Denouements",
		ammo="Ginsen",
		head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3',}},
		body = "Ashera Harness",
		hands={ name="Adhemar Wristbands", augments={'STR+10','DEX+10','Attack+15',}},
		legs={ name="Samnuha Tights", augments={'STR+8','DEX+9','"Dbl.Atk."+3','"Triple Atk."+2',}},
		feet={ name="Herculean Boots", augments={'Accuracy+24 Attack+24','Crit. hit damage +2%','DEX+9','Attack+4',}},
		neck="Combatant's Torque",
		waist="Black Belt",
		left_ear="Sherida Earring",
		right_ear="Cessance Earring",
		left_ring="Defending Ring",
		right_ring="Vocane Ring",
		back="Shadow Mantle"
	}
	
	--Set for face punching
	sets.aftercast.TP = {
		main="Denouements",
		ammo="Ginsen",
		head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3',}},
		body = "Ashera Harness",
		hands={ name="Adhemar Wristbands", augments={'STR+10','DEX+10','Attack+15',}},
		legs={ name="Samnuha Tights", augments={'STR+8','DEX+9','"Dbl.Atk."+3','"Triple Atk."+2',}},
		feet={ name="Herculean Boots", augments={'Accuracy+24 Attack+24','Crit. hit damage +2%','DEX+9','Attack+4',}},
		neck="Combatant's Torque",
		waist="Windbuffet Belt +1",
		left_ear="Sherida Earring",
		right_ear="Cessance Earring",
		left_ring="Niqmaddu Ring",
		right_ring="Epona's Ring",
		back="Atheling Mantle"
	}
	
	--Set for resting
	sets.aftercast.hHP = {
		body = "Mel. Cyclas +2",
		back = "Melee Cape"
	}
	
	--Establish the base precast set
	sets.precast = {}
	
	--Some Job Abilities
	
	--Hundred Fists
	sets.precast.HundredFists = {legs = "Hes. Hose"}
	
	--Boost
	sets.precast.Boost = {hands = "Hes. Gloves"}
	
	--Focus
	sets.precast.Focus = {head = "Anchor. Crown +1"}
	
	--Dodge
	sets.precast.Dodge = {feet = "Anch. Gaiters +1"}
	
	--Chi Blast (Stack MND)
	sets.precast.ChiBlast = {
		head = "Anchor. Crown +1",
		body = "Anch. Cyclas +1",
		ring1 = "Aqua Ring",
		ring2 = "Aqua Ring",
		back = "Melee Cape",
		legs = "Anch. Hose +1",
		feet = "Suzaku's Sune-ate"}
		
	--Counterstance
	sets.precast.Counterstance = {feet = "Hes. Gaiters"}
	
	--Impetus
	sets.precast.Impetus = {body = "Tantra Cyclas +2"}
	
	--Footwork
	sets.precast.Footwork = {feet = "Tantra Gaiters +2"}
	
	--Forlmless Strikes
	sets.precast['Formless Strikes'] = {"Mel. Cyclas +2"}
	
	--Chakra (Stack VIT)
	sets.precast.Chakra = {
		head = "Anchor. Crown +1",
		neck = "Promise Badge",
		ear1 = "Kemas Earring",
		body = "Anch. Cyclas +1",
		hands = "Hes. Gloves",
		back = "Anchoret's Mantle",
		waist = "Warwolf Belt",
		legs = "Anch. Hose +1",
		feet = "Anch. Gaiters +1"
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
		ring1= "Ilabrat Ring",
		ring2= "Niqmaddu Ring",
		ear1 = "Ishvara Earring",
		ear2 = "Moonshade Earring",
		waist = "Fotia Belt",
		ammo = "Knobkierrie"}
	
	--Shijin Spiral 85%DEX
	sets.precast['Shijin Spiral'] = {
		neck = "Fotia Gorget",
		--back = "Smertrios's Mantle",
		ring1= "Ilabrat Ring",
		ring2= "Niqmaddu Ring",
		ear1 = "Ishvara Earring",
		ear2 = "Moonshade Earring",
		waist = "Fotia Belt",
		ammo = "Knobkierrie"}
	
	--Tornado Kick 40% STR 40% VIT
	sets.precast['Tornado Kick'] = {
		neck = "Fotia Gorget",
		--back = "Smertrios's Mantle",
		ring1= "Ilabrat Ring",
		ring2= "Niqmaddu Ring",
		ear1 = "Ishvara Earring",
		ear2 = "Moonshade Earring",
		waist = "Fotia Belt",
		ammo = "Knobkierrie"}
	
	--Ascetic's Fury 50% STR 50% VIT
	sets.precast['Ascetic\'s Fury'] = {
		neck = "Fotia Gorget",
		--back = "Smertrios's Mantle",
		ring1= "Ilabrat Ring",
		ring2= "Niqmaddu Ring",
		ear1 = "Ishvara Earring",
		ear2 = "Moonshade Earring",
		waist = "Fotia Belt",
		ammo = "Knobkierrie"}
	
	--Spinning Attack
	sets.precast['Spinning Attack'] = {
		neck = "Fotia Gorget",
		--back = "Smertrios's Mantle",
		ring1= "Ilabrat Ring",
		ring2= "Niqmaddu Ring",
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