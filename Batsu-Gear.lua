function init_gear()
    gear = {}

    -- All jobs pieces
    gear.neck = {}
    gear.neck.cure_potency = { name="Phalaina Locket" }
    gear.neck.dt = { name="Twilight Torque" }
    gear.neck.enmity = { name="Invidia Torque" }
    gear.neck.idle = { name="Wiglen Gorget" }
    gear.neck.mab = { name="Eddy Necklace" }
    gear.neck.regen = { name="Wiglen Gorget" }
    gear.neck.tp = { name="Asperity Necklace" }
    gear.neck.ws = { name="Fotia Gorget" }

    gear.ears = {}
    gear.ears.da_left = { name="Bladeborn Earring" }
    gear.ears.da_right = { name="Steelflash Earring" }
    gear.ears.dw_left = { name="Dudgeon Earring" }
    gear.ears.dw_right = { name="Heartseeker Earring" }
    gear.ears.fc_right = { name="Loquac. Earring" }
    gear.ears.idle_left = { name="Hearty Earring" }
    gear.ears.idle_right = { name="Ethereal Earring" }
    gear.ears.macc_mnd = { name="Lifestorm Earring" }
    gear.ears.macc_int = { name="Psystorm Earring" }
    gear.ears.ws = { name="Moonshade Earring" }
    gear.ears.mab_left = { name="Novio Earring" }
    gear.ears.mab_right = { name="Hecate's Earring" }

    gear.ring = {}
    gear.ring.MDTRing = { name="Dark Ring", augments={'Magic dmg. taken -3%', 'Phys. dmg. taken -5%'}}
    gear.ring.BDTRing = { name="Dark Ring", augments={'Phys dmg. taken -5%', 'Breath dmg. taken -3%'}}
    gear.ring.dt_left = { name="Defending Ring" }
    gear.ring.dt_right = { name="Vocane Ring +1" }
    gear.ring.regen_left = { name="Sheltered Ring" }
    gear.ring.regen_right = { name="Paguroidea Ring" }

    gear.waist = {}
    gear.waist.hp = { name="Ocean Sash" }
    gear.waist.ws = { name="Fotia Belt" }
    gear.waist.obi = { name="Hachirin-no-obi" }
    gear.waist.fc = { name="Witful Belt" }
    gear.waist.pdt = { name="Flume Belt +1" }


    -- JSE Capes
    gear.jsecapes = {}
    gear.jsecapes.blu = { name="Cornflower Cape", augments={'MP+27', 'DEX+1', 'Accuracy+5', 'Blue magic skill +10'}}

    -- Skirmish pieces
    gear.hagondes = {}
    gear.hagondes.body = { name="Hagondes Coat +1" }

    -- Alluvion Skirmish pieces
    gear.yorium = {}
    gear.yorium.head = { name="Yorium Barbuta" }
    gear.yorium.body = { name="Yorium Cuirass" }
    gear.yorium.hands = { name="Yorium Gauntlets" }
    gear.yorium.hands.idle = { name="Yorium Gauntlets", augments={'Enmity+3', 'Phys. dmg. taken -2%'}}
    gear.yorium.legs = { name="Yorium Cuisses"}
    gear.yorium.legs.idle = { name="Yorium Cuisses"}
    gear.yorium.feet = {}

    gear.acro = {}
    gear.acro.head = { name="Acro Helm" }
    gear.acro.head.tp = { name="Acro Helm", augments={'STR+3 VIT+3', 'Accuracy+15 Attack+15', '"Store TP"+2'}}
    gear.acro.body = {}
    gear.acro.body.tp = { name="Acro Surcoat", augments={'Accuracy+20 Attack+20','"Store TP"+6','STR+6 AGI+6'}}
    gear.acro.hands = {}
    gear.acro.hands.tp = { name="Acro Gauntlets", augments={'HP+19', 'Accuracy+15 Attack+15', '"Store TP"+3'}}
    gear.acro.legs = { name="Acro Breeches" }
    gear.acro.legs.tp = { name="Acro Breeches", augments={'VIT+10', 'Attack+22', '"Dbl. Atk."+2'}}
    gear.acro.feet = { name="Acro Leggings" }
    gear.acro.feet.tp = { name="Acro Leggings", augments={'Accuracy+20', '"Store TP"+5', 'Sklchn. dmg. +3%'}}

    gear.taeon = {}
    gear.taeon.head = {}
    gear.taeon.head.tp = { name="Taeon Chapeau", augments={'Accuracy+15 Attack+15', 'Triple Atk.+2', 'Weapon skill damage +1%'}}
    gear.taeon.body = {}
    gear.taeon.body.tp = { name="Taeon Tabard", augments={'STR+3 DEX+3', 'Accuracy+19 Attack+19', '"Dual Wield"+5'}}
    gear.taeon.hands = { name="Taeon Gloves"}
    gear.taeon.hands.tp = { name="Taeon Gloves", augments={'DEX+10', 'Accuracy+18 Attack+18', '"Dual Wield"+4'}}
    gear.taeon.legs = {}
    gear.taeon.feet = { name="Taeon Boots"}
    gear.taeon.legs.tp = { name="Taeon Tights", augments={'Accuracy+20 Attack+20','"Triple Atk."+2','Crit. hit damage +3%' }}
    gear.taeon.feet.tp = { name="Taeon Boots", augments={'Accuracy+19 Attack+19', '"Dual Wield"+5'}}

    gear.helios = {}
    gear.helios.head = {}
    gear.helios.head.MAcc = { name="Helios Band", augments={'Mag. Acc.+25','Magic crit. hit rate +4'}}
    gear.helios.body = {}
    gear.helios.body.MAB = { name="Helios Jacket", augments={'Mag. Acc.+11 "Mag.Atk.Bns."+11','Magic crit. hit rate +3'}}
    gear.helios.hands = {}
    gear.helios.hands.MAB = { name="Helios Gloves", augments={'"Mag.Atk.Bns."+24','"Drain" and "Aspir" potency +10'}}
    gear.helios.legs = {}
    gear.helios.legs.MAB = { name="Helios Spats", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','Magic crit. hit rate +5','Magic burst mdg.+6%',}}
    gear.helios.feet = {}
    gear.helios.feet.MAB = { name="Helios Boots", augments={'"Mag.Atk.Bns."+24','Magic crit. hit rate +7'}}

    gear.telchine = {}
    gear.telchine.head = { name="Telchine Cap" }
    gear.telchine.body = { name="Telchine Chas." }
    gear.telchine.body.cure_cast = { name="Telchine Chas.", augments={'"Cure" spellcasting time -5%'}}
    gear.telchine.hands = { name="Telchine Gloves" }
    gear.telchine.hands.cure_potency = { name="Telchine Gloves", augments={'"Cure" potency +3%'}}
    gear.telchine.legs = { name="Telchine Braconi" }
    gear.telchine.feet = { name="Telchine Pigaches" }
    gear.telchine.feet.cure_cast = { name="Telchine Pigaches", augments={'"Cure" spellcasting time -6%'}}

    -- Weapons
    gear.weapons = {}
    gear.weapons.mage = {}
    gear.weapons.BLM = {}
    gear.weapons.BLM.Nuke = { name="Keraunos", augments={'"Mag.Atk.Bns."+17','"Fast Cast"+3','INT+9 MND+9'}}
    gear.weapons.mage.macc = { name="Lehbrailg +2" }