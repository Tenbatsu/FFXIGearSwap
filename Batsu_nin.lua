-- Ninja


-- General Housekeeping for Macros and lockstyle
send_command('wait 3; input /lockstyleset 17; wait 5; input /macro book 15; wait 2; /macro set 1')


-- Sets
function get_sets()
    
	--Set for standing around town
	sets.aftercast = {}
	
	--Standing Around with some DT
	sets.aftercast.Idle = {
		ammo = "Ginsen",
		head = "Dampening Tam",
		neck = "Twilight Torque",
		ear1 = "Etiolation Earring",
		ear2 = "Cessance Earring",
		body = "Ashera Harness",
		hands = "Umuthi Gloves",
		ring1 = "Vocane Ringing",
		ring2 = "Defending Ring",
		back = "Solemnity Cape",
		waist = "Flume Belt +1",
		legs = "Herculean Trousers",
		feet = "Herculean Boots"
	}
	
	sets.mogGarden = {body="Jubilee Shirt", hands="Field Gloves", waist="Field Rope", feet="Field Boots", neck="Field Torque"}
	
	--Set for face punching
	sets.aftercast.TP = {
		ammo="Ginsen",
		head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3',}},
		body={ name="Herculean Vest", augments={'"Triple Atk."+4','Accuracy+11',}},
		hands={ name="Adhemar Wristbands", augments={'STR+10','DEX+10','Attack+15',}},
		legs={ name="Herculean Trousers", augments={'Accuracy+10 Attack+10','Crit. hit damage +2%','AGI+6','Accuracy+14','Attack+14',}},
		feet={ name="Herculean Boots", augments={'Accuracy+24 Attack+24','Crit. hit damage +2%','DEX+9','Attack+4',}},
		neck="Combatant's Torque",
		waist="Windbuffet Belt +1",
		left_ear="Digni. Earring",
		right_ear="Cessance Earring",
		left_ring="Ilabrat Ring",
		right_ring="Epona's Ring",
		back="Cerberus Mantle"
	}
	
    
	--Establish the base precast set
	sets.precast = {}
	
	--Job Abilities
	sets.precast['Provoke'] = {
		neck = "Warder's Charm",
		ear1 = "Cryptic Earring",
		
	}
		
	--Weaponskill action
	sets.precast.WS = set_combine(sets.aftercast.TP, {
		neck = "Fotia Gorget",
		waist = "Fotia Belt",
		ear1 = "Moonshade Earring",
		ear2 = "Ishvara Earring"
	})
	
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
		legs = "Samnuha Tights",
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
		ring1 = "Rahab Ring",
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

--State Changing between punching and idle and resting
function status_change(new,old)
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
end
