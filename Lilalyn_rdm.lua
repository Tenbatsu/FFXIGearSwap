-- The Wonderful World of Red Mage
-- My RDM might be terrible, but it's my terrible =D

send_command('wait 3; /lockstyleset 1')

modes = {"Standard", "Bursting", "HighAccuracy"}
curMode = "Standard"

function get_sets()

	--Let's stack some random movement speed, refresh and maybe DT?
	sets.aftercast = {}
	sets.aftercast.Idle = {
		head = "Vitiation Chapeau +1",
		neck = "Sanctity Necklace",
		ear1 = "Etiolation Earring",
		ear2 = "Loquac. Earring",
		body = "Jhakri Robe +2",
		hands = "Umuthi Gloves",
		ring1 = "Defending Ring",
		ring2 = "Vocane Ring +1",
		back = "Mecisto. Mantle",
		waist = "Flume Belt +1",
		legs = "Carmine Cuisses +1",
		feet = "Carmine Greaves",
		ammo = "Angha Gem"}
		
	--Get some MP back
	sets.aftercast.hMP = {
		neck="Beak Necklace",
		ear1="Antivenom Earring",
		waist="Duelist's Belt"}
		
	--Stabbin Stuff?
    sets.aftercast.Engaged = {
        head="Jhakri Coronal +2",
		body="Jhakri Robe +2",
		hands="Jhakri Cuffs +2",
		legs="Jhakri Slops +2",
		feet="Jhakri Pigaches +2",
		neck="Combatant's Torque",
		waist="Windbuffet Belt +1",
		ear1="Steelflash Earring",
		ear2="Bladeborn Earring",
		ring1="Apate Ring",
		ring2="Rajas Ring",
		back="Bleating Mantle"}

	-- Precast Sets
	sets.precast = {}

    -- Fast cast sets for spells
	-- 80% Fast Cast (including trait) for all spells, plus 5% quick cast
    -- No other FC sets necessary
	-- RDM Gets Fast Cast V @ 89 = 30%
	--Emmissary -- 10%
    sets.precast.FC = {
        head="Atro. Chapeau +1", -- 12%
		body="Vitiation Tabard +1", -- 13%
		hands="Leyline Gloves", -- 8%
		feet="Carmine Greaves", -- 7%
		neck="Voltsurge Torque", -- 4
		ear1="Etiolation Earring", -- 1%
		ear2="Loquac. Earring", -- 2%
		ring1="Acumen Ring",
		ring2="Rahab Ring",
		waist="Channeler's stone", --2 %
		legs="Lengo Pants" --5%
	}--Total: 84 w/o emmisary, 94 w
	
	sets.precast.WS = {
		head="Jhakri Coronal +2",
		body="Jhakri Robe +2",
		hands="Jhakri Cuffs +2",
		legs="Jhakri Slops +2",
		feet="Jhakri Pigaches +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		ear1="Moonshade Earring",
		ear2="Bladeborn Earring",
		ring1="Acumen Ring",
		ring2="Rahab Ring",
		back="Bleating Mantle"
	} --Add some specific WS sets
	
    sets.precast["Saboteur"] = {hands="Estq. Ganthrt. +2"}
	sets.precast["Chainspell"] = {body="Vitiation Tabard +1"}
	
    -- Midcast Sets
	sets.midcast = {}
	
	sets.midcast.Enhancing = {
		head="Estq. Chappel +2",
		body="Vitiation Tabard +1", --go get estq +2 for set bonus you slut
		hands="Atrophy Gloves +1",
		legs="Atrophy Tights +1",
		feet="Estq. Houseaux +2",
		neck="Sanctity Necklace",
		waist="Olympus Sash",
		left_ear="Etiolation Earring",
		right_ear="Gwati Earring",
		ring1="Acumen Ring",
		ring2="Rahab Ring",
		back="Ghostfyre Cape"
	}
	-- Look into Telchine head, body and legs
	
	sets.midcast.Enfeebling = {
		head="Jhakri Coronal +2",
		body="Jhakri Robe +2",
		hands="Jhakri Cuffs +2",
		legs="Jhakri Slops +2",
		feet="Jhakri Pigaches +2",
		neck="Sanctity necklace",
		waist="Channeler's Stone",
		left_ear="Etiolation Earring",
		right_ear="Gwati Earring",
		ring1="Acumen Ring",
		ring2="Rahab Ring",
		back="Ghostfyre Cape"}

    sets.midcast.Cure = {
		main="Serenity", -- 22%
		neck="Promise Badge",
		ear1="Etiolation Earring",
		ear2="Roundel Earring",
        body="Jhakri Robe +2",
		hands="Telchine Gloves", --10%
		ring1="Kunaji Ring",
		ring2="Asklepian Ring",
        back="Ghostfyre cape", --6%
		waist="Witch Sash",
		legs="Atrophy Tights +1", -- 10%
		feet="Amalric Nails"}
        
    --sets.midcast['Refresh'] = {legs="Estoqueur's Fuseau +2"}
    sets.midcast['Stoneskin'] = set_combine(sets.midcast.Enhancing,{ear2="Earthcry Earring"}) --main="Pukulatmuj"
	sets.midcast['Phalanx II'] = set_combine(sets.midcast['Enfeebling Magic'], {hands="Vitiation gloves"})
    sets.midcast['Dia III'] = set_combine(sets.midcast['Enfeebling Magic'], {head="Vitiation Chapeau +1"})
    sets.midcast['Slow II'] = set_combine(sets.midcast['Enfeebling Magic'], {head="Vitiation Chapeau +1"})
	sets.midcast['Slow II'] = set_combine(sets.midcast['Enfeebling Magic'], {feet="Vitiation Boots"})
	
	sets.midcast.ElementalBurst = {
		main={ name="Grioavolr", augments={'Magic burst dmg.+5%','Mag. Acc.+3','"Mag.Atk.Bns."+12','Magic Damage +7',}},
		sub="Enki Strap",
		range="Aureole",
		head={ name="Merlinic Hood", augments={'"Mag.Atk.Bns."+8','Magic burst dmg.+11%','MND+1',}},
		body="Jhakri Robe +2",
		hands={ name="Amalric Gages", augments={'INT+10','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
		legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+12 "Mag.Atk.Bns."+12','Magic burst dmg.+10%','CHR+3','"Mag.Atk.Bns."+10',}},
		feet="Jhakri Pigaches +2",
		neck="Mizu. Kubikazari",
		waist="Hachirin-no-Obi",
		left_ear="Crematio Earring",
		right_ear="Friomisi Earring",
		left_ring="Locus Ring",
		right_ring="Mujin Band",
		back="Ghostfyre Cape"}
   
	sets.midcast.Elemental = {
		main={ name="Grioavolr", augments={'Magic burst dmg.+5%','Mag. Acc.+3','"Mag.Atk.Bns."+12','Magic Damage +7',}},
		sub="Enki Strap",
		range = "Aureole",
		head = "Jhakri Coronal +2",
		neck = "Sanctity Necklace",
		ear1 = "Crematio Earring",
		ear2 = "Friomisi Earring",
		body = "Jhakri Robe +2",
		hands = "Jhakri Cuffs +2",
		ring1 = "Shiva Ring",
		ring2 = "Shiva Ring",
		back = "Ghostfyre Cape",
		waist = "Refoccilation Stone",
		legs = "Merlinic Shalwar",
		feet="Jhakri Pigaches +2",}
	
    --sets.midcast.Dark = set_combine(sets.midcast['Enfeebling Magic'], {neck="Dark Torque"})
	sets.midcast.Dark = {
		range = "Aureole",
		head = "Jhakri Coronal +2",
		neck = "Erra Pendant",
		ear1 = "Crematio Earring",
		ear2 = "Hirudinea Earring",
		body = "Jhakri Robe +2",
		hands = "Jhakri Cuffs +2",
		ring1 = "Evanescence Ring",
		ring2 = "Rahab Ring",
		back = "Ghostfyre Cape",
		waist = "Luminary Sash",
		legs = "Jhakri slops +2",
		feet = "Jhakri pigaches +2"}
    
end --end get sets function

function precast(spell) --Equip Items based on Abilities or Spells
	if sets.precast[spell.english] then
		equip(sets.precast[spell.english])
	elseif spell.action_type == 'Magic' then
		equip(sets.precast.FC)
	elseif spell.type == "WeaponSkill" then
		equip(sets.precast.WS)
	else
	end
end --End Function precast(spell)

function midcast(spell) --Put on some stuff in the middle of a spell or ability if/when fastcast isn't needed throughout
	if sets.precast[spell.english] then
		equip(sets.precast[spell.english])
	elseif spell.skill == 'Enfeebling Magic' then
		equip(sets.midcast.Enfeebling)
	elseif spell.skill == "Enhancing Magic" then
		equip(sets.midcast.Enhancing)
	elseif spell.skill == "Elemental Magic" then
		--windower.add_to_chat(123, "Elemental")
		if curMode == "Bursting" then
			--windower.add_to_chat(123, "Bursting")
			equip(sets.midcast.ElementalBurst)
		else
			--windower.add_to_chat(123, "Standard")
			equip(sets.midcast.Elemental)
		end --end if
	elseif spell.skill == "Dark Magic" then
		equip(sets.midcast.Dark)
	elseif spell.skill == "Enhancing Magic" then
		equip(sets.midcast.Enhancing)
	elseif spell.skill == "Healing Magic" then
		equip(sets.midcast.Cure)
	else
	end
end

function aftercast(spell) --Now that we're done casting.
    if player.status =='Engaged' then
        equip(sets.aftercast.Engaged)
    else
        equip(sets.aftercast.Idle)
    end
end--End Function aftercast (spell)

function status_change(new,old) --State Changing between punching and idle and resting
    --if T{'Idle','Resting'}:contains(new) then
	if new == 'Idle' then
		equip(sets.aftercast.Idle)
	elseif new == 'Resting' then
		equip(sets.aftercast.hMP)
    elseif new == 'Engaged' then
        equip(sets.aftercast.Engaged)
    end
end

function self_command(command)
    if command == "Standard" then
		curMode = "Standard"
		windower.add_to_chat(123, "Standard")
    elseif command == "Bursting" then
        curMode = "Bursting"
		windower.add_to_chat(123, "Bursting")
	elseif command == "HighAccuracy" then
        curMode = "HighAccuracy"
		windower.add_to_chat(123, "HighAccuracy")
	else
	end
 end