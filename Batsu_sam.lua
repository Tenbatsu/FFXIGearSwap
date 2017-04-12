
send_command('input /macro book 2; wait 1; input /lockstyleset 11; wait 1; input /macro set 3')

function get_sets()
    
	sets.mogGarden = {body="Jubilee Shirt", hands="Field Gloves", waist="Field Rope", feet="Field Boots", neck="Field Torque"}
	
	--Set for standing around town
	sets.aftercast = {}
	
	sets.aftercast.Idle = {
		ammo = "Ginsen",
		head = "Flam. Zucchetto +1",
		body = "Flamma Korazin +1",
		hands = "Flam. Manopolas +1",
		legs = "Flamma Dirs +1",
		feet = "Flam. Gambieras +1",
		neck = "Twilight Torque",
		waist = "Flume Belt +1",
		left_ear = "Cessance Earring",
		right_ear = "Brutal Earring",
		ring1 = "Defending Ring",
        ring2 = "Vocane Ring",
		back = "Shadow Mantle"
	}
	
	--Set for face punching
	sets.aftercast.TP = {
		--main = "Umaru",
		--sub = "Bloodrain Strap"
		ammo = "Ginsen",
		head = "Flam. Zucchetto +1",
		body = "Flamma Korazin +1",
		hands = "Flam. Manopolas +1",
		legs = "Flamma Dirs +1",
		feet = "Flam. Gambieras +1",
		neck = "Combatant's Torque",
		waist = "Windbuffet Belt +1",
		left_ear = "Cessance Earring",
		right_ear = "Brutal Earring",
		left_ring = "Apate Ring",
		right_ring = "Rajas Ring",
		back = "Takaha Mantle"
	}
	
	--Set for resting
	sets.aftercast.hHP = sets.aftercast.TP
	
	--Establish the base precast set
	sets.precast = {}
	
	--Some Job Abilities
	
	--Meikyo Shisui
	sets.precast["Meikyo Shisui"] = {
		feet = "Sakonji Sune-ate"}
	
	--Hasso
	sets.precast["Hasso"] = {
		legs = "Unkai Haidate +2",
		hands = "Wakido Kote +1"}
	
	--Seigan
	sets.precast["Seigan"] = {head = "Unkai Kabuto +1"}
	
	--Sekkanoki
	sets.precast["Sekkanoki"] = {hands = "Unkai Kote +1"}
	
	--Third Eye
	sets.precast["Third Eye"] = {legs = "Sakonji Haidate"}
	
	--Meditate
	sets.precast["Meditate"] = {
		hands = "Sao. Kote +2",
		head = "Wakido Kabuto +1",
		back = "Smertrios's Mantle"}
	
	--Shikikoyo
	sets.precast["Shikikoyo"] = {legs = "Sakonji Haidate"}
	
	--Warding Circle
	sets.precast["Warding Circle"] = {head = "Wakido Kabuto +1"}
	
	--Blade Bash
	sets.precast["Blade Bash"] = {hands = "Sao. Kote +2"}
	
	--Finally some weaponskill action
	--Tachi: Yukikaze 75% STR
	sets.precast['Tachi: Yukikaze'] = {
		neck = "Fotia Gorget",
		back = "Smertrios's Mantle",
		legs = "Valor. Hose",
		waist = "Fotia Belt"}
		
	--Tachi Gekko 80% STR
	sets.precast['Tachi: Gekko'] = {
		neck = "Fotia Gorget",
		back = "Smertrios's Mantle",
		waist = "Fotia Belt"}
		
	-- Tachi: Kasha 75% STR
	sets.precast['Tachi: Kasha'] = {
		neck = "Fotia Gorget",
		ear1 = "Moonshade Earring",
		ear2 = "Bladeborn Earring",
		back = "Smertrios's Mantle",
		legs = "Valor. Hose",
		waist = "Fotia Belt"}
		
	--Tachi: Rana 50% STR
	sets.precast['Tachi: Rana'] = {
		neck = "Fotia Gorget",
		ear1 = "Moonshade Earring",
		ear2 = "Bladeborn Earring",
		back = "Smertrios's Mantle",
		legs = "Valor. Hose",
		waist = "Fotia Belt"}
		
	--Tachi: Shoha 85% STR
	sets.precast['Tachi: Shoha'] = {
		neck = "Fotia Gorget",
		ear1 = "Moonshade Earring",
		ear2 = "Bladeborn Earring",
		back = "Smertrios's Mantle",
		legs = "Valor. Hose",
		waist = "Fotia Belt"}
		
	--Tachi: Fudo 80% STR
	sets.precast['Tachi: Fudo'] = {
		neck = "Fotia Gorget",
		ear1 = "Moonshade Earring",
		ear2 = "Bladeborn Earring",
		back = "Smertrios's Mantle",
		legs = "Valor. Hose",
		waist = "Fotia Belt"}
	
	sets.precast.WS = {
		neck = "Fotia Gorget",
		ear1 = "Moonshade Earring",
		ear2 = "Bladeborn Earring",
		back = "Smertrios's Mantle",
		legs = "Valor. Hose",
		waist = "Fotia Belt"}
	
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
