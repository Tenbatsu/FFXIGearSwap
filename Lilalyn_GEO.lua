--Gearswap Lua File for GEO

function get_sets()

--Aftercast sets
sets.aftercast = {}
--Let's stack some random movement speed, refresh and maybe DT?
sets.aftercast.Idle = {
	main="Solstice",
	sub="Genbu's Shield",
	range="Dunna",
	--ammmo="",
	head="Azimuth Hood +1",
	neck="Deceiver's Torque",
	ear1="Loquac. Earring",
	ear2="Magnetic Earring",
	body="Geomancy Tunic +2",
	hands="Geo. Mitaines +2",
	ring1="Resonance Ring",
	ring2="Kishar Ring",
	back="Lifestream Cape",
	waist="Eschan Stone",
	legs="Psycloth Lappas",
	feet="Geomancy Sandals +1"}
		
--Get some MP/HP back
sets.aftercast.hMP = {
	main="Solstice",
	sub="Genbu's Shield",
	range="Dunna",
	--ammmo="",
	head="Azimuth Hood +1",
	neck="Deceiver's Torque",
	ear1="Loquac. Earring",
	ear2="Magnetic Earring",
	body="Bagua Tunic +1",
	hands="Geo. Mitaines +2",
	ring1="Resonance Ring",
	ring2="Kishar Ring",
	back="Lifestream Cape",
	waist="Qiqirn Sash +1",
	legs="Psycloth Lappas",
	feet="Azimuth Gaiters +1"}
		
--Stabbin Stuff?
sets.aftercast.Engaged = {
	main="Solstice",
	sub="Genbu's Shield",
	range="Dunna",
	--ammmo="",
	head="Azimuth Hood +1",
	neck="Deceiver's Torque",
	ear1="Loquac. Earring",
	ear2="Magnetic Earring",
	body="Bagua Tunic +1",
	hands="Geo. Mitaines +2",
	ring1="Resonance Ring",
	ring2="Kishar Ring",
	back="Lifestream Cape",
	waist="Eschan Stone",
	legs="Psycloth Lappas",
	feet="Azimuth Gaiters +1"}

-- Precast Sets
sets.precast = {}
-- Fast cast sets for spells
sets.precast.FC = {
	main="Solstice",
	sub="Genbu's Shield",
	range="Dunna",
	--ammmo="",
	head="Azimuth Hood +1",
	neck="Deceiver's Torque",
	ear1="Loquac. Earring",
	ear2="Magnetic Earring",
	body="Bagua Tunic +1",
	hands="Geo. Mitaines +2",
	ring1="Resonance Ring",
	ring2="Kishar Ring",
	back="Lifestream Cape",
	waist="Eschan Stone",
	legs="Geo. Pants +1",
	feet="Azimuth Gaiters +1"}
	
sets.precast.WS = {}

    -- Midcast Sets
sets.midcast = {}
	
sets.midcast.Enhancing = {
	main="Solstice",
	sub="Genbu's Shield",
	range="Dunna",
	--ammmo="",
	head="Azimuth Hood +1",
	neck="Deceiver's Torque",
	ear1="Loquac. Earring",
	ear2="Magnetic Earring",
	body="Bagua Tunic +1",
	hands="Geo. Mitaines +2",
	ring1="Resonance Ring",
	ring2="Kishar Ring",
	back="Lifestream Cape",
	waist="Eschan Stone",
	legs="Psycloth Lappas",
	feet="Azimuth Gaiters +1"}
	
sets.midcast.Enfeebling = {
	main="Solstice",
	sub="Genbu's Shield",
	range="Dunna",
	--ammmo="",
	head="Azimuth Hood +1",
	neck="Deceiver's Torque",
	ear1="Loquac. Earring",
	ear2="Magnetic Earring",
	body="Bagua Tunic +1",
	hands="Geo. Mitaines +2",
	ring1="Resonance Ring",
	ring2="Kishar Ring",
	back="Lifestream Cape",
	waist="Eschan Stone",
	legs="Psycloth Lappas",
	feet="Azimuth Gaiters +1"}

sets.midcast.Cure = {
	main="Tamaxchi",
	sub="Genbu's Shield",
	range="Dunna",
	--ammmo="",
	head="Azimuth Hood +1",
	neck="Deceiver's Torque",
	ear1="Mendi. Earring",
	ear2="Magnetic Earring",
	body="Bagua Tunic +1",
	hands="Geo. Mitaines +2",
	ring1="Resonance Ring",
	ring2="Kishar Ring",
	back="Lifestream Cape",
	waist="Eschan Stone",
	legs="Psycloth Lappas",
	feet="Azimuth Gaiters +1"}
	
sets.midcast.Geomancy = {
	main="Solstice",
	sub="Genbu's Shield",
	range="Dunna",
	--ammmo="",
	head="Azimuth Hood +1",
	neck="Deceiver's Torque",
	ear1="Loquac. Earring",
	ear2="Magnetic Earring",
	body="Bagua Tunic +1",
	hands="Geo. Mitaines +2",
	ring1="Resonance Ring",
	ring2="Kishar Ring",
	back="Lifestream Cape",
	waist="Eschan Stone",
	legs="Psycloth Lappas",
	feet="Azimuth Gaiters +1"}

sets.midcast.Elemental = {
	main="Solstice",
	sub="Genbu's Shield",
	range="Dunna",
	--ammmo="",
	head="Azimuth Hood +1",
	neck="Deceiver's Torque",
	ear1="Loquac. Earring",
	ear2="Magnetic Earring",
	body="Bagua Tunic +1",
	hands="Geo. Mitaines +2",
	ring1="Resonance Ring",
	ring2="Kishar Ring",
	back="Lifestream Cape",
	waist="Eschan Stone",
	legs="Psycloth Lappas",
	feet="Azimuth Gaiters +1"}
	
sets.midcast.Dark = {
	main="Solstice",
	sub="Genbu's Shield",
	range="Dunna",
	--ammmo="",
	head="Azimuth Hood +1",
	neck="Erra Pendant",
	ear1="Loquac. Earring",
	ear2="Magnetic Earring",
	body="Geomancy Tunic +2",
	hands="Geo. Mitaines +2",
	ring1="Resonance Ring",
	ring2="Kishar Ring",
	back="Lifestream Cape",
	waist="Eschan Stone",
	legs="Psycloth Lappas",
	feet="Azimuth Gaiters +1"}
	
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
	if sets.midcast[spell.english] then
		equip(sets.midcast[spell.english])
	elseif spell.skill == "Geomancy" then
		equip(sets.midcast.Geomancy)
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