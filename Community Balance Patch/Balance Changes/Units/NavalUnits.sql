-- NAVAL UNITS

	UPDATE Units SET PrereqTech = 'TECH_COMPASS' WHERE Type = 'UNIT_KOREAN_TURTLE_SHIP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_GUILDS' WHERE Type = 'UNIT_VENETIAN_GALLEASS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_OPTICS' WHERE Type = 'UNIT_BYZANTINE_DROMON' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Units SET ObsoleteTech = 'TECH_INDUSTRIALIZATION' WHERE Type = 'UNIT_KOREAN_TURTLE_SHIP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_DYNAMITE' WHERE Type = 'UNIT_VENETIAN_GALLEASS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_DYNAMITE' WHERE Type = 'UNIT_FRIGATE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_GUILDS' WHERE Type = 'UNIT_BYZANTINE_DROMON' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Units SET Moves = '6' WHERE Type = 'UNIT_MISSILE_CRUISER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET Moves = '3' WHERE Type = 'UNIT_BYZANTINE_DROMON' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET Moves = '3' WHERE Type = 'UNIT_GALLEASS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET Moves = '4' WHERE Type = 'UNIT_FRIGATE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET Moves = '4' WHERE Type = 'UNIT_ENGLISH_SHIPOFTHELINE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	DELETE FROM Unit_AITypes WHERE UnitType = 'UNIT_GALLEASS' AND UnitAIType = 'UNITAI_EXPLORE_SEA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Dromon (new Classical Unit)
	INSERT INTO UnitClasses (Type, Description, DefaultUnit) SELECT 'UNITCLASS_BYZANTINE_DROMON', 'TXT_KEY_UNIT_BYZANTINE_DROMON', 'UNIT_BYZANTINE_DROMON' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

	DELETE FROM Unit_AITypes WHERE UnitType = 'UNIT_BYZANTINE_DROMON' AND UnitAIType = 'UNITAI_EXPLORE_SEA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET Class = 'UNITCLASS_BYZANTINE_DROMON' WHERE Type = 'UNIT_BYZANTINE_DROMON' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	DELETE FROM Unit_FreePromotions WHERE UnitType = 'UNIT_BYZANTINE_DROMON' AND PromotionType = 'PROMOTION_NAVAL_BONUS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Unit_ClassUpgrades SET UnitClassType = 'UNITCLASS_CRUISER' WHERE UnitType = 'UNIT_FRIGATE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	
	

	-- Flavors -- Naval
	UPDATE Unit_Flavors SET Flavor = '8' WHERE UnitType = 'UNIT_TRIREME' AND FlavorType = 'FLAVOR_NAVAL';
	UPDATE Unit_Flavors SET Flavor = '15' WHERE UnitType = 'UNIT_CARTHAGINIAN_QUINQUEREME' AND FlavorType = 'FLAVOR_NAVAL';
	UPDATE Unit_Flavors SET Flavor = '15' WHERE UnitType = 'UNIT_CARAVEL' AND FlavorType = 'FLAVOR_NAVAL';
	UPDATE Unit_Flavors SET Flavor = '20' WHERE UnitType = 'UNIT_PORTUGUESE_NAU' AND FlavorType = 'FLAVOR_NAVAL';
	UPDATE Unit_Flavors SET Flavor = '20' WHERE UnitType = 'UNIT_KOREAN_TURTLE_SHIP' AND FlavorType = 'FLAVOR_NAVAL';
	UPDATE Unit_Flavors SET Flavor = '20' WHERE UnitType = 'UNIT_PRIVATEER' AND FlavorType = 'FLAVOR_NAVAL';
	UPDATE Unit_Flavors SET Flavor = '25' WHERE UnitType = 'UNIT_DUTCH_SEA_BEGGAR' AND FlavorType = 'FLAVOR_NAVAL';
	UPDATE Unit_Flavors SET Flavor = '25' WHERE UnitType = 'UNIT_IRONCLAD' AND FlavorType = 'FLAVOR_NAVAL';
	UPDATE Unit_Flavors SET Flavor = '40' WHERE UnitType = 'UNIT_DESTROYER' AND FlavorType = 'FLAVOR_NAVAL';
	UPDATE Unit_Flavors SET Flavor = '8' WHERE UnitType = 'UNIT_BYZANTINE_DROMON' AND FlavorType = 'FLAVOR_NAVAL';
	UPDATE Unit_Flavors SET Flavor = '15' WHERE UnitType = 'UNIT_GALLEASS' AND FlavorType = 'FLAVOR_NAVAL';
	UPDATE Unit_Flavors SET Flavor = '30' WHERE UnitType = 'UNIT_FRIGATE' AND FlavorType = 'FLAVOR_NAVAL';
	UPDATE Unit_Flavors SET Flavor = '40' WHERE UnitType = 'UNIT_ENGLISH_SHIPOFTHELINE' AND FlavorType = 'FLAVOR_NAVAL';
	UPDATE Unit_Flavors SET Flavor = '40' WHERE UnitType = 'UNIT_CRUISER' AND FlavorType = 'FLAVOR_NAVAL';
	UPDATE Unit_Flavors SET Flavor = '50' WHERE UnitType = 'UNIT_BATTLESHIP' AND FlavorType = 'FLAVOR_NAVAL';
	UPDATE Unit_Flavors SET Flavor = '50' WHERE UnitType = 'UNIT_MISSILE_CRUISER' AND FlavorType = 'FLAVOR_NAVAL';
	UPDATE Unit_Flavors SET Flavor = '10' WHERE UnitType = 'UNIT_TRIREME' AND FlavorType = 'FLAVOR_NAVAL_RECON';
	UPDATE Unit_Flavors SET Flavor = '20' WHERE UnitType = 'UNIT_CARTHAGINIAN_QUINQUEREME' AND FlavorType = 'FLAVOR_NAVAL_RECON';
	UPDATE Unit_Flavors SET Flavor = '25' WHERE UnitType = 'UNIT_CARAVEL' AND FlavorType = 'FLAVOR_NAVAL_RECON';
	UPDATE Unit_Flavors SET Flavor = '30' WHERE UnitType = 'UNIT_PORTUGUESE_NAU' AND FlavorType = 'FLAVOR_NAVAL_RECON';
	UPDATE Unit_Flavors SET Flavor = '25' WHERE UnitType = 'UNIT_PRIVATEER' AND FlavorType = 'FLAVOR_NAVAL_RECON';
	UPDATE Unit_Flavors SET Flavor = '30' WHERE UnitType = 'UNIT_DUTCH_SEA_BEGGAR' AND FlavorType = 'FLAVOR_NAVAL_RECON';
	UPDATE Unit_Flavors SET Flavor = '40' WHERE UnitType = 'UNIT_DESTROYER' AND FlavorType = 'FLAVOR_NAVAL_RECON';
	UPDATE Unit_Flavors SET Flavor = '8' WHERE UnitType = 'UNIT_BYZANTINE_DROMON' AND FlavorType = 'FLAVOR_NAVAL_RECON';
	UPDATE Unit_Flavors	SET Flavor = '12' WHERE UnitType = 'UNIT_GALLEASS' AND FlavorType = 'FLAVOR_NAVAL_RECON';
	UPDATE Unit_Flavors SET Flavor = '15' WHERE UnitType = 'UNIT_FRIGATE' AND FlavorType = 'FLAVOR_NAVAL_RECON';
	UPDATE Unit_Flavors SET Flavor = '25' WHERE UnitType = 'UNIT_ENGLISH_SHIPOFTHELINE' AND FlavorType = 'FLAVOR_NAVAL_RECON';
	UPDATE Unit_Flavors SET Flavor = '30' WHERE UnitType = 'UNIT_CRUISER' AND FlavorType = 'FLAVOR_NAVAL_RECON';
	UPDATE Unit_Flavors SET Flavor = '40' WHERE UnitType = 'UNIT_MISSILE_CRUISER' AND FlavorType = 'FLAVOR_NAVAL_RECON';
	UPDATE Unit_Flavors SET Flavor = '25' WHERE UnitType = 'UNIT_CARRIER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_Flavors (Flavor, UnitType, FlavorType) SELECT '15' , 'UNIT_KOREAN_TURTLE_SHIP', 'FLAVOR_NAVAL_RECON';
	INSERT INTO Unit_Flavors (Flavor, UnitType, FlavorType) SELECT '30' , 'UNIT_IRONCLAD', 'FLAVOR_NAVAL_RECON';
	INSERT INTO Unit_Flavors (Flavor, UnitType, FlavorType)	SELECT '35' , 'UNIT_BATTLESHIP', 'FLAVOR_NAVAL_RECON';

	-- Tech Stuff Melee
	UPDATE Units SET PrereqTech = 'TECH_COMPASS' WHERE Type = 'UNIT_CARAVEL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_COMPASS' WHERE Type = 'UNIT_PORTUGUESE_NAU' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_COMPUTERS' WHERE Type = 'UNIT_CARRIER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_GUILDS' WHERE Type = 'UNIT_GALLEASS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_NAVIGATION' WHERE Type = 'UNIT_PRIVATEER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_ASTRONOMY' WHERE Type = 'UNIT_DUTCH_SEA_BEGGAR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_INDUSTRIALIZATION' WHERE Type = 'UNIT_IRONCLAD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_PENICILIN' WHERE Type = 'UNIT_SUBMARINE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_ROCKETRY' WHERE Type = 'UNIT_DESTROYER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_OPTICS' WHERE Type = 'UNIT_TRIREME' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_STEALTH' WHERE Type = 'UNIT_MISSILE_CRUISER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Units SET ObsoleteTech = 'TECH_NAVIGATION' WHERE Type = 'UNIT_CARAVEL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_INDUSTRIALIZATION' WHERE Type = 'UNIT_PORTUGUESE_NAU' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_NAVIGATION' WHERE Type = 'UNIT_GALLEASS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_ROCKETRY' WHERE Type = 'UNIT_DUTCH_SEA_BEGGAR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_INDUSTRIALIZATION' WHERE Type = 'UNIT_PRIVATEER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_ROCKETRY' WHERE Type = 'UNIT_IRONCLAD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = NULL WHERE Type = 'UNIT_BATTLESHIP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_STEALTH' WHERE Type = 'UNIT_DESTROYER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_COMPASS' WHERE Type = 'UNIT_TRIREME' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Units SET Moves = '5' WHERE Type = 'UNIT_IRONCLAD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET Moves = '4' WHERE Type = 'UNIT_CARAVEL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );	
	UPDATE Units SET Moves = '4' WHERE Type = 'UNIT_PORTUGUESE_NAU' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET Moves = '4' WHERE Type = 'UNIT_TRIREME' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET Moves = '4' WHERE Type = 'UNIT_CARTHAGINIAN_QUINQUEREME' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
		
	UPDATE Units SET AirInterceptRange = '4' WHERE Type = 'UNIT_CARRIER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	DELETE FROM Unit_FreePromotions WHERE UnitType = 'UNIT_CARAVEL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	DELETE FROM Unit_FreePromotions WHERE UnitType = 'UNIT_PRIVATEER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	DELETE FROM Unit_FreePromotions WHERE UnitType = 'UNIT_IRONCLAD' AND PromotionType = 'PROMOTION_STEAM_POWERED' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_CARRIER' , 'PROMOTION_INTERCEPTION_IV' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Unit_ClassUpgrades SET UnitClassType = 'UNITCLASS_PRIVATEER' WHERE UnitType = 'UNIT_CARAVEL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Unit_ClassUpgrades SET UnitClassType = 'UNITCLASS_IRONCLAD' WHERE UnitType = 'UNIT_PRIVATEER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	
	UPDATE Units SET DefaultUnitAI = 'UNITAI_ATTACK_SEA' WHERE Type = 'UNIT_CARAVEL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET DefaultUnitAI = 'UNITAI_ATTACK_SEA' WHERE Type = 'UNIT_PRIVATEER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET DefaultUnitAI = 'UNITAI_ATTACK_SEA' WHERE Type = 'UNIT_DUTCH_SEA_BEGGAR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	DELETE FROM Unit_AITypes WHERE UnitType = 'UNIT_PRIVATEER' AND UnitAIType = 'UNITAI_PIRATE_SEA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	DELETE FROM Unit_AITypes WHERE UnitType = 'UNIT_DUTCH_SEA_BEGGAR' AND UnitAIType = 'UNITAI_PIRATE_SEA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	DELETE FROM Unit_AITypes WHERE UnitType = 'UNIT_SUBMARINE' AND UnitAIType = 'UNITAI_EXPLORE_SEA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	DELETE FROM Unit_AITypes WHERE UnitType = 'UNIT_NUCLEAR_SUBMARINE' AND UnitAIType = 'UNITAI_EXPLORE_SEA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	
	UPDATE Units SET UnitFlagAtlas = 'CORVETTE_FLAG_ATLAS' WHERE Type = 'UNIT_PRIVATEER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET UnitFlagIconOffset = '0' WHERE Type = 'UNIT_PRIVATEER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET IconAtlas = 'COMMUNITY_ATLAS' WHERE Type = 'UNIT_PRIVATEER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET UnitArtInfo = 'ART_DEF_UNIT_CORVETTE' WHERE Type = 'UNIT_PRIVATEER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PortraitIndex = '60' WHERE Type = 'UNIT_PRIVATEER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Missile Cruiser now Melee, upgrade from Destroyer
	-- Upgrade from Destroyer
	INSERT INTO Unit_ClassUpgrades (UnitClassType, UnitType) SELECT 'UNITCLASS_MISSILE_CRUISER' , 'UNIT_DESTROYER' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET RangedCombat = '0' WHERE Type = 'UNIT_MISSILE_CRUISER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET Range = '0' WHERE Type = 'UNIT_MISSILE_CRUISER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET CombatClass = 'UNITCOMBAT_NAVALMELEE' WHERE Type = 'UNIT_MISSILE_CRUISER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	DELETE FROM Unit_FreePromotions WHERE UnitType = 'UNIT_MISSILE_CRUISER' AND PromotionType = 'PROMOTION_ONLY_DEFENSIVE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Resource Changes
	DELETE FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_IRONCLAD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Unit_ResourceQuantityRequirements SET ResourceType = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_BATTLESHIP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_ResourceQuantityRequirements (UnitType, ResourceType, Cost) SELECT 'UNIT_MISSILE_CRUISER', 'RESOURCE_IRON', '1' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_ResourceQuantityRequirements (UnitType, ResourceType, Cost) SELECT 'UNIT_SUBMARINE', 'RESOURCE_IRON', '1' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_ResourceQuantityRequirements (UnitType, ResourceType, Cost) SELECT 'UNIT_NUCLEAR_SUBMARINE', 'RESOURCE_IRON', '1' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_ResourceQuantityRequirements (UnitType, ResourceType, Cost) SELECT 'UNIT_CARRIER', 'RESOURCE_OIL', '1' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );