-- PLD
-- Sets
send_command('wait 3;input /lockstyleset 8;')

function get_sets()
--windower.add_to_chat(123, "Wat.")
--Mode 1 = Tank
--Mode 2 = Damage
CurrentMode = 1    
        --Set for standing around town
        sets.aftercast = {}
        
        --Set for running around
        sets.aftercast.Idle = {
                head = "Founder's Corona",
                neck = "Diemer Gorget",
                ear1 = "Etiolation Earring",
                ear2 = "Ethereal Earring",
                body = "Rev. Surcoat +2",
                hands = "Souv. Handschuhs",
                ring1 = "Defending Ring",
                ring2 = "Vocane Ring",
                back = "Weard Mantle",
                waist = "Flume Belt +1",
                legs = "Carmine Cuisses +1",
                feet = "Odyssean Greaves",
				ammo = "Angha Gem"
        }
        --Set for face punched
        sets.aftercast.Tank = {
                head = "Founder's Corona",
                neck = "Diemer Gorget",
                ear1 = "Etiolation Earring",
                ear2 = "Ethereal Earring",
                body = "Souveran Cuirass",
                hands = "Souv. Handschuhs",
                ring1 = "Defending Ring",
                ring2 = "Vocane Ring",
                back = "Weard Mantle",
                waist = "Flume Belt +1",
                legs = "Odyssean Cuisses",
                feet = "Odyssean Greaves",
				ammo = "Angha Gem"
        }
		--Set for face punching
        sets.aftercast.Damage = {
                head = "Flam. Zucchetto +1",
                neck = "Combatant's Torque",
                ear1 = "Steelflash earring",
                ear2 = "Bladeborn Earring",
                body = "Flamma Korazin +1",
                hands = "Flam. Manopolas +1",
                ring1 = "Rajas Ring",
                ring2 = "Apate Ring",
                back = "Atheling Mantle",
                waist = "Windbuffet Belt +1",
                legs = "Flamma Dirs +1",
                feet = "Flam. Gambieras +1",
				ammo = "Ginsen"
        }
		
        
        --Establish the base precast set
        sets.precast = {}
        
        --Some Job Abilities
        --Base PLD Job Abilities
        sets.precast['Invincible'] = {legs = "Cab. Breeches +1"}
        sets.precast['Holy Circle'] = {feet = "Rev. Leggings +1"}
        sets.precast['Shield Bash'] = {hands = "Cab. Gauntlets +1"}
        sets.precast['Sentinel'] = {feet = "Cab. Leggings +1"}
        sets.precast['Cover'] = {head = "Rev. Coronet +1", body = "Cab. Surcoat +1"}
        sets.precast['Rampart'] = {head = "Cab. Coronet"}
        sets.precast['Fealty'] = {body = "Cab. Surcoat +1"}
        sets.precast['Chivalry'] = {hands = "Cab. Gauntlets +1"}
        sets.precast['Divine Emblem'] = {feet = "Chev. Sabatons +1"}
        --sets.precast['Sepulcher'] = {}
        --sets.precast['Palisade'] = {}
        --sets.precast['Intervene'] = {}
        
        --PLD Subjobs
        --Warrior
        sets.precast['Provoke'] = {
			head = "Rev. Coronet +1",
			neck = "Homeric Gorget",
			body = "Souveran Cuirass",
			hands = "Cab. Gauntlets +1",
			ring1 = "Odium Ring",
			waist = "Sulla Belt",
			legs = "Cab. Breeches +1",
			feet = "Chev. Sabatons +1"
		}
		
		sets.precast['Flash'] = {
			head = "Rev. Coronet +1",
			neck = "Homeric Gorget",
			body = "Souveran Cuirass",
			hands = "Cab. Gauntlets +1",
			ring1 = "Odium Ring",
			waist = "Sulla Belt",
			legs = "Cab. Breeches +1",
			feet = "Chev. Sabatons +1"
		}
		
        --Dancer
        sets.precast.Waltz = {}
        sets.precast['Animated Flourish'] = {}
        
        --Finally some weaponskill action
        sets.precast.WS = {}
        --Savage Blade STR 50% MND 50%
        sets.precast['Savage Blade'] = {
				head = "Flam. Zucchetto +1",
				body = "Flamma Korazin +1",
				hands = "Flam. Manopolas +1",
				ring1 = "Aqua Ring",
				ring2 = "Aqua Ring",
				back = "Forager's Mantle",
				legs = "Flamma Dirs +1",
				feet = "Flam. Gambieras +1",
                neck = "Fotia Gorget",
                ear1 = "Moonshade Earring",
                waist = "Fotia Belt"}
        --Requiescat  MND 73-85% based on TP               
        sets.precast['Requiescat'] = {
                neck = "Fotia Gorget",
                ear1 = "Moonshade Earring",
                waist = "Fotia Belt"}
        --Chant du Cygne DEX 80%
        sets.precast['Chant du Cygne'] = {
				head = "Flam. Zucchetto +1",
				body = "Flamma Korazin +1",
				hands = "Flam. Manopolas +1",
				ring1 = "Ramuh Ring",
				ring2 = "Ramuh Ring",
				back = "Forager's Mantle",
				legs = "Flamma Dirs +1",
				feet = "Flam. Gambieras +1",
                neck = "Fotia Gorget",
                ear1 = "Moonshade Earring",
                waist = "Fotia Belt"}
        --Atonement  Current Enmity
        sets.precast['Atonement'] = {
                neck = "Fotia Gorget",
                ear1 = "Moonshade Earring",
                waist = "Fotia Belt"}
        --Aeolian Edge
        sets.precast['Aeolian Edge'] = {
                neck = "Fotia Gorget",
                ear1 = "Crematio Earring",
                ear2 = "Moonshade Earring",
                --ring1="Shiva Ring",
                --ring2="Shiva Ring",
                --back="Toro Cape",
                waist = "Fotia Belt"}
                 
        sets.precast.WS = sets.aftercast.TP
        
        --Set for Fast Casting
        sets.precast.FastCast = {
        head = "Chev. Armet +1",
		body= "Rev. Surcoat +2", 
		hands = "Leyline Gloves",
        ear1 = "Loquac. Earring",
		ear2 = "Etiolation Earring",
		feet = "Odyssean Greaves"
        }
        
end --End Function get_sets


function precast(spell) --Equip Items based on Abilities or Spells
--windower.add_to_chat(123, CurrentMode)
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
--windower.add_to_chat(123, CurrentMode)
end

function aftercast(spell)
    if player.status =='Engaged' then
		if CurrentMode == 1 then
			--windower.add_to_chat(123, "You're in Tank Mode")
			equip(sets.aftercast.Tank)
		elseif CurrentMode == 2 then
			--windower.add_to_chat(123, "You're in Damage Mode")
			equip(sets.aftercast.Damage)
		else
			--windower.add_to_chat(123, "Bad Mode")
			equip(sets.aftercast.Tank)
		end
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
		if CurrentMode == 1 then
			--windower.add_to_chat(123, "Engaged Tank")
			equip(sets.aftercast.Tank)
		elseif CurrentMode == 2 then
			--windower.add_to_chat(123, "Engaged Damage")
			equip(sets.aftercast.Damage)
		else
			--windower.add_to_chat(123, "Other Engaged")
			equip(sets.aftercast.Tank)
		end
    end
end --End Function status_change(new,old)


function self_command(command)
    if command == "equipDamage" then
		CurrentMode = 2
		windower.add_to_chat(123, "Damage Mode")
       if player.status == 'Idle' then
		  equip(sets.aftercast.Idle)
	   else
	      equip(sets.aftercast.Damage)
	   end
    elseif command == "equipTank" then
        CurrentMode = 1
		windower.add_to_chat(123, "Tank Mode")
       if player.status == 'Idle' then
		  equip(sets.aftercast.Idle)
	   else
	      equip(sets.aftercast.Tank)
	   end
	else
    end
	--windower.add_to_chat(123, CurrentMode)
end --End Function self_command