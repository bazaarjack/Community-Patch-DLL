-- Great Musician -- Rival Territories
INSERT INTO Unit_FreePromotions (UnitType, PromotionType)
SELECT 'UNIT_MUSICIAN' , 'PROMOTION_RIVAL_TERRITORY'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-- NEW

INSERT INTO Improvement_Yields
	(ImprovementType, YieldType, Yield)
VALUES
	('IMPROVEMENT_CUSTOMS_HOUSE', 'YIELD_FOOD', 2);

INSERT INTO Tech_SpecialistYieldChanges
	(TechType, SpecialistType, YieldType, Yield)
VALUES
	('TECH_FERTILIZER', 'SPECIALIST_CITIZEN', 'YIELD_PRODUCTION', 2),
	('TECH_INDUSTRIALIZATION', 'SPECIALIST_CITIZEN', 'YIELD_GOLD', 1),
	('TECH_CIVIL_SERVICE', 'SPECIALIST_CITIZEN', 'YIELD_GOLD', 1),
	('TECH_PRINTING_PRESS', 'SPECIALIST_WRITER', 'YIELD_CULTURE', 3),
	('TECH_MILITARY_SCIENCE', 'SPECIALIST_WRITER', 'YIELD_SCIENCE', 3),
	('TECH_INTERNET', 'SPECIALIST_WRITER', 'YIELD_CULTURE', 3),
	('TECH_ARCHITECTURE', 'SPECIALIST_ARTIST', 'YIELD_PRODUCTION', 3),
	('TECH_PLASTIC', 'SPECIALIST_ARTIST', 'YIELD_CULTURE', 3),
	('TECH_COMPUTERS', 'SPECIALIST_ARTIST', 'YIELD_CULTURE', 3),
	('TECH_RADIO', 'SPECIALIST_MUSICIAN', 'YIELD_CULTURE', 4),
	('TECH_SATELLITES', 'SPECIALIST_MUSICIAN', 'YIELD_GOLD', 4),
	('TECH_MACHINERY', 'SPECIALIST_ENGINEER', 'YIELD_PRODUCTION', 2),
	('TECH_INDUSTRIALIZATION', 'SPECIALIST_ENGINEER', 'YIELD_SCIENCE', 2),
	('TECH_ROCKETRY', 'SPECIALIST_ENGINEER', 'YIELD_PRODUCTION', 2),
	('TECH_LASERS', 'SPECIALIST_ENGINEER', 'YIELD_PRODUCTION', 2),
	('TECH_CURRENCY', 'SPECIALIST_MERCHANT', 'YIELD_GOLD', 2),
	('TECH_ECONOMICS', 'SPECIALIST_MERCHANT', 'YIELD_PRODUCTION', 2),
	('TECH_FLIGHT', 'SPECIALIST_MERCHANT', 'YIELD_GOLD', 2),
	('TECH_TELECOM', 'SPECIALIST_MERCHANT', 'YIELD_GOLD', 2),
	('TECH_PHILOSOPHY', 'SPECIALIST_SCIENTIST', 'YIELD_CULTURE', 2),
	('TECH_ASTRONOMY', 'SPECIALIST_SCIENTIST', 'YIELD_SCIENCE', 2),
	('TECH_SCIENTIFIC_THEORY', 'SPECIALIST_SCIENTIST', 'YIELD_SCIENCE', 2),
	('TECH_ATOMIC_THEORY', 'SPECIALIST_SCIENTIST', 'YIELD_SCIENCE', 2);