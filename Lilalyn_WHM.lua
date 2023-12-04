res = require('resources')

send_command('wait 4; input /macro book 4; wait 1; input /lockstyleset 6; wait 5; input /macro set 1')

modes = {"Standard", "Melee"}
curMode = "Standard"


CureSpells = T{"Cure", "Cure II", "Cure III", "Cure IV", "Cure IV", "Cure V", "Cure VI", "Cura"}
CuragaSpells = T{"Curaga", "Curaga II", "Curaga III", "Curaga IV"}
Barspells = T{"Barfira", "Barblizzara", "Baraera", "Barstonra", "Barthundra", "Barwatera"}
RegenSpells = T{"Regen", "Regen II", "Regen III", "Regen IV"}

function get_sets()
   
	sets.aftercast = {}
	sets.aftercast.reive = set_combine(sets.idle, {neck="Adoulin's Refuge +1"})
    sets.aftercast.adoulin = set_combine(sets.idle, {body="Councilor's Garb"})
	
	sets.aftercast.Idle = {
		main = "Queller Rod",
		sub = "Genbu's Shield",
		--range = "",
		ammo = "Sapience Orb",
		head = "Ebers Cap +2",
		neck = "Sanctity Necklace",
		ear1 = "Etiolation Earring",
		ear2 = "Mendicant's Earring",
		body = "Theo. Bliaut +3",
		hands = "Theophany mitts +3",
		ring1 = "Vertigo Ring",
		ring2 = "Kishar Ring",
		back = "Alaunus's Cape",
		waist = "Tengu-no-obi",
		legs = "Ebers Pantaloons +2",
		feet = "Kaykaus boots"
	}
	
	sets.aftercast.Engaged = {
		main = "Queller Rod",
		sub = "Genbu's Shield",
		--range = "",
		ammo = "Sapience Orb",
		head = "Ebers Cap +2",
		neck = "Sanctity Necklace",
		ear1 = "Etiolation Earring",
		ear2 = "Mendicant's Earring",
		body = "Theo. Bliaut +3",
		hands = "Theophany mitts +3",
		ring1 = "Vertigo Ring",
		ring2 = "Kishar Ring",
		back = "Alaunus's Cape",
		waist = "Tengu-no-obi",
		legs = "Ebers Pantaloons +2",
		feet = "Kaykaus boots"
	}
	
	sets.aftercast.hMP = {
		--neck = "Beak necklace",
		--ear1 = "Antivenom Earring"
	}
		
	--Establish the base precast set
	sets.precast = {}
	
	--Weaponskills
	sets.precast.WS = set_combine(sets.aftercast.Engaged, {neck = "Fotia Gorget", ear1 = "Moonshade earring", waist = "Fotia Belt"})
	
	
	--Job Abilities
	sets.precast.JA = {}
	
	--Set for Fast Casting
	sets.precast.FastCast = {
		ear1 = "Etiolation Earring",
		ear2 = "Loquac. Earring",
		neck = "Aceso's choker +1",
		ring1 = "Vertigo Ring",
		ring2 = "Kishar Ring",
		legs = "Ebers Pant. +2",
		feet = "Kaykaus Boots"
	}
	
	sets.precast.CureFastCast = {
		ear1 = "Etiolation Earring",
		ear2 = "Mendi. Earring",
		neck = "Aceso's choker +1",
		ring1 = "Vertigo Ring",
		ring2 = "Kishar Ring",
		legs = "Ebers Pant. +2",
		feet = "Vanya clogs"
	}
	
	--Base Midcast Set
	sets.midcast = {}
	
	sets.midcast.CureSpells = {
		main={ name="Queller Rod", augments={'Healing magic skill +15','"Cure" potency +10%','"Cure" spellcasting time -7%',}},
		sub="Sors Shield",
		ammo="Sapience Orb",
		head="Ebers Cap +2",
		body="Theo. Bliaut +3",
		hands="Theophany Mitts +3",
		legs="Ebers Pant. +2",
		feet={ name="Kaykaus Boots", augments={'Mag. Acc.+15','"Cure" potency +5%','"Fast Cast"+3',}},
		neck="Aceso's Choker +1",
		waist="Tengu-no-Obi",
		left_ear="Etiolation Earring",
		right_ear="Mendi. Earring",
		left_ring="Vertigo Ring",
		right_ring="Kishar Ring",
		back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','MND+10','"Fast Cast"+10','Damage taken-5%',}}
	}
		
	sets.midcast.CuragaSpells = {
		main={ name="Queller Rod", augments={'Healing magic skill +15','"Cure" potency +10%','"Cure" spellcasting time -7%',}},
		sub="Sors Shield",
		ammo="Sapience Orb",
		head="Ebers Cap +2",
		body="Theo. Bliaut +3",
		hands="Theophany Mitts +3",
		legs="Ebers Pant. +2",
		feet={ name="Kaykaus Boots", augments={'Mag. Acc.+15','"Cure" potency +5%','"Fast Cast"+3',}},
		neck="Aceso's Choker +1",
		waist="Tengu-no-Obi",
		left_ear="Etiolation Earring",
		right_ear="Mendi. Earring",
		left_ring="Vertigo Ring",
		right_ring="Kishar Ring",
		back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','MND+10','"Fast Cast"+10','Damage taken-5%',}}
	}
	
	sets.midcast.RegenSpells = {
		main={ name="Queller Rod", augments={'Healing magic skill +15','"Cure" potency +10%','"Cure" spellcasting time -7%',}},
		sub="Sors Shield",
		ammo="Sapience Orb",
		head="Ebers Cap +2",
		body="Piety Bliaut +3",
		hands="Theophany Mitts +3",
		legs="Ebers Pant. +2",
		feet={ name="Kaykaus Boots", augments={'Mag. Acc.+15','"Cure" potency +5%','"Fast Cast"+3',}},
		neck="Aceso's Choker +1",
		waist="Tengu-no-Obi",
		left_ear="Etiolation Earring",
		right_ear="Mendi. Earring",
		left_ring="Vertigo Ring",
		right_ring="Kishar Ring",
		back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','MND+10','"Fast Cast"+10','Damage taken-5%',}}
	}
	
	sets.midcast.Cursna = {
		main={ name="Queller Rod", augments={'Healing magic skill +15','"Cure" potency +10%','"Cure" spellcasting time -7%',}},
		sub="Sors Shield",
		ammo="Sapience Orb",
		head="Ebers Cap +2",
		body="Theo. Bliaut +3",
		hands="Theophany Mitts +3",
		legs="Ebers Pant. +2",
		feet="Vanya Clogs",
		neck="Aceso's Choker +1",
		waist="Eschan Stone",
		left_ear="Etiolation Earring",
		right_ear="Mendi. Earring",
		left_ring="Vertigo Ring",
		right_ring="Kishar Ring",
		back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','MND+10','"Fast Cast"+10','Damage taken-5%',}}
	}
	
	sets.midcast.Barspell = {
		body = "Ebers Bliault +1"
	}
	
end --End Function get_sets


function precast(spell) --Equip Items based on Abilities or Spells
	if CureSpells:contains(spell.english) then
		equip(sets.precast.CureSpells)
	elseif CuragaSpells:contains(spell.english) then
		equip(sets.precast.CuragaSpells)
	elseif (spell.type == 'WhiteMagic' or spell.type == 'BlackMagic') then
		equip(sets.precast.FastCast)
	elseif sets.precast[spell.english] then
		equip(sets.precast[spell.english])
	elseif spell.type == "WeaponSkill" then
		equip(sets.precast.WS)
	end --end if
end --end function precast


function midcast(spell)
	if sets.midcast[spell.english] then
		equip(sets.midcast[spell.english])
	elseif CureSpells:contains(spell.english) then
		--windower.add_to_chat(123, "Casting Cure")
		equip(sets.midcast.CureSpells)
	elseif CuragaSpells:contains(spell.english) then
		--windower.add_to_chat(123, "Casting Curaga")
		equip(sets.midcast.CuragaSpells)
	elseif Barspells:contains(spell.english) then
		--windower.add_to_chat(123, "Casting Barspell")
		equip(sets.midcast.Barspell)
	elseif RegenSpells:contains(spell.english) then
		--windower.add_to_chat(123, "Casting Regen")
		equip(sets.midcast.RegenSpells)
	else
		
	end --end if
end --end function midcast

function aftercast(spell)
    if player.status =='Engaged' then
        equip(sets.aftercast.TP)
    else
        equip(sets.aftercast.Idle)
    end
end --end function aftercast (spell)

function status_change(new,old) --State Changing between punching and idle and resting
	if new == 'Idle' then
		--send_command('@input /echo Idle')
		equip(sets.aftercast.Idle)
	elseif new == 'Resting' then
		--send_command('@input /echo Resting')
		equip(sets.aftercast.hMP)
    elseif new == 'Engaged' then
        equip(sets.aftercast.Engaged)
    end
end --End Function status_change(new,old)

function buff_change(new, bool)
	if new == 'Reive Mark' and bool then
		equip(sets.aftercast.reive)
		disable('neck')
	elseif new == 'Reive Mark' and not bool then
		enable('neck')
		aftercast()
	end
end

function change_zone()
    new_zone = res.zones[windower.ffxi.get_info().zone].english
    if new_zone == "Western Adoulin" or new_zone == "Eastern Adoulin" then
       equip(sets.aftercast.adoulin)
	else aftercast()
    end
 end

 function self_command(command)
    if command == "Standard" then
		curMode = "Standard"
		windower.add_to_chat(123, "Standard")
    elseif command == "Melee" then
        curMode = "Melee"
		windower.add_to_chat(123, "Melee")
	else
	end
 end