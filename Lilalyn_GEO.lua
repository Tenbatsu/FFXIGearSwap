--Gearswap Lua File for GEO

function get_sets()

--Aftercast sets
sets.aftercast = {}
--Let's stack some random movement speed, refresh and maybe DT?
sets.aftercast.Idle = {
	--main="",
	--sub="",
	--ammmo="",
	--range="",
	head="",
	body="",
	legs="",
	hands="",
	feet="",
	ear1="",
	ear2="",
	ring1="",
	ring2="",
	waist=""}
		
--Get some MP/HP back
sets.aftercast.hHP = {}
sets.aftercast.hMP = {}
		
--Stabbin Stuff?
sets.aftercast.Engaged = {
	--main="",
	--sub="",
	--ammmo="",
	--range="",
	head="",
	body="",
	legs="",
	hands="",
	feet="",
	ear1="",
	ear2="",
	ring1="",
	ring2="",
	waist=""}

-- Precast Sets
sets.precast = {}
-- Fast cast sets for spells
sets.precast.FC = {
    --main="",
	--sub="",
	--ammmo="",
	--range="",
	head="",
	body="",
	legs="",
	hands="",
	feet="",
	ear1="",
	ear2="",
	ring1="",
	ring2="",
	waist=""}
	
sets.precast.WS = {
	--main="",
	--sub="",
	--ammmo="",
	--range="",
	head="",
	body="",
	legs="",
	hands="",
	feet="",
	ear1="",
	ear2="",
	ring1="",
	ring2="",
	waist=""}

    -- Midcast Sets
sets.midcast = {}
	
sets.midcast.Enhancing = {
	--main="",
	--sub="",
	--ammmo="",
	--range="",
	head="",
	body="",
	legs="",
	hands="",
	feet="",
	ear1="",
	ear2="",
	ring1="",
	ring2="",
	waist=""}
	
sets.midcast.Enfeebling = {
	--main="",
	--sub="",
	--ammmo="",
	--range="",
	head="",
	body="",
	legs="",
	hands="",
	feet="",
	ear1="",
	ear2="",
	ring1="",
	ring2="",
	waist=""}

sets.midcast.Cure = {
	--main="",
	--sub="",
	--ammmo="",
	--range="",
	head="",
	body="",
	legs="",
	hands="",
	feet="",
	ear1="",
	ear2="",
	ring1="",
	ring2="",
	waist=""}
	
sets.midcast.Geomancy = {
	main="",
	sub="",
	--ammmo="",
	range="",
	head="",
	body="",
	legs="",
	hands="",
	feet="",
	ear1="",
	ear2="",
	ring1="",
	ring2="",
	waist=""}
sets.midcast.Elemental = {
	--main="",
	--sub="",
	--ammmo="",
	--range="",
	head="",
	body="",
	legs="",
	hands="",
	feet="",
	ear1="",
	ear2="",
	ring1="",
	ring2="",
	waist=""}
	
sets.midcast.Dark = {
	--main="",
	--sub="",
	--ammmo="",
	--range="",
	head="",
	body="",
	legs="",
	hands="",
	feet="",
	ear1="",
	ear2="",
	ring1="",
	ring2="",
	waist=""}
	
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