-- Unlock Time
UPDATE PolicyBranchTypes
SET EraPrereq = 'ERA_MEDIEVAL'
WHERE Type = 'POLICY_BRANCH_PATRONAGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Opener
UPDATE Policies
SET MinorFriendshipMinimum = '20'
WHERE Type = 'POLICY_PATRONAGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET MinorFriendshipDecayMod = '0'
WHERE Type = 'POLICY_PATRONAGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET IncreasedQuestRewards = '25'
WHERE Type = 'POLICY_PATRONAGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Philanthropy
UPDATE Policies
SET FreeSpy = '1'
WHERE Type = 'POLICY_PHILANTHROPY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );


UPDATE Policies
SET MinorGoldFriendshipMod = '0'
WHERE Type = 'POLICY_PHILANTHROPY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET MinorFriendshipDecayMod = '-5'
WHERE Type = 'POLICY_PHILANTHROPY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Consulates
UPDATE Policies
SET MinorFriendshipDecayMod = '-5'
WHERE Type = 'POLICY_CONSULATES' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET MinorFriendshipMinimum = '0'
WHERE Type = 'POLICY_CONSULATES' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET FreeWCVotes = '1'
WHERE Type = 'POLICY_CONSULATES' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET RiggingElectionModifier = '50'
WHERE Type = 'POLICY_CONSULATES' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET GridX = '4'
WHERE Type = 'POLICY_CONSULATES' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET GridY = '3'
WHERE Type = 'POLICY_CONSULATES' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Scholasticism
UPDATE Defines
SET Value = '33'
WHERE Name = 'MINOR_CIV_SCIENCE_BONUS_MULTIPLIER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET MinorFriendshipDecayMod = '-5'
WHERE Type = 'POLICY_SCHOLASTICISM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Cultural Diplomacy

UPDATE Policies
SET MinorFriendshipDecayMod = '-5'
WHERE Type = 'POLICY_CULTURAL_DIPLOMACY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Merchant Confederacy
UPDATE Policies
SET CityStateTradeChange = '300'
WHERE Type = 'POLICY_MERCHANT_CONFEDERACY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET MinorFriendshipDecayMod = '-5'
WHERE Type = 'POLICY_MERCHANT_CONFEDERACY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET ProtectedMinorPerTurnInfluence = '100'
WHERE Type = 'POLICY_MERCHANT_CONFEDERACY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET GridX = '4'
WHERE Type = 'POLICY_MERCHANT_CONFEDERACY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET GridY = '1'
WHERE Type = 'POLICY_MERCHANT_CONFEDERACY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

DELETE FROM Policy_PrereqPolicies
WHERE PolicyType = 'POLICY_MERCHANT_CONFEDERACY';

-- Finisher

UPDATE Policies
SET EventTourismCS = '4'
WHERE Type = 'POLICY_PATRONAGE_FINISHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET UnlocksPolicyBranchEra = 'ERA_RENAISSANCE'
WHERE Type = 'POLICY_PATRONAGE_FINISHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Finisher
UPDATE Policies
SET IdeologyPoint = '1'
WHERE Type = 'POLICY_PATRONAGE_FINISHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- NEW

INSERT INTO Policy_PrereqPolicies
	(PolicyType, PrereqPolicy)
VALUES
	('POLICY_CONSULATES', 'POLICY_MERCHANT_CONFEDERACY'),
	('POLICY_CONSULATES', 'POLICY_SCHOLASTICISM');