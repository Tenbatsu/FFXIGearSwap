-- DNC
-- Sets
send_command('input /macro book 5;wait .1;input /macro set 2')
function get_sets()
    
	--Set for standing around town
	sets.aftercast = {}
	
	sets.aftercast.Idle = {
		head = "Maxixi Tiara +1",
		neck = "Asperity Necklace",
		ear1 = "Steelflash Earring",
		ear2 = "Bladeborn Earring",
		body = "Taeon Tabard",
		hands = "Taeon Gloves",
		ring1 = "Spiral Ring",
		ring2 = "Epona's Ring",
		back = "Toetapper Mantle",
		waist = "Anguinus Belt",
		legs = "Taeon Tights",
		feet = "Tandava Crackows"
	}
	--Set for face punching
	sets.aftercast.TP = {
		head = "Maxixi Tiara +1",
		neck = "Asperity Necklace",
		ear1 = "Steelflash Earring",
		ear2 = "Bladeborn Earring",
		body = "Taeon Tabard",
		hands = "Taeon Gloves",
		ring1 = "Spiral Ring",
		ring2 = "Epona's Ring",
		back = "Toetapper Mantle",
		waist = "Anguinus Belt",
		legs = "Taeon Tights",
		feet = "Taeon Boots"
	}
	
	sets.aftercast.hHP = {}
    sets.aftercast.hHP = sets.aftercast.Idle
    
	--Establish the base precast set
	sets.precast = {}
	
	--Some Job Abilities
	--Trance
	sets.precast['Trance'] = {head = "Etoile Tiara +2"}
	sets.precast['No Foot Rise'] = {body = "Etoile Casaque +2"}
	
	--Waltz
    --Curing Waltz Targets VIT + Casters CHR
    sets.precast.Waltz = {
        head = "Etoile Tiara +2",
    	neck = "Asperity Necklace",
		ear1 = "Roundel Earring",
		ear2 = "Bladeborn Earring",
		body = "Maxixi Casaque +1",
		hands = "Taeon Gloves",
		ring1 = "Spiral Ring",
		ring2 = "Epona's Ring",
		back = "Toetapper Mantle",
		waist = "Anguinus Belt",
        legs = "Maxixi Tights +1",
		feet = "Maxixi Shoes +1"
    }
		
	--Flourish
    sets.precast.Flourish = {
        head = "Maxixi Tiara +1",
        neck = "Asperity Necklace",
    	ear1 = "Steelflash Earring",
		ear2 = "Bladeborn Earring",
		body = "Maxixi Casaque +1",
		hands = "Maxixi Bangles +1",
		ring1 = "Spiral Ring",
		ring2 = "Epona's Ring",
		back = "Toetapper Mantle",
		waist = "Anguinus Belt",
		legs = "Maxixi Tights +1",
		feet = "Maxixi Shoes +1"
    }
    --Provoke
	sets.precast['Animated Flourish'] = {
        head = "Maxixi Tiara +1",
        neck = "Asperity Necklace",
		ear1 = "Steelflash Earring",
		ear2 = "Bladeborn Earring",
		body = "Maxixi Casaque +1",
		hands = "Taeon Gloves",
		ring1 = "Spiral Ring",
		ring2 = "Epona's Ring",
		back = "Toetapper Mantle",
		waist = "Anguinus Belt",
		legs = "Maxixi Tights +1",
		feet = "Maxixi Shoes +1"
    }
    --Stun
    sets.precast['Violent Flourish'] = {
        head = "Maxixi Tiara +1",
        neck = "Asperity Necklace",
		ear1 = "Steelflash Earring",
		ear2 = "Bladeborn Earring",
		body = "Etoile Casaque +2",
		hands = "Taeon Gloves",
		ring1 = "Spiral Ring",
		ring2 = "Epona's Ring",
		back = "Toetapper Mantle",
		waist = "Anguinus Belt",
		legs = "Maxixi Tights +1",
		feet = "Maxixi Shoes +1"
    }
    --TP
    sets.precast['Reverse Flourish'] = {
        head = "Maxixi Tiara +1",
        neck = "Asperity Necklace",
		ear1 = "Steelflash Earring",
		ear2 = "Bladeborn Earring",
		body = "Maxixi Casaque +1",
		hands = "Charis Bangles +1",
		ring1 = "Spiral Ring",
		ring2 = "Epona's Ring",
		back = "Toetapper Mantle",
		waist = "Anguinus Belt",
		legs = "Maxixi Tights +1",
		--feet = "Etoile Toeshoes +2"
    }
	--
    sets.precast['Climactic Flourish'] = {
        head = "Charis Tiara +1",
        neck = "Asperity Necklace",
    	ear1 = "Steelflash Earring",
		ear2 = "Bladeborn Earring",
		body = "Maxixi Casaque +1",
		hands = "Taeon Gloves",
		ring1 = "Spiral Ring",
		ring2 = "Epona's Ring",
		back = "Toetapper Mantle",
		waist = "Anguinus Belt",
		legs = "Maxixi Tights +1",
		feet = "Maxixi Shoes +1"
    }
    --Double Attack
    sets.precast['Striking Flourish'] = {
        head = "Maxixi Tiara +1",
        neck = "Asperity Necklace",
    	ear1 = "Steelflash Earring",
		ear2 = "Bladeborn Earring",
		body = "Charis Casaque +1",
		hands = "Taeon Gloves",
		ring1 = "Spiral Ring",
		ring2 = "Epona's Ring",
		back = "Toetapper Mantle",
		waist = "Anguinus Belt",
		legs = "Maxixi Tights +1",
		feet = "Maxixi Shoes +1"
    }
    
	--Step
    --Evasion Down
	sets.precast.Step = {
        head = "Maxixi Tiara +1",
        neck = "Asperity Necklace",
		ear1 = "Steelflash Earring",
		ear2 = "Bladeborn Earring",
		body = "Maxixi Casaque +1",
		hands = "Maxixi Bangles +1",
		ring1 = "Spiral Ring",
		ring2 = "Epona's Ring",
		back = "Toetapper Mantle",
		waist = "Anguinus Belt",
		legs = "Maxixi Tights +1",
		--feet = "Etoile Toeshoes +2"
    }
    --Crit Hit Evasion Down
    sets.precast['Feather Step'] = {
        head = "Maxixi Tiara +1",
        neck = "Asperity Necklace",
    	ear1 = "Steelflash Earring",
		ear2 = "Bladeborn Earring",
		body = "Maxixi Casaque +1",
		hands = "Maxixi Bangles +1",
		ring1 = "Spiral Ring",
		ring2 = "Epona's Ring",
		back = "Toetapper Mantle",
		waist = "Anguinus Belt",
		legs = "Maxixi Tights +1",
		feet = "Charis Shoes +1"
    }
	
    --Jigs
    sets.precast.Jig = {
        head = "Maxixi Tiara +1",
        neck = "Asperity Necklace",
		ear1 = "Steelflash Earring",
		ear2 = "Bladeborn Earring",
		body = "Maxixi Casaque +1",
		hands = "Maxixi Bangles +1",
		ring1 = "Spiral Ring",
		ring2 = "Epona's Ring",
		back = "Toetapper Mantle",
		waist = "Anguinus Belt",
		legs = "Etoile Tights +2",
		feet = "Maxixi Shoes +1"
    }
	
	--Weaponskill action
	sets.precast.WS = {}
    --Normal Weaponskills are cool and play nicely
    --Sharkbite Fragmentation DEX 40% AGI 40%
	sets.precast['Shark Bite'] = {
		neck = "Fotia Gorget",
		waist = "Fotia Belt",
		legs = "Maxixi Tights +1",
		ear1="Moonshade Earring"}	
    --Evisceration Gravitation/Transfixion DEX 50%
	sets.precast['Evisceration'] = { 
		neck = "Fotia Gorget",
		waist = "Fotia Belt",
		legs = "Maxixi Tights +1",
		ear1="Moonshade Earring"}
    --Rudra's Storm Darkness/Distortion DEX 80%
	sets.precast['Rudra\'s Storm'] = { 
		neck = "Fotia Gorget",
		waist = "Fotia Belt",
		legs = "Maxixi Tights +1",
		ear1="Moonshade Earring"}
    --Elemental WS is weird need some MAB etc.for these
	sets.precast['Aeolian Edge'] = { 
		neck = "Fotia Gorget",
		waist = "Fotia Belt",
		legs = "Maxixi Tights +1",
		ear1="Moonshade Earring"}
		
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
