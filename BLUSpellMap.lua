-- This file is intended to serve as a mapping of types of Blue Magic Spells
-- The intent behind this is to load the table once and have it stored in memory as a global variable that can be accessed with constant time lookup.
-- The Set function populates each subtype of Blue Magic and generates a sparse table for the subtype that has the spell names as indices and a boolean value of true
-- Subtable lookup is now a constant time operation, with total time being linear to number of types of spells.

function Set (list)
      local set = {}
      for _, l in ipairs(list) do set[l] = true end
      return set
end

-- Base Table Definition
Blue = {}

--Sub Table Definitions
--Physical
Blue["Curing"] = Set{"Healing Breeze", "Exuviation", "Magic Fruit",
	"Plenilune Embrace", "Pollen", "White Wind", "Wild Carrot",
	"Restoral"}	
Blue["CuringHP"] = Set{"White Wind"}

Blue["Buffs"] = Set{"Animating Wail", "Amplification", "Barrier Tusk",
	"Battery Charge", "Cocoon", "Diamondhide", "Fantod",
	"Feather Barrier", "Harden Shell", "Magic Barrier", "Memento Mori",
	"Metallic Body", "Occultation", "Orcish Counterstance",
	"Pyric Bulwark", "Reactor Cool", "Refueling", "Regeneration",
	"Saline Coat", "Triumphant Roar", "Warm Up", "Winds of Promyvion", 
	"Zephyr Mantle"}
	
Blue["Debuffs"] = Set{"Absolute Terror", "Auroral Drape"}

Blue["Breath"] = Set{"Bad Breath", "Frost Breath", "Heat Breath", "Hecatomb Wave",
	"Flying Hip Press","Magnetite Cloud", "Poison Breath", 
	"Radiant Breath", "Thunder Breath", "Vapor Spray", "Wind Breath"}	
Blue["Physical"] = Set{"Bilgestorm", "Final Sting"}
Blue["PhysicalDart"] = Set{"Glutinous Dart"}
Blue["PDex"] = Set{"Amorphic Spikes", "Barbed Crescent", "Claw Cyclone",
	"Hysteric Barrage", "Seedspray", "Sickle Slash", "Vanity Dive"}	
Blue["PDexInt"] = Set{"Terror Touch"}
Blue["PStr"] = Set{"Battle Dance", "Bloodrake", "Death Scissors",
	"Dimensional Death", "Empty Thrash", "Heavy Strike", "Quadrastrike",
	"Spinal Cleave", "Uppercut", "Vertical Cleave"}	
Blue["PStrDex"] = Set{"Asuran Claws", "Disseverment", "Foot Kick", "Frenetic Rip",
	"Goblin Rush", "Smite of Rage", "Sinker Drill"}
Blue["PStrVit"] = Set{"Cannonball", "Delta Thrust", "Quad. Continuum", "Tail Slap"}
Blue["PStrMnd"] = Set{"Frypan", "Ram Charge", "Screwdriver", "Tourbillion",
	"Whirl of Rage"}	
Blue["PStrInt"] = Set{"Head Butt", "Mandibular Bite"}
Blue["PStrAgi"] = Set{"Pinecone Bomb"}
Blue["PAgi"] = Set{"Benthic Typhoon", "Feather Storm", "Helldive", "Hydro Shot", 
	"Jet Stream", "Spiral Spin", "Sudden Lunge", "Wild Oats"}
Blue["PVit"] = Set{"Body Slam", "Grand Slam", "Power Attack", "Sprout Smack",
	"Sub-zero Smash"}	
Blue["PChr"] = Set{"Bludgeon"}

--Magical
Blue["MMnd"] = Set{"Acrid Stream", "Magic Hammer", "Mind Blast", "Regurgitation"}
Blue["MInt"] = Set{"Blastbomb", "Bomb Toss", "Corrosive Ooze", "Cursed Sphere", 
	"Death Ray", "Entomb", "Firespit", "Ice Break", "Sandspin", 
	"Subduction"}
Blue["MIntMnd"] = Set{"Blitztrahl", "Maelstrom", "Thunderbolt", "Water Bomb"}
Blue["MStr"] = Set{"Blazing Bound", "Leafstorm"}
Blue["MDex"] = Set{"Charged Whisker"}
Blue["MChr"] = Set{"Mysterious Light"}
Blue["MVit"] = Set{"Thermal Pulse"}
Blue["MStrDex"] = Set{"Gates of Hades"}
Blue["MagicalDark"] = Set{"Awful Eye", "Chaotic Eye", "Cimicine Discharge",
	"Cold Wave", "Dark Orb", "Dream Flower", "Enervation",
	"Everyone's Grudge", "Eyes On Me", "Filamented Hold",
	"Frightful Roar", "Infrasonics", "Light of Penance", "Lowing", 
	"Mortal Ray", "Palling Salvo", "Venom Shell", "Sandspray",
	"Sheep Song", "Soporific", "Tenebral Crush", "Yawn"}
	
Blue["BlueSkill"] = Set{"Blood Drain", "Atra. Libations", "Blood Saber", "Digest",
	"MP Drainkiss"}
	
--Set up our types of spells so we don't have to mess with recursion
spellTypes ={"Curing", "CuringHP", "Buffs", "Debuffs", "Breath", "Physical",
	"PhysicalDart", "PDex", "PDexInt", "PStr", "PStrDex", "PStrVit", "PStrMnd",
	"PStrInt", "PStrAgi", "PAgi", "PVit", "PChr", "MMnd", "MInt", "MIntMnd", 
	"MStr", "MDex", "MChr", "MVit", "MStrDex", "MagicalDark", "BlueSkill"}	
	
function get_BlueType(SpellName) --Check our table indices.
	for index, SpellType in ipairs(spellTypes) do
		--windower.add_to_chat(123, SpellType) --Check to see what type we sent have
		 if Blue[SpellType][SpellName] then
			--windower.add_to_chat(123, SpellType) --If it's true then send back the spell type 
			return SpellType
		 else
		 end
	end
	--windower.add_to_chat(123, "You invented a new BLU spell!")
end --End Function getBlueType()

