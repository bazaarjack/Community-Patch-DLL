
UPDATE Language_en_US
SET Text = 'Reduces [ICON_HAPPINESS_3] Religious Unrest.[NEWLINE]Nearby [ICON_RES_INCENSE] Incense: +1 [ICON_CULTURE] Culture, +1 [ICON_GOLD] Gold.[NEWLINE]Nearby [ICON_RES_WINE] Wine: +1 [ICON_CULTURE] Culture, +1 [ICON_GOLD] Gold.[NEWLINE]Nearby [ICON_RES_AMBER] Amber: +1 [ICON_CULTURE] Culture, +1 [ICON_GOLD] Gold.'
WHERE Tag = 'TXT_KEY_BUILDING_TEMPLE_HELP';

UPDATE Language_en_US
SET Text = '+1 [ICON_PEACE] Faith for every 3 [ICON_CITIZEN] Citizens in the City. Reduces [ICON_HAPPINESS_3] Religious Unrest and doubles Religious Pressure generated by Trade Routes.[NEWLINE]Nearby [ICON_RES_INCENSE] Incense: +1 [ICON_CULTURE] Culture, +1 [ICON_PEACE] Faith.[NEWLINE]Nearby [ICON_RES_WINE] Wine: +1 [ICON_CULTURE] Culture, +1 [ICON_PEACE] Faith.[NEWLINE]Nearby [ICON_RES_AMBER] Amber: +1 [ICON_CULTURE] Culture, +1 [ICON_PEACE] Faith.'
WHERE Tag = 'TXT_KEY_BUILDING_BASILICA_HELP';

UPDATE Language_en_US
SET Text = '+33% [ICON_GREAT_WRITER] Great Writer Rate in the City, and all Writers'' Guilds produce +1 [ICON_GOLD] Gold.[NEWLINE]Nearby [ICON_RES_DYE] Dye: +1 [ICON_CULTURE] Culture, +1 [ICON_GOLD] Gold.[NEWLINE]Nearby [ICON_RES_SILK] Silk: +1 [ICON_CULTURE] Culture, +1 [ICON_GOLD] Gold.[NEWLINE]Nearby [ICON_RES_LAPIS] Lapis Lazuli: +2 [ICON_CULTURE] Culture.'
WHERE Tag = 'TXT_KEY_BUILDING_AMPHITHEATER_HELP';

UPDATE Language_en_US
SET Text = 'The Amphitheater increases the [ICON_CULTURE] Culture of a city. Increases the Great Writer Rate in the City, and all Writers'' Guilds produce extra Gold. Grants bonuses to all nearby [ICON_RES_DYE] Dye, [ICON_RES_SILK] Silk, and [ICON_RES_LAPIS] Lapis Lazuli resources, speeding the growth of the territory of the city and the acquisition of Social Policies. Contains 1 slot for a Great Work of Writing.'
WHERE Tag = 'TXT_KEY_BUILDING_AMPHITHEATER_STRATEGY';

UPDATE Language_en_US
SET Text = '+2 [ICON_TOURISM] Tourism once you research Philosophy. +33% [ICON_GREAT_WRITER] Great Writer Rate in the City, and all Writers'' Guilds produce +1 [ICON_GOLD] Gold.[NEWLINE][NEWLINE]Whenever you destroy an enemy unit, receive +5 [ICON_CULTURE] Culture in the City, scaling with Era.[NEWLINE]Nearby [ICON_RES_DYE] Dye: +1 [ICON_CULTURE] Culture, +1 [ICON_GOLD] Gold.[NEWLINE]Nearby [ICON_RES_SILK] Silk: +1 [ICON_CULTURE] Culture, +1 [ICON_GOLD] Gold.[NEWLINE]Nearby [ICON_RES_LAPIS] Lapis Lazuli: +2 [ICON_CULTURE] Culture.'
WHERE Tag = 'TXT_KEY_BUILDING_ODEON_HELP';

UPDATE Language_en_US
SET Text = 'Unique Greek replacement for the Amphitheater. Build Acropoli to boost your city''s Defense, Culture, and Tourism, especially while at war for the latter two. Also boosts the City''s Great Writer rate and the value of Writers'' Guilds. Produces +2 [ICON_TOURISM] Tourism once you research Philosophy.'
WHERE Tag = 'TXT_KEY_BUILDING_ODEON_STRATEGY';

UPDATE Language_en_US
SET Text = '15% of the City''s [ICON_FOOD] Food output is added to the City''s [ICON_RESEARCH] Science every turn. Carries over 25% of [ICON_FOOD] Food after City growth (effect stacks with Aqueduct). Reduces [ICON_HAPPINESS_3] Poverty.[NEWLINE]Nearby [ICON_RES_TOBACCO] Tobacco: +3 [ICON_GOLD] Gold.[NEWLINE]Nearby [ICON_RES_COFFEE] Coffee: +1 [ICON_GOLD] Gold, +2 [ICON_PRODUCTION] Production.[NEWLINE]Nearby [ICON_RES_TEA] Tea: +2 [ICON_GOLD] Gold and +1 [ICON_PRODUCTION] Production.[NEWLINE][NEWLINE]Requires an Aqueduct in the City.'
WHERE Tag = 'TXT_KEY_BUILDING_GROCER_HELP';

UPDATE Language_en_US
SET Text = '15% of the City''s [ICON_FOOD] Food output is added to the City''s [ICON_RESEARCH] Science every turn. +33% [ICON_GREAT_PEOPLE] Great People generation in this City, and +25 [ICON_GOLD] Gold (scaling with Era) when a [ICON_GREAT_PEOPLE] Great Person is born.[NEWLINE][NEWLINE] Carries over 25% of [ICON_FOOD] Food after City growth (effect stacks with Aqueduct). Reduces [ICON_HAPPINESS_3] Poverty. Requires an Aqueduct in the City.[NEWLINE]Nearby [ICON_RES_TOBACCO] Tobacco: +3 [ICON_GOLD] Gold.[NEWLINE]Nearby [ICON_RES_COFFEE] Coffee: +1 [ICON_GOLD] Gold, +2 [ICON_PRODUCTION] Production.[NEWLINE]Nearby [ICON_RES_TEA] Tea: +2 [ICON_GOLD] Gold and +1 [ICON_PRODUCTION] Production.'
WHERE Tag = 'TXT_KEY_BUILDING_COFFEE_HOUSE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Language_en_US
SET Text = 'Allows [ICON_PRODUCTION] Production to be moved from this city along trade routes inside your civilization.[NEWLINE]Nearby [ICON_RES_MARBLE] Marble: +1 [ICON_PRODUCTION] Production, +1 [ICON_GOLD] Gold.[NEWLINE]Nearby [ICON_RES_STONE] Stone: +2 [ICON_PRODUCTION] Production.[NEWLINE]Nearby [ICON_RES_SALT] Salt: +1 [ICON_PRODUCTION] Production, +1 [ICON_GOLD] Gold.[NEWLINE]Nearby [ICON_RES_JADE] Jade: +1 [ICON_PRODUCTION] Production, +1 [ICON_GOLD] Gold.[NEWLINE][NEWLINE]City must have at least one of these resources improved with a Quarry.'
WHERE Tag = 'TXT_KEY_BUILDING_STONE_WORKS_HELP';
	
UPDATE Language_en_US
SET Text = 'Stone Works can only be constructed in a city near an improved [ICON_RES_STONE] Stone, [ICON_RES_MARBLE] Marble, [ICON_RES_SALT] Salt, or [ICON_RES_JADE] Jade resource. Stone Works increase [ICON_PRODUCTION] Production, and allow [ICON_PRODUCTION] Production to be moved from this city along trade routes inside your civilization.'
WHERE Tag = 'TXT_KEY_BUILDING_STONE_WORKS_STRATEGY';

UPDATE Language_en_US
SET Text = 'Grants +1 [ICON_CULTURE] Culture to all River tiles near the city, and +10% [ICON_PRODUCTION] Production when constructing Buildings in this City. Allows [ICON_PRODUCTION] Production to be moved from this city along trade routes inside your civilization.[NEWLINE]Nearby [ICON_RES_MARBLE] Marble: +1 [ICON_PRODUCTION] Production, +1 [ICON_GOLD] Gold.[NEWLINE]Nearby [ICON_RES_STONE] Stone: +2 [ICON_PRODUCTION] Production.[NEWLINE]Nearby [ICON_RES_SALT] Salt: +1 [ICON_PRODUCTION] Production, +1 [ICON_GOLD] Gold.[NEWLINE]Nearby [ICON_RES_JADE] Jade: +1 [ICON_PRODUCTION] Production, +1 [ICON_GOLD] Gold.'
WHERE Tag = 'TXT_KEY_BUILDING_MUD_PYRAMID_MOSQUE_HELP';

UPDATE Language_en_US
SET Text = 'The Tabya is a Songhai unique building, replacing the Stone Works. The Tabya greatly increases the [ICON_CULTURE] Culture of Cities on rivers, boosts the Production value of Stone, Marble, Salt, and Jade, and boosts the production of future Buildings in the City by 10%. Also allows [ICON_PRODUCTION] Production to be moved from this city along trade routes inside your civilization.'
WHERE Tag = 'TXT_KEY_BUILDING_MUD_PYRAMID_MOSQUE_STRATEGY';

UPDATE Language_en_US
SET Text = 'Reduces [ICON_HAPPINESS_3] Boredom slightly. Barracks, Forge, and Armory in City: +2 [ICON_PRODUCTION] Production.[NEWLINE]Nearby [ICON_RES_PERFUME] Perfume: +2 [ICON_CULTURE] Culture.[NEWLINE]Nearby [ICON_RES_OLIVE] Olives: +1 [ICON_FOOD] Food, +1 [ICON_GOLD] Gold.'
WHERE Tag = 'TXT_KEY_BUILDING_COLOSSEUM_HELP';

UPDATE Language_en_US
SET Text = 'The Arena reduces Boredom in a city, grants additional Culture, and improves the output of nearby [ICON_RES_PERFUME] Perfume and [ICON_RES_OLIVE] Olives. Build these to combat Unhappiness from Boredom, and to increase your Culture and Production.'
WHERE Tag = 'TXT_KEY_BUILDING_COLOSSEUM_STRATEGY';

UPDATE Language_en_US
SET Text = 'Whenever you destroy an enemy unit, produce +5 [ICON_GREAT_GENERAL] Great General points and +5 [ICON_GOLDEN_AGE] Golden Age points. [ICON_CITY_CONNECTED] City Connections produce +2% more [ICON_GOLD] Gold, and reduces [ICON_HAPPINESS_3] Boredom slightly. Barracks, Forge, and Armory in City: +2 [ICON_PRODUCTION] Production.[NEWLINE]Nearby [ICON_RES_PERFUME] Perfume: +2 [ICON_CULTURE] Culture.[NEWLINE]Nearby [ICON_RES_OLIVE] Olives: +1 [ICON_FOOD] Food, +1 [ICON_GOLD] Gold.'
WHERE Tag = 'TXT_KEY_BUILDING_FLAVIAN_COLOSSEUM_HELP';

UPDATE Language_en_US
SET Text = 'Unique Roman replacement for the Arena. Build the Colosseum to boost city Culture and Production, and to maximize your gain from the victories of your conquering armies. Every Colosseum slightly increases the Gold value of City Connections, thus allowing Rome to benefit from large, sprawling empires. Improves nearby [ICON_RES_PERFUME] Perfume and [ICON_RES_OLIVE] Olive Resources.'
WHERE Tag = 'TXT_KEY_BUILDING_FLAVIAN_COLOSSEUM_STRATEGY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );
