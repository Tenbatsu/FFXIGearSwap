res = require('resources')

send_command('wait 3; input /lockstyleset 7; input /macro book 5; wait 2; input /macro set 1')
	
CureSpells = T{"Cure", "Cure II", "Cure III", "Cure IV", "Cure IV", "Cura"}
CuragaSpells = T{"Curaga", "Curaga II", "Curaga III"}
DummySongs = T{"Herb Pastoral"}
	
-- Sets
function get_sets()

	sets.precast = {}

	sets.precast.FastCast = {
		main="Kali",
		sub="Culminus",
		ammo="Sapience Orb",
		head={ name="Kaykaus Mitra", augments={'MP+60','MND+10','Mag. Acc.+15',}},
		body="Inyanga Jubbah +2",
		hands="Fili Manchettes +2",
		legs="Kaykaus Tights",
		feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
		neck="Voltsurge Torque",
		waist="Tengu-no-Obi",
		left_ear="Etiolation Earring",
		right_ear="Mendi. Earring",
		left_ring="Kishar Ring",
		right_ring="Inyanga Ring",
		back="Intarabus's Cape",
		}
	sets.precast.CureFastCast = {
		main={ name="Serenity", augments={'MP+50','Enha.mag. skill +10','"Cure" potency +5%','"Cure" spellcasting time -10%',}},
		sub="Enki Strap",
		ammo="Sapience Orb",
		head={ name="Kaykaus Mitra", augments={'MP+60','MND+10','Mag. Acc.+15',}},
		body="Inyanga Jubbah +2",
		hands="Fili Manchettes +2",
		legs="Doyen Pants",
		feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
		neck="Voltsurge Torque",
		waist="Tengu-no-Obi",
		left_ear="Etiolation Earring",
		right_ear="Mendi. Earring",
		left_ring="Kishar Ring",
		right_ring="Inyanga Ring",
		back="Intarabus's Cape",
		}
	sets.precast.SongFastCast = {
		main={ name="Kali", augments={'DMG:+15','CHR+15','Enmity-5',}},
		sub="Culminus",
		range="Gjallarhorn",
		head="Fili Calot +2",
		body="Inyanga Jubbah +2",
		hands="Fili Manchettes +2",
		legs="Doyen Pants",
		feet="Bihu Slippers",
		neck="Voltsurge Torque",
		waist="Tengu-no-Obi",
		left_ear="Etiolation Earring",
		right_ear="Loquac. Earring",
		left_ring="Kishar Ring",
		right_ring="Inyanga Ring",
		back="Intarabus's Cape",
		}
	sets.precast.WeaponSkill = {
		main={ name="Kali", augments={'DMG:+15','CHR+15','Enmity-5',}},
		sub="Culminus",
		range="Gjallarhorn",
		head="Fili Calot +2",
		body="Inyanga Jubbah +2",
		hands="Inyan. Dastanas +2",
		legs="Inyanga Shalwar +2",
		feet="Brioso Slippers +3",
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Bladeborn Earring",
		left_ring="Rajas Ring",
		right_ring="Ilabrat Ring",
		back="Kayapa Cape",
		}

	
	sets.midcast = {}
	
	sets.midcast.CureSpells = {
		main={ name="Serenity", augments={'MP+50','Enha.mag. skill +10','"Cure" potency +5%','"Cure" spellcasting time -10%',}},
		sub="Enki Strap",
		ammo="White Tathlum",
		head={ name="Kaykaus Mitra", augments={'MP+60','MND+10','Mag. Acc.+15',}},
		body={ name="Kaykaus Bliaut", augments={'MP+60','Spell interruption rate down +10%','"Cure" spellcasting time -5%',}},
		hands="Fili Manchettes +2",
		legs="Kaykaus Tights",
		feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
		neck="Sanctity Necklace",
		waist="Tengu-no-Obi",
		left_ear="Etiolation Earring",
		right_ear="Mendi. Earring",
		left_ring="Kishar Ring",
		right_ring="Inyanga Ring",
		back="Intarabus's Cape",
		}
	sets.midcast.CuragaSpells = {
		main={ name="Serenity", augments={'MP+50','Enha.mag. skill +10','"Cure" potency +5%','"Cure" spellcasting time -10%',}},
		sub="Enki Strap",
		ammo="White Tathlum",
		head={ name="Kaykaus Mitra", augments={'MP+60','MND+10','Mag. Acc.+15',}},
		body={ name="Kaykaus Bliaut", augments={'MP+60','Spell interruption rate down +10%','"Cure" spellcasting time -5%',}},
		hands="Fili Manchettes +2",
		legs="Kaykaus Tights",
		feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
		neck="Sanctity Necklace",
		waist="Tengu-no-Obi",
		left_ear="Etiolation Earring",
		right_ear="Mendi. Earring",
		left_ring="Kishar Ring",
		right_ring="Inyanga Ring",
		back="Intarabus's Cape",
		}
	sets.midcast.Songs = {
		range="Gjallarhorn",
		head="Fili Calot +2",
		body="Fili Hongreline +2",
		hands="Fili Manchettes +2",
		legs="Inyanga Shalwar +2",
		feet="Brioso Slippers +3",
		neck="Mnbw. Whistle +1",
		waist="Tengu-no-Obi",
		left_ear="Etiolation Earring",
		right_ear="Loquac. Earring",
		left_ring="Inyanga Ring",
		right_ring="Kishar Ring",
		back="Intarabus's Cape",
		}
	sets.midcast.DummySongs = {
		range="Terpander",
		head="Fili Calot +2",
		body="Fili Hongreline +2",
		hands="Fili Manchettes +2",
		legs="Inyanga Shalwar +2",
		feet="Brioso Slippers +3",
		neck="Mnbw. Whistle +1",
		waist="Tengu-no-Obi",
		left_ear="Etiolation Earring",
		right_ear="Loquac. Earring",
		left_ring="Inyanga Ring",
		right_ring="Kishar Ring",
		back="Intarabus's Cape",
		}
	
	sets.aftercast = {}
	
	sets.aftercast.Idle = {
		main={ name="Kali", augments={'DMG:+15','CHR+15','Enmity-5',}},
		sub="Culminus",
		range="Gjallarhorn",
		head="Inyanga Tiara +2",
		body="Inyanga Jubbah +2",
		hands="Inyan. Dastanas +2",
		legs="Inyanga Shalwar +2",
		feet="Fili Cothurnes +2",
		neck="Mnbw. Whistle +1",
		waist="Tengu-no-Obi",
		left_ear="Etiolation Earring",
		right_ear="Mendi. Earring",
		left_ring="Inyanga Ring",
		right_ring="Kishar Ring",
		back="Kumbira Cape",
		}
	sets.aftercast.Engaged = {
		main={ name="Kali", augments={'DMG:+15','CHR+15','Enmity-5',}},
		sub="Culminus",
		range="Gjallarhorn",
		head="Inyanga Tiara +2",
		body="Inyanga Jubbah +2",
		hands="Inyan. Dastanas +2",
		legs="Inyanga Shalwar +2",
		feet="Fili Cothurnes +2",
		neck="Mnbw. Whistle +1",
		waist="Tengu-no-Obi",
		left_ear="Etiolation Earring",
		right_ear="Mendi. Earring",
		left_ring="Inyanga Ring",
		right_ring="Kishar Ring",
		back="Kumbira Cape",
		}
	sets.aftercast.Resting = {}
	sets.aftercast.Reive = {
		main={ name="Kali", augments={'DMG:+15','CHR+15','Enmity-5',}},
		sub="Culminus",
		range="Gjallarhorn",
		head="Inyanga Tiara +2",
		body="Inyanga Jubbah +2",
		hands="Inyan. Dastanas +2",
		legs="Inyanga Shalwar +2",
		feet="Fili Cothurnes +2",
		neck="Adoulin's Refuge +1",
		waist="Tengu-no-Obi",
		left_ear="Etiolation Earring",
		right_ear="Mendi. Earring",
		left_ring="Inyanga Ring",
		right_ring="Kishar Ring",
		back="Kumbira Cape",
		}

end --End get_sets()



--Mechanics
function precast(spell) --Equip Items based on Abilities or Spells
	--windower.add_to_chat(123, "Casting: " .. spell.english)
	--windower.add_to_chat(123, "It's of Type " .. spell.type)
	if CureSpells:contains(spell.english) then
		--windower.add_to_chat(123, "Cure Precast")
		equip(sets.precast.CureFastCast)
	elseif CuragaSpells:contains(spell.english) then
		equip(sets.precast.CureFastCast)
	elseif (spell.type == 'WhiteMagic' or spell.type == 'BlackMagic') then
		--windower.add_to_chat(123,  tostring("White or Black Magic"))
		equip(sets.precast.FastCast)
	elseif (spell.type == 'BardSong') then
		equip(sets.precast.SongFastCast)
	elseif sets.precast[spell.english] then
		equip(sets.precast[spell.english])
	elseif spell.type == "WeaponSkill" then
		equip(sets.precast.WeaponSkill)
	end --end if
end --end function precast


function midcast(spell)
	if sets.midcast[spell.english] then
		equip(sets.midcast[spell.english])
	elseif CureSpells:contains(spell.english) then
		--windower.add_to_chat(123, "Cure Midcast")
		equip(sets.midcast.CureSpells)
	elseif CuragaSpells[spell.english] then
		equip(sets.midcast.CuragaSpells)
	elseif spell.type == 'BardSong' then
		--windower.add_to_chat(123, "Mid Casting: " .. spell.english)
		--windower.add_to_chat(123, "String: " .. DummySongs[1])
		--windower.add_to_chat(123,  tostring(DummySongs[spell.english]))
		if DummySongs:contains(spell.english) then
			--windower.add_to_chat(123,  "Equipping dummy midcast")
			equip(sets.midcast.DummySongs)
		else
			equip(sets.midcast.Songs)
		end 
	else
		
	end --end if
end --end function midcast

function aftercast(spell)
    if player.status =='Engaged' then
        equip(sets.aftercast.Engaged)
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
		equip(sets.aftercast.Resting)
    elseif new == 'Engaged' then
        equip(sets.aftercast.Engaged)
    end
end --End Function status_change(new,old)

function buff_change(new, bool)
	if new == 'Reive Mark' and bool then
		equip(sets.aftercast.Reive)
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