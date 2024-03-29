res = require('resources')
map = require('BLUSpellMap')
-- Sets

send_command('wait 3; input /lockstyleset 2; input /macro book 3; wait 2; input /macro set 1')
	
disable('main','sub')

function get_sets()
    windower.register_event('zone change', change_zone)
    
    sets.idle = {
        ammo="Demonry Stone",
        head="Dampening Tam",
        neck="Twilight Torque",
        ear1="Etiolation Earring",
        ear2="Ethereal Earring",
        body="Jhakri Robe +2",
        hands="Adhemar Wristbands",
        ring1="Vocane Ring +1",
        ring2="Defending Ring",
		--back="Mecisto. Mantle",
        back="Shadow Mantle",
        waist="Flume Belt +1",
        legs="Carmine Cuisses +1",
        feet="Herculean Boots"}
		
	sets.idle.reive = set_combine(sets.idle, {neck="Adoulin's Refuge +1"})
    sets.idle.adoulin = set_combine(sets.idle, {body="Councilor's Garb"})
    sets.idle.diffusion = set_combine(sets.idle, {feet="Luhlaza Charuqs"})
	sets.idle.mogGarden = set_combine(sets.idle, {body="Jubilee Shirt", hands="Field Gloves", waist="Field Rope", feet="Field Boots", neck="Field Torque"})
	
	sets.precast = {}
    
	sets.precast.FC = {
		ear1="Etiolation Earring",
        ear2="Loquac. Earring",
        body="Samnuha Coat",
		neck="Voltsurge Torque",
        --back="Swith Cape +1",
        waist="Siegel Sash",
        hands="Leyline Gloves",
        legs="Lengo Pants",
        ring1="Rahab Ring",
		ring2="Kishar Ring",
		feet="Amalric Nails"}
 
    sets.resting = {}
 
    sets.engaged = {
        ammo="Ginsen",
        head="Dampening Tam",
        neck="Combatant's Torque",
        ear1="Telos Earring",
        ear2="Cessance Earring",
        body="Adhemar Jacket",
        hands="Adhemar Wristbands",
        ring1="Ilabrat Ring",
        ring2="Epona's Ring",
        back="Cornflower Cape",
        waist="Windbuffet Belt +1",
        legs="Samnuha Tights",
        feet={ name="Herculean Boots", augments={'Accuracy+24 Attack+24','Crit. hit damage +2%','DEX+9','Attack+4',}}}
    
    -- JA sets
    sets.JA = {}
 
    -- WS sets
 
    sets.WS = {
        ammo="Ginsen",
        head="Herculean Helm",
        neck="Fotia Gorget",
        ear1 = "Ishvara Earring",
        ear2="Moonshade Earring",
        body="Rawhide Vest",
        hands="Jhakri Cuffs +2",
        ring1="Ilabrat Ring",
        ring2="Rajas Ring",
        back="Bleating Mantle",
        waist="Fotia Belt",
        legs="Samnuha Tights",
        feet="Herculean Boots"
    }
 
    sets.WS.Requiescat = set_combine(sets.WS, {ear2="Moonshade Earring"})
	
	sets.WS["Chant du Cygne"] = set_combine(sets.WS, {})
	
	sets.WS["Savage Blade"] = set_combine(sets.WS,{
		body = "Jhakri Robe +2",
		back = "Cornflower Cape",
		legs = "Jhakri Slops +2",
		feet = "Jhakri Pigaches +2"
	})
 
    -- Magic sets. Lots of them!
	--Base Sets
	sets["Blue Skill"] = {
        ammo="Mavi Tathlum",
		hands="Assim. Bazu. +2",
        head="Luhlaza Keffiyeh +1",
        body="Assim. Jubbah +2",
        legs="Hashishin Tayt +1",
        feet="Luhlaza Charuqs",
		--neck="Incanter's Torque",
		neck="Sanctity Necklace",
        back="Cornflower Cape"
        --hands="Rawhide Gloves"
    }
	sets["Physical"] = set_combine(sets["Blue Skill"], {
        head="Herculean Helm",
        ring1="Rajas Ring",
        ring2="Apate Ring",
        waist="Warwolf Belt",
        feet={ name="Herculean Boots", augments={'Accuracy+24 Attack+24','Crit. hit damage +2%','DEX+9','Attack+4',}}
    })
	sets["Magical"] = set_combine(sets["Blue Skill"], {
        head="Jhakri Coronal +2",
        ear1="Crematio Earring",
        ear2="Hecate's Earring",
        ring1="Acumen Ring",
        ring2="Rahab Ring",
        legs="Jhakri Slops +2",
        neck="Sanctity Necklace",
        feet="Jhakri Pigaches +2",
        hands="Jhakri Cuffs +2",
        back="Cornflower Cape",
        --ammo="Ghastly Tathlum +1",
        waist="Eschan Stone",
        body="Jhakri robe +2"
    })
	
	sets["Curing"] = set_combine(sets["Blue Skill"], {hands="Telchine Gloves"})
	sets["CuringHP"] = set_combine(sets["Curing"], {
		head="Dampening Tam",
        body="Samnuha Coat",
        hands="Telchine Gloves",
        feet="Herculean Boots",
        legs="Carmine Cuisses +1",
        --waist="Ocean sash",
        neck="Dualism Collar +1",
        ring1="Meridian Ring",
        ring2="Bomb Queen Ring",
        ear1="Etiolation Earring",
        ear2="Cassie Earring"   
	})
	sets["Buffs"] = set_combine(sets["Blue Skill"], {})
	sets["Debuffs"] = set_combine(sets["Blue Skill"], {})
	sets["Breath"] = set_combine(sets["Blue Skill"], {
		ammo="Mavi Tathlum",
		head="Jhakri Coronal +2",
        body="Samnuha Coat",
        hands="Leyline Gloves",
        --feet="Carmine Greaves",
        legs="Carmine Cuisses +1",
        --waist="Ocean sash",
        neck="Dualism Collar +1"   
	})
	--Derivative Sets
	sets["PhysicalDart"] = set_combine(sets["Physical"], {})--{ear1="Enervating Earring"})
	sets["PDex"] = set_combine(sets["Physical"], {})
	sets["PDexInt"] = set_combine(sets["Physical"], {})
	sets["PStr"] = set_combine(sets["Physical"], {})
	sets["PStrDex"] = set_combine(sets["Physical"], {})
	sets["PStrVit"] = set_combine(sets["Physical"], {})
	sets["PStrMnd"] = set_combine(sets["Physical"], {})
	sets["PStrInt"] = set_combine(sets["Physical"], {})
	sets["PStrAgi"] = set_combine(sets["Physical"], {})
	sets["PAgi"] = set_combine(sets["Physical"], {})
	sets["PVit"] = set_combine(sets["Physical"], {})
	sets["PChr"] = set_combine(sets["Physical"], {})
	sets["MMnd"] = set_combine(sets["Magical"], {})
	sets["MInt"] = set_combine(sets["Magical"], {})
	sets["MIntMnd"] = set_combine(sets["Magical"], {})
	sets["MStr"] = set_combine(sets["Magical"], {})
	sets["MDex"] = set_combine(sets["Magical"], {})
	sets["MChr"] = set_combine(sets["Magical"], {})
	sets["MVit"] = set_combine(sets["Magical"], {})
	sets["MStrDex"] = set_combine(sets["Magical"], {})
	sets["MagicalDark"] = set_combine(sets["Magical"], {neck="Erra Pendant", ring2="Evanescence Ring", head="Pixie Hairpin +1"})
    
end

-- Mechanics
  function change_zone()
    new_zone = res.zones[windower.ffxi.get_info().zone].english
    if new_zone == "Western Adoulin" or new_zone == "Eastern Adoulin" then
       equip(sets.idle.adoulin)
	elseif new_zone == "Mog Garden" then
		equip(sets.idle.mogGarden)
	else aftercast()
    end
 end
 
 function buff_change(new, bool)
	if new == 'Reive Mark' and bool then
		equip(sets.idle.reive)
		disable('neck')
	elseif new == 'Reive Mark' and not bool then
		enable('neck')
		aftercast()
	elseif new == 'Diffusion' and bool then
		equip(sets.idle.diffusion)
		disable('feet')
	elseif new == 'Diffusion' and not bool then
		enable('feet')
		aftercast()
	end
end

function precast(spell)
    if spell.action_type == 'Magic' then
        equip(sets.precast.FC)
    elseif spell.type == 'JobAbility' then
        if sets.JA[spell.name] then
            equip(sets.JA[spell.name])
        end
    elseif spell.type == 'WeaponSkill' then
        if sets.WS[spell.name] then
            equip(sets.WS[spell.name])
        else
            equip(sets.WS)
        end
    end
end
 
function midcast(spell)
    midaction(false)
    if spell.skill == 'Blue Magic' then
		equip(sets[get_BlueType(spell.name)])
        --equip(set_mapping[spell_mapping[spell.name]])
    end
end
 
function aftercast(spell)
    if player.status =='Engaged' then
        equip(sets.engaged)
    else
        equip(sets.idle)
    end
end
 
function status_change(new,old)
    if new == 'Idle' then
        equip(sets.idle)
    elseif new == 'Resting' then
        equip(sets.resting)
    elseif new == 'Engaged' then
        equip(sets.engaged)
    end
end

