
send_command('wait 3; input /lockstyleset 19;wait 5;input /macro book 9; wait 2; input /macro set 1')

function get_sets()
    
	--Set for standing around town
	sets.aftercast = {}
	
	sets.aftercast.Idle = {
		ammo="Ginsen",
		head="Sakpata's Helm",
		body="Dagon Breast.",
		hands="Sakpata's Gauntlets",
		legs="Sakpata's Cuisses",
		feet="Hermes' Sandals",
		neck="Combatant's Torque",
		waist="Windbuffet Belt +1",
		left_ear="Telos Earring",
		ring1 = "Defending Ring",
        ring2 = "Vocane Ring +1",
		back = "Shadow Mantle"
	}
	
	--Set for face punching
	sets.aftercast.TP = {
		ammo="Seeth. Bomblet +1",
		head="Sakpata's Helm",
		body="Dagon Breast.",
		hands="Sakpata's Gauntlets",
		legs="Sakpata's Cuisses",
		feet={ name="Tatena. Sune. +1", augments={'Path: A',}},
		neck="Combatant's Torque",
		waist="Windbuffet Belt +1",
		left_ear="Telos Earring",
		right_ear="Cessance Earring",
		left_ring="Niqmaddu Ring",
		right_ring="Regal Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}}
	}
	
	
	--Establish the base precast set
	sets.precast = {}
	
	--Job Abilities
	sets.precast["Mighty Strikes"] = {
		hands = "Agoge Mufflers"}
		
	sets.precast["Berserk"] = {
		body = "Pummeler's Lorica +2",
		feet = "Agoge Calligae"}
	
	sets.precast["Warcry"] = {
		head = "Agoge Mask"}
	
	sets.precast["Aggressor"] = {
		head = "Pummeler's Mask +2",
		body = "Agoge Lorica"}
	
	sets.precast["Retaliation"] = {
		hands = "Pummeler's Mufflers +2",
		feet = "Boii Calligae"}
	
	sets.precast["Warrior's Charge"] = {
		legs = "Agoge Cuisses"}
	
	sets.precast["Tomahawk"] = {
		feet = "Agoge Calligae"}
		
	sets.precast["Blood Rage"] = {
		body = "Boii Lorica +1"}

	sets.precast["Restraint"] = {
		hands = "Boii Mufflers"}	
	
	--Weaponskills
	sets.precast.WS = {
		neck = "Fotia Gorget",
		body = "Sakpata's Breastplate",
		hands={ name="Valorous Mitts", augments={'Attack+27','Weapon skill damage +4%',}},
		head={ name="Valorous Mask", augments={'Weapon skill damage +4%','INT+2','Accuracy+11','Attack+7',}},
		ear1 = "Moonshade Earring",
		ear2 = "Ishvara Earring",
		back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-5%',}},
		left_ring="Niqmaddu Ring",
		right_ring="Regal Ring",
		legs = "Sakpata's Cuisses",
		waist = "Fotia Belt",
		ammo = "Knobkierrie"}
	
	--Set for Fast Casting Utsusemi
	sets.precast.FastCast = {
	neck="Magoraga Beads",
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
	end --end if
end --end function precast


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
		--send_command('@input /echo Idle')
		equip(sets.aftercast.Idle)
	elseif new == 'Resting' then
		--send_command('@input /echo Resting')
		equip(sets.aftercast.hHP)
    elseif new == 'Engaged' then
        equip(sets.aftercast.TP)
    end
end --End Function status_change(new,old)

function buff_change(new, bool)
	if new == 'Reive Mark' and bool then
		--equip(sets.idle.reive)
		disable('neck')
	elseif new == 'Reive Mark' and not bool then
		enable('neck')
		aftercast()
	end
end

function change_zone()
    new_zone = res.zones[windower.ffxi.get_info().zone].english
    if new_zone == "Western Adoulin" or new_zone == "Eastern Adoulin" then
       equip(sets.idle.adoulin)
	else aftercast()
    end
 end
