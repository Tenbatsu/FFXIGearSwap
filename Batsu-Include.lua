res = require('resources')

function init_get_sets(weapon_lock)

    include('organizer-lib')
    include('Batsu-Gear.lua')

    send_command('bind f8 gs c toggle weaponlock')
    send_command('bind f9 gs c toggle pdt')
    send_command('bind f10 gs c toggle mdt')
    send_command('bind ^f9 gs c toggle combat set')
    send_command('bind ^f10 gs c toggle idle set')

    combat_sets = {'DPS', 'midacc', 'highacc', 'defensive' }
    combat_index = 1

    idle_sets = { 'regen', 'DT' }
    idle_index = 1

    is_pdt = 0
    is_mdt = 0

    weapon_locked = weapon_lock

    spells = {}
    spells.cures = S{ "Cure", "Cure II", "Cure III", "Cure IV", "Cure V", "Cure VI" }
    spells.curagas = S{ "Curaga", "Curaga II", "Curaga III", "Curaga IV", "Curaga V", "Cura", "Cura II", "Cura III" }
    spells.regens = S{ "Regen", "Regen II", "Regen III", "Regen IV", "Regen V" }
	spells.waltzes = S{"Curing Waltz","Curing Waltz II", "Curing Waltz III", "Curing Waltz IV",
						"Curing Waltz V", "Divine Waltz", "Healing Waltz" }

    -- Grab the gear
    init_gear()

    -- ALL JOBS, ALL CHARACTERS
    sets.reive = { neck="Adoulin's Refuge +1" }
    sets.adoulin = { body="Councilor's Garb" }
	sets.capacity = { back="Aptitude Mantle" }

    sets.idle = {
        ammo="Iron Gobbet",
        head="",
        neck="Asperity Necklace",
        ear1="Steelflash Earring",
        ear2="Bladeborn Earring",
        body="",
        hands="",
        ring1="Spiral Ring",
        ring2="Epona's Ring",
        back="",
        waist="Black Belt",
        legs="",
        feet=""
    }

    sets.idle.regen = set_combine(sets.idle, {})
    sets.idle.DT = set_combine(sets.idle, {})
    sets.idle.PDT = set_combine(sets.idle.DT, {})
    sets.idle.MDT = set_combine(sets.idle.DT, {})
    sets.resting = set_combine(sets.idle, {})

    sets.JA = {}

    sets.precast = {}
    sets.precast.FC = {}

    sets.midcast = {}

    sets.combat = {
        ammo="",
        head="",
        neck="",
        ear1="",
        ear2="",
        body="",
        hands="",
        ring1="",
        ring2="",
        back="",
        waist="",
        legs="",
        feet=""
    }

    sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {})
    sets.combat.highacc = set_combine(sets.combat.midacc, {})
    sets.combat.defensive = set_combine(sets.combat, {})


    sets.snapshot = {}
    sets.ranged = {}
    sets.ranged.DPS = set_combine(sets.ranged, {})
    sets.ranged.midacc = set_combine(sets.ranged, {})
    sets.ranged.highacc = set_combine(sets.ranged, {})
    sets.ranged.defensive = set_combine(sets.ranged, {})


    -- WS sets

    sets.WS = {
        ammo="",
        head="",
        neck="Fotia Gorget",
        ear1="",
        ear2="",
        body="",
        hands="",
        ring1="",
        ring2="",
        back="",
        waist="Fotia Belt",
        legs="",
        feet=""
    }

    send_command('@input /echo F9 toggles PDT on and off')
    send_command('@input /echo F10 toggles MDT on and off')
    send_command('@input /echo Ctrl+F9 toggles accuracy/defensive options')
    send_command('@input /echo Ctrl+F10 toggles idle set options')

    if weapon_locked == 0 then
        enable('main','sub')
        send_command('@input /echo Weapon unlocked by default')
    else
        disable('main','sub')
        send_command('@input /echo Weapon locked by default')
    end
end

function base_precast(spell)
    if player.equipment.head == 'Twilight Helm' and player.equipment.body == 'Twilight Mail' then disable('head','body') end

    if sets.JA[spell.name] then
        equip(sets.JA[spell.name])
    elseif spell.type == 'WeaponSkill' then
        if sets.WS[spell.name] then
            if sets.WS[spell.name][combat_sets[combat_index]] then
                equip(sets.WS[spell.name][combat_sets[combat_index]])
            else
                equip(sets.WS[spell.name])
            end
        else
            equip(sets.WS)
        end
    elseif spell.action_type == 'Magic' then
        if sets.precast[spell.name] then
            equip(sets.precast[spell.name])
        elseif sets.precast['CureSpell'] and spells.cures:contains(spell.name) then
            equip(sets.precast['CureSpell'])
        elseif sets.precast['CuragaSpell'] and spells.curagas:contains(spell.name) then
            equip(sets.precast['CuragaSpell'])
        elseif sets.precast.FC[spell.skill] then
            equip(sets.precast.FC[spell.skill])
        else
            equip(sets.precast.FC)
        end
    elseif spell.action_type == 'Ranged Attack' then
        equip(sets.snapshot)
    end
end

function base_midcast(spell)
    if spell.action_type == 'Ranged Attack' then
        equip(sets.ranged[combat_sets[combat_index]])
    else
        if sets.midcast['CureSpell'] and spells.cures:contains(spell.name) then
            equip(sets.midcast['CureSpell'])
        elseif sets.midcast['CuragaSpell'] and spells.curagas:contains(spell.name) then
            equip(sets.midcast['CuragaSpell'])
        elseif sets.midcast['RegenSpell'] and spells.regens:contains(spell.name) then
             equip(sets.midcast['RegenSpell'])
        elseif sets.midcast[spell.name] then
            equip(sets.midcast[spell.name])
        elseif sets.midcast[spell.skill] then
            equip(sets.midcast[spell.skill])
        end
    end
end

function base_aftercast(spell)
    if is_pdt == 1 then
        equip(sets.idle.PDT)
    elseif is_mdt == 1 then
        equip(sets.idle.MDT)
    else
        if player.status =='Engaged' then
            equip(sets.combat[combat_sets[combat_index]])
        else
            equip(sets.idle[idle_sets[idle_index]])
        end
    end
end

function base_pet_midcast(spell)
end

function base_pet_aftercast(spell)
end


function status_change(new,old)
    if is_pdt == 1 then
        equip(sets.idle.PDT)
    elseif is_mdt == 1 then
        equip(sets.idle.MDT)
    else
        if new == 'Idle' then
            equip(sets.idle[idle_sets[idle_index]])
        elseif new == 'Resting' then
            equip(sets.resting)
        elseif new == 'Engaged' then
            equip(sets.combat[combat_sets[combat_index]])
        end
    end
end

function base_self_command(command)
    if command == 'toggle combat set' then
        if combat_index == 1 then
            combat_index = 2
            send_command('@input /echo Moderate accuracy')
        elseif combat_index == 2 then
            combat_index = 3
            send_command('@input /echo High accuracy')
        elseif combat_index == 3 then
            combat_index = 4
            send_command('@input /echo Defensive')
        elseif combat_index == 4 then
            combat_index = 1
            send_command('@input /echo DPS')
        end
    elseif command == 'toggle idle set' then
        if idle_index == 1 then
            idle_index = 2
            send_command('@input /echo Idle DT')
        elseif idle_index == 2 then
            idle_index = 1
            send_command('@input /echo Idle regen')
        end
    elseif command == 'toggle pdt' then
        if is_pdt == 1 then
            is_pdt = 0
            send_command('@input /echo PDT Off')
        elseif is_pdt == 0 then
            is_pdt = 1
            is_mdt = 0
            send_command('@input /echo PDT On')
        end
    elseif command == 'toggle mdt' then
        if is_mdt == 1 then
            is_mdt = 0
            send_command('@input /echo MDT Off')
        elseif is_mdt == 0 then
            is_mdt = 1
            is_pdt = 0
            send_command('@input /echo MDT On')
        end
    elseif command == 'toggle weaponlock' then
        if weapon_locked == 0 then
            weapon_locked = 1
            disable('main','sub')
            send_command('@input /echo Weapon locked')
        else
            weapon_locked = 0
            enable('main','sub')
            send_command('@input /echo Weapon unlocked')
        end
    end
    aftercast()
end

function precast(spell)
    if job_precast then
        job_precast(spell)
    else
        base_precast(spell)
    end
end

function midcast(spell)
    if job_midcast then
        job_midcast(spell)
    else
        base_midcast(spell)
    end
end

function aftercast(spell)
    if job_aftercast then
        job_aftercast(spell)
    else
        base_aftercast(spell)
    end
end

function pet_midcast(spell)
    if job_pet_midcast then
        job_pet_midcast(spell)
    else
        base_pet_midcast(spell)
    end
end

function pet_aftercast(spell)
    if job_pet_aftercast then
        job_pet_aftercast(spell)
    else
        base_pet_aftercast(spell)
    end
end


function self_command(command)
    if job_self_command then
        job_self_command(command)
    else
        base_self_command(command)
    end
end

function buff_change(new, bool)
    if new == 'Reive Mark' and bool then
        equip(sets.reive)
        disable('neck')
    elseif new == 'Reive Mark' and not bool then
        enable('neck')
        aftercast()
    end
end