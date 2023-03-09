-- PLD
-- Sets
send_command('wait 3;input /lockstyleset 8; input /macro book 6; wait 5; input /macro set 1')

function get_sets()
--windower.add_to_chat(123, "Wat.")
--Mode 1 = Tank
--Mode 2 = Damage
--Mode 3 = Kiting
CurrentMode = 1    
        --Set for standing around town
        sets.aftercast = {}
        
        --Set for running around
        sets.aftercast.Idle = {
                head = "Chevalier's Armet +2",
                neck = "Diemer Gorget",
                ear1 = "Etiolation Earring",
                ear2 = "Ethereal Earring",
                body = "Rev. Surcoat +3",
                hands = "Sakpata's Gauntlets",
                ring1 = "Defending Ring",
                ring2 = "Vocane Ring +1",
                back = "Weard Mantle",
                waist = "Flume Belt +1",
                legs = "Carmine Cuisses +1",
                feet = "Rev. Leggings +3",
				ammo = "Angha Gem"
        }
		
		--Set for running around like an idiot
		sets.aftercast.Kiting = {set_combine(sets.aftercast.Idle,{})}
		--Set for running around like an idiot Magically
		sets.aftercast.MKiting= {set_combine(sets.aftercast.Idle,{})}
		
        --Set for face punched
        sets.aftercast.Tank = {
                head = "Chevalier's Armet +2",
                neck = "Diemer Gorget",
                ear1 = "Etiolation Earring",
                ear2 = "Ethereal Earring",
                body = "Rev. Surcoat +3",
                hands = "Sakpata's Gauntlets",
                ring1 = "Defending Ring",
                ring2 = "Vocane Ring +1",
                back = "Weard Mantle",
                waist = "Flume Belt +1",
                legs = "Sakpata's Cuisses",
                feet = "Rev. Leggings +3",
				ammo = "Angha Gem"
        }
		sets.aftercast.MTank = {set_combine(sets.aftercast.Tank,{
                head = "Chevalier's Armet +2",
                neck = "Diemer Gorget",
                ear1 = "Etiolation Earring",
                ear2 = "Ethereal Earring",
                body = "Souveran Cuirass",
                hands = "Sakpata's Gauntlets",
                ring1 = "Defending Ring",
                ring2 = "Vocane Ring +1",
                back = "Weard Mantle",
                waist = "Flume Belt +1",
                legs = "Sakpata's Cuisses",
                feet = "Odyssean Greaves",
				ammo = "Angha Gem"}
        )}
		sets.aftercast.PTank = {set_combine(sets.aftercast.Tank,{
                head = "Chevalier's Armet +2",
                neck = "Diemer Gorget",
                ear1 = "Etiolation Earring",
                ear2 = "Ethereal Earring",
                body = "Souveran Cuirass",
                hands = "Sakpata's Gauntlets",
                ring1 = "Defending Ring",
                ring2 = "Vocane Ring +1",
                back = "Weard Mantle",
                waist = "Flume Belt +1",
                legs = "Sakpata's Cuisses",
                feet = "Odyssean Greaves",
				ammo = "Angha Gem"}
        )}
		--Set for face punching
        sets.aftercast.Damage = {
			ammo="Ginsen",
			head="Sakpata's Helm",
			body="Sakpata's Plate",
			hands="Sakpata's Gauntlets",
			legs="Sakpata's Cuisses",
			feet="Sakpata's Leggings",
			neck="Combatant's Torque",
			waist="Windbuffet Belt +1",
			left_ear="Telos Earring",
			right_ear="Cessance Earring",
			left_ring="Regal Ring",
			right_ring="Apate Ring",
			back="Atheling Mantle"
        }
		
        
        --Establish the base precast set
        sets.precast = {}
        
        --Some Job Abilities
        --Base PLD Job Abilities
        sets.precast['Invincible'] = {legs = "Cab. Breeches +3"}
        sets.precast['Holy Circle'] = {feet = "Rev. Leggings +3"}
        sets.precast['Shield Bash'] = {hands = "Cab. Gauntlets +3"}
        sets.precast['Sentinel'] = {feet = "Cab. Leggings +3"}
        sets.precast['Cover'] = {head = "Rev. Coronet +3", body = "Cab. Surcoat +3"}
        sets.precast['Rampart'] = {head = "Cab. Leggings +3"}
        sets.precast['Fealty'] = {body = "Cab. Surcoat +3"}
        sets.precast['Chivalry'] = {hands = "Cab. Gauntlets +3"}
        sets.precast['Divine Emblem'] = {feet = "Chev. Sabatons +1"}
        --sets.precast['Sepulcher'] = {}
        --sets.precast['Palisade'] = {}
        --sets.precast['Intervene'] = {}
        
        --PLD Subjobs
        --Warrior
        sets.precast['Provoke'] = {
			head = "Rev. Coronet +3",
			neck = "Moonlight Necklace",
			body = "Souveran Cuirass",
			hands = "Cab. Gauntlets +3",
			ring1 = "Odium Ring",
			waist = "Sulla Belt",
			legs = "Cab. Breeches +3",
			feet = "Chev. Sabatons +1"
		}
		
		sets.precast['Flash'] = {
			head = "Rev. Coronet +3",
			neck = "Moonlight Necklace",
			body = "Souveran Cuirass",
			hands = "Cab. Gauntlets +3",
			ring1 = "Odium Ring",
			waist = "Sulla Belt",
			legs = "Cab. Breeches +3",
			feet = "Chev. Sabatons +1"
		}
		
        --Dancer
        sets.precast.Waltz = {}
        sets.precast['Animated Flourish'] = {}
        
        --Finally some weaponskill action
        sets.precast.WS = {}
        --Savage Blade STR 50% MND 50%
        sets.precast['Savage Blade'] = {
				head="Sakpata's Helm",
				body = "Sakpata's Plate",
				hands="Sakpata's Gauntlets",
				ring1 = "Regal Ring",
				ring2 = "Apate Ring",
				legs = "Sakpata's Cuisses",
				feet = "Lustratio Leggings",
                neck = "Fotia Gorget",
                ear1 = "Moonshade Earring",
				ear2 = "Ishvara Earring",
				back = "Rudianos's Mantle",
                waist = "Fotia Belt"}
        --Requiescat  MND 73-85% based on TP               
        sets.precast['Requiescat'] = {
                neck = "Fotia Gorget",
                ear1 = "Moonshade Earring",
				back = "Rudianos's Mantle",
                waist = "Fotia Belt"}
        --Chant du Cygne DEX 80%
        sets.precast['Chant du Cygne'] = {
				head = "Flam. Zucchetto +2",
				body = "Flamma Korazin +2",
				hands = "Flam. Manopolas +1",
				ring1 = "Ramuh Ring",
				ring2 = "Ramuh Ring",
				legs = "Flamma Dirs +2",
				feet = "Flam. Gambieras +2",
                neck = "Fotia Gorget",
                ear1 = "Moonshade Earring",
				back = "Rudianos's Mantle",
                waist = "Fotia Belt"}
        --Atonement  Current Enmity
        sets.precast['Atonement'] = {
                neck = "Fotia Gorget",
                ear1 = "Moonshade Earring",
				back = "Rudianos's Mantle",
                waist = "Fotia Belt"}
		--Knights of Round
		sets.precast['Knights of Round'] = {
				head="Sakpata's Helm",
				body = "Sakpata's Plate",
				hands="Sakpata's Gauntlets",
				ring1 = "Regal Ring",
				ring2 = "Apate Ring",
				legs = "Sakpata's Cuisses",
				feet = "Lustratio Leggings",
                neck = "Fotia Gorget",
                ear1 = "Moonshade Earring",
				ear2 = "Ishvara Earring",
				back = "Rudianos's Mantle",
                waist = "Fotia Belt"}
		--Aeolian Edge
        sets.precast['Aeolian Edge'] = {
                neck = "Fotia Gorget",
                ear1 = "Crematio Earring",
                ear2 = "Moonshade Earring",
                --ring1="Shiva Ring",
                --ring2="Shiva Ring",
                --back="Toro Cape",
				back = "Rudianos's Mantle",
                waist = "Fotia Belt"}
                 
        sets.precast.WS = {
				head="Sakpata's Helm",
				body = "Sakpata's Plate",
				hands="Sakpata's Gauntlets",
				ring1 = "Regal Ring",
				ring2 = "Apate Ring",
				legs = "Sakpata's Cuisses",
				feet = "Lustratio Leggings",
                neck = "Fotia Gorget",
                ear1 = "Moonshade Earring",
				ear2 = "Ishvara Earring",
				back = "Rudianos's Mantle",
                waist = "Fotia Belt"}
        
        --Set for Fast Casting
        sets.precast.FastCast = {
		ammo = "Incantor Stone",
        head = "Chevalier's Armet +2", --8%
		neck = "Voltsurge Torque", -- 4%
		body= "Rev. Surcoat +3", --10%
		hands = "Leyline Gloves", --8%
        ear2 = "Loquac. Earring",
		ear1 = "Etiolation Earring", --1%
		ring1 = "Rahab Ring", --2%
		ring2 = "Kishar Ring", --4%
		back = "Solemnity Cape",
		legs = "Founder's Hose",
		feet = "Odyssean Greaves" --5%
        }
		
		sets.midcast = {}
		
		--Spell Interuption Rate Down
		sets.midcast.SIRD = {
			neck = "Moonlight Necklace", --15%
			legs = "Founder's Hose", -- 30%
			feet = "Odyssean Greaves" -- 20%		
		}
		
		sets.midcast['Phalanx'] = {
			hands = "Souv. Handschuhs",
			back = "Weard Mantle",
			legs = "Sakpata's Cuisses",
			feet = "Souveran schuhs"
		}
		
        
end --End Function get_sets


function precast(spell) --Equip Items based on Abilities or Spells
--windower.add_to_chat(123, CurrentMode)
	--windower.add_to_chat(123, spell.type)
        if sets.precast[spell.english] then
			equip(sets.precast[spell.english])
        elseif spell.type == "WeaponSkill" then
            equip(sets.precast.WS)
        else
			equip(sets.precast.FastCast)
        end
end --End Function precast(spell)

function midcast(spell)
--windower.add_to_chat(123, CurrentMode)
	if sets.midcast[spell.english] then
		equip(sets.midcast[spell.english])
    else
		--equip(sets.midcast.SIRD)
	end
		
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