-- The Wonderful World of Red Mage
-- My RDM might be terrible, but it's my terrible =D

send_command('wait 3; /lockstyleset 1')

function get_sets()
JobModes = {"Melee", "Enfeeble", "Nuking", "Bursting"}
CurrentMode = "Enfeeble"

	--Let's stack some random movement speed, refresh and maybe DT?
	sets.aftercast = {}
	sets.aftercast.Idle = {
		head = "Vitivation Chapeau",
		neck = "Sanctity Necklace",
		ear1 = "Etiolation Earring",
		ear2 = "Loquac. Earring",
		body = "Jhakri Robe +1",
		hands = "Umuthi Gloves",
		ring1 = "Defending Ring",
		ring2 = "Vocane Ring",
		back = "Mecisto. Mantle",
		waist = "Flume Belt +1",
		legs = "Carmine Cuisses",
		feet = "Carmine Greaves",
		ammo = "Angha Gem"}
		
	--Get some MP back
	sets.aftercast.hMP = {
		neck="Beak Necklace",
		ear1="Antivenom Earring",
		waist="Duelist's Belt"}
		
	--Stabbin Stuff?
    sets.aftercast.Engaged = {
        head="Jhakri Coronal +1",
		body="Jhakri Robe +1",
		hands="Jhakri Cuffs +1",
		legs="Jhakri Slops +1",
		feet="Jhakri Pigaches +1",
		neck="Combatant's Torque",
		waist="Windbuffet Belt +1",
		ear1="Steelflash Earring",
		ear2="Bladeborn Earring",
		ring1="Apate Ring",
		ring2="Rajas Ring",
		back="Bleating Mantle"
	}

	-- Precast Sets
	sets.precast = {}

    -- Fast cast sets for spells
	-- 80% Fast Cast (including trait) for all spells, plus 5% quick cast
    -- No other FC sets necessary
	-- RDM Gets Fast Cast V @ 89 = 30%
	--Emmissary -- 10%
    sets.precast.FC = {
        head="Atro. Chapeau +1", -- 12%
		body="Vitivation Tabard", -- 12%
		hands="Leyline Gloves", -- 8%
		feet="Carmine Greaves", -- 7%
		ear1="Etiolation Earring", -- 1%
		ear2="Loquac. Earring", -- 2%
		ring1="Acumen Ring",
		ring2="Rahab Ring",
		waist="Channeler's stone", --2 %
		legs="Lengo Pants" --5%
	}--Total: 79 w/o emmisary, 89 w
	
	sets.precast.WS = {
		head="Jhakri Coronal +1",
		body="Jhakri Robe +1",
		hands="Jhakri Cuffs +1",
		legs="Jhakri Slops +1",
		feet="Jhakri Pigaches +1",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		ear1="Moonshade Earring",
		ear2="Bladeborn Earring",
		ring1="Acumen Ring",
		ring2="Rahab Ring",
		back="Bleating Mantle"
	} --Add some specific WS sets
	
    sets.precast["Saboteur"] = {hands="Estq. Ganthrt. +2"}
	sets.precast["Chainspell"] = {body="Vitivation Tabard"}
	
    -- Midcast Sets
	sets.midcast = {}
	
	sets.midcast.Enhancing = {
		head="Estq. Chappel +2",
		body="Vitivation Tabard", --go get estq +2 for set bonus you slut
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
		head="Jhakri Coronal +1",
		body="Jhakri Robe +1",
		hands="Jhakri Cuffs +1",
		legs="Jhakri Slops +1",
		feet="Jhakri Pigaches +1",
		neck="Enfeebling Torque",
		waist="Channeler's Stone",
		left_ear="Etiolation Earring",
		right_ear="Gwati Earring",
		ring1="Acumen Ring",
		ring2="Rahab Ring",
		back="Ghostfyre Cape"	
	}

    sets.midcast.Cure = {
		--main="Tamaxchi", -- 22%
		neck="Promise Badge",
		ear1="Etiolation Earring",
		ear1="Roundel Earring",
		ear2="Loquacious Earring",
        body="Jhakri Robe +1",
		hands="Telchine Gloves", --10%
		ring1="Kunaji Ring",
		ring2="Aqua Ring",
        back="Ghostfyre cape", --6%
		waist="Witch Sash",
		legs="Atrophy Tights +1", -- 10%
		feet="Amalric Nails"}
        
    --sets.midcast['Refresh'] = {legs="Estoqueur's Fuseau +2"}
    sets.midcast['Stoneskin'] = set_combine(sets.midcast.Enhancing,{ear2="Earthcry Earring"}) --main="Pukulatmuj"
	sets.midcast['Phalanx II'] = set_combine(sets.midcast['Enfeebling Magic'], {hands="Vitivation gloves"})
    sets.midcast['Dia III'] = set_combine(sets.midcast['Enfeebling Magic'], {head="Vitivation Chapeau"})
    sets.midcast['Slow II'] = set_combine(sets.midcast['Enfeebling Magic'], {head="Vitivation Chapeau"})
	sets.midcast['Slow II'] = set_combine(sets.midcast['Enfeebling Magic'], {feet="Vitivation Boots"})
   
	sets.midcast.Elemental = set_combine(sets.midcast['Enfeebling Magic'], {neck="Elemental Torque"})
    sets.midcast.Dark = set_combine(sets.midcast['Enfeebling Magic'], {neck="Dark Torque"})
    
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
		equip(sets.midcast.Elemental)
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

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for standard casting events.
-------------------------------------------------------------------------------------------------------------------

-- Run after the default midcast() is done.
-- eventArgs is the same one used in job_midcast, in case information needs to be persisted.
-- function job_post_midcast(spell, action, spellMap, eventArgs)
    -- if spell.skill == 'Enfeebling Magic' and state.Buff.Saboteur then
        -- equip(sets.buff.Saboteur)
    -- elseif spell.skill == 'Enhancing Magic' then
        -- equip(sets.midcast.EnhancingDuration)
        -- if buffactive.composure and spell.target.type == 'PLAYER' then
            -- equip(sets.buff.ComposureOther)
        -- end
    -- elseif spellMap == 'Cure' and spell.target.type == 'SELF' then
        -- equip(sets.midcast.CureSelf)
    -- end
-- end

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for non-casting events.
-------------------------------------------------------------------------------------------------------------------

-- Handle notifications of general user state change.
--function job_state_change(stateField, newValue, oldValue)
    --if stateField == 'Offense Mode' then
    --    if newValue == 'None' then
    --        enable('main','sub','range')
    --    else
    --        disable('main','sub','range')
    --    end
    --end
--end
