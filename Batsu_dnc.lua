-- DNC
-- Sets
send_command('wait 3; input /lockstyleset 12; wait 5; input /macro book 5; wait 2; /macro set 1')

--Steps This sets the types of step we can use
--steps = { "Quickstep", "Box Step", "Stutter Step", "Feather Step"}
--steps = { "Quickstep", "Feather Step", "Stutter Step"}
steps = { "Box Step", "Quickstep", "Stutter Step", "Feather Step"}
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
		body = "Ashera Harness",
		hands = "Adhemar Wristbands",
		ring1 = "Defending Ring",
		ring2 = "Vocane Ring +1",
		back = "Toetapper Mantle",
		waist = "Flume Belt +1",
		legs = "Samnuha Tights",
		feet = "Skd. Jambeaux +1"
	}
	sets.mogGarden = {body="Jubilee Shirt", hands="Field Gloves", waist="Field Rope", feet="Field Boots", neck="Field Torque"}
	--Set for face punching
	
	sets.aftercast.TP = {
		ammo = "Yamarang",
		head = "Dampening Tam",
		neck = "Combatant's Torque",
		ear1 = "Sherida Earring",
		ear2 = "Telos Earring",
		body = "Horos Casaque +3",
		hands = "Adhemar Wristbands",
		ring1 = "Ilabrat ring",
		ring2 = "Petrov Ring",
		back = "Toetapper Mantle",
		waist = "Windbuffet Belt +1",
		legs = "Samnuha Tights",
		feet={ name="Herculean Boots", augments={'Accuracy+24 Attack+24','Crit. hit damage +2%','DEX+9','Attack+4'}}
	}
	
	sets.aftercast.HighAccuracy = {
		ammo = "Ginsen",
		head = "Dampening Tam",
		neck = "Combatant's Torque",
		ear1 = "Digni. Earring",
		ear2 = "Cessance Earring",
		body = "Ashera Harness",
		hands = "Maxixi Bangles +3",
		ring1 = "Mars's ring",
		ring2 = "Ilabrat Ring",
		back = "Senuna's Mantle",
		waist = "Anguinus belt",
		legs = "Samnuha Tights",
		feet={ name="Herculean Boots", augments={'Accuracy+24 Attack+24','Crit. hit damage +2%','DEX+9','Attack+4',}}
	}
	
	sets.aftercast.hHP = {}
    sets.aftercast.hHP = sets.aftercast.Idle
    
	--Establish the base precast set
	sets.precast = {}
	
	--Some Job Abilities
	--Trance
	sets.precast['Trance'] = {head = "Horos Tiara +1"}
	sets.precast['No Foot Rise'] = {body = "Horos Casaque +3"}
	sets.precast['Saber Dance'] = {legs = "Horos Tights +3"}
	
	--Waltz
    --Curing Waltz Targets VIT + Casters CHR
    sets.precast.Waltz = {
        head = "Horos Tiara +1",
    	neck = "Dualism Collar +1",
		ear1 = "Roundel Earring",
		ear2 = "Handler's Earring +1",
		body = "Maxixi Casaque +2",
		hands = "Maxixi Bangles +3",
		ring1 = "Mummu ring",
		ring2 = "Asklepian Ring",
		back = "Toetapper Mantle",
		--waist = "Windbuffet belt +1",
        legs = "Nyame Flanchard",
		feet = "Maxixi Toe Shoes +2"
    }
		
	--Flourishes
    sets.precast.Flourish = {
        head = "Nyame Helm",
        neck = "Combatant's Torque",
    	ear1 = "Digni. Earring",
		ear2 = "Telos Earring",
		body = "Horos Casaque +3",
		hands = "Maxixi Bangles +3",
		ring1 = "Ilabrat ring",
		ring2 = "Mummu Ring",
		back = "Toetapper Mantle",
		waist = "Eschan Stone",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets"
    }
	
    --Provoke
	sets.precast['Animated Flourish'] = set_combine(sets.precast.Flourish, 
	{ring1 = "Odium ring"})
	
    --Stun
    sets.precast['Violent Flourish'] = set_combine(sets.precast.Flourish)
	
    --TP
    sets.precast['Reverse Flourish'] = set_combine(sets.precast.Flourish, {
		hands = "Maculele Bangles +1",
		back = "Toetapper Mantle"})
	
	--Critical Strikuuuuu
    sets.precast['Climactic Flourish'] = set_combine(sets.precast.Flourish, {
        head = "Maculele Tiara +2"})
	
    --Double Attack
    sets.precast['Striking Flourish'] = set_combine(sets.precast.Flourish)
    
	--Steps
    --Evasion Down
	sets.precast.Step = {
        head = "Maxixi Tiara +1",
        neck = "Combatant's Torque",
		ear1 = "Digni. Earring",
		ear2 = "Telos Earring",
		body = "Horos Casaque +3",
		hands = "Maxixi Bangles +3",
		ring1 = "Ilabrat ring",
		ring2 = "Mummu Ring",
		back = "Toetapper Mantle",
		waist = "Eschan Stone",
		legs="Nyame Flanchard",
		--feet = "Horos Toe Shoes"
		feet = "Nyame Sollerets"
    }
    --Crit Hit Evasion Down
    sets.precast['Feather Step'] = set_combine(sets.precast.Step, {
		feet = "Macu. Toe Shoes +1"})
	
    --Jigs
    sets.precast.Jig = {
        legs = "Horos Tights +3",
		feet = "Maxixi Toe Shoes +2"
    }
	
	--Samba Time
	sets.precast.Samba = {
		head = "Maxixi Tiara +1"
	}
	
	sets.precast['Haste Samba'] = set_combine(sets.precast.Samba)
	
	--Weaponskill action
	--sets.precast.WS = sets.aftercast.TP
	sets.precast.WS = {
		ammo = "Charis Feather",
		head = "Maculele Tiara +2",
		neck = "Fotia Gorget",
		ear1 = "Ishvara Earring",
		ear2 = "Moonshade Earring",
		body = "Horos Casaque +3",
		hands = "Maxixi Bangles +3",
		ring1 = "Ilabrat Ring",
		ring2 = "Regal Ring",
		back = "Senuna's Mantle",
		waist = "Fotia Belt",
		legs = "Horos Tights +3",
		feet= "Lustratio Leggings"
	}
	
    --Normal Weaponskills are cool and play nicely
	
    --Sharkbite Fragmentation DEX 40% AGI 40%
	sets.precast['Shark Bite'] = set_combine(sets.precast.WS)
		
    --Evisceration Gravitation/Transfixion DEX 50%
	sets.precast['Evisceration'] = set_combine(sets.precast.WS)
		
    --Rudra's Storm Darkness/Distortion DEX 80%
	sets.precast['Rudra\'s Storm'] = set_combine(sets.precast.WS)
	
	--Pyrrhic Kleos STR 40% DEX40%
	sets.precast['Pyrrhic Kleos'] = set_combine(sets.precast.WS)
	
	--Extenerator
	sets.precast['Extenerator'] = set_combine(sets.precast.WS)
    
	--Elemental WS is weird need some MAB etc.for these
	sets.precast['Aeolian Edge'] = { 
		ammo = "Charis Feather",
		head = "Maculele Tiara +2",
		neck = "Fotia Gorget",
		body = "Samnuha Coat",
		back = "Senuna's mantle",
		hands = "Leyline Gloves",
		ring1 = "Mephitas's Ring",
		ring2 = "Acumen Ring",
		waist = "Fotia Belt",
		legs={ name="Herculean Trousers", augments={'Accuracy+10 Attack+10','Crit. hit damage +2%','AGI+6','Accuracy+14','Attack+14',}},
		ear1 = "Hecate's Earring",
		ear2 = "Crematio Earring",
		feet = "Lustratio Leggings"}
	
	--Set for Fast Casting Utsusemi
	sets.precast.FastCast = {
		neck="Magoraga Beads",
		body = "Passion Jacket",
		hands = "Leyline Gloves",
		ring1 = "Rahab Ring",
		ear1 = "Loquac. Earring",
		ear2 = "Etiolation Earring"
	}
	
end --End Function get_sets

function precast(spell) --Equip Items based on Abilities or Spells
	if spell.action_type == 'Magic' then
		equip(sets.precast.FastCast)
	elseif sets.precast[spell.english] then
		--windower.add_to_chat(123, spell.english)
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
       if step_index > 4 then --If our index is more than the number of steps we have
	   --send_command('@input /echo === '..step_index..' ===')
			step_index = 1               -- Reset our index
	   end
	   
	   send_command('@input /echo === '..steps[step_index]..' ===')
	   send_command('@input /ja \"'..steps[step_index]..'\" <t>')
	   step_index = step_index + 1
	   
    end
end
