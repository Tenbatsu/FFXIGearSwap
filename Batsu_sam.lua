function get_sets()
    
	--Set for standing around town
	sets.aftercast = {}
	
	sets.aftercast.Idle = {
		head = "Lilac Corsage",
		neck = "Asperity Necklace",
		ear1 = "Steelflash Earring",
		ear2 = "Bladeborn Earring",
		body = "Usukane Haramaki",
		hands = "Usukane Gote",
		ring1 = "Spiral Ring",
		ring2 = "Keen Ring",
		back = "Atheling Mantle",
		waist = "Sentry Belt",
		legs = "Usukane Hizayoroi",
		feet = "Usukane Sune-ate"
	}
	
	--Set for face punching
	sets.aftercast.TP = {
		main = "Ichimonji-Yofusa",
		sub = "Pole Grip",
		head = "Outrider Mask",
		neck = "Asperity Necklace",
		ear1 = "Steelflash Earring",
		ear2 = "Bladeborn Earring",
		body = "Outrider Mail",
		hands = "Outrider Mittens",
		ring1 = "Spiral Ring",
		ring2 = "Keen Ring",
		back = "Atheling Mantle",
		waist = "Sentry Belt",
		legs = "Outrider Hose",
		feet = "Outrider Greaves"
	}
	
	--Set for resting
	sets.aftercast.hHP = sets.aftercast.TP
	
	--Establish the base precast set
	sets.precast = {}
	
	--Some Job Abilities
	
	--Hasso
	sets.precast.["Hasso"] = {legs = "Unkai Haidate +1"}
	
	--Seigan
	--sets.precast.Seigan = {head = "Unkai Kabuto +1"}
	
	--Sekkanoki
	sets.precast["Sekkanoki"] = {hands = "Unkai Kote +1"}
	
	--Third Eye
	sets.precast["Third Eye"] = {legs = "Saotome Haidate"}
	
	--Meditate
	sets.precast.Meditate = {hands = "Saotome Kote",
							 head = "Myn. Kabuto +1"}
							 
	--Warding Circle
	sets.precast["Warding Circle"] = {head = "Myn. Kabuto +1"}
	
	--Finally some weaponskill action
	
	--Tachi Gekko 80% STR
	sets.precast['Tachi: Gekko'] = {neck = "Fotia Gorget",
									waist = "Light Belt"}
									
	--Tachi Rana 50% STR
	sets.precast['Tachi: Rana'] = {neck = "Fotia Gorget",
									waist = "Snow Belt"}
									
	sets.precast['Tachi: Shoha'] = {neck = "Fotia Gorget"}
	
	sets.precast['Tachi: Fudo'] = {neck = "Fotia Gorget",
									waist = "Light Belt"}
	
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
		send_command('@input /echo Idle')
		equip(sets.aftercast.Idle)
	elseif new == 'Resting' then
		send_command('@input /echo Resting')
		equip(sets.aftercast.hHP)
    elseif new == 'Engaged' then
        equip(sets.aftercast.TP)
    end
end --End Function status_change(new,old)

function self_command(command)
    if command == 'equipIdle' then
       equip(sets.aftercast.Idle)
    else
        equip(sets.aftercast.TP)
    end
end