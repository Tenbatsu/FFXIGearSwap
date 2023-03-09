-- THF Gearswap 
--
--

res = require('resources')

send_command('wait 5; input /lockstyleset 5')

modes = {"Treasure", "Normal"}
curMode = "Treasure"

function get_sets()
	sets = {}

	sets.mogGarden = {body="Jubilee Shirt", hands="Field Gloves", waist="Field Rope", feet="Field Boots", neck="Field Torque"}

	sets.idle = {
		ammo = "Ginsen",
		head = "Dampening Tam",
		neck = "Twilight Torque",
		ear1 = "Sherida Earring",
		ear2 = "Cessance Earring",
		body = "Herculean Vest",
		hands = "Adhemar Wristbands",
		ring1 = "Rajas ring",
		ring2 = "Epona's Ring",
		back = "Canny Cape",
		waist = "Flume belt +1",
		legs = "Samnuha Tights",
		feet = "Skd. Jambeaux +1"
		}
		
	sets.resting = set_combine(sets.idle, {})

	sets.precast = {}

	sets.aftercast = {}

	sets.aftercast.TP = {
		ammo = "Ginsen",
		head = "Dampening Tam",
		neck = "Combatant's Torque",
		ear1 = "Sherida Earring",
		ear2 = "Cessance Earring",
		body = "Herculean Vest",
		hands = "Adhemar Wristbands",
		ring1 = "Rajas ring",
		ring2 = "Epona's Ring",
		back = "Canny Cape",
		waist = "Windbuffet belt +1",
		legs = "Samnuha Tights",
		feet = "Herculean Boots"
		}
	
	sets.aftercast.THTime = {
		ammo = "Ginsen",
		head = "Dampening Tam",
		neck = "Combatant's Torque",
		ear1 = "Sherida Earring",
		ear2 = "Cessance Earring",
		body = "Herculean Vest",
		hands = "Plun. Armlets +1", --TH +3
		ring1 = "Rajas ring",
		ring2 = "Epona's Ring",
		back = "Canny Cape",
		waist = "Windbuffet belt +1",
		legs = "Samnuha Tights",
		feet = "Skulk. Poulaines +1"} --TH +3
	
	sets.precast.WS = set_combine(sets.aftercast.TP, {})
	--Elemental WS is weird need some MAB etc.for these DEX 40% INT 40%
	sets.precast['Aeolian Edge'] = { 
		ammo = "Falcon Eye",
		neck = "Fotia Gorget",
		body = "Samnuha Coat",
		hands = "Leyline Gloves",
		ring1 = "Mephitas's Ring",
		ring2 = "Acumen Ring",
		back = "Bleating Mantle",
		waist = "Fotia Belt",
		legs = "Samnuha Tights",
		ear1 = "Hecate's Earring",
		ear2 = "Crematio Earring",
		feet = "Herculean Boots"}
	--Rudra's Storm Darkness/Distortion DEX 80%
	sets.precast['Rudra\'s Storm'] = { 
		ammo = "Falcon Eye",
		head = "Maculele Tiara +1",
		neck = "Fotia Gorget",
		body = "Rawhide Vest",
		back = "Bleating Mantle",
		waist = "Fotia Belt",
		ring1 = "Ramuh Ring",
		ring2 = "Ramuh Ring",
		legs = "Herculean Trousers",
		ear1 ="Moonshade Earring",
		feet ="Lustratio Leggings"}
		
	sets.precast.JA = set_combine(sets.aftercast.TP, {})
	sets.precast.JA["Perfect Dodge"] = set_combine(sets.aftercast.TP, {hands = "Plun. Armlets +1"})
	sets.precast.JA["Flee"] = set_combine(sets.aftercast.TP, {})
	sets.precast.JA["Hide"] = set_combine(sets.aftercast.TP, {})
	sets.precast.JA["Sneak Attack"] = set_combine(sets.aftercast.TP, {})
	sets.precast.JA["Mug"] = set_combine(sets.aftercast.TP, {})
	sets.precast.JA["Trick Attack"] = set_combine(sets.aftercast.TP, {})
	sets.precast.JA["Accomplice"] = set_combine(sets.aftercast.TP, {})
	sets.precast.JA["Despoil"] = set_combine(sets.aftercast.TP, {})
	sets.precast.JA["Collaborator"] = set_combine(sets.aftercast.TP, {})
	sets.precast.JA["Conspirator"] = set_combine(sets.aftercast.TP, {})
	sets.precast.JA["Bully"] = set_combine(sets.aftercast.TP, {})
	sets.precast.JA["Larceny"] = set_combine(sets.aftercast.TP, {})
	sets.precast.JA["Assassin\'s Charge"] = set_combine(sets.aftercast.TP, {})
	sets.precast.JA["Feint"] = set_combine(sets.aftercast.TP, {})
	sets.precast.JA["Steal"] = set_combine(sets.aftercast.TP, {
		feet = "Rogue's Poulaines",
		legs = "Rogue's Culottes",
		hands = "Rogue's Armlets",
		head = "Rogue's Bonnet"
	})
	
	sets.precast.FC = set_combine(sets.aftercast.TP, {})
	sets.precast["Utsusemi"] = set_combine(sets.precast.FC, {})
	
end --End function get_sets()

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
	end
end

function buff_change(new, bool)
	if new == 'Diffusion' and bool then
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
        if sets.precast.JA[spell.name] then
            equip(sets.precast.JA[spell.name])
		else
			equip(sets.precast.JA)
        end
    elseif spell.type == 'WeaponSkill' then
        if sets.precast.WS[spell.name] then
            equip(sets.precsast.WS[spell.name])
        else
            equip(sets.precast.WS)
        end
	else -- we don't need to do anything!
    end
end
 
function midcast(spell)
    midaction(false)
end
 
function aftercast(spell)
    if player.status =='Engaged' then
		if curMode == "Treasure" then
			equip(sets.aftercast.THTime)
		elseif curMode == "Normal" then
			equip(sets.aftercast.TP)
		else
			--windower.add_to_chat(123, "Bad Mode")
			equip(sets.aftercast.TP)
		end
    else
        equip(sets.aftercast.Idle)
    end
end--End Function aftercast (spell)
 
function status_change(new,old)
    if new == 'Idle' then
        equip(sets.idle)
    elseif new == 'Resting' then
        equip(sets.resting)
    elseif new == 'Engaged' then
        if curMode == "Treasure" then
			equip(sets.aftercast.THTime)
		elseif curMode == "Normal" then
			equip(sets.aftercast.TP)
		else
			equip(sets.aftercast.TP)
		end
    end
end

function self_command(command)
    if command == "Treasure" then
		curMode = "Treasure"
		windower.add_to_chat(123, "Treasure")
       if player.status == 'Idle' then
		  equip(sets.aftercast.Idle)
	   else
	      equip(sets.aftercast.THTime)
	   end
    elseif command == "Normal" then
        curMode = "Normal"
		windower.add_to_chat(123, "Normal")
       if player.status == 'Idle' then
		  equip(sets.aftercast.Idle)
	   else
	      equip(sets.aftercast.TP)
	   end
	else
    end
	--windower.add_to_chat(123, CurrentMode)
end --End Function self_command