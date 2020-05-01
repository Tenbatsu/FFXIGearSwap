-- Sets
function get_sets()
 
    --Tolerance for allowing skills to fire.  Adjust if things are swapping too early,
    --or you have a laggy connection and things are swapping too slowly.
    --Default 1.5
    delaytol = 1.5

    add_to_chat(262,"Puppetmaster Control Panel Loaded")
    add_to_chat(160,"F9 Toggles Idle Mode (Default PetDT), Ctrl+F9 Toggles Engaged Mode (Default Master)")
    add_to_chat(160,"F10 Toggles Autodeploy (Default On), Ctrl+F10 Toggles Magic Mode (Default Off)")
    add_to_chat(160,"Ctrl+Alt+F10 Toggles Auto Maneuvers (Default Off), Ctrl+Alt+F9 Toggles Maneuvers (Default LWW)")
    add_to_chat(036,"Alt+F10 Toggles Main Weapon Lock (Default Unlocked)")
    add_to_chat(036,"Delay tolerance is currently " ..delaytol.. "s.  Adjust if necessary (See comment in lua)")

    send_command('bind f9 gs c toggle idle set')
    send_command('bind ^f9 gs c toggle combat set')
    send_command('bind f10 gs c toggle autodeploy')
    send_command('bind ^f10 gs c toggle magic')
    send_command('bind !f10 gs c toggle mainw')
    send_command('bind ^!f10 gs c toggle automan')
    send_command('bind ^!f9 gs c toggle automantype')
    send_command('bind ^f11 gs c puphelp')

    idle_sets = {'PetDT', 'PetC', 'Mage', 'Master'}
	idle_index_max = table.getn(idle_sets)
	--Set Default Idle Index
    idle_index = 2

    combat_sets = {'PetDT', 'PetC', 'Mage', 'Master'}
	combat_index_max = table.getn(combat_sets)
	--Set Default Combat Index
    combat_index = 2
	
	maneuver_sets = {
		{"Melee","Fire Maneuver","Light Maneuver","Light Maneuver"},
		{"Ranger","Wind Maneuver","Wind Maneuver","Light Maneuver"},
		{"Tank","Fire Maneuver","Light Maneuver","Earth Maneuver"},
		{"Healer","Dark Maneuver","Light Maneuver","Ice Maneuver"},
		{"Nukes","Dark Maneuver","Ice Maneuver","Ice Maneuver"}
	}
	automantype = 2
	maneuver_index = 2
	automan = false
    
    autodep = true
    pettpok = 1
    magicmode = false
    mainw = 1    

    --Init timer for skillswap
    specpet = T{}
    specpet[1688] = {name='Shield Bash', recast=180, timer=os.clock() + 180 - delaytol}
    specpet[1689] = {name='Strobe', recast=30, timer=os.clock() + 30 - delaytol}
    specpet[1690] = {name='Shock Absorber', recast=180, timer=os.clock() + 180 - delaytol}
    specpet[1691] = {name='Flashbulb', recast=45, timer=os.clock() + 45 - delaytol}
    specpet[1755] = {name='Reactive Shield', recast=65, timer=os.clock() + 65 - delaytol}
    specpet[1765] = {name='Eraser', recast=30, timer=os.clock() + 30 - delaytol}
    specpet[1812] = {name='Economizer', recast=180, timer=os.clock() + 180 - delaytol}
    specpet[2491] = {name='Disruptor', recast=60, timer=os.clock() + 60 - delaytol}
    specpet[3229] = {name='Regulator', recast=60, timer=os.clock() + 60 - delaytol}

   spells = {}
   spells.PUPNuke = S{'Fire', 'Fire II', 'Fire III', 'Fire IV', 'Fire V', 'Thunder', 'Thunder II', 'Thunder III', 'Thunder IV', 'Thunder V', 'Blizzard', 'Blizzard II', 'Blizzard III', 'Blizzard IV', 'Blizzard V', 'Water', 'Water II', 'Water III', 'Water IV', 'Water V', 'Aero', 'Aero II', 'Aero III', 'Aero IV', 'Aero V', 'Stone', 'Stone II', 'Stone III', 'Stone IV', 'Stone V'}
   spells.Man = S{'Fire Maneuver', 'Water Maneuver', 'Thunder Maneuver', 'Wind Maneuver', 'Light Maneuver', 'Dark Maneuver', 'Earth Maneuver', 'Ice Maneuver'}
   
   sets.idle = {}
	
	sets.idle.Master = {
		main = "Denouements",
		head={ name="Herculean Helm", augments={'Accuracy+23 Attack+23','"Dual Wield"+2','CHR+4','Accuracy+1',}},
		body={ name="Herculean Vest", augments={'"Triple Atk."+4','Accuracy+11',}},
		hands="Tali'ah Gages +2",
		legs={ name="Herculean Trousers", augments={'Accuracy+10 Attack+10','Crit. hit damage +2%','AGI+6','Accuracy+14','Attack+14',}},
		feet={ name="Herculean Boots", augments={'Accuracy+24 Attack+24','Crit. hit damage +2%','DEX+9','Attack+4',}},
		neck="Shulmanu Collar",
		waist="Windbuffet Belt +1",
		left_ear="Digni. Earring",
		right_ear="Cessance Earring",
		left_ring="Niqmaddu Ring",
		right_ring="Epona's Ring",
		back={ name="Dispersal Mantle", augments={'STR+1','DEX+3','Pet: TP Bonus+480',}}
	}
 
    sets.idle.PetDT = {
        --Pet Tank stuff
        --87.5% Hard Cap.  Stout Servant 9%, Valor 12.5
        --66% required
        --Total 45% from Gear
        main = "Midnights", -- 3% DT
        --neck = "Shepherd's Chain", -- 2% DT
        legs = "Foire Churidars +2", -- 3% DT
        waist = "Isa Belt", -- 3% DT
        --feet = "Rao Sune-Ate +1", -- 4% DT
        hands = "Rao Kote", -- 3% DT
        --head = "Anwig Salade", -- 10% DT
        --body = "Rao Togi +1", -- 4% DT
        back = "Visucius's Mantle",
        ear1 = "Enmerkar Earring",
        ear2 = "Handler's Earring +1",
        --ring1 = "Thurandaut Ring", -- 3% DT
        --ring2 = "Overbearing Ring",
    }
	
    sets.pethate = set_combine(sets.idle.PetDT, {
        --Stuff for generating hate.  Will auto-equip before skills are used.
        --feet = "Heyoka Leggings",
        --body = "Heyoka Harness",
        --ear1 = "Riceice Earring",
        --ear2 = "Domesticator's Earring",
        --legs = "Heyoka Subligar",
        --head = "Heyoka Cap",
        --hands = "Heyoka Mittens",
    })
	
    sets.idle.PetC = set_combine(sets.idle.PetDT, {
        --Gear for puppet damage
        main = "Ohtas",
        head = "Tali'ah Turban +2",
        body = "Pitre Tobe +3",
        waist = "Incarnation Sash",
        neck = "Shulmanu Collar",
        ear1 = "Enmerkar Earring",
        ear2 = "Handler's Earring +1",
        hands = "Tali'ah Gages +2",
        legs={ name="Herculean Trousers", augments={'Pet: Accuracy+29 Pet: Rng. Acc.+29','Pet: "Store TP"+7','Pet: INT+2',}},
		feet={ name="Herculean Boots", augments={'Pet: "Mag.Atk.Bns."+17','Pet: "Store TP"+10','Pet: INT+8','Pet: Attack+9 Pet: Rng.Atk.+9',}},
		ring1 = "Varar Ring +1",
        ring2 = "Varar Ring +1",
        back = "Visucius's Mantle"
    })

    sets.bone = set_combine(sets.idle.PetC, {
        -- Gear for Puppet WS.  Will swap around 970 TP automatically.
        --head = { name="Herculean Helm", augments={'Pet: Accuracy+26 Pet: Rng. Acc.+26','Pet: "Dbl. Atk."+3','Pet: AGI+2','Pet: Attack+7 Pet: Rng.Atk.+7',}},
        --ring2 = "Overbearing Ring",
        --ear2 = "Domesticator's Earring",
    })
	
    sets.bonetank = set_combine(sets.bone, {
        -- Gear for Bone Crusher on tank puppet
        --main = "Condemners", -- 5% DT
        --legs = "Foire Churidars +3", -- 6% DT
        --hands = "Rao Kote +1", -- 4% DT
        --head = "Anwig Salade", -- 10% DT
        --back = { name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: "Regen"+10',}},
        --ear1 = "Rimeice Earring", -- 1% DT
        --ear2 = "Domesticator's Earring",
        --ring2 = "Overbearing Ring",
        --feet = "Heyoka Leggings",
        --body = "Heyoka Harness",
    })

    sets.rangedws = set_combine(sets.idle.PetC, {
        -- Gear for ranged puppet Weaponskills.  Will auto swap at 970 TP
        --main= "Gnafron's Adargas",
        head = "Karagoz Capello",
        back = "Dispersal Mantle"
        --legs = "Karagoz Pantaloni +1",
        --feet = "Naga Kyahan",
        --ring2 = "Overbearing Ring",
        --hands = "Karagoz Guanti +1",
    })
	
    sets.rangedwstank = set_combine(sets.idle.PetDT, {
        -- Gear for ranged tank puppet Weaponskills.  Wiull auto swap at 970 TP
        head = "Karagoz Capello",
        body = "Pitre Tobe +3",
        back = "Dispersal Mantle"
        --hands = "Karagoz Guanti +1",
        --feet = "Naga Kyahan",
        --ring2 = "Overbearing Ring",
        --legs = "Karagoz Pantaloni +1",
    })
	
    sets.petskill = {
        -- Gear to enhance puppet skills.  USed for magic mostly.
        --legs = "Karagoz Pantaloni +1",
        --feet = "Naga Kyahan",
        --main= "Gnafron's Adargas",
    }
	
    sets.idle.Mage = set_combine(sets.idle.PetC, {
    -- Gear for Mage Puppet
    --main = "Kenkonken",
    head="Tali'ah Turban +2",
    --body={ name="Herculean Vest", augments={'Pet: Mag. Acc.+28','Pet: AGI+5','Pet: "Mag.Atk.Bns."+15',}},
    hands="Tali'ah Gages +2",
    --feet="Foire Babouches +3",
    legs="Tali'ah Seraweels +2",
    neck="Adad Amulet",
    --ear2="Burana Earring",
    ear1="Enmerkar Earring",
    back = "Visucius's Mantle"
    --ring2="Tali'ah Ring",
	})
 
    sets.JA = {}
	
    sets.JA['Overdrive'] = {
		body = "Pitre Tobe +3"}
	
    sets.JA['Repair'] = {
        ear1="Guignol Earring",
        feet="Foire Babouches +1",
     }
	 
    sets.JA['Maintenence'] = {
        ear1="Guignol Earring",
        feet="Foire Babouches +1",
    }
	
    sets.JA['Tactical Switch'] = {
		feet = "Karagoz Scarpe"}
	
	sets.precast = {}
	 
	sets.resting = set_combine(sets.idle, {
	})
    
    sets.combat = {
    --head="Herculean Helm",
    --body={ name="Herculean Vest", augments={'Accuracy+14','"Triple Atk."+4',}},
    --hands={ name="Herculean Gloves", augments={'Pet: "Store TP"+1','INT+14','Quadruple Attack +2','Accuracy+5 Attack+5',}},
    --legs="Samnuha Tights",
    --feet={ name="Herculean Boots", augments={'Accuracy+30','"Triple Atk."+4','STR+1','Attack+12',}},
    --neck="Combatant's Torque",
    --waist="Windbuffet Belt +1",
    --ear1="Dignitary's Earring",
	--ear2="Cessance Earring",
    --ring1="Petrov ring",
    --ring2="Epona's Ring",
    }
    
    sets.combat.Master  = set_combine(sets.combat, {
		--main = "Denouements",
		head={ name="Herculean Helm", augments={'Accuracy+23 Attack+23','"Dual Wield"+2','CHR+4','Accuracy+1',}},
		body={ name="Herculean Vest", augments={'"Triple Atk."+4','Accuracy+11',}},
		hands="Tali'ah Gages +2",
		legs={ name="Herculean Trousers", augments={'Accuracy+10 Attack+10','Crit. hit damage +2%','AGI+6','Accuracy+14','Attack+14',}},
		feet={ name="Herculean Boots", augments={'Accuracy+24 Attack+24','Crit. hit damage +2%','DEX+9','Attack+4',}},
		neck="Shulmanu Collar",
		waist="Windbuffet Belt +1",
		left_ear="Digni. Earring",
		right_ear="Cessance Earring",
		left_ring="Niqmaddu Ring",
		right_ring="Epona's Ring",
		back={ name="Dispersal Mantle", augments={'STR+1','DEX+3','Pet: TP Bonus+480',}}
	})
	
    sets.combat.PetDT = set_combine(sets.idle.PetDT, {
		hands = "Rao Kote",
		legs = "Foire Churidars +2",
		ear1 = "Enmerkar Earring",
        ear2 = "Handler's Earring +1"
    })
	
    sets.combat.PetC = set_combine(sets.idle.PetC, {
    })
	
	sets.combat.Mage = set_combine(sets.idle.Mage, {
    })
	
    sets.Man = {
        main= "Midnights",
        --neck = "Buffoon's Collar",
        hands="foire dastanas +2"
        --body="Karagoz Farsetto",
        --ear1="Burana Earring",
    }

    sets.midcast ={}
	
    sets.midcast.PetCure  ={
        --Gear for Puppet Healing
        --main = "Tinhaspa",
        --head="Rawhide Mask",
        --body={ name="Herculean Vest", augments={'Pet: Mag. Acc.+28','Pet: AGI+5','Pet: "Mag.Atk.Bns."+15',}},
        --hands="Naga tekko",
        --feet="Foire Churidars +3",
        --legs="Foire Babouches +3",
        neck="Adad Amulet"
        --ear1="Burana Earring",
        --ear2="Enmerkar Earring",
        --back={ name="Visucius's Mantle", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Eva.+20 /Mag. Eva.+20','Pet: Magic Damage+10','Pet: Haste+10',}},
        --ring2="Tali'ah Ring",
    }
	
    sets.midcast.PetNuke  ={
        -- Gear for Puppet Nuking
        --main = "Tinhaspa",
        --head = "Rawhide Mask",
        --body = { name="Herculean Vest", augments={'Pet: Mag. Acc.+28','Pet: AGI+5','Pet: "Mag.Atk.Bns."+15',}},
        --hands = "Naga tekko",
        --feet = "Foire Babouches +3",
        --legs = "Tali'ah Seraweels +2",
        neck = "Adad Amulet",
        --ear1 = "Burana Earring",
        --ear2 = "Enmerkar Earring",
        --back = { name="Visucius's Mantle", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Eva.+20 /Mag. Eva.+20','Pet: Magic Damage+10','Pet: Haste+10',}},
        --ring2 = "Tali'ah Ring",
    }
	
    -- WS sets
    sets.WS = {
    	head={ name="Herculean Helm", augments={'Accuracy+23 Attack+23','"Dual Wield"+2','CHR+4','Accuracy+1',}},
		body={ name="Herculean Vest", augments={'"Triple Atk."+4','Accuracy+11',}},
		neck = "Fotia Gorget",		
		back = "Dispersal Mantle",
		ring1 = "Regal Ring",
		ring2 = "Niqmaddu Ring",
		ear1 = "Ishvara Earring",
		ear2 = "Moonshade Earring",
		waist = "Fotia Belt",
		legs={ name="Herculean Trousers", augments={'Accuracy+10 Attack+10','Crit. hit damage +2%','AGI+6','Accuracy+14','Attack+14',}},
		feet={ name="Herculean Boots", augments={'Accuracy+24 Attack+24','Crit. hit damage +2%','DEX+9','Attack+4',}}
    }
		
	sets.WS['Victory Smite'] = set_combine(sets.WS, {
		head={ name="Herculean Helm", augments={'Accuracy+23 Attack+23','"Dual Wield"+2','CHR+4','Accuracy+1',}},
		body={ name="Herculean Vest", augments={'"Triple Atk."+4','Accuracy+11',}},
		neck = "Fotia Gorget",		
		back = "Dispersal Mantle",
		ring1 = "Regal Ring",
		ring2 = "Niqmaddu Ring",
		ear1 = "Ishvara Earring",
		ear2 = "Moonshade Earring",
		waist = "Fotia Belt",
		legs={ name="Herculean Trousers", augments={'Accuracy+10 Attack+10','Crit. hit damage +2%','AGI+6','Accuracy+14','Attack+14',}},
		feet={ name="Herculean Boots", augments={'Accuracy+24 Attack+24','Crit. hit damage +2%','DEX+9','Attack+4',}}
    })
	
	sets.WS['Stringing Pummel'] = set_combine(sets.WS, {
    })
	
	sets.WS['Asuran Fists'] = set_combine(sets.WS, {
    })
	
	sets.WS['Tornado Kick'] = set_combine(sets.WS, {
    })
	
 	send_command('wait 4;input /macro book 13;wait 1;input /lockstyleset 16;wait 5;input /macro set 1')
--     disable('main','sub')
end
 
-- Mechanics
function change_zone()
    specpet[1688].timer=os.clock() + specpet[1688].recast - delaytol
    specpet[1689].timer=os.clock() + specpet[1689].recast - delaytol
    specpet[1690].timer=os.clock() + specpet[1690].recast - delaytol
    specpet[1691].timer=os.clock() + specpet[1691].recast - delaytol
    specpet[1755].timer=os.clock() + specpet[1755].recast - delaytol
    specpet[1765].timer=os.clock() + specpet[1765].recast - delaytol
    specpet[1812].timer=os.clock() + specpet[1812].recast - delaytol
    specpet[2491].timer=os.clock() + specpet[2491].recast - delaytol
    specpet[3229].timer=os.clock() + specpet[3229].recast - delaytol
 end 
 
 function precast(spell)
	if spell.action_type == 'Magic' then
        equip(sets.precast.FC)
    elseif spell.type == 'JobAbility' then
        if sets.JA[spell.name] then
            equip(sets.JA[spell.name])
        end
        if spell.english == 'Activate' or spell.english == 'Deus Ex Automata' then
            specpet[1688].timer=os.clock() + specpet[1688].recast - delaytol
            specpet[1689].timer=os.clock() + specpet[1689].recast - delaytol
            specpet[1690].timer=os.clock() + specpet[1690].recast - delaytol
            specpet[1691].timer=os.clock() + specpet[1691].recast - delaytol
            specpet[1755].timer=os.clock() + specpet[1755].recast - delaytol
            specpet[1765].timer=os.clock() + specpet[1765].recast - delaytol
            specpet[1812].timer=os.clock() + specpet[1812].recast - delaytol
            specpet[2491].timer=os.clock() + specpet[2491].recast - delaytol
            specpet[3229].timer=os.clock() + specpet[3229].recast - delaytol
        end
    elseif spell.type == 'WeaponSkill' then
        if sets.WS[spell.name] then
            equip(sets.WS[spell.name])     
        else
            equip(sets.WS)
        end
    elseif spell.type == 'PetCommand' then
            if sets.Man and spells.Man:contains(spell.name) then
            equip(sets.Man)
        end
    end    
end

function midcast(spell)
if pet_midaction() then
        return
    end
end

function aftercast(spell)
    if pet_midaction() then
        return
    end
	
    if player.status =='Engaged' then
        equip(sets.combat[combat_sets[combat_index]])
    elseif player.status == 'Idle' then
        equip(sets.idle[idle_sets[idle_index]])
    end
end
 

function pet_midcast(spell)
    if magicmode == true then
		if string.find(spell.english,'Cur') then
			equip(sets.midcast.PetCure)
        elseif sets.midcast.PetNuke and spells.PUPNuke:contains(spell.name) then
			equip(sets.midcast.PetNuke)
         end
		disable('main','head','neck','lear','rear','body','hands','lring','rring','waist','legs','feet','back')
	end
end
 
function pet_aftercast(spell)
	if magicmode == true then
		enable('main','head','neck','lear','rear','body','hands','lring','rring','waist','legs','feet','back')
	end
	aftercast()
end

function status_change(new,old)
	if new == 'Idle' then
		add_to_chat(155,"Idle index is " ..idle_sets[idle_index].. ".")
		equip(sets.idle[idle_sets[idle_index]])
    elseif new == 'Resting' then
        equip(sets.resting)
    elseif new == 'Engaged' then
		add_to_chat(155,"Combat index is " ..combat_sets[combat_index].. ".")
		equip(sets.combat[combat_sets[combat_index]])
		if autodep == true then
            send_command('@input /pet Deploy <t>')
        end
	end
end

--Helper function to count duplicate maneuvers if using automaneuvers
function maneuver_tally(t,s)
  local freq = 0
  for _, v in ipairs(t) do
    if v == s then
		freq = freq + 1
	end
  end
  return freq
end

windower.register_event('action', function(act)
    local abil_ID = act['param']
    local abil = abil_ID - 256
    local skilltimer = os.clock()
    local rawpetskills = S{1688,1689,1690,1691,1755,1765,1812,2491,3229}
    local rawpetws = S{1684,1885,1686,1687,2043,2044,2045,1809,1810,1811,2487,2488}
    local petattach = T(windower.ffxi.get_mjob_data().attachments)

    if pet.status =='Engaged' then
        if pet.tp and pet.tp > 950 then
            if pettpok == 1 then
                if combat_index == 2 or idle_index == 2 then
                    --Combat Set Weaponskills
                    pettpok = 2
                    if pet.frame == 'Valoredge Frame' then
                        if buffactive['Wind Maneuver'] then
						--If wind maneuver usually means ranger
                            equip(sets.rangedws)    
                        else    
                            equip(sets.bone)
                        end
                    elseif pet.frame == 'Sharpshot Frame' then
						equip(sets.rangedws)
					else	
						--just default to ranged ws because why not
						equip(sets.rangedws)
                    end
                elseif combat_index == 1 or idle_index == 1 then
                    --Tank Set Weaponskills for Increased Hate
                    if pet.tp > 950 then
                    pettpok = 2
                        --Valoredge Tank WS for hate
                        if pet.frame == 'Valoredge Frame' then
                            --Bonecrusher set goes here
                            equip(sets.bonetank)
                        elseif pet.frame == 'Sharpshot Frame' then
							equip(sets.rangedwstank)
						else
                            equip(sets.rangedwstank)
                        end
                    end
                end
            end   
        elseif pet.tp and pet.tp < 900 then
            if pettpok == 2 then
				pettpok = 1
				aftercast()    
            end
        end     
        
        if rawpetskills:contains(abil) and pet.distance < 30.01 then
        --An automaton skill just happened, lets track its timer if you're in tank mode.
            if combat_index == 2 or idle_index == 1 then    
                specpet[abil].timer = os.clock() + specpet[abil].recast - delaytol
                aftercast()
            end
        elseif rawpetws:contains(abil) and pet.distance < 30.01 then
        --Pet WS just happened, clear pettpok and do some aftercast
            if pettpok == 2 then
               pettpok = 1
            end
            aftercast()
        end
        
    --Do stuff with the ability timer you tracked earlier, again only if you're in tank mode
        if combat_index == 2 or idle_index == 1 then
            if pet.distance < 30.01 then
                if pet_midaction() or midaction() then
                    return
                else
                --Shield Bash
                    if pet.frame == 'Valoredge Frame' then
                        if skilltimer > specpet[1688].timer then 
                            equip(sets.pethate)
                            specpet[1688].timer=os.clock() + specpet[1688].recast - delaytol
                        end
                    end
                --Strobe
                    if petattach:contains(8449) or petattach:contains(8457) then
                        if skilltimer > specpet[1689].timer and buffactive['Fire Maneuver'] then 
                            equip(sets.pethate)
                            specpet[1689].timer=os.clock() + specpet[1689].recast - delaytol
                        end
                    end
                --Flashbulb
                    if petattach:contains(8642) then
                        if skilltimer > specpet[1691].timer and buffactive['Light Maneuver'] then 
                            equip(sets.pethate)
                            specpet[1691].timer=os.clock() + specpet[1691].recast - delaytol
                        end
                    end
                --Shock Absorber
                    if petattach:contains(8545) or petattach:contains(8553) or petattach:contains(8557) then
                        if skilltimer > specpet[1690].timer and buffactive['Earth Maneuver'] then
                            equip(sets.pethate)
                            specpet[1690].timer=os.clock() + specpet[1690].recast - delaytol
                        end
                    end
                --Regulator   
                    if petattach:contains(8682) then    
                        if skilltimer > specpet[3229].timer and buffactive['Dark Maneuver'] then
                            equip(sets.pethate)
                            specpet[3229].timer=os.clock() + specpet[3229].recast - delaytol
                        end
                    end
                --Disruptor    
                    if petattach:contains(8680) then    
                        if skilltimer > specpet[2491].timer and buffactive['Dark Maneuver'] then
                            equip(sets.pethate)
                            specpet[2491].timer=os.clock() + specpet[2491].recast - delaytol
                        end 
                    end
                --Eraser
                    if petattach:contains(8645) then
                        if skilltimer > specpet[1765].timer and buffactive['Light Maneuver'] then
                            equip(sets.pethate)
                            specpet[1765].timer=os.clock() + specpet[1765].recast - delaytol
                        end
                    end
                --Reactive Shield    
                    if petattach:contains(8454) then
                        if skilltimer > specpet[1755].timer and buffactive['Fire Maneuver'] then
                            equip(sets.petskill)
                            specpet[1755].timer=os.clock() + specpet[1755].recast - delaytol
                        end
                    end 
                end
            end
        end    
    end
	
	--Automated stuff for Kev
	if automan == true and pet.isvalid and not midaction() then
		if buffactive['Overload'] and windower.ffxi.get_ability_recasts()[114] == 0 then
			send_command('@input /ja "Cooldown" <me>')
		end
		if windower.ffxi.get_ability_recasts()[210] == 0 then
			add_to_chat(155,"Automaneuver set is:" ..maneuver_sets[automantype][1].. ".")
			if not buffactive[maneuver_sets[automantype][maneuver_index]] or buffactive[maneuver_sets[automantype][maneuver_index]] < maneuver_tally(maneuver_sets[automantype],maneuver_sets[automantype][maneuver_index]) then
				--If the maneuver isn't active at all, or we have less than the total number of maneuvers then use the maneuver.
				send_command('@input /ja "'..maneuver_sets[automantype][maneuver_index]..'" <me>')
				--Head over to buff change to see if we put the maneuver on and increment
				-- if buffactive[maneuver_sets[automantype][maneuver_index]] then
					-- maneuver_index = maneuver_index + 1
					--Make sure we didn't walk off the map
					-- if maneuver_index > table.getn(maneuver_sets[automantype]) then
						-- maneuver_index = 2
						--since we're just counting table elements if we wanted to replicate a maneuver
						--we could probably just have a maneuver set of 2 and go from there
					-- end
				-- end		
			end
		end
	end
end)

function self_command(command)
    if command == 'toggle idle set' then
		idle_index = idle_index + 1
        if idle_index > idle_index_max then
            idle_index = 1
        end
        add_to_chat(063,'Idle -- '..idle_sets[idle_index])
    elseif command == 'toggle combat set' then
		combat_index = combat_index + 1
        if combat_index > combat_index_max then
            combat_index = 1
        end
        add_to_chat(063,'Combat -- '..combat_sets[combat_index])
    elseif command == 'toggle autodeploy' then
       if autodep == 1 then
           autodep = 2
           add_to_chat(123,'Pet autodeploy disabled')
       elseif autodep == 2 then
           autodep = 1
          add_to_chat(121,'Pet autodeploy enabled')
     end 
    elseif command == 'toggle magic' then
        if magicmode == 1 then
            magicmode = 2
            add_to_chat(121,'Magic Puppet mode enabled (Gear is locked during puppet casting)')
        elseif magicmode == 2 then
            magicmode = 1
           add_to_chat(123,'Magic Puppet mode disabled (Gear is not locked during puppet casting)')
      end 
    elseif command == 'toggle mainw' then
        if mainw == 1 then
            mainw = 2
            disable('main')
            add_to_chat(123,'Main Weapon Locked')
        elseif mainw == 2 then
            mainw = 1
            enable('main')
            add_to_chat(121,'Main Weapon Unlocked')
      end 
    elseif command == 'toggle automan' then
        if automan == false then
            automan = true
            add_to_chat(121,'Automatic Maneuvers Enabled')
        elseif automan == 2 then
            automan = 1
            add_to_chat(175,'Automatic Maneuvers Disabled')
      end 
    elseif command == 'toggle automantype' then
        if automantype == 1 then
            automantype = 2
            add_to_chat(155,'Automatic Maneuvers set to Ranger Standard: Fire, Fire, Light')
        elseif automantype == 2 then
            automantype = 3
            add_to_chat(155,'Automatic Maneuvers set to Super Tank: Fire, Light, Earth')
        elseif automantype == 3 then
            automantype = 1
            add_to_chat(155,'Automatic Maneuvers set to Tank/Melee: Fire, Light, Light')
      end 
    elseif command =='puphelp' then
        add_to_chat(262,"Puppetmaster Control Panel")
        add_to_chat(160,"F9 Toggles Idle Mode (Default PetDT), Ctrl+F9 Toggles Engaged Mode (Default Master)")
        add_to_chat(160,"F10 Toggles Autodeploy (Default On), Ctrl+F10 Toggles Magic Mode (Default Off)")
        add_to_chat(160,"Ctrl+Alt+F10 Toggles Auto Maneuvers (Default Off), Ctrl+Alt+F9 Toggles Maneuvers (Default FLL)")
        add_to_chat(160,"Alt+F10 Toggles Main Weapon Lock (Default Enabled)")
        add_to_chat(036,"Delay tolerance is currently " ..delaytol.. "s.  Adjust if necessary (See comment in lua)")
    end
    aftercast()
end