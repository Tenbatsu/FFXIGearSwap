-- Initialization function for this job file.
function get_sets()

	sets.precast = {}
-- Precast Sets
    -- Fast cast sets for spells
	-- 80% Fast Cast (including trait) for all spells, plus 5% quick cast
    -- No other FC sets necessary.
    sets.precast.FC = {
        head="Wlk. Chapeau +1",
		ear2="Loquacious Earring"}
		
	--sets.precast.FC.Impact = set_combine(sets.precast.FC, {head=empty,body="Twilight Cloak"})
	
    -- Precast sets to enhance JAs
    --sets.precast.JA['Chainspell'] = {body="Vitivation Tabard"}
    
    -- Waltz set (chr and vit)
    sets.precast.Waltz = {
        head="Helios Band",
        body="Taeon Tabard",
		hands="Taeon Gloves",
		legs="Telchine Braconi",
		feet="Taeon Boots"}
        
    -- Don't need any special gear for Healing Waltz.
    sets.precast.Waltz['Healing Waltz'] = {}
   
    -- Weaponskill sets
    -- Default set for any weaponskill that isn't any more specifically defined
    sets.precast.WS = {
		neck="Fotia Gorget",
		ear1="Bladeborn Earring",
		ear2="Steelflash Earring",
        body="Taeon Tabard",
		hands="Taeon Gloves",
		ring1="Spiral Ring",
		ring2="Keen Ring",
        back="Atheling Mantle",
		waist="Fotia Belt",
		legs="Telchine Braconi",
		feet="Taeon Boots"}

    -- Specific weaponskill sets.  Uses the base set if an appropriate WSMod version isn't found.
    sets.precast.WS['Requiescat'] = set_combine(sets.precast.WS, 
        {ear1="Brutal Earring",ear2="Moonshade Earring",
        ring1="Aqua Ring",ring2="Aqua Ring"})

    -- Midcast Sets
	sets.midcast = {}
    sets.midcast.FastRecast = sets.precast.FC --{
        --head="Atrophy Chapeau +1",ear2="Loquacious Earring",
        --body="Vitivation Tabard",hands="Gendewitha Gages",ring1="Prolix Ring",
        --back="Swith Cape +1",waist="Witful Belt",legs="Hagondes Pants",feet="Hagondes Sabots"}

    sets.midcast.Cure = {
		main="Tamaxchi",
		sub="Astral Aspis",
        head="Helios Band",
		neck="Promise Badge",
		ear1="Hecate's Earring",
		--ear1="Roundel Earring",
		ear2="Loquacious Earring",
        body="Taeon Tabard",
		hands="Telchine Gloves",
		ring1="Aqua Ring",
		ring2="Aqua Ring",
        back="Hecate's Cape",
		waist="Witch Sash",
		legs="Telchine Braconi",
		feet="Taeon Boots"}
        
    sets.midcast.Curaga = sets.midcast.Cure
    sets.midcast.CureSelf = {ring2="Kunaji Ring"}

    --sets.midcast['Enhancing Magic'] = {
        --head="Atrophy Chapeau +1",
		--neck="Colossus's Torque",
        --body="Vitivation Tabard",
		--hands="Atrophy Gloves +1",
		--ring1="Prolix Ring",
        --back="Estoqueur's Cape",
		--waist="Olympus Sash",
		--legs="Atrophy Tights",
		--feet="Estoqueur's Houseaux +2"}

    --sets.midcast.Refresh = {legs="Estoqueur's Fuseau +2"}

    --sets.midcast.Stoneskin = {waist="Siegel Sash"}
    
    sets.midcast['Enfeebling Magic'] = {
	main="Lehbrailg +1",
	sub="Achaq Grip",
	ammo="Hedgehog Bomb",
    head="Atrophy Chapeau +1",
	neck="Enfeebling Torque",
	ear1="Hecate's Earring",
	ear2="Moldavite Earring",
    body="Taeon Tabard",
	hands="Helios Gloves",
	ring1="Aqua Ring",
	ring2="Aqua Ring",
    --back="Refraction Cape",
	back="Hecate's Cape",
	waist="Witch Sash",
	legs="Telchine Braconi",
	feet="Taeon Boots"}

    --sets.midcast['Dia III'] = set_combine(sets.midcast['Enfeebling Magic'], {head="Vitivation Chapeau"})

    --sets.midcast['Slow II'] = set_combine(sets.midcast['Enfeebling Magic'], {head="Vitivation Chapeau"})
    
    sets.midcast['Elemental Magic'] = set_combine(sets.midcast['Enfeebling Magic'], {neck="Elemental Torque"})--{
	--main="Lehbrailg +1",
	--sub="Zuuxowu Grip",
	--ammo="Dosis Tathlum",
    --head="Hagondes Hat",
	--neck="Eddy Necklace",
	--ear1="Friomisi Earring",
	--ear2="Hecate's Earring",
    --body="Hagondes Coat",
	--hands="Yaoyotl Gloves",
	--ring1="Icesoul Ring",
	--ring2="Acumen Ring",
    --back="Toro Cape",
	--waist=gear.ElementalObi,
	--legs="Hagondes Pants",
	--feet="Hagondes Sabots"}
        
    --sets.midcast.Impact = set_combine(sets.midcast['Elemental Magic'], {head=empty,body="Twilight Cloak"})

    sets.midcast['Dark Magic'] = set_combine(sets.midcast['Enfeebling Magic'], {neck="Dark Torque"})--{
	--main="Lehbrailg +1 +2",
	--sub="Mephitis Grip",
	--ammo="Kalboron Stone",
    --head="Atrophy Chapeau +1",
	--neck="Weike Torque",
	--ear1="Lifestorm Earring",
	--ear2="Psystorm Earring",
    --body="Vanir Cotehardie",
	--hands="Gendewitha Gages",
	--ring1="Prolix Ring",
	--ring2="Sangoma Ring",
    --back="Refraction Cape",
	--waist="Goading Belt",
	--legs="Bokwus Slops",
	--feet="Bokwus Boots"}

    sets.midcast.Drain =  sets.midcast['Dark Magic']--set_combine(sets.midcast['Dark Magic'], {ring1="Excelsis Ring", waist="Fucho-no-Obi"})
    sets.midcast.Aspir = sets.midcast.Drain

    -- Sets for special buff conditions on spells.
	sets.midcast.EnhancingDuration = {
	--hands="Atrophy Gloves +1",
	--back="Estoqueur's Cape",
	feet="Estoqueur's Houseaux +2"}
    
	sets.buff = {}
    sets.buff.ComposureOther = {
	--head="Estoqueur's Chappel +2",
    --body="Estoqueur's Sayon +2",
	--hands="Estoqueur's Gantherots +2",
    --legs="Estoqueur's Fuseau +2",
	feet="Estoqueur's Houseaux +2"}

    sets.buff.Saboteur = {hands="Estq. Ganthrt. +1"}
    

    -- Sets to return to when not performing an action.
    
    -- Resting sets
    sets.resting = {
	main="Pluto's Staff",
	sub="Achaq Grip",
    --head="Vitivation Chapeau",
	neck="Beak Necklace",
	ear1="Antivenom Earring",
    body="Errant Hpl.",
	--hands="Serpentes Cuffs",
	ring1="Sheltered Ring",
	ring2="Paguroidea Ring",
    --waist="Austerity Belt",
	waist="Duelist's Belt"}
	--legs="Nares Trews",
	--feet="Chelona Boots +1"}
    

    -- Idle sets
    sets.idle = {
	main="Lehbrailg +1",
	sub="Achaq Grip",
	ammo="Hedgehog Bomb",
    head="Helios Band",
	neck="Enfeebling Torque",
	ear1="Hecate's Earring",
	ear2="Loquacious Earring",
    body="Taeon Tabard",
	hands="Helios Gloves",
	ring1="Ether Ring",
	ring2="Astral Ring",
    back="Hecate's Cape",
	waist="Witch Sash",
	legs="Telchine Braconi",
	feet="Taeon Boots"}

    -- sets.idle.Town = {main="Bolelabunga",sub="Genbu's Shield",ammo="Impatiens",
        -- head="Atrophy Chapeau +1",neck="Wiglen Gorget",ear1="Bloodgem Earring",ear2="Loquacious Earring",
        -- body="Atrophy Tabard +1",hands="Atrophy Gloves +1",ring1="Sheltered Ring",ring2="Paguroidea Ring",
        -- back="Shadow Mantle",waist="Flume Belt",legs="Crimson Cuisses",feet="Hagondes Sabots"}
    
    -- sets.idle.Weak = {main="Bolelabunga",sub="Genbu's Shield",ammo="Impatiens",
        -- head="Vitivation Chapeau",neck="Wiglen Gorget",ear1="Bloodgem Earring",ear2="Loquacious Earring",
        -- body="Atrophy Tabard +1",hands="Serpentes Cuffs",ring1="Sheltered Ring",ring2="Paguroidea Ring",
        -- back="Shadow Mantle",waist="Flume Belt",legs="Crimson Cuisses",feet="Hagondes Sabots"}

    -- sets.idle.PDT = {main="Bolelabunga",sub="Genbu's Shield",ammo="Demonry Stone",
        -- head="Gendewitha Caubeen +1",neck="Twilight Torque",ear1="Bloodgem Earring",ear2="Loquacious Earring",
        -- body="Gendewitha Bliaut +1",hands="Gendewitha Gages",ring1="Defending Ring",ring2=gear.DarkRing.physical,
        -- back="Shadow Mantle",waist="Flume Belt",legs="Osmium Cuisses",feet="Gendewitha Galoshes"}

    -- sets.idle.MDT = {main="Bolelabunga",sub="Genbu's Shield",ammo="Demonry Stone",
        -- head="Gendewitha Caubeen +1",neck="Twilight Torque",ear1="Bloodgem Earring",ear2="Loquacious Earring",
        -- body="Gendewitha Caubeen +1",hands="Yaoyotl Gloves",ring1="Defending Ring",ring2="Shadow Ring",
        -- back="Engulfer Cape",waist="Flume Belt",legs="Osmium Cuisses",feet="Gendewitha Galoshes"}
    
    
    -- Defense sets
    -- sets.defense.PDT = {
        -- head="Atrophy Chapeau +1",neck="Twilight Torque",ear1="Bloodgem Earring",ear2="Loquacious Earring",
        -- body="Hagondes Coat",hands="Gendewitha Gages",ring1="Defending Ring",ring2=gear.DarkRing.physical,
        -- back="Shadow Mantle",waist="Flume Belt",legs="Hagondes Pants",feet="Gendewitha Galoshes"}

    -- sets.defense.MDT = {ammo="Demonry Stone",
        -- head="Atrophy Chapeau +1",neck="Twilight Torque",ear1="Bloodgem Earring",ear2="Loquacious Earring",
        -- body="Atrophy Tabard +1",hands="Yaoyotl Gloves",ring1="Defending Ring",ring2="Shadow Ring",
        -- back="Engulfer Cape",waist="Flume Belt",legs="Bokwus Slops",feet="Gendewitha Galoshes"}

    -- sets.Kiting = {legs="Crimson Cuisses"}

    -- sets.latent_refresh = {waist="Fucho-no-obi"}

    -- Engaged sets

    -- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
    -- sets if more refined versions aren't defined.
    -- If you create a set with both offense and defense modes, the offense mode should be first.
    -- EG: sets.engaged.Dagger.Accuracy.Evasion
    
    -- Normal melee group
    sets.engaged = {
        --head="Atrophy Chapeau +1",
		neck="Asperity Necklace",
		ear1="Bladeborn Earring",
		ear2="Steelflash Earring",
        body="Taeon Tabard",
		hands="Taeon Gloves",
		ring1="Spiral Ring",
		ring2="Keen Ring",
        back="Atheling Mantle",
		waist="Witch Sash",
		legs="Telchine Braconi",
		feet="Taeon Boots"}

    -- sets.engaged.Defense = {ammo="Demonry Stone",
        -- head="Atrophy Chapeau +1",neck="Asperity Necklace",ear1="Bladeborn Earring",ear2="Steelflash Earring",
        -- body="Atrophy Tabard +1",hands="Atrophy Gloves +1",ring1="Rajas Ring",ring2="K'ayres Ring",
        -- back="Kayapa Cape",waist="Goading Belt",legs="Osmium Cuisses",feet="Atrophy Boots"}

    
end --end get sets function


-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for standard casting events.
-------------------------------------------------------------------------------------------------------------------

-- Run after the default midcast() is done.
-- eventArgs is the same one used in job_midcast, in case information needs to be persisted.
function job_post_midcast(spell, action, spellMap, eventArgs)
    if spell.skill == 'Enfeebling Magic' and state.Buff.Saboteur then
        equip(sets.buff.Saboteur)
    elseif spell.skill == 'Enhancing Magic' then
        equip(sets.midcast.EnhancingDuration)
        if buffactive.composure and spell.target.type == 'PLAYER' then
            equip(sets.buff.ComposureOther)
        end
    elseif spellMap == 'Cure' and spell.target.type == 'SELF' then
        equip(sets.midcast.CureSelf)
    end
end

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for non-casting events.
-------------------------------------------------------------------------------------------------------------------

-- Handle notifications of general user state change.
function job_state_change(stateField, newValue, oldValue)
    --if stateField == 'Offense Mode' then
    --    if newValue == 'None' then
    --        enable('main','sub','range')
    --    else
    --        disable('main','sub','range')
    --    end
    --end
end

-------------------------------------------------------------------------------------------------------------------
-- User code that supplements standard library decisions.
-------------------------------------------------------------------------------------------------------------------

-- Modify the default idle set after it was constructed.
function customize_idle_set(idleSet)
    -- if player.mpp < 51 then
        -- idleSet = set_combine(idleSet, sets.latent_refresh)
    -- end
    
    -- return idleSet
end

-- Set eventArgs.handled to true if we don't want the automatic display to be run.
function display_current_job_state(eventArgs)
    -- display_current_caster_state()
    -- eventArgs.handled = true
end

-------------------------------------------------------------------------------------------------------------------
-- Utility functions specific to this job.
-------------------------------------------------------------------------------------------------------------------

-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
    -- Default macro set/book
    --if player.sub_job == 'DNC' then
    --    set_macro_page(2, 4)
    --elseif player.sub_job == 'NIN' then
    --    set_macro_page(3, 4)
    --elseif player.sub_job == 'THF' then
    --    set_macro_page(4, 4)
    --else
    --    set_macro_page(1, 4)
    --end
end