-- DNC
-- Sets
send_command('wait 3; input /lockstyleset 12;')

--Steps This sets the types of step we can use
--steps = { "Quickstep", "Box Step", "Stutter Step", "Feather Step"}
--steps = { "Quickstep", "Feather Step", "Stutter Step"}
steps = { "Box Step", "Quickstep"}
step_index = 1

function get_sets()
    
	--Set for standing around town
	sets.aftercast = {}
	
	sets.aftercast.Idle = {
		ammo = "Ginsen",
		head = "Dampening Tam",
		neck = "Combatant's Torque",
		ear1 = "Sherida Earring",
		ear2 = "Cessance Earring",
		body = "Adhemar Jacket",
		hands = "Adhemar Wristbands",
		ring1 = "Rajas ring",
		ring2 = "Epona's Ring",
		back = "Toetapper Mantle",
		waist = "Windbuffet belt +1",
		legs = "Samnuha Tights",
		feet = "Skd. Jambeaux +1"
	}
	sets.mogGarden = {body="Jubilee Shirt", hands="Field Gloves", waist="Field Rope", feet="Field Boots", neck="Field Torque"}
	--Set for face punching
	sets.aftercast.TP = {
		ammo = "Ginsen",
		head = "Dampening Tam",
		neck = "Combatant's Torque",
		ear1 = "Sherida Earring",
		ear2 = "Cessance Earring",
		body = "Adhemar Jacket",
		hands = "Adhemar Wristbands",
		ring1 = "Rajas ring",
		ring2 = "Epona's Ring",
		back = "Toetapper Mantle",
		waist = "Windbuffet belt +1",
		legs = "Samnuha Tights",
		feet = "Herculean Boots"
	}
	
	sets.aftercast.HighAccuracy = {
		ammo = "Ginsen",
		head = "Dampening Tam",
		neck = "Combatant's Torque",
		ear1 = "Digni. Earring",
		ear2 = "Cessance Earring",
		body = "Adhemar Jacket",
		hands = "Maxixi Bangles +2",
		ring1 = "Mars's ring",
		ring2 = "Ilabrat Ring",
		back = "Senuna's Mantle",
		waist = "Anguinus belt",
		legs = "Samnuha Tights",
		feet = "Herculean Boots"
	}
	
	sets.aftercast.hHP = {}
    sets.aftercast.hHP = sets.aftercast.Idle
    
	--Establish the base precast set
	sets.precast = {}
	
	--Some Job Abilities
	--Trance
	sets.precast['Trance'] = {head = "Horos Tiara"}
	sets.precast['No Foot Rise'] = {body = "Horos Casaque"}
	sets.precast['Saber Dance'] = {legs = "Horos Tights"}
	
	--Waltz
    --Curing Waltz Targets VIT + Casters CHR
    sets.precast.Waltz = {
        head = "Horos Tiara",
    	neck = "Combatant's Torque",
		ear1 = "Roundel Earring",
		ear2 = "Delta Earring",
		body = "Maxixi Casaque +1",
		hands = "Adhemar Wristbands",
		ring1 = "Asklepian ring",
		ring2 = "Epona's Ring",
		back = "Toetapper Mantle",
		waist = "Windbuffet belt +1",
        legs = "Maxixi Tights +1",
		feet = "Maxixi Shoes +1"
    }
		
	--Flourishes
    sets.precast.Flourish = {
        head = "Maxixi Tiara +1",
        neck = "Combatant's Torque",
    	ear1 = "Sherida Earring",
		ear2 = "Cessance Earring",
		body = "Maxixi Casaque +1",
		hands = "Maxixi Bangles +2",
		ring1 = "Rajas ring",
		ring2 = "Epona's Ring",
		back = "Toetapper Mantle",
		waist = "Windbuffet belt +1",
		legs = "Maxixi Tights +1",
		feet = "Maxixi Shoes +1"
    }
    --Provoke
	sets.precast['Animated Flourish'] = {
        head = "Maxixi Tiara +1",
        neck = "Combatant's Torque",
		ear1 = "Sherida Earring",
		ear2 = "Cessance Earring",
		body = "Maxixi Casaque +1",
		hands = "Adhemar Wristbands",
		ring1 = "Rajas ring",
		ring2 = "Epona's Ring",
		back = "Toetapper Mantle",
		waist = "Windbuffet belt +1",
		legs = "Maxixi Tights +1",
		feet = "Maxixi Shoes +1"
    }
    --Stun
    sets.precast['Violent Flourish'] = {
        head = "Maxixi Tiara +1",
        neck = "Combatant's Torque",
		ear1 = "Sherida Earring",
		ear2 = "Cessance Earring",
		body = "Horos Casaque",
		hands = "Adhemar Wristbands",
		ring1 = "Rajas ring",
		ring2 = "Epona's Ring",
		back = "Toetapper Mantle",
		waist = "Windbuffet belt +1",
		legs = "Maxixi Tights +1",
		feet = "Maxixi Shoes +1"
    }
    --TP
    sets.precast['Reverse Flourish'] = {
        head = "Maxixi Tiara +1",
        neck = "Combatant's Torque",
		ear1 = "Sherida Earring",
		ear2 = "Cessance Earring",
		body = "Maxixi Casaque +1",
		hands = "Maculele Bangles",
		ring1 = "Rajas ring",
		ring2 = "Epona's Ring",
		back = "Toetapper Mantle",
		waist = "Windbuffet belt +1",
		legs = "Maxixi Tights +1",
		--feet = "Etoile Toeshoes +2"
    }
	--Critical Strikuuuuu
    sets.precast['Climactic Flourish'] = {
        head = "Maculele Tiara +1",
        neck = "Combatant's Torque",
    	ear1 = "Sherida Earring",
		ear2 = "Cessance Earring",
		body = "Maxixi Casaque +1",
		hands = "Adhemar Wristbands",
		ring1 = "Rajas ring",
		ring2 = "Epona's Ring",
		back = "Toetapper Mantle",
		waist = "Windbuffet belt +1",
		legs = "Maxixi Tights +1",
		feet = "Maxixi Shoes +1"
    }
    --Double Attack
    sets.precast['Striking Flourish'] = {
        head = "Maxixi Tiara +1",
        neck = "Combatant's Torque",
    	ear1 = "Sherida Earring",
		ear2 = "Cessance Earring",
		body = "Maculele Casaque",
		hands = "Adhemar Wristbands",
		ring1 = "Rajas ring",
		ring2 = "Epona's Ring",
		back = "Toetapper Mantle",
		waist = "Windbuffet belt +1",
		legs = "Maxixi Tights +1",
		feet = "Maxixi Shoes +1"
    }
    
	--Steps
    --Evasion Down
	sets.precast.Step = {
        head = "Maxixi Tiara +1",
        neck = "Combatant's Torque",
		ear1 = "Sherida Earring",
		ear2 = "Cessance Earring",
		body = "Maxixi Casaque +1",
		hands = "Maxixi Bangles +2",
		ring1 = "Rajas ring",
		ring2 = "Epona's Ring",
		back = "Toetapper Mantle",
		waist = "Windbuffet belt +1",
		legs = "Herculean Trousers",
		--feet = "Etoile Toeshoes +2"
    }
    --Crit Hit Evasion Down
    sets.precast['Feather Step'] = {
        head = "Maxixi Tiara +1",
        neck = "Combatant's Torque",
    	ear1 = "Sherida Earring",
		ear2 = "Cessance Earring",
		body = "Maxixi Casaque +1",
		hands = "Maxixi Bangles +2",
		ring1 = "Rajas ring",
		ring2 = "Epona's Ring",
		back = "Toetapper Mantle",
		waist = "Windbuffet belt +1",
		legs = "Herculean Trousers",
		feet = "Maculele Toeshoes"
    }
	
    --Jigs
    sets.precast.Jig = {
        head = "Maxixi Tiara +1",
        neck = "Combatant's Torque",
		ear1 = "Sherida Earring",
		ear2 = "Cessance Earring",
		body = "Maxixi Casaque +1",
		hands = "Maxixi Bangles +2",
		ring1 = "Rajas ring",
		ring2 = "Epona's Ring",
		back = "Toetapper Mantle",
		waist = "Windbuffet belt +1",
		legs = "Herculean Trousers",
		feet = "Maxixi Shoes +1"
    }
	
	--Weaponskill action
	sets.precast.WS = sets.aftercast.TP
    --Normal Weaponskills are cool and play nicely
	
    --Sharkbite Fragmentation DEX 40% AGI 40%
	sets.precast['Shark Bite'] = {
		ammo = "Charis Feather",
		head = "Maculele Tiara +1",
		neck = "Fotia Gorget",
		body = "Adhemar Jacket",
		ring1= "Apate Ring",
		ring2= "Ilabrat Ring",
		back = "Senuna's mantle",
		waist = "Fotia Belt",
		legs = "Herculean Trousers",
		ear1 = "Moonshade Earring",
		feet = "Lustratio Leggings"}	
    --Evisceration Gravitation/Transfixion DEX 50%
	sets.precast['Evisceration'] = { 
		ammo = "Charis Feather",
		head = "Maculele Tiara +1",
		neck = "Fotia Gorget",
		body = "Adhemar Jacket",
		ring1= "Apate Ring",
		ring2= "Ilabrat Ring",
		back = "Senuna's mantle",
		waist = "Fotia Belt",
		legs = "Herculean Trousers",
		ear1 = "Moonshade Earring",
		feet = "Lustratio Leggings"}
    --Rudra's Storm Darkness/Distortion DEX 80%
	sets.precast['Rudra\'s Storm'] = { 
		ammo = "Charis Feather",
		head = "Maculele Tiara +1",
		hands = "Maxixi Bangles +2",
		neck = "Fotia Gorget",
		body = "Adhemar Jacket",
		ring1= "Apate Ring",
		ring2= "Ilabrat Ring",
		back = "Senuna's mantle",
		waist = "Fotia Belt",
		legs = "Herculean Trousers",
		ear1 ="Moonshade Earring",
		feet ="Lustratio Leggings"}
	--Pyrrhic Kleos STR 40% DEX40%
	sets.precast['Pyrrhic Kleos'] = {
	    ammo = "Charis Feather",
		head = "Maculele Tiara +1",
		neck = "Fotia Gorget",
		body = "Adhemar Jacket",
		ring1= "Apate Ring",
		ring2= "Ilabrat Ring",
		back = "Senuna's mantle",
		waist = "Fotia Belt",
		legs = "Herculean Trousers",
		ear1 = "Moonshade Earring",
		feet = "Lustratio Leggings"}
	--Extenerator
	sets.precast['Extenerator'] = { 
		ammo = "Charis Feather",
		head = "Maculele Tiara +1",
		neck = "Fotia Gorget",
		body = "Adhemar Jacket",
		ring1= "Apate Ring",
		ring2= "Ilabrat Ring",
		back = "Senuna's mantle",
		waist = "Fotia Belt",
		legs = "Herculean Trousers",
		ear1 = "Moonshade Earring",
		feet = "Lustratio Leggings"}
    --Elemental WS is weird need some MAB etc.for these
	sets.precast['Aeolian Edge'] = { 
		ammo = "Charis Feather",
		head = "Maculele Tiara +1",
		neck = "Fotia Gorget",
		body = "Samnuha Coat",
		back = "Senuna's mantle",
		hands = "Leyline Gloves",
		ring1 = "Mephitas's Ring",
		ring2 = "Acumen Ring",
		waist = "Fotia Belt",
		legs = "Herculean Trousers",
		ear1 = "Hecate's Earring",
		ear2 = "Crematio Earring",
		feet = "Lustratio Leggings"}
	--Set for Fast Casting Utsusemi
	sets.precast.FastCast = {
	--neck="Magoraga Beads",
	body = "Passion Jacket",
	hands = "Leyline Gloves",
	ear1 = "Loquac. Earring",
	ear2 = "Etiolation Earring"
	}
	
end --End Function get_sets

function precast(spell) --Equip Items based on Abilities or Spells
	if spell.action_type == 'Magic' then
		equip(sets.precast.FastCast)
	elseif sets.precast[spell.english] then
		equip(sets.precast[spell.english])
	elseif spell.type == "WeaponSkill" then
		equip(sets.precast.WS)
	elseif spell.type == "Jig" then
		equip(sets.precast.Jig)
	elseif spell.type == "Waltz" then
		equip(sets.precast.Waltz)
	elseif spell.type == "Flourish" then
		equip(sets.precast.Flourish)
	elseif spell.type == "Step" then
		equip(sets.precast.Step)
	else
	end
end --End Function precast(spell)

function midcast(spell)
end

function aftercast(spell)
    if player.status =='Engaged' then
        equip(sets.aftercast.TP)
		--equip(sets.aftercast.HighAccuracy)
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
		--equip(sets.aftercast.HighAccuracy)
    end
end --End Function status_change(new,old)

function self_command(command)
    if command == 'DoStep' then --Auto Step Stuff
       if step_index > 2 then --If our index is more than the number of steps we have
	   --send_command('@input /echo === '..step_index..' ===')
			step_index = 1               -- Reset our index
	   end
	   
	   send_command('@input /echo === '..steps[step_index]..' ===')
	   send_command('@input /ja \"'..steps[step_index]..'\" <t>')
	   step_index = step_index + 1
	   
    end
end
