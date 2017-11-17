
# POP
BASE_CLERGY_FOR_LITERACY = 0.005
MAX_CLERGY_FOR_LITERACY = 0.04
LITERACY_CHANGE_SPEED = 0.1

ASSIMILATION_SCALE = 0.004
CONVERSION_SCALE = 0.01
IMMIGRATION_SCALE = 0.004

PROMOTION_SCALE = 0.002
PROMOTION_ASSIMILATION_CHANCE = 1.0
LUXURY_THRESHOLD = 500
BASE_GOODS_DEMAND = 0.8
BASE_POPGROWTH = 0.0001
MIN_LIFE_RATING_FOR_GROWTH = 30
LIFE_RATING_GROWTH_BONUS = 0.0001
LIFE_NEED_STARVATION_LIMIT = 0.5

MIL_LACK_EVERYDAY_NEED = 0.1
MIL_HAS_EVERYDAY_NEED = -0.1
MIL_HAS_LUXURY_NEED = -0.2
MIL_NO_LIFE_NEED = 0.2
MIL_REQUIRE_REFORM = 0.2
MIL_IDEOLOGY = -0.1
MIL_RULING_PARTY = -0.1
MIL_REFORM_IMPACT = 2
MIL_WAR_EXHAUSTION = 0.005
MIL_NON_ACCEPTED = 0.05

CON_LITERACY = 0.1
CON_LUXURY_GOODS = 0.1
CON_POOR_CLERGY = -2.5
CON_MIDRICH_CLERGY = -1.25
CON_REFORM_IMPACT = -50
CON_COLONIAL_FACTOR = 0.5
RULING_PARTY_HAPPY_CHANGE = -1
RULING_PARTY_ANGRY_CHANGE = 2

PDEF_BASE_CON = 20.0  # so half'ed effect.

NATIONAL_FOCUS_DIVIDER = 400000.0

POP_SAVINGS = 0.018

STATE_CREATION_ADMIN_LIMIT = 0.01

MIL_TO_JOIN_REBEL = 7  # Rebels over this will join a faction
MIL_TO_JOIN_RISING = 8  # Rebels over this will join a general rising
MIL_TO_AUTORISE = 9  # Rebels over this rise no matter what
REDUCTION_AFTER_RISEING = 0.0  # After a pop spawns a rebellion, its militancy will be reduced this much

# After a rebellion is being defeated in combat, its pop militancy will be divided by this number.
# (if value < 1.0, the MIL will be increased) (Beware! value must be > 0)
REDUCTION_AFTER_DEFEAT = 3.0

POP_TO_LEADERSHIP = 0.0001  # how much leadership every 1000 officers gives each day.
ARTISAN_MIN_PRODUCTIVITY = 1  # Minimum efficieny of an artisan
SLAVE_GROWTH_DIVISOR = 10  # Slaves have N times lower growth

MIL_HIT_FROM_CONQUEST = 4  # how much militancy grows in a province if taken without being core.
LUXURY_CON_CHANGE = 0.001  # con boost from over-buying luxuary goods
INVENTION_IMPACT_ON_DEMAND = 0.005  # how much each invention in a country increases demand for a product in percent
ARTISAN_SUPPRESSED_COLONIAL_GOODS_CATEGORY = 0  # Goods category index not produced in colonies
ISSUE_MOVEMENT_JOIN_LIMIT = 8,
ISSUE_MOVEMENT_LEAVE_LIMIT = 7,
MOVEMENT_CON_FACTOR = 0.05,
MOVEMENT_LIT_FACTOR = 0.3,
MIL_ON_REB_MOVE = 8,
# controls base pop size for factor of supression/radicalness cost. zero  disables the feature and jsut uses radicalness
POPULATION_SUPPRESSION_FACTOR = 0.0
POPULATION_MOVEMENT_RADICAL_FACTOR = 300,
NATIONALIST_MOVEMENT_MIL_CAP = 3.0,
MOVEMENT_SUPPORT_UH_FACTOR = 3  # 3x means 30% country support equals full UH support
REBEL_OCCUPATION_STRENGTH_BONUS = 0.01  # the amount of strength given to rebel movements when they occupy a province
LARGE_POPULATION_LIMIT = 9000000,
LARGE_POPULATION_INFLUENCE_PENALTY_CHUNK = 250000,
