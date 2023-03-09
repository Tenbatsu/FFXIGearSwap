res = require('resources')

send_command('wait 4; input /macro book 16; wait 1; input /lockstyleset 16; wait 5; input /macro set 1')

modes = {"Standard", "Melee"}
curMode = "Standard"


CureSpells = {"Cure", "Cure II", "Cure III", "Cure IV", "Cure IV", "Cure V", "Cure VI", "Cura"}
CuragaSpells = {"Curaga", "Curaga II", "Curaga III", "Curaga IV"}

function get_sets()
    
	sets.mogGarden = {body="Jubilee Shirt", hands="Field Gloves", waist="Field Rope", feet="Field Boots", neck="Field Torque"}
	
	
	sets.aftercast = {}
	sets.aftercast.reive = set_combine(sets.idle, {neck="Adoulin's Refuge +1"})
    sets.aftercast.adoulin = set_combine(sets.idle, {body="Councilor's Garb"})
	
	sets.aftercast.Idle = {
		
	}
	
	sets.aftercast.Engaged = {
		
	}
	
	sets.aftercast.hMP = {
		neck = "Beak necklace",
		ear1 = "Antivenom Earring"
	}
		
	--Establish the base precast set
	sets.precast = {}
	
	--Weaponskills
	sets.precast.WS = set_combine(sets.aftercast.Engaged, {neck = "Fotia Gorget", ear1 = "Moonshade earring", waist = "Fotia Belt"})
	
	
	--Job Abilities
	sets.precast.JA = {}
	
	--Set for Fast Casting
	sets.precast.FastCast = {
		ear1 = "Loquac. Earring",
		ear2 = "Etiolation Earring",
		neck = "Voltsurge Torque",
		--head = "Goetia Petasos +2",
		waist = "Channeler's Stone",
		ring1 = "Kishar Ring",
		ring2 = "Rahab Ring",
		legs = "Lengo Pants",
		feet = "Amalric Nails"
	}
	
	--Base Midcast Set
	sets.midcast = {}
	
	sets.midcast.Cure = {
		
	}
		
	sets.midcast.Curaga = {
		
	}
	
	sets.midcast.Cursna = {
	
	}
	
	sets.midcast.Barspell = {
	
	}
	
end --End Function get_sets


function precast(spell) --Equip Items based on Abilities or Spells
	if spell.action_type == 'Magic' then
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
	elseif CureSpells[spell.english] then
		--windower.add_to_chat(123, "Casting Death")
		equip(sets.midcast.Cure)
	elseif CuragaSpells[spell.english] then
		equip(sets.midcast.Curaga)
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