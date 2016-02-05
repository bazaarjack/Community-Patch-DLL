-- LAND PROMOTIONS

	-- Re-insert CP promotions
	INSERT INTO UnitPromotions(Type, Description, Help, Sound, ReconChange, LostWithUpgrade, PortraitIndex, IconAtlas, PediaType, PediaEntry)
  VALUES('PROMOTION_RECON_SHORT_RANGE', 'TXT_KEY_PROMOTION_RECON_SHORT_RANGE', 'TXT_KEY_PROMOTION_RECON_SHORT_RANGE_HELP', 'AS2D_IF_LEVELUP', -2, 1, 59, 'ABILITY_ATLAS', 'PEDIA_ATTRIBUTES', 'TXT_KEY_PEDIA_PROMOTION_RECON_SHORT_RANGE');

	INSERT INTO UnitPromotions(Type, Description, Help, Sound, ReconChange, LostWithUpgrade, PortraitIndex, IconAtlas, PediaType, PediaEntry)
  VALUES('PROMOTION_RECON_LONG_RANGE', 'TXT_KEY_PROMOTION_RECON_LONG_RANGE', 'TXT_KEY_PROMOTION_RECON_LONG_RANGE_HELP', 'AS2D_IF_LEVELUP', 2, 1, 59, 'ABILITY_ATLAS', 'PEDIA_ATTRIBUTES', 'TXT_KEY_PEDIA_PROMOTION_RECON_LONG_RANGE');

	-- Delete hangovers
	DELETE FROM Unit_FreePromotions
	WHERE PromotionType = 'PROMOTION_SHOCK_1' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	DELETE FROM Unit_FreePromotions
	WHERE PromotionType = 'PROMOTION_AIR_AMBUSH_1' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	DELETE FROM Unit_FreePromotions
	WHERE PromotionType = 'PROMOTION_AIR_AMBUSH_2' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	DELETE FROM UnitPromotions_Domains 
	WHERE PromotionType = 'PROMOTION_BOMBARDMENT_1' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	DELETE FROM UnitPromotions_Domains 
	WHERE PromotionType = 'PROMOTION_BOMBARDMENT_2' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	DELETE FROM UnitPromotions_Domains 
	WHERE PromotionType = 'PROMOTION_BOMBARDMENT_3' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	DELETE FROM UnitPromotions_Domains
	WHERE PromotionType = 'PROMOTION_AIR_AMBUSH_1' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	DELETE FROM UnitPromotions_Domains
	WHERE PromotionType = 'PROMOTION_AIR_AMBUSH_2' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	DELETE FROM UnitPromotions_UnitCombats 
	WHERE PromotionType = 'PROMOTION_INSTA_HEAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	
	DELETE FROM UnitPromotions_UnitCombats
	WHERE PromotionType = 'PROMOTION_REPAIR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-- Replace Drill with +10% Combat Strength everywhere.

	UPDATE Language_en_US
	SET Text = '+20% [ICON_STRENGTH] Combat Strength VS [COLOR_POSITIVE_TEXT]Cities[ENDCOLOR], [COLOR_POSITIVE_TEXT]Flank attack bonus[ENDCOLOR] increased by 25%.'
	WHERE Tag = 'TXT_KEY_PROMOTION_DRILL_1_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '+20% [ICON_STRENGTH] Combat Strength VS [COLOR_POSITIVE_TEXT]Cities[ENDCOLOR], [COLOR_POSITIVE_TEXT]Flank attack bonus[ENDCOLOR] increased by 25%.'
	WHERE Tag = 'TXT_KEY_PROMOTION_DRILL_2_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '+20% [ICON_STRENGTH] Combat Strength VS [COLOR_POSITIVE_TEXT]Cities[ENDCOLOR], [COLOR_POSITIVE_TEXT]Flank attack bonus[ENDCOLOR] increased by 25%.'
	WHERE Tag = 'TXT_KEY_PROMOTION_DRILL_3_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-- Replace Shock with bonuses to Combat Strength and Attacking Fortified Units
	UPDATE Language_en_US
	SET Text = '+10% [ICON_STRENGTH] Combat Strength, +15% [ICON_STRENGTH] Combat Strength VS [COLOR_POSITIVE_TEXT]Fortified Units[ENDCOLOR]'
	WHERE Tag = 'TXT_KEY_PROMOTION_SHOCK_1_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '+10% [ICON_STRENGTH] Combat Strength, +15% [ICON_STRENGTH] Combat Strength VS [COLOR_POSITIVE_TEXT]Fortified Units[ENDCOLOR]'
	WHERE Tag = 'TXT_KEY_PROMOTION_SHOCK_2_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '+10% [ICON_STRENGTH] Combat Strength, +15% [ICON_STRENGTH] Combat Strength VS [COLOR_POSITIVE_TEXT]Fortified Units[ENDCOLOR]'
	WHERE Tag = 'TXT_KEY_PROMOTION_SHOCK_3_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-- Replace Accuracy with +10% Ranged Combat Strength and damage versus cities.

	UPDATE Language_en_US
	SET Text = '+10% Ranged [ICON_RANGE_STRENGTH] Combat Strength, +10% VS [COLOR_POSITIVE_TEXT]Cities[ENDCOLOR].'
	WHERE Tag = 'TXT_KEY_PROMOTION_ACCURACY_1_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '+10% Ranged [ICON_RANGE_STRENGTH] Combat Strength, +10% VS [COLOR_POSITIVE_TEXT]Cities[ENDCOLOR].'
	WHERE Tag = 'TXT_KEY_PROMOTION_ACCURACY_2_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '+10% Ranged [ICON_RANGE_STRENGTH] Combat Strength, +10% VS [COLOR_POSITIVE_TEXT]Cities[ENDCOLOR].'
	WHERE Tag = 'TXT_KEY_PROMOTION_ACCURACY_3_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-- Replace Barrage with +5% Ranged Combat Strength and damage versus wounded units.

	UPDATE Language_en_US
	SET Text = '+5% Ranged [ICON_RANGE_STRENGTH] Combat Strength, +10% [ICON_STRENGTH] Combat Strength VS [COLOR_POSITIVE_TEXT]Wounded Units[ENDCOLOR].'
	WHERE Tag = 'TXT_KEY_PROMOTION_BARRAGE_1_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '+5% Ranged [ICON_RANGE_STRENGTH] Combat Strength, +10% [ICON_STRENGTH] Combat Strength VS [COLOR_POSITIVE_TEXT]Wounded Units[ENDCOLOR].'
	WHERE Tag = 'TXT_KEY_PROMOTION_BARRAGE_2_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '+5% Ranged [ICON_RANGE_STRENGTH] Combat Strength, +10% [ICON_STRENGTH] Combat Strength VS [COLOR_POSITIVE_TEXT]Wounded Units[ENDCOLOR].'
	WHERE Tag = 'TXT_KEY_PROMOTION_BARRAGE_3_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-- Woodsman, Ambush, Charge and Formation all get buffs in different terrains

	UPDATE Language_en_US
	SET Text = '+10% [ICON_STRENGTH] Combat Strength when attacking in [COLOR_POSITIVE_TEXT]OPEN[ENDCOLOR] Terrain, +25% [ICON_STRENGTH] Combat Strength VS [COLOR_POSITIVE_TEXT]Wounded Units[ENDCOLOR].'
	WHERE Tag = 'TXT_KEY_PROMOTION_CHARGE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = 'Double movement rate [COLOR_POSITIVE_TEXT]Through Forest and Jungle[ENDCOLOR], +10% [ICON_STRENGTH] Combat Strength when defending in [COLOR_POSITIVE_TEXT]ROUGH[ENDCOLOR] Terrain.'
	WHERE Tag = 'TXT_KEY_PROMOTION_WOODSMAN_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '+25% [ICON_STRENGTH] Combat Strength VS [COLOR_POSITIVE_TEXT]Mounted[ENDCOLOR] units, +10% [ICON_STRENGTH] Combat Strength when defending in [COLOR_POSITIVE_TEXT]OPEN[ENDCOLOR] Terrain.'
	WHERE Tag = 'TXT_KEY_PROMOTION_FORMATION_1_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '+25% [ICON_STRENGTH] Combat Strength VS [COLOR_POSITIVE_TEXT]Mounted[ENDCOLOR] units, +10% [ICON_STRENGTH] Combat Strength when defending in [COLOR_POSITIVE_TEXT]OPEN[ENDCOLOR] Terrain.'
	WHERE Tag = 'TXT_KEY_PROMOTION_FORMATION_2_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '+25% [ICON_STRENGTH] Combat Strength VS [COLOR_POSITIVE_TEXT]Armor[ENDCOLOR] units, +10% [ICON_STRENGTH] Combat Strength when attacking in [COLOR_POSITIVE_TEXT]ROUGH[ENDCOLOR] Terrain.'
	WHERE Tag = 'TXT_KEY_PROMOTION_AMBUSH_1_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '+25% [ICON_STRENGTH] Combat Strength VS [COLOR_POSITIVE_TEXT]Armor[ENDCOLOR] units, +10% [ICON_STRENGTH] Combat Strength when attacking in [COLOR_POSITIVE_TEXT]ROUGH[ENDCOLOR] Terrain.'
	WHERE Tag = 'TXT_KEY_PROMOTION_AMBUSH_2_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	
-- Fix Morale tooltip
	UPDATE Language_en_US
	SET Text = '+10% [ICON_STRENGTH] Combat Strength.'
	WHERE Tag = 'TXT_KEY_PROMOTION_MORALE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-- Charge now a two-part upgrade

	UPDATE Language_en_US
	SET Text = 'Charge I'
	WHERE Tag = 'TXT_KEY_PROMOTION_CHARGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-- Cover now 25 and 25
	UPDATE Language_en_US
	SET Text = '+25% [COLOR_POSITIVE_TEXT]Defense[ENDCOLOR] against all [COLOR_POSITIVE_TEXT]Ranged Attacks[ENDCOLOR].'
	WHERE Tag = 'TXT_KEY_PROMOTION_COVER_1_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '+25% [COLOR_POSITIVE_TEXT]Defense[ENDCOLOR] against all [COLOR_POSITIVE_TEXT]Ranged Attacks[ENDCOLOR].'
	WHERE Tag = 'TXT_KEY_PROMOTION_COVER_2_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-- Make Discipline a double-mod, weaken a bit.

	UPDATE UnitPromotions
	SET CombatPercent = '5'
	WHERE Type = 'PROMOTION_ADJACENT_BONUS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE UnitPromotions
	SET AdjacentMod = '5'
	WHERE Type = 'PROMOTION_ADJACENT_BONUS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '+5% [ICON_STRENGTH] Combat Strength, and +5% additional [ICON_STRENGTH] Combat Strength when adjacent to a friendly Unit.'
	WHERE Tag = 'TXT_KEY_PROMOTION_DISCIPLINE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-- NAVAL PROMOTIONS

-- Replace Targeting with +10% Combat Strength versus land and sea units.
	UPDATE UnitPromotions_Domains
	SET Modifier = '10'
	WHERE PromotionType = 'PROMOTION_TARGETING_1' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE UnitPromotions_Domains
	SET Modifier = '15'
	WHERE PromotionType = 'PROMOTION_TARGETING_2' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE UnitPromotions_Domains
	SET Modifier = '20'
	WHERE PromotionType = 'PROMOTION_TARGETING_3' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '+10% [ICON_STRENGTH] Combat Strength VS [COLOR_POSITIVE_TEXT]Naval and Land Units[ENDCOLOR], +10% [ICON_STRENGTH] Combat Strength VS [COLOR_POSITIVE_TEXT]Wounded Units[ENDCOLOR].'
	WHERE Tag = 'TXT_KEY_PROMOTION_TARGETING_1_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '+15% [ICON_STRENGTH] Combat Strength VS [COLOR_POSITIVE_TEXT]Naval and Land Units[ENDCOLOR], +10% [ICON_STRENGTH] Combat Strength VS [COLOR_POSITIVE_TEXT]Wounded Units[ENDCOLOR].'
	WHERE Tag = 'TXT_KEY_PROMOTION_TARGETING_2_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '+20% [ICON_STRENGTH] Combat Strength VS [COLOR_POSITIVE_TEXT]Naval and Land Units[ENDCOLOR], +10% [ICON_STRENGTH] Combat Strength VS [COLOR_POSITIVE_TEXT]Wounded Units[ENDCOLOR].'
	WHERE Tag = 'TXT_KEY_PROMOTION_TARGETING_3_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Bombardment now specifically anti-City.
	UPDATE Language_en_US
	SET Text = '+5% Ranged [ICON_RANGE_STRENGTH] Combat Strength, +20% [ICON_STRENGTH] VS [COLOR_POSITIVE_TEXT]Cities[ENDCOLOR].'
	WHERE Tag = 'TXT_KEY_PROMOTION_BOMBARDMENT_1_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '+5% Ranged [ICON_RANGE_STRENGTH] Combat Strength, +20% [ICON_STRENGTH] VS [COLOR_POSITIVE_TEXT]Cities[ENDCOLOR].'
	WHERE Tag = 'TXT_KEY_PROMOTION_BOMBARDMENT_2_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '+5% Ranged [ICON_RANGE_STRENGTH] Combat Strength, +20% [ICON_STRENGTH] VS [COLOR_POSITIVE_TEXT]Cities[ENDCOLOR].'
	WHERE Tag = 'TXT_KEY_PROMOTION_BOMBARDMENT_3_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-- Melee Ship promotions a little too high - let's tone down
	UPDATE UnitPromotions_Domains
	SET Modifier = '10'
	WHERE PromotionType = 'PROMOTION_BOARDING_PARTY_1' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE UnitPromotions_Domains
	SET Modifier = '15'
	WHERE PromotionType = 'PROMOTION_BOARDING_PARTY_2' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE UnitPromotions_Domains
	SET Modifier = '20'
	WHERE PromotionType = 'PROMOTION_BOARDING_PARTY_3' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '+10% [ICON_STRENGTH] Combat Strength VS [COLOR_POSITIVE_TEXT]Naval Units[ENDCOLOR], [COLOR_POSITIVE_TEXT]Flank attack bonus[ENDCOLOR] increased by 25%.'
	WHERE Tag = 'TXT_KEY_PROMOTION_BOARDING_PARTY_1_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '+15% [ICON_STRENGTH] Combat Strength VS [COLOR_POSITIVE_TEXT]Naval Units[ENDCOLOR], [COLOR_POSITIVE_TEXT]Flank attack bonus[ENDCOLOR] increased by 25%.'
	WHERE Tag = 'TXT_KEY_PROMOTION_BOARDING_PARTY_2_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '+20% [ICON_STRENGTH] Combat Strength VS [COLOR_POSITIVE_TEXT]Naval Units[ENDCOLOR], [COLOR_POSITIVE_TEXT]Flank attack bonus[ENDCOLOR] increased by 25%.'
	WHERE Tag = 'TXT_KEY_PROMOTION_BOARDING_PARTY_3_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '+20% [ICON_STRENGTH] Combat Strength VS [COLOR_POSITIVE_TEXT]Cities[ENDCOLOR]. Steal gold equal to 33% of the damage inflicted on a city.'
	WHERE Tag = 'TXT_KEY_PROMOTION_COASTAL_RAIDER_1_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '+20% [ICON_STRENGTH] Combat Strength VS [COLOR_POSITIVE_TEXT]Cities[ENDCOLOR]. Steal gold equal to 33% of the damage inflicted on a city.'
	WHERE Tag = 'TXT_KEY_PROMOTION_COASTAL_RAIDER_2_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '+20% [ICON_STRENGTH] Combat Strength VS [COLOR_POSITIVE_TEXT]Cities[ENDCOLOR]. Steal gold equal to 34% of the damage inflicted on a city.'
	WHERE Tag = 'TXT_KEY_PROMOTION_COASTAL_RAIDER_3_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-- Wolfpack extremely strong

	UPDATE Language_en_US
	SET Text = '+20% Combat Bonus when attacking.'
	WHERE Tag = 'TXT_KEY_PROMOTION_WOLFPACK_1_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '+20% Combat Bonus when attacking.'
	WHERE Tag = 'TXT_KEY_PROMOTION_WOLFPACK_2_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '+20% Combat Bonus when attacking.'
	WHERE Tag = 'TXT_KEY_PROMOTION_WOLFPACK_3_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-- Air Promotions -- Update Air Targeting to Hit all Domains
	UPDATE UnitPromotions_Domains
	SET Modifier = '15'
	WHERE PromotionType = 'PROMOTION_AIR_TARGETING_1' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE UnitPromotions_Domains
	SET Modifier = '15'
	WHERE PromotionType = 'PROMOTION_AIR_TARGETING_2' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '+15% [ICON_STRENGTH] Combat Strength versus Naval and Land Units.'
	WHERE Tag = 'TXT_KEY_PROMOTION_AIR_TARGETING_1_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '+15% [ICON_STRENGTH] Combat Strength versus Naval and Land Units.'
	WHERE Tag = 'TXT_KEY_PROMOTION_AIR_TARGETING_2_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-- Air Ambush - More Interceptions
	UPDATE Language_en_US
	SET Text = '1 Extra [COLOR_POSITIVE_TEXT]Interception[ENDCOLOR] may be made per turn.'
	WHERE Tag = 'TXT_KEY_PROMOTION_AIR_AMBUSH_1_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '1 Extra [COLOR_POSITIVE_TEXT]Interception[ENDCOLOR] may be made per turn.'
	WHERE Tag = 'TXT_KEY_PROMOTION_AIR_AMBUSH_2_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-- Siege Promotions -- Weaken them slightly

	UPDATE UnitPromotions
	SET CityAttack = '100'
	WHERE Type = 'PROMOTION_CITY_SIEGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '+100% Bonus vs Cities.'
	WHERE Tag = 'TXT_KEY_PROMOTION_CITY_SIEGE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = 'Bonus vs Cities (100)'
	WHERE Tag = 'TXT_KEY_PROMOTION_CITY_SIEGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE UnitPromotions
	SET CityAttack = '100'
	WHERE Type = 'PROMOTION_CITY_SIEGE_II' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '+100% Bonus vs Cities.'
	WHERE Tag = 'TXT_KEY_PROMOTION_CITY_SIEGE_II_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = 'Bonus vs Cities (100)'
	WHERE Tag = 'TXT_KEY_PROMOTION_CITY_SIEGE_II' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE UnitPromotions
	SET CityAttack = '150'
	WHERE Type = 'PROMOTION_CITY_ASSAULT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = 'Bonus vs Cities (150)'
	WHERE Tag = 'TXT_KEY_PROMOTION_CITY_ASSUALT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '+150% Bonus vs Cities.'
	WHERE Tag = 'TXT_KEY_PROMOTION_CITY_ASSUALT_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Amphibious Change

	UPDATE Language_en_US
	SET Text = 'Eliminates combat penalties for attacking from the sea or over a river, and grants a movement bonus when moving across rivers.'
	WHERE Tag = 'TXT_KEY_PROMOTION_AMPHIBIOUS_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Medic I/II
	UPDATE Language_en_US
	SET Text = 'This unit and all units in adjacent tiles [COLOR_POSITIVE_TEXT]Heal 5 Additional HP[ENDCOLOR] per turn.'
	WHERE Tag = 'TXT_KEY_PROMOTION_MEDIC_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = 'This unit and all units in adjacent tiles [COLOR_POSITIVE_TEXT]Heal 5 Additional HP[ENDCOLOR] per turn. This unit [COLOR_POSITIVE_TEXT]Heals 5 Additional HP[ENDCOLOR] per turn when [COLOR_POSITIVE_TEXT]Outside of Friendly Territory[ENDCOLOR].'
	WHERE Tag = 'TXT_KEY_PROMOTION_MEDIC_II_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Buffalo Loins/Chest

	UPDATE Language_en_US
	SET Text = '+10% [ICON_STRENGTH] Combat Strength. Flank attack bonus increased by 25%. +10% [COLOR_POSITIVE_TEXT]Defense[ENDCOLOR] against all [COLOR_POSITIVE_TEXT]Ranged Attacks[ENDCOLOR].'
	WHERE Tag = 'TXT_KEY_PROMOTION_BUFFALO_CHEST_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = '+15% [ICON_STRENGTH] Combat Strength. Flank attack bonus increased by 50%. +15% [COLOR_POSITIVE_TEXT]Defense[ENDCOLOR] against all [COLOR_POSITIVE_TEXT]Ranged Attacks[ENDCOLOR].'
	WHERE Tag = 'TXT_KEY_PROMOTION_BUFFALO_LOINS_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Fix for Astronomy/Compass change
	UPDATE UnitPromotions_Terrains
	SET PassableTech = 'TECH_COMPASS'
	WHERE PromotionType = 'PROMOTION_OCEAN_IMPASSABLE_UNTIL_ASTRONOMY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = 'Cannot Enter Ocean Until Navigation.'
	WHERE Tag = 'TXT_KEY_PROMOTION_OCEAN_IMPASSABLE_ASTRO_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	
	UPDATE Language_en_US
	SET Text = 'Navigation Needed'
	WHERE Tag = 'TXT_KEY_PROMOTION_OCEAN_IMPASSABLE_ASTRO' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	
	-- Text change for Khan ability
	UPDATE Language_en_US
	SET Text = 'Units in this tile and and in adjacent tiles [COLOR_POSITIVE_TEXT]Heal 10 Additional HP[ENDCOLOR] per turn.'
	WHERE Tag = 'TXT_KEY_PROMOTION_MEDIC_GENERAL_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Fix for Morale Promotion - should only apply to land units
	DELETE FROM UnitPromotions_UnitCombats
	WHERE UnitCombatType = 'UNITCOMBAT_NAVALRANGED' AND PromotionType = 'PROMOTION_MORALE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	DELETE FROM UnitPromotions_UnitCombats
	WHERE UnitCombatType = 'UNITCOMBAT_NAVALMELEE' AND PromotionType = 'PROMOTION_MORALE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	DELETE FROM UnitPromotions_UnitCombats
	WHERE UnitCombatType = 'UNITCOMBAT_SUBMARINE' AND PromotionType = 'PROMOTION_MORALE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Fix for Air Repair Promotion - should only apply to fighters
	DELETE FROM UnitPromotions_UnitCombats
	WHERE UnitCombatType = 'UNITCOMBAT_BOMBER' AND PromotionType = 'PROMOTION_AIR_REPAIR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	DELETE FROM UnitPromotions_UnitCombats
	WHERE UnitCombatType = 'UNITCOMBAT_BOMBER' AND PromotionType = 'PROMOTION_BOMBARDMENT_1' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	DELETE FROM UnitPromotions_UnitCombats
	WHERE UnitCombatType = 'UNITCOMBAT_BOMBER' AND PromotionType = 'PROMOTION_BOMBARDMENT_2' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	DELETE FROM UnitPromotions_UnitCombats
	WHERE UnitCombatType = 'UNITCOMBAT_BOMBER' AND PromotionType = 'PROMOTION_BOMBARDMENT_3' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	DELETE FROM UnitPromotions_UnitCombats
	WHERE UnitCombatType = 'UNITCOMBAT_BOMBER' AND PromotionType = 'PROMOTION_AIR_AMBUSH_1' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	DELETE FROM UnitPromotions_UnitCombats
	WHERE UnitCombatType = 'UNITCOMBAT_BOMBER' AND PromotionType = 'PROMOTION_AIR_AMBUSH_2' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Fix Anti-Air Promotion Info
	UPDATE Language_en_US
	SET Text = 'Flak Targeting I'
	WHERE Tag = 'TXT_KEY_PROMOTION_ANTI_AIR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = 'Flak Targeting II'
	WHERE Tag = 'TXT_KEY_PROMOTION_ANTI_AIR_II' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Second Attack Explanations
	UPDATE Language_en_US
	SET Text = 'May attack twice, though second attack expends all Movement'
	WHERE Tag = 'TXT_KEY_PROMOTION_SECOND_ATTACK' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = 'May attack twice, though second attack expends all Movement'
	WHERE Tag = 'TXT_KEY_PROMOTION_LOGISTICS_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Language_en_US
	SET Text = 'One extra Movement. May attack twice, though second attack expends all Movement'
	WHERE Tag = 'TXT_KEY_PROMOTION_RESTLESSNESS_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

