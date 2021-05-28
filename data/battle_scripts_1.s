#include "constants/global.h"
#include "constants/battle.h"
#include "constants/pokemon.h"
#include "constants/battle_script_commands.h"
#include "constants/battle_anim.h"
#include "constants/battle_string_ids.h"
#include "constants/abilities.h"
#include "constants/hold_effects.h"
#include "constants/moves.h"
#include "constants/songs.h"
#include "constants/game_stat.h"
#include "constants/trainers.h"
#include "constants/battle_config.h"
	.include "asm/macros.inc"
	.include "asm/macros/battle_script.inc"
	.include "constants/constants.inc"

	.section script_data, "aw", %progbits
	
.align 2
gBattleScriptsForMoveEffects:: @ 82D86A8
	.4byte BattleScript_EffectHit
	.4byte BattleScript_EffectSleep
	.4byte BattleScript_EffectPoisonHit
	.4byte BattleScript_EffectAbsorb
	.4byte BattleScript_EffectBurnHit
	.4byte BattleScript_EffectFreezeHit
	.4byte BattleScript_EffectParalyzeHit
	.4byte BattleScript_EffectExplosion
	.4byte BattleScript_EffectDreamEater
	.4byte BattleScript_EffectMirrorMove
	.4byte BattleScript_EffectAttackUp
	.4byte BattleScript_EffectDefenseUp
	.4byte BattleScript_EffectSpeedUp
	.4byte BattleScript_EffectSpecialAttackUp
	.4byte BattleScript_EffectSpecialDefenseUp
	.4byte BattleScript_EffectAccuracyUp
	.4byte BattleScript_EffectEvasionUp
	.4byte BattleScript_EffectSpecialAttackUp3
	.4byte BattleScript_EffectAttackDown
	.4byte BattleScript_EffectDefenseDown
	.4byte BattleScript_EffectSpeedDown
	.4byte BattleScript_EffectSpecialAttackDown
	.4byte BattleScript_EffectSpecialDefenseDown
	.4byte BattleScript_EffectAccuracyDown
	.4byte BattleScript_EffectEvasionDown
	.4byte BattleScript_EffectHaze
	.4byte BattleScript_EffectBide
	.4byte BattleScript_EffectRampage
	.4byte BattleScript_EffectRoar
	.4byte BattleScript_EffectMultiHit
	.4byte BattleScript_EffectConversion
	.4byte BattleScript_EffectFlinchHit
	.4byte BattleScript_EffectRestoreHp
	.4byte BattleScript_EffectToxic
	.4byte BattleScript_EffectPayDay
	.4byte BattleScript_EffectLightScreen
	.4byte BattleScript_EffectTriAttack
	.4byte BattleScript_EffectRest
	.4byte BattleScript_EffectOHKO
	.4byte BattleScript_EffectFusionCombo
	.4byte BattleScript_EffectSuperFang
	.4byte BattleScript_EffectDragonRage
	.4byte BattleScript_EffectTrap
	.4byte BattleScript_EffectHealBlock
	.4byte BattleScript_EffectDoubleHit
	.4byte BattleScript_EffectRecoilIfMiss
	.4byte BattleScript_EffectMist
	.4byte BattleScript_EffectFocusEnergy
	.4byte BattleScript_EffectRecoil25
	.4byte BattleScript_EffectConfuse
	.4byte BattleScript_EffectAttackUp2
	.4byte BattleScript_EffectDefenseUp2
	.4byte BattleScript_EffectSpeedUp2
	.4byte BattleScript_EffectSpecialAttackUp2
	.4byte BattleScript_EffectSpecialDefenseUp2
	.4byte BattleScript_EffectAccuracyUp2
	.4byte BattleScript_EffectEvasionUp2
	.4byte BattleScript_EffectTransform
	.4byte BattleScript_EffectAttackDown2
	.4byte BattleScript_EffectDefenseDown2
	.4byte BattleScript_EffectSpeedDown2
	.4byte BattleScript_EffectSpecialAttackDown2
	.4byte BattleScript_EffectSpecialDefenseDown2
	.4byte BattleScript_EffectAccuracyDown2
	.4byte BattleScript_EffectEvasionDown2
	.4byte BattleScript_EffectReflect
	.4byte BattleScript_EffectPoison
	.4byte BattleScript_EffectParalyze
	.4byte BattleScript_EffectAttackDownHit
	.4byte BattleScript_EffectDefenseDownHit
	.4byte BattleScript_EffectSpeedDownHit
	.4byte BattleScript_EffectSpecialAttackDownHit
	.4byte BattleScript_EffectSpecialDefenseDownHit
	.4byte BattleScript_EffectAccuracyDownHit
	.4byte BattleScript_EffectEvasionDownHit
	.4byte BattleScript_EffectTwoTurnsAttack
	.4byte BattleScript_EffectConfuseHit
	.4byte BattleScript_EffectTwineedle
	.4byte BattleScript_EffectVitalThrow
	.4byte BattleScript_EffectSubstitute
	.4byte BattleScript_EffectRecharge
	.4byte BattleScript_EffectRage
	.4byte BattleScript_EffectMimic
	.4byte BattleScript_EffectMetronome
	.4byte BattleScript_EffectLeechSeed
	.4byte BattleScript_EffectDoNothing
	.4byte BattleScript_EffectDisable
	.4byte BattleScript_EffectLevelDamage
	.4byte BattleScript_EffectPsywave
	.4byte BattleScript_EffectCounter
	.4byte BattleScript_EffectEncore
	.4byte BattleScript_EffectPainSplit
	.4byte BattleScript_EffectSnore
	.4byte BattleScript_EffectConversion2
	.4byte BattleScript_EffectLockOn
	.4byte BattleScript_EffectSketch
	.4byte BattleScript_EffectHammerArm
	.4byte BattleScript_EffectSleepTalk
	.4byte BattleScript_EffectDestinyBond
	.4byte BattleScript_EffectFlail
	.4byte BattleScript_EffectSpite
	.4byte BattleScript_EffectFalseSwipe
	.4byte BattleScript_EffectHealBell
	.4byte BattleScript_EffectAlwaysCrit
	.4byte BattleScript_EffectTripleKick
	.4byte BattleScript_EffectThief
	.4byte BattleScript_EffectMeanLook
	.4byte BattleScript_EffectNightmare
	.4byte BattleScript_EffectMinimize
	.4byte BattleScript_EffectCurse
	.4byte BattleScript_EffectHealingWish
	.4byte BattleScript_EffectProtect
	.4byte BattleScript_EffectSpikes
	.4byte BattleScript_EffectForesight
	.4byte BattleScript_EffectPerishSong
	.4byte BattleScript_EffectSandstorm
	.4byte BattleScript_EffectEndure
	.4byte BattleScript_EffectRollout
	.4byte BattleScript_EffectSwagger
	.4byte BattleScript_EffectFuryCutter
	.4byte BattleScript_EffectAttract
	.4byte BattleScript_EffectReturn
	.4byte BattleScript_EffectPresent
	.4byte BattleScript_EffectFrustration
	.4byte BattleScript_EffectSafeguard
	.4byte BattleScript_EffectThawHit
	.4byte BattleScript_EffectMagnitude
	.4byte BattleScript_EffectBatonPass
	.4byte BattleScript_EffectPursuit
	.4byte BattleScript_EffectRapidSpin
	.4byte BattleScript_EffectSonicboom
	.4byte BattleScript_EffectCaptivate
	.4byte BattleScript_EffectMorningSun
	.4byte BattleScript_EffectSynthesis
	.4byte BattleScript_EffectMoonlight
	.4byte BattleScript_EffectHiddenPower
	.4byte BattleScript_EffectRainDance
	.4byte BattleScript_EffectSunnyDay
	.4byte BattleScript_EffectDefenseUpHit
	.4byte BattleScript_EffectAttackUpHit
	.4byte BattleScript_EffectAllStatsUpHit
	.4byte BattleScript_EffectFellStinger
	.4byte BattleScript_EffectBellyDrum
	.4byte BattleScript_EffectPsychUp
	.4byte BattleScript_EffectMirrorCoat
	.4byte BattleScript_EffectSkullBash
	.4byte BattleScript_EffectTwister
	.4byte BattleScript_EffectEarthquake
	.4byte BattleScript_EffectFutureSight
	.4byte BattleScript_EffectGust
	.4byte BattleScript_EffectStomp
	.4byte BattleScript_EffectSolarbeam
	.4byte BattleScript_EffectThunder
	.4byte BattleScript_EffectTeleport
	.4byte BattleScript_EffectBeatUp
	.4byte BattleScript_EffectSemiInvulnerable
	.4byte BattleScript_EffectDefenseCurl
	.4byte BattleScript_EffectSoftboiled
	.4byte BattleScript_EffectFakeOut
	.4byte BattleScript_EffectUproar
	.4byte BattleScript_EffectStockpile
	.4byte BattleScript_EffectSpitUp
	.4byte BattleScript_EffectSwallow
	.4byte BattleScript_EffectWorrySeed
	.4byte BattleScript_EffectHail
	.4byte BattleScript_EffectTorment
	.4byte BattleScript_EffectFlatter
	.4byte BattleScript_EffectWillOWisp
	.4byte BattleScript_EffectMemento
	.4byte BattleScript_EffectFacade
	.4byte BattleScript_EffectFocusPunch
	.4byte BattleScript_EffectSmellingsalt
	.4byte BattleScript_EffectFollowMe
	.4byte BattleScript_EffectNaturePower
	.4byte BattleScript_EffectCharge
	.4byte BattleScript_EffectTaunt
	.4byte BattleScript_EffectHelpingHand
	.4byte BattleScript_EffectTrick
	.4byte BattleScript_EffectRolePlay
	.4byte BattleScript_EffectWish
	.4byte BattleScript_EffectAssist
	.4byte BattleScript_EffectIngrain
	.4byte BattleScript_EffectSuperpower
	.4byte BattleScript_EffectMagicCoat
	.4byte BattleScript_EffectRecycle
	.4byte BattleScript_EffectRevenge
	.4byte BattleScript_EffectBrickBreak
	.4byte BattleScript_EffectYawn
	.4byte BattleScript_EffectKnockOff
	.4byte BattleScript_EffectEndeavor
	.4byte BattleScript_EffectEruption
	.4byte BattleScript_EffectSkillSwap
	.4byte BattleScript_EffectImprison
	.4byte BattleScript_EffectRefresh
	.4byte BattleScript_EffectGrudge
	.4byte BattleScript_EffectSnatch
	.4byte BattleScript_EffectLowKick
	.4byte BattleScript_EffectSecretPower
	.4byte BattleScript_EffectRecoil33
	.4byte BattleScript_EffectTeeterDance
	.4byte BattleScript_EffectHitEscape
	.4byte BattleScript_EffectMudSport
	.4byte BattleScript_EffectPoisonFang
	.4byte BattleScript_EffectWeatherBall
	.4byte BattleScript_EffectOverheat
	.4byte BattleScript_EffectTickle
	.4byte BattleScript_EffectCosmicPower
	.4byte BattleScript_EffectSkyUppercut
	.4byte BattleScript_EffectBulkUp
	.4byte BattleScript_EffectPlaceholder
	.4byte BattleScript_EffectWaterSport
	.4byte BattleScript_EffectCalmMind
	.4byte BattleScript_EffectDragonDance
	.4byte BattleScript_EffectCamouflage
	.4byte BattleScript_EffectPledge
	.4byte BattleScript_EffectFling
	.4byte BattleScript_EffectNaturalGift
	.4byte BattleScript_EffectWakeUpSlap
	.4byte BattleScript_EffectWringOut
	.4byte BattleScript_EffectHex
	.4byte BattleScript_EffectAssurance
	.4byte BattleScript_EffectTrump_card
	.4byte BattleScript_EffectAcrobatics
	.4byte BattleScript_EffectHeatCrash
	.4byte BattleScript_EffectPunishment
	.4byte BattleScript_EffectStoredPower
	.4byte BattleScript_EffectElectroBall
	.4byte BattleScript_EffectGyroBall
	.4byte BattleScript_EffectEchoedVoice
	.4byte BattleScript_EffectPayback
	.4byte BattleScript_EffectRound
	.4byte BattleScript_EffectBrine
	.4byte BattleScript_EffectVenoshock
	.4byte BattleScript_EffectRetalitate
	.4byte BattleScript_EffectBulldoze
	.4byte BattleScript_EffectFoulPlay
	.4byte BattleScript_EffectPsyshock
	.4byte BattleScript_EffectRoost
	.4byte BattleScript_EffectGravity
	.4byte BattleScript_EffectMircleEye
	.4byte BattleScript_EffectTailwind
	.4byte BattleScript_EffectEmbargo
	.4byte BattleScript_EffectAquaRing
	.4byte BattleScript_EffectTrickRoom
	.4byte BattleScript_EffectWonderRoom
	.4byte BattleScript_EffectMagicRoom
	.4byte BattleScript_EffectMagnetRise
	.4byte BattleScript_EffectToxicSpikes
	.4byte BattleScript_EffectGastroAcid
	.4byte BattleScript_EffectStealthRock
	.4byte BattleScript_EffectTelekinesis
	.4byte BattleScript_EffectPowerSwap
	.4byte BattleScript_EffectGuardSwap
	.4byte BattleScript_EffectHeartSwap
	.4byte BattleScript_EffectPowerSplit
	.4byte BattleScript_EffectGuardSplit
	.4byte BattleScript_EffectStickyWeb
	.4byte BattleScript_EffectMetalBurst
	.4byte BattleScript_EffectLuckyChant
	.4byte BattleScript_EffectSuckerPunch
	.4byte BattleScript_EffectSpecialDefenseDownHit2
	.4byte BattleScript_EffectSimpleBeam
	.4byte BattleScript_EffectEntrainment
	.4byte BattleScript_EffectHealPulse
	.4byte BattleScript_EffectQuash
	.4byte BattleScript_EffectIonDeluge
	.4byte BattleScript_EffectFreezeDry
	.4byte BattleScript_EffectTopsyTurvy
	.4byte BattleScript_EffectMistyTerrain
	.4byte BattleScript_EffectGrassyTerrain
	.4byte BattleScript_EffectElectricTerrain
	.4byte BattleScript_EffectPsychicTerrain
	.4byte BattleScript_EffectAttackAccUp
	.4byte BattleScript_EffectAttackSpAttackUp
	.4byte BattleScript_EffectHurricane
	.4byte BattleScript_EffectTwoTypedMove
	.4byte BattleScript_EffectMeFirst
	.4byte BattleScript_EffectSpeedUpHit
	.4byte BattleScript_EffectQuiverDance
	.4byte BattleScript_EffectCoil
	.4byte BattleScript_EffectElectrify
	.4byte BattleScript_EffectScald
	.4byte BattleScript_EffectReflectType
	.4byte BattleScript_EffectSoak
	.4byte BattleScript_EffectGrowth
	.4byte BattleScript_EffectCloseCombat
	.4byte BattleScript_EffectLastResort
	.4byte BattleScript_EffectRecoil33WithStatus
	.4byte BattleScript_EffectFlinchWithStatus
	.4byte BattleScript_EffectRecoil50
	.4byte BattleScript_EffectShellSmash
	.4byte BattleScript_EffectShiftGear
	.4byte BattleScript_EffectDefenseUp3
	.4byte BattleScript_EffectNobleRoar
	.4byte BattleScript_EffectVenomDrench
	.4byte BattleScript_EffectToxicThread
	.4byte BattleScript_EffectClearSmog
	.4byte BattleScript_EffectHitSwitchTarget
	.4byte BattleScript_EffectFinalGambit
	.4byte BattleScript_EffectChangeTypeOnItem
	.4byte BattleScript_EffectAutotomize
	.4byte BattleScript_EffectCopycat
	.4byte BattleScript_EffectDefog
	.4byte BattleScript_EffectHitEnemyHealAlly
	.4byte BattleScript_EffectSmackDown
	.4byte BattleScript_EffectSynchronoise
	.4byte BattleScript_EffectPsychoShift
	.4byte BattleScript_EffectPowerTrick
	.4byte BattleScript_EffectFlameBurst
	.4byte BattleScript_EffectAfterYou
	.4byte BattleScript_EffectBestow
	.4byte BattleScript_EffectRototiller
	.4byte BattleScript_EffectFlowerShield
	.4byte BattleScript_EffectHitPreventEscape
	.4byte BattleScript_EffectSpeedSwap
	.4byte BattleScript_EffectDefenseUp2Hit
	.4byte BattleScript_EffectRevelationDance
	.4byte BattleScript_EffectAuroraVeil
	.4byte BattleScript_EffectThirdType
	.4byte BattleScript_EffectFeint
	.4byte BattleScript_EffectSparklingAria
	.4byte BattleScript_EffectAcupressure
	.4byte BattleScript_EffectAromaticMist
	.4byte BattleScript_EffectPowder
	.4byte BattleScript_EffectSpAtkUpHit
	.4byte BattleScript_EffectBelch
	.4byte BattleScript_EffectPartingShot
	.4byte BattleScript_EffectSpectralThief
	.4byte BattleScript_EffectVCreate
	.4byte BattleScript_EffectMatBlock
	.4byte BattleScript_EffectStompingTantrum
	.4byte BattleScript_EffectCoreEnforcer
	.4byte BattleScript_EffectInstruct
	.4byte BattleScript_EffectThroatChop
	.4byte BattleScript_EffectLaserFocus
	.4byte BattleScript_EffectMagneticFlux
	.4byte BattleScript_EffectGearUp
	.4byte BattleScript_EffectIncinerate
	.4byte BattleScript_EffectBugBite
	.4byte BattleScript_EffectStrengthSap
	.4byte BattleScript_EffectMindBlown
	.4byte BattleScript_EffectPurify
	.4byte BattleScript_EffectBurnUp
	.4byte BattleScript_EffectShoreUp
	.4byte BattleScript_EffectGeomancy
	.4byte BattleScript_EffectFairyLock
	.4byte BattleScript_EffectAllySwitch
	.4byte BattleScript_EffectSleepHit
	.4byte BattleScript_EffectPhotonGeyser
	.4byte BattleScript_EffectShellSideArm

BattleScript_EffectShellSideArm:
	shellsidearmcheck
	setmoveeffect MOVE_EFFECT_POISON
	goto BattleScript_EffectHit

BattleScript_EffectPhotonGeyser:
	photongeysercheck
	goto BattleScript_EffectHit

BattleScript_EffectSleepHit:
	setmoveeffect MOVE_EFFECT_SLEEP
	goto BattleScript_EffectHit
	
BattleScript_EffectAllySwitch:
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	jumpifnoally BS_ATTACKER, BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_ALLYSWITCHPOSITION
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd
	
BattleScript_EffectFairyLock:
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	trysetfairylock BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_NOONEWILLBEABLETORUNAWAY
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd
	
BattleScript_EffectBurnUp:
	attackcanceler
	attackstring
	ppreduce
	jumpiftype BS_ATTACKER, TYPE_FIRE, BattleScript_BurnUpWorks
	goto BattleScript_ButItFailed
BattleScript_BurnUpWorks:
	accuracycheck BattleScript_MoveMissedPause, ACC_CURR_MOVE
	critcalc
	damagecalc
	adjustdamage
	attackanimation
	waitanimation
	effectivenesssound
	hitanimation BS_TARGET
	waitstate
	healthbarupdate BS_TARGET
	datahpupdate BS_TARGET
	critmessage
	waitmessage B_WAIT_TIME_LONG
	resultmessage
	waitmessage B_WAIT_TIME_LONG
	losetype BS_ATTACKER, TYPE_FIRE
	printstring STRINGID_ATTACKERLOSTFIRETYPE
	waitmessage B_WAIT_TIME_LONG
	tryfaintmon BS_TARGET, FALSE, NULL
	goto BattleScript_MoveEnd
	
BattleScript_EffectPurify:
	attackcanceler
	attackstring
	ppreduce
	accuracycheck BattleScript_ButItFailed, NO_ACC_CALC_CHECK_LOCK_ON
	jumpifstatus BS_TARGET, STATUS1_ANY, BattleScript_PurifyWorks
	goto BattleScript_ButItFailed
BattleScript_PurifyWorks:
	attackanimation
	waitanimation
	curestatus BS_TARGET
	updatestatusicon BS_TARGET
	printstring STRINGID_ATTACKERCUREDTARGETSTATUS
	waitmessage B_WAIT_TIME_LONG
	tryhealhalfhealth BattleScript_AlreadyAtFullHp, BS_ATTACKER
	goto BattleScript_RestoreHp
	
BattleScript_EffectStrengthSap:
	setstatchanger STAT_ATK, 1, TRUE
	attackcanceler
	jumpifsubstituteblocks BattleScript_ButItFailedAtkStringPpReduce
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	jumpifstat BS_TARGET, CMP_NOT_EQUAL, STAT_ATK, MIN_STAT_STAGE, BattleScript_StrengthSapTryLower
	pause B_WAIT_TIME_SHORT
	statbuffchange STAT_BUFF_ALLOW_PTR, BattleScript_MoveEnd
	printfromtable gStatDownStringIds
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd
BattleScript_StrengthSapTryLower:
	getstatvalue BS_TARGET, STAT_ATK
	jumpiffullhp BS_ATTACKER, BattleScript_StrengthSapMustLower
	attackanimation
	waitanimation
	statbuffchange STAT_BUFF_ALLOW_PTR, BattleScript_StrengthSapHp
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_FELL_EMPTY, BattleScript_StrengthSapHp
BattleScript_StrengthSapLower:
	setgraphicalstatchangevalues
	playanimation BS_TARGET, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
	printfromtable gStatDownStringIds
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_StrengthSapHp
@ Drain HP without lowering a stat
BattleScript_StrengthSapTryHp:
	jumpiffullhp BS_ATTACKER, BattleScript_ButItFailed
	attackanimation
	waitanimation
BattleScript_StrengthSapHp:
	jumpiffullhp BS_ATTACKER, BattleScript_MoveEnd
	manipulatedamage DMG_BIG_ROOT
	healthbarupdate BS_ATTACKER
	datahpupdate BS_ATTACKER
	printstring STRINGID_PKMNENERGYDRAINED
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd
BattleScript_StrengthSapMustLower:
	statbuffchange STAT_BUFF_ALLOW_PTR, BattleScript_MoveEnd
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_FELL_EMPTY, BattleScript_MoveEnd
	attackanimation
	waitanimation
	goto BattleScript_StrengthSapLower

BattleScript_EffectBugBite:
	setmoveeffect MOVE_EFFECT_BUG_BITE | MOVE_EFFECT_CERTAIN
	goto BattleScript_EffectHit

BattleScript_EffectIncinerate:
	setmoveeffect MOVE_EFFECT_INCINERATE | MOVE_EFFECT_CERTAIN
	goto BattleScript_EffectHit

BattleScript_MoveEffectIncinerate::
	printstring STRINGID_INCINERATEBURN
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_MoveEffectBugBite::
	printstring STRINGID_BUGBITE
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_EffectCoreEnforcer:
	setmoveeffect MOVE_EFFECT_CORE_ENFORCER | MOVE_EFFECT_CERTAIN
	goto BattleScript_EffectHit

BattleScript_MoveEffectCoreEnforcer::
	setgastroacid BattleScript_CoreEnforcerRet
	printstring STRINGID_PKMNSABILITYSUPPRESSED
	waitmessage B_WAIT_TIME_LONG
BattleScript_CoreEnforcerRet:
	return

BattleScript_EffectLaserFocus:
	attackcanceler
	attackstring
	ppreduce
	setuserstatus3 STATUS3_LASER_FOCUS, BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_LASERFOCUS
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectVCreate:
	setmoveeffect MOVE_EFFECT_V_CREATE | MOVE_EFFECT_AFFECTS_USER
	goto BattleScript_EffectHit

BattleScript_VCreateStatLoss::
	jumpifstat BS_ATTACKER, CMP_GREATER_THAN, STAT_DEF, MIN_STAT_STAGE, BattleScript_VCreateStatAnim
	jumpifstat BS_ATTACKER, CMP_GREATER_THAN, STAT_SPDEF, MIN_STAT_STAGE, BattleScript_VCreateStatAnim
	jumpifstat BS_ATTACKER, CMP_EQUAL, STAT_SPEED, MIN_STAT_STAGE, BattleScript_VCreateStatLossRet
BattleScript_VCreateStatAnim:
	setbyte sSTAT_ANIM_PLAYED, FALSE
	playstatchangeanimation BS_ATTACKER, BIT_DEF | BIT_SPDEF | BIT_SPEED, STAT_CHANGE_NEGATIVE | STAT_CHANGE_CANT_PREVENT
	setstatchanger STAT_DEF, 1, TRUE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_NOT_PROTECT_AFFECTED | MOVE_EFFECT_CERTAIN, BattleScript_VCreateTrySpDef
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_VCreateTrySpDef
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_VCreateTrySpDef:
	setstatchanger STAT_SPDEF, 1, TRUE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_NOT_PROTECT_AFFECTED | MOVE_EFFECT_CERTAIN, BattleScript_VCreateTrySpeed
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_VCreateTrySpeed
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_VCreateTrySpeed:
	setstatchanger STAT_SPEED, 1, TRUE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_NOT_PROTECT_AFFECTED | MOVE_EFFECT_CERTAIN, BattleScript_VCreateStatLossRet
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_VCreateStatLossRet
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_VCreateStatLossRet:
	return

BattleScript_SpectralThiefSteal::
	printstring STRINGID_SPECTRALTHIEFSTEAL
	waitmessage B_WAIT_TIME_LONG
	setbyte sB_ANIM_ARG2, 0
	playanimation BS_ATTACKER, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
	spectralthiefprintstats
	return

BattleScript_EffectSpectralThief:
	setmoveeffect MOVE_EFFECT_SPECTRAL_THIEF
	goto BattleScript_EffectHit

BattleScript_EffectPartingShot::
	attackcanceler
	attackstring
	ppreduce
	jumpifstat BS_TARGET, CMP_GREATER_THAN, STAT_ATK, MIN_STAT_STAGE, BattleScript_EffectPartingShotTryAtk
	jumpifstat BS_TARGET, CMP_EQUAL, STAT_SPATK, MIN_STAT_STAGE, BattleScript_CantLowerMultipleStats
BattleScript_EffectPartingShotTryAtk:
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE	
	attackanimation
	waitanimation
	setbyte sSTAT_ANIM_PLAYED, FALSE
	playstatchangeanimation BS_TARGET, BIT_ATK | BIT_SPATK, STAT_CHANGE_NEGATIVE | STAT_CHANGE_MULTIPLE_STATS
	playstatchangeanimation BS_TARGET, BIT_ATK, STAT_CHANGE_NEGATIVE
	setstatchanger STAT_ATK, 1, TRUE
	statbuffchange STAT_BUFF_ALLOW_PTR, BattleScript_EffectPartingShotTrySpAtk
	printfromtable gStatDownStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_EffectPartingShotTrySpAtk:
	playstatchangeanimation BS_TARGET, BIT_SPATK, STAT_CHANGE_NEGATIVE
	setstatchanger STAT_SPATK, 1, TRUE
	statbuffchange STAT_BUFF_ALLOW_PTR, BattleScript_EffectPartingShotSwitch
	printfromtable gStatDownStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_EffectPartingShotSwitch:	
	moveendall
	jumpifbattletype BATTLE_TYPE_ARENA, BattleScript_PartingShotEnd
	jumpifcantswitch SWITCH_IGNORE_ESCAPE_PREVENTION | BS_ATTACKER, BattleScript_PartingShotEnd
	openpartyscreen BS_ATTACKER, BattleScript_PartingShotEnd
	switchoutabilities BS_ATTACKER
	waitstate
	switchhandleorder BS_ATTACKER, 2
	returntoball BS_ATTACKER
	getswitchedmondata BS_ATTACKER
	switchindataupdate BS_ATTACKER
	hpthresholds BS_ATTACKER
	printstring STRINGID_SWITCHINMON
	switchinanim BS_ATTACKER, TRUE
	waitstate
	switchineffects BS_ATTACKER
BattleScript_PartingShotEnd:
	end

BattleScript_EffectSpAtkUpHit:
	setmoveeffect MOVE_EFFECT_SP_ATK_PLUS_1 | MOVE_EFFECT_AFFECTS_USER
	goto BattleScript_EffectHit

BattleScript_EffectPowder:
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, NO_ACC_CALC_CHECK_LOCK_ON
	attackstring
	ppreduce
	jumpifstatus2 BS_TARGET, STATUS2_POWDER, BattleScript_ButItFailed
	setpowder BS_TARGET
	attackanimation
	waitanimation
	printstring STRINGID_COVEREDINPOWDER
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectAromaticMist:
	attackcanceler
	attackstring
	ppreduce
	jumpifbyteequal gBattlerTarget, gBattlerAttacker, BattleScript_ButItFailed
	jumpiftargetally BattleScript_EffectAromaticMistWorks
	goto BattleScript_ButItFailed
BattleScript_EffectAromaticMistWorks:
	setstatchanger STAT_SPDEF, 1, FALSE
	statbuffchange STAT_BUFF_ALLOW_PTR, BattleScript_EffectAromaticMistEnd
	jumpifbyte CMP_NOT_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_AromaticMistAnim
	pause 16
	printstring STRINGID_TARGETSTATWONTGOHIGHER
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_EffectAromaticMistEnd
BattleScript_AromaticMistAnim:
	attackanimation
	waitanimation
	setgraphicalstatchangevalues
	playanimation BS_TARGET, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_EffectAromaticMistEnd:
	goto BattleScript_MoveEnd

BattleScript_EffectMagneticFlux::
	attackcanceler
	attackstring
	ppreduce
	setbyte gBattleCommunication, 0
BattleScript_EffectMagneticFluxStart:
	jumpifability BS_TARGET, ABILITY_MINUS, BattleScript_EffectMagneticFluxCheckStats
	jumpifability BS_TARGET, ABILITY_PLUS, BattleScript_EffectMagneticFluxCheckStats
	goto BattleScript_EffectMagneticFluxLoop
BattleScript_EffectMagneticFluxCheckStats:
	jumpifstat BS_TARGET, CMP_LESS_THAN, STAT_DEF, MAX_STAT_STAGE, BattleScript_EffectMagneticFluxTryDef
	jumpifstat BS_TARGET, CMP_EQUAL, STAT_SPDEF, MAX_STAT_STAGE, BattleScript_EffectMagneticFluxLoop
BattleScript_EffectMagneticFluxTryDef:
	jumpifbyte CMP_NOT_EQUAL, gBattleCommunication, 0, BattleScript_EffectMagneticFluxSkipAnim
	attackanimation
	waitanimation
BattleScript_EffectMagneticFluxSkipAnim:
	setbyte sSTAT_ANIM_PLAYED, FALSE
	playstatchangeanimation BS_TARGET, BIT_DEF | BIT_SPDEF, 0
	setstatchanger STAT_DEF, 1, FALSE
	statbuffchange STAT_BUFF_ALLOW_PTR, BattleScript_EffectMagneticFluxTrySpDef
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_EffectMagneticFluxTrySpDef
	addbyte gBattleCommunication, 1
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_EffectMagneticFluxTrySpDef:
	setstatchanger STAT_SPDEF, 1, FALSE
	statbuffchange STAT_BUFF_ALLOW_PTR, BattleScript_EffectMagneticFluxLoop
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_EffectMagneticFluxLoop
	addbyte gBattleCommunication, 1
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_EffectMagneticFluxLoop:
	jumpifbytenotequal gBattlerTarget, gBattlerAttacker, BattleScript_EffectMagneticFluxEnd
	setallytonexttarget BattleScript_EffectMagneticFluxStart
BattleScript_EffectMagneticFluxEnd:
	jumpifbyte CMP_NOT_EQUAL, gBattleCommunication, 0, BattleScript_MoveEnd
	goto BattleScript_ButItFailed

BattleScript_EffectGearUp::
	attackcanceler
	attackstring
	ppreduce
	setbyte gBattleCommunication, 0
BattleScript_EffectGearUpStart:
	jumpifability BS_TARGET, ABILITY_MINUS, BattleScript_EffectGearUpCheckStats
	jumpifability BS_TARGET, ABILITY_PLUS, BattleScript_EffectGearUpCheckStats
	goto BattleScript_EffectGearUpLoop
BattleScript_EffectGearUpCheckStats:
	jumpifstat BS_TARGET, CMP_LESS_THAN, STAT_ATK, MAX_STAT_STAGE, BattleScript_EffectGearUpTryAtk
	jumpifstat BS_TARGET, CMP_EQUAL, STAT_SPATK, MAX_STAT_STAGE, BattleScript_EffectGearUpLoop
BattleScript_EffectGearUpTryAtk:
	jumpifbyte CMP_NOT_EQUAL, gBattleCommunication, 0, BattleScript_EffectGearUpSkipAnim
	attackanimation
	waitanimation
BattleScript_EffectGearUpSkipAnim:
	setbyte sSTAT_ANIM_PLAYED, FALSE
	playstatchangeanimation BS_TARGET, BIT_ATK | BIT_SPATK, 0
	setstatchanger STAT_ATK, 1, FALSE
	statbuffchange STAT_BUFF_ALLOW_PTR, BattleScript_EffectGearUpTrySpAtk
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_EffectGearUpTrySpAtk
	addbyte gBattleCommunication, 1
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_EffectGearUpTrySpAtk:
	setstatchanger STAT_SPATK, 1, FALSE
	statbuffchange STAT_BUFF_ALLOW_PTR, BattleScript_EffectGearUpLoop
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_EffectGearUpLoop
	addbyte gBattleCommunication, 1
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_EffectGearUpLoop:
	jumpifbytenotequal gBattlerTarget, gBattlerAttacker, BattleScript_EffectGearUpEnd
	setallytonexttarget BattleScript_EffectGearUpStart
BattleScript_EffectGearUpEnd:
	jumpifbyte CMP_NOT_EQUAL, gBattleCommunication, 0, BattleScript_MoveEnd
	goto BattleScript_ButItFailed

BattleScript_EffectAcupressure:
	attackcanceler
	jumpifbyteequal gBattlerTarget, gBattlerAttacker, BattleScript_EffectAcupressureTry
	jumpifstatus2 BS_TARGET, STATUS2_SUBSTITUTE, BattleScript_PrintMoveMissed
BattleScript_EffectAcupressureTry:
	attackstring
	ppreduce
	tryaccupressure BS_TARGET, BattleScript_ButItFailed
	attackanimation
	waitanimation
	setgraphicalstatchangevalues
	playanimation BS_TARGET, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
	statbuffchange MOVE_EFFECT_CERTAIN, BattleScript_MoveEnd
	printstring STRINGID_DEFENDERSSTATROSE
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_MoveEffectFeint::
	printstring STRINGID_FELLFORFEINT
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_EffectFeint:
	setmoveeffect MOVE_EFFECT_FEINT
	goto BattleScript_EffectHit

BattleScript_EffectThirdType:
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	trysetthirdtype BS_TARGET, BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_THIRDTYPEADDED
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectDefenseUp2Hit:
	setmoveeffect MOVE_EFFECT_DEF_PLUS_2 | MOVE_EFFECT_AFFECTS_USER
	goto BattleScript_EffectHit

BattleScript_EffectFlowerShield:
	attackcanceler
	attackstring
	ppreduce
	selectfirstvalidtarget
BattleScript_FlowerShieldIsAnyGrass:
	jumpiftype BS_TARGET, TYPE_GRASS, BattleScript_FlowerShieldLoopStart
	jumpifnexttargetvalid BattleScript_FlowerShieldIsAnyGrass
	goto BattleScript_ButItFailed
BattleScript_FlowerShieldLoopStart:
	selectfirstvalidtarget
BattleScript_FlowerShieldLoop:
	movevaluescleanup
	jumpiftype BS_TARGET, TYPE_GRASS, BattleScript_FlowerShieldLoop2
	goto BattleScript_FlowerShieldMoveTargetEnd
BattleScript_FlowerShieldLoop2:
	setstatchanger STAT_DEF, 1, FALSE
	statbuffchange STAT_BUFF_ALLOW_PTR, BattleScript_FlowerShieldMoveTargetEnd
	jumpifbyte CMP_LESS_THAN, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_FlowerShieldDoAnim
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_ROSE_EMPTY, BattleScript_FlowerShieldMoveTargetEnd
	pause 21
	goto BattleScript_FlowerShieldString
BattleScript_FlowerShieldDoAnim:
	attackanimation
	waitanimation
	setgraphicalstatchangevalues
	playanimation BS_TARGET, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
BattleScript_FlowerShieldString:
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_FlowerShieldMoveTargetEnd:
	moveendto MOVEEND_NEXT_TARGET
	jumpifnexttargetvalid BattleScript_FlowerShieldLoop
	end

BattleScript_EffectRototiller:
	attackcanceler
	attackstring
	ppreduce
	selectfirstvalidtarget
BattleScript_RototillerLoop:
	movevaluescleanup
	jumpifnotgrounded BS_TARGET, BattleScript_RototillerNoEffect
	jumpiftype BS_TARGET, TYPE_GRASS, BattleScript_RototillerLoop2
BattleScript_RototillerNoEffect:
	pause B_WAIT_TIME_SHORT
	printstring STRINGID_NOEFFECTONTARGET
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_RototillerMoveTargetEnd
BattleScript_RototillerLoop2:
	jumpifstat BS_TARGET, CMP_LESS_THAN, STAT_ATK, MAX_STAT_STAGE, BattleScript_RototillerDoMoveAnim
	jumpifstat BS_TARGET, CMP_EQUAL, STAT_SPATK, MAX_STAT_STAGE, BattleScript_RototillerCantRaiseMultipleStats
BattleScript_RototillerDoMoveAnim::
	attackanimation
	waitanimation
	setbyte sSTAT_ANIM_PLAYED, FALSE
	playstatchangeanimation BS_TARGET, BIT_ATK | BIT_SPATK, 0
	setstatchanger STAT_ATK, 1, FALSE
	statbuffchange STAT_BUFF_ALLOW_PTR, BattleScript_RototillerTrySpAtk
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_RototillerTrySpAtk
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_RototillerTrySpAtk::
	setstatchanger STAT_SPATK, 1, FALSE
	statbuffchange STAT_BUFF_ALLOW_PTR, BattleScript_RototillerMoveTargetEnd
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_RototillerMoveTargetEnd
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_RototillerMoveTargetEnd:
	moveendto MOVEEND_NEXT_TARGET
	jumpifnexttargetvalid BattleScript_RototillerLoop
	end
BattleScript_RototillerCantRaiseMultipleStats:
	printstring STRINGID_STATSWONTINCREASE2
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_RototillerMoveTargetEnd

BattleScript_EffectBestow:
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, NO_ACC_CALC_CHECK_LOCK_ON
	attackstring
	ppreduce
	jumpifsubstituteblocks BattleScript_ButItFailed
	trybestow BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_BESTOWITEMGIVING
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectAfterYou:
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	tryafteryou BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_KINDOFFER
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectFlameBurst:
	setmoveeffect MOVE_EFFECT_FLAME_BURST | MOVE_EFFECT_AFFECTS_USER
	goto BattleScript_EffectHit

BattleScript_MoveEffectFlameBurst::
	tryfaintmon BS_TARGET, FALSE, NULL
	printstring STRINGID_BURSTINGFLAMESHIT
	waitmessage B_WAIT_TIME_LONG
	savetarget
	copybyte gBattlerTarget, sBATTLER
	healthbarupdate BS_TARGET
	datahpupdate BS_TARGET
	tryfaintmon BS_TARGET, FALSE, NULL
	restoretarget
	goto BattleScript_MoveEnd

BattleScript_EffectPowerTrick:
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	powertrick BS_ATTACKER
	attackanimation
	waitanimation
	printstring STRINGID_PKMNSWITCHEDATKANDDEF
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectPsychoShift:
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	jumpifstatus BS_ATTACKER, STATUS1_ANY, BattleScript_EffectPsychoShiftCanWork
	goto BattleScript_ButItFailed
BattleScript_EffectPsychoShiftCanWork:
	jumpifstatus BS_TARGET, STATUS1_ANY, BattleScript_ButItFailed
	jumpifsafeguard BattleScript_SafeguardProtected
	trypsychoshift BattleScript_MoveEnd
	attackanimation
	waitanimation
	copybyte gEffectBattler, gBattlerTarget
	printfromtable gStatusConditionsStringIds
	waitmessage B_WAIT_TIME_LONG
	statusanimation BS_TARGET
	updatestatusicon BS_TARGET
	curestatus BS_ATTACKER
	printstring STRINGID_PKMNSTATUSNORMAL
	waitmessage B_WAIT_TIME_LONG
	updatestatusicon BS_ATTACKER
	goto BattleScript_MoveEnd

BattleScript_EffectSynchronoise:
	attackcanceler
	attackstring
	ppreduce
	selectfirstvalidtarget
BattleScript_SynchronoiseLoop:
	movevaluescleanup
	jumpifcantusesynchronoise BattleScript_SynchronoiseNoEffect
	accuracycheck BattleScript_SynchronoiseMissed, ACC_CURR_MOVE
	critcalc
	damagecalc
	adjustdamage
	attackanimation
	waitanimation
	effectivenesssound
	hitanimation BS_TARGET
	waitstate
	healthbarupdate BS_TARGET
	datahpupdate BS_TARGET
	critmessage
	waitmessage B_WAIT_TIME_LONG
	resultmessage
	waitmessage B_WAIT_TIME_LONG
	printstring STRINGID_EMPTYSTRING3
	waitmessage 1
	tryfaintmon BS_TARGET, FALSE, NULL
BattleScript_SynchronoiseMoveTargetEnd:
	moveendto MOVEEND_NEXT_TARGET
	jumpifnexttargetvalid BattleScript_SynchronoiseLoop
	end
BattleScript_SynchronoiseMissed:
	pause B_WAIT_TIME_SHORT
	resultmessage
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_SynchronoiseMoveTargetEnd
BattleScript_SynchronoiseNoEffect:
	pause B_WAIT_TIME_SHORT
	printstring STRINGID_NOEFFECTONTARGET
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_SynchronoiseMoveTargetEnd

BattleScript_EffectSmackDown:
	setmoveeffect MOVE_EFFECT_SMACK_DOWN
	goto BattleScript_EffectHit

BattleScript_MoveEffectSmackDown::
	printstring STRINGID_FELLSTRAIGHTDOWN
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_EffectHitEnemyHealAlly:
	jumpiftargetally BattleScript_EffectHealPulse
	goto BattleScript_EffectHit

BattleScript_EffectDefog:
	setstatchanger STAT_EVASION, 1, TRUE
	attackcanceler
	jumpifsubstituteblocks BattleScript_DefogIfCanClearHazards
	jumpifstat BS_TARGET, CMP_NOT_EQUAL, STAT_EVASION, MIN_STAT_STAGE, BattleScript_DefogWorks
BattleScript_DefogIfCanClearHazards:
	defogclear BS_ATTACKER, FALSE, BattleScript_ButItFailedAtkStringPpReduce
BattleScript_DefogWorks:
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	statbuffchange STAT_BUFF_ALLOW_PTR, BattleScript_DefogTryHazardsWithAnim
	jumpifbyte CMP_LESS_THAN, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_DECREASE, BattleScript_DefogDoAnim
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_FELL_EMPTY, BattleScript_DefogTryHazardsWithAnim
	pause B_WAIT_TIME_SHORT
	goto BattleScript_DefogPrintString
BattleScript_DefogDoAnim::
	attackanimation
	waitanimation
	setgraphicalstatchangevalues
	playanimation BS_TARGET, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
BattleScript_DefogPrintString::
	printfromtable gStatDownStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_DefogTryHazards::
	copybyte gEffectBattler, gBattlerAttacker
	defogclear BS_ATTACKER, TRUE, NULL
	copybyte gBattlerAttacker, gEffectBattler
	goto BattleScript_MoveEnd
BattleScript_DefogTryHazardsWithAnim:
	attackanimation
	waitanimation
	goto BattleScript_DefogTryHazards

BattleScript_EffectCopycat:
	attackcanceler
	attackstring
	pause 5
	trycopycat BattleScript_CopycatFail
	attackanimation
	waitanimation
	jumptocalledmove TRUE
BattleScript_CopycatFail:
	ppreduce
	goto BattleScript_ButItFailed

BattleScript_EffectInstruct:
	attackcanceler
	attackstring
	ppreduce
	pause 5
	tryinstruct BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_USEDINSTRUCTEDMOVE
	waitmessage B_WAIT_TIME_LONG
	setbyte sB_ANIM_TURN, 0
	setbyte sB_ANIM_TARGETS_HIT, 0
	jumptocalledmove TRUE

BattleScript_EffectAutotomize:
	setstatchanger STAT_SPEED, 2, FALSE
	attackcanceler
	attackstring
	ppreduce
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_AutotomizeWeightLoss
	jumpifbyte CMP_NOT_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_AutotomizeAttackAnim
	pause B_WAIT_TIME_SHORT
	goto BattleScript_AutotomizePrintString
BattleScript_AutotomizeAttackAnim::
	attackanimation
	waitanimation
BattleScript_AutotomizeDoAnim::
	setgraphicalstatchangevalues
	playanimation BS_ATTACKER, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
BattleScript_AutotomizePrintString::
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_AutotomizeWeightLoss::
	jumpifmovehadnoeffect BattleScript_MoveEnd
	tryautotomize BS_ATTACKER, BattleScript_MoveEnd
	printstring STRINGID_BECAMENIMBLE
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectFinalGambit:
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	critcalc
	typecalc
	bichalfword gMoveResultFlags, MOVE_RESULT_SUPER_EFFECTIVE | MOVE_RESULT_NOT_VERY_EFFECTIVE
	dmgtocurrattackerhp
	adjustdamage
	attackanimation
	waitanimation
	effectivenesssound
	hitanimation BS_TARGET
	waitstate
	healthbarupdate BS_TARGET
	datahpupdate BS_TARGET
	resultmessage
	waitmessage B_WAIT_TIME_LONG
	dmgtocurrattackerhp
	healthbarupdate BS_ATTACKER
	datahpupdate BS_ATTACKER
	seteffectwithchance
	tryfaintmon BS_ATTACKER, FALSE, NULL
	tryfaintmon BS_TARGET, FALSE, NULL
	jumpifmovehadnoeffect BattleScript_MoveEnd
	goto BattleScript_MoveEnd

BattleScript_EffectHitSwitchTarget:
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	critcalc
	damagecalc
	adjustdamage
	attackanimation
	waitanimation
	effectivenesssound
	hitanimation BS_TARGET
	waitstate
	healthbarupdate BS_TARGET
	datahpupdate BS_TARGET
	critmessage
	waitmessage B_WAIT_TIME_LONG
	resultmessage
	waitmessage B_WAIT_TIME_LONG
	tryfaintmon BS_TARGET, FALSE, NULL
	jumpifability BS_TARGET, ABILITY_SUCTION_CUPS, BattleScript_AbilityPreventsPhasingOut
	jumpifstatus3 BS_TARGET, STATUS3_ROOTED, BattleScript_PrintMonIsRooted
	tryhitswitchtarget BattleScript_EffectHitSwitchTargetMoveEnd
BattleScript_EffectHitSwitchTargetMoveEnd:
	moveendall
	end

BattleScript_EffectClearSmog:
	setmoveeffect MOVE_EFFECT_CLEAR_SMOG
	goto BattleScript_EffectHit

BattleScript_EffectToxicThread:
	setstatchanger STAT_SPEED, 2, TRUE
	attackcanceler
	jumpifsubstituteblocks BattleScript_ButItFailedAtkStringPpReduce
	jumpifstat BS_TARGET, CMP_NOT_EQUAL, STAT_SPEED, MIN_STAT_STAGE, BattleScript_ToxicThreadWorks
	jumpifstatus BS_TARGET, STATUS1_PSN_ANY, BattleScript_ButItFailedAtkStringPpReduce
BattleScript_ToxicThreadWorks:
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	statbuffchange STAT_BUFF_ALLOW_PTR, BattleScript_ToxicThreadTryPsn
	jumpifbyte CMP_LESS_THAN, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_DECREASE, BattleScript_ToxicThreadDoAnim
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_FELL_EMPTY, BattleScript_ToxicThreadTryPsn
	pause B_WAIT_TIME_SHORT
	goto BattleScript_ToxicThreadPrintString
BattleScript_ToxicThreadDoAnim::
	attackanimation
	waitanimation
	setgraphicalstatchangevalues
	playanimation BS_TARGET, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
BattleScript_ToxicThreadPrintString::
	printfromtable gStatDownStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_ToxicThreadTryPsn::
	setmoveeffect MOVE_EFFECT_POISON
	seteffectprimary
	goto BattleScript_MoveEnd

BattleScript_EffectVenomDrench:
	attackcanceler
	attackstring
	ppreduce
	jumpifstatus BS_TARGET, STATUS1_PSN_ANY, BattleScript_EffectVenomDrenchCanBeUsed
	goto BattleScript_ButItFailed
BattleScript_EffectVenomDrenchCanBeUsed:
	jumpifstat BS_TARGET, CMP_GREATER_THAN, STAT_ATK, MIN_STAT_STAGE, BattleScript_VenomDrenchDoMoveAnim
	jumpifstat BS_TARGET, CMP_GREATER_THAN, STAT_SPATK, MIN_STAT_STAGE, BattleScript_VenomDrenchDoMoveAnim
	jumpifstat BS_TARGET, CMP_EQUAL, STAT_SPEED, MIN_STAT_STAGE, BattleScript_CantLowerMultipleStats
BattleScript_VenomDrenchDoMoveAnim::
	accuracycheck BattleScript_ButItFailed, ACC_CURR_MOVE
	attackanimation
	waitanimation
	setbyte sSTAT_ANIM_PLAYED, FALSE
	playstatchangeanimation BS_TARGET, BIT_ATK | BIT_SPATK | BIT_SPEED, STAT_CHANGE_NEGATIVE | STAT_CHANGE_MULTIPLE_STATS
	playstatchangeanimation BS_TARGET, BIT_ATK, STAT_CHANGE_NEGATIVE
	setstatchanger STAT_ATK, 1, TRUE
	statbuffchange STAT_BUFF_ALLOW_PTR, BattleScript_VenomDrenchTryLowerSpAtk
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_DECREASE, BattleScript_VenomDrenchTryLowerSpAtk
	printfromtable gStatDownStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_VenomDrenchTryLowerSpAtk::
	playstatchangeanimation BS_TARGET, BIT_SPATK, STAT_CHANGE_NEGATIVE
	setstatchanger STAT_SPATK, 1, TRUE
	statbuffchange STAT_BUFF_ALLOW_PTR, BattleScript_VenomDrenchTryLowerSpeed
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_DECREASE, BattleScript_VenomDrenchTryLowerSpeed
	printfromtable gStatDownStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_VenomDrenchTryLowerSpeed::
	playstatchangeanimation BS_TARGET, BIT_SPEED, STAT_CHANGE_NEGATIVE
	setstatchanger STAT_SPEED, 1, TRUE
	statbuffchange STAT_BUFF_ALLOW_PTR, BattleScript_VenomDrenchEnd
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_DECREASE, BattleScript_VenomDrenchEnd
	printfromtable gStatDownStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_VenomDrenchEnd::
	goto BattleScript_MoveEnd

BattleScript_EffectNobleRoar:
	attackcanceler
	attackstring
	ppreduce
	jumpifstat BS_TARGET, CMP_GREATER_THAN, STAT_ATK, MIN_STAT_STAGE, BattleScript_NobleRoarDoMoveAnim
	jumpifstat BS_TARGET, CMP_EQUAL, STAT_SPATK, MIN_STAT_STAGE, BattleScript_CantLowerMultipleStats
BattleScript_NobleRoarDoMoveAnim::
	accuracycheck BattleScript_ButItFailed, ACC_CURR_MOVE
	attackanimation
	waitanimation
	setbyte sSTAT_ANIM_PLAYED, FALSE
	playstatchangeanimation BS_TARGET, BIT_ATK | BIT_SPATK, STAT_CHANGE_NEGATIVE | STAT_CHANGE_MULTIPLE_STATS
	playstatchangeanimation BS_TARGET, BIT_ATK, STAT_CHANGE_NEGATIVE
	setstatchanger STAT_ATK, 1, TRUE
	statbuffchange STAT_BUFF_ALLOW_PTR, BattleScript_NobleRoarTryLowerSpAtk
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_DECREASE, BattleScript_NobleRoarTryLowerSpAtk
	printfromtable gStatDownStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_NobleRoarTryLowerSpAtk::
	playstatchangeanimation BS_TARGET, BIT_SPATK, STAT_CHANGE_NEGATIVE
	setstatchanger STAT_SPATK, 1, TRUE
	statbuffchange STAT_BUFF_ALLOW_PTR, BattleScript_NobleRoarEnd
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_DECREASE, BattleScript_NobleRoarEnd
	printfromtable gStatDownStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_NobleRoarEnd::
	goto BattleScript_MoveEnd

BattleScript_EffectShellSmash:
	attackcanceler
	attackstring
	ppreduce
	jumpifstat BS_ATTACKER, CMP_LESS_THAN, STAT_ATK, MAX_STAT_STAGE, BattleScript_ShellSmashTryDef
	jumpifstat BS_ATTACKER, CMP_LESS_THAN, STAT_SPATK, MAX_STAT_STAGE, BattleScript_ShellSmashTryDef
	jumpifstat BS_ATTACKER, CMP_LESS_THAN, STAT_SPEED, MAX_STAT_STAGE, BattleScript_ShellSmashTryDef
	jumpifstat BS_ATTACKER, CMP_GREATER_THAN, STAT_DEF, MIN_STAT_STAGE, BattleScript_ShellSmashTryDef
	jumpifstat BS_ATTACKER, CMP_EQUAL, STAT_SPDEF, MIN_STAT_STAGE, BattleScript_ButItFailed
BattleScript_ShellSmashTryDef::
	attackanimation
	waitanimation
	setbyte sSTAT_ANIM_PLAYED, FALSE
	playstatchangeanimation BS_ATTACKER, BIT_DEF | BIT_SPDEF, STAT_CHANGE_NEGATIVE | STAT_CHANGE_CANT_PREVENT
	setstatchanger STAT_DEF, 1, TRUE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_ShellSmashTrySpDef
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_ShellSmashTrySpDef
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_ShellSmashTrySpDef:
	setstatchanger STAT_SPDEF, 1, TRUE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_ShellSmashTryAttack
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_ShellSmashTryAttack
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_ShellSmashTryAttack:
	setbyte sSTAT_ANIM_PLAYED, FALSE
	playstatchangeanimation BS_ATTACKER, BIT_SPATK | BIT_ATK | BIT_SPEED, STAT_CHANGE_BY_TWO
	setstatchanger STAT_ATK, 2, FALSE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_ShellSmashTrySpAtk
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_ShellSmashTrySpAtk
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_ShellSmashTrySpAtk:
	setstatchanger STAT_SPATK, 2, FALSE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_ShellSmashTrySpeed
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_ShellSmashTrySpeed
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_ShellSmashTrySpeed:
	setstatchanger STAT_SPEED, 2, FALSE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_ShellSmashEnd
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_ShellSmashEnd
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_ShellSmashEnd:
	goto BattleScript_MoveEnd

BattleScript_EffectLastResort:
	attackcanceler
	attackstring
	ppreduce
	jumpifcantuselastresort BS_ATTACKER, BattleScript_ButItFailed
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	goto BattleScript_HitFromCritCalc

BattleScript_EffectGrowth:
	attackcanceler
	attackstring
	ppreduce
	jumpifstat BS_ATTACKER, CMP_LESS_THAN, STAT_ATK, MAX_STAT_STAGE, BattleScript_GrowthDoMoveAnim
	jumpifstat BS_ATTACKER, CMP_EQUAL, STAT_SPATK, MAX_STAT_STAGE, BattleScript_CantRaiseMultipleStats
BattleScript_GrowthDoMoveAnim::
	attackanimation
	waitanimation
	setbyte sSTAT_ANIM_PLAYED, FALSE
	playstatchangeanimation BS_ATTACKER, BIT_ATK | BIT_SPATK, 0
	jumpifhalfword CMP_COMMON_BITS, gBattleWeather, WEATHER_SUN_ANY, BattleScript_GrowthAtk2
	setstatchanger STAT_ATK, 1, FALSE
	goto BattleScript_GrowthAtk
BattleScript_GrowthAtk2:
	setstatchanger STAT_ATK, 2, FALSE
BattleScript_GrowthAtk:
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_GrowthTrySpAtk
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_GrowthTrySpAtk
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_GrowthTrySpAtk::
	jumpifhalfword CMP_COMMON_BITS, gBattleWeather, WEATHER_SUN_ANY, BattleScript_GrowthSpAtk2
	setstatchanger STAT_SPATK, 1, FALSE
	goto BattleScript_GrowthSpAtk
BattleScript_GrowthSpAtk2:
	setstatchanger STAT_SPATK, 2, FALSE
BattleScript_GrowthSpAtk:
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_GrowthEnd
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_GrowthEnd
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_GrowthEnd:
	goto BattleScript_MoveEnd

BattleScript_EffectSoak:
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	jumpifability BS_TARGET, ABILITY_MULTITYPE, BattleScript_ButItFailed
	jumpifability BS_TARGET, ABILITY_RKS_SYSTEM, BattleScript_ButItFailed
	jumpifsubstituteblocks BattleScript_ButItFailed
	attackanimation
	waitanimation
	trysoak BattleScript_ButItFailed
	printstring STRINGID_TRANSFORMEDINTOWATERTYPE
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectReflectType:
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	tryreflecttype BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_REFLECTTARGETSTYPE
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectElectrify:
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	tryelectrify BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_TARGETELECTRIFIED
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectShiftGear:
	attackcanceler
	attackstring
	ppreduce
	jumpifstat BS_ATTACKER, CMP_LESS_THAN, STAT_SPEED, MAX_STAT_STAGE, BattleScript_ShiftGearDoMoveAnim
	jumpifstat BS_ATTACKER, CMP_EQUAL, STAT_ATK, MAX_STAT_STAGE, BattleScript_CantRaiseMultipleStats
BattleScript_ShiftGearDoMoveAnim:
	attackanimation
	waitanimation
	setbyte sSTAT_ANIM_PLAYED, FALSE
	jumpifstat BS_ATTACKER, CMP_GREATER_THAN, STAT_SPEED, 10, BattleScript_ShiftGearSpeedBy1
	playstatchangeanimation BS_ATTACKER, BIT_SPEED | BIT_ATK, STAT_CHANGE_BY_TWO
	setstatchanger STAT_SPEED, 2, FALSE
	goto BattleScript_ShiftGearDoSpeed
BattleScript_ShiftGearSpeedBy1:
	playstatchangeanimation BS_ATTACKER, BIT_SPEED | BIT_ATK, 0
	setstatchanger STAT_SPEED, 1, FALSE
BattleScript_ShiftGearDoSpeed:
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_ShiftGearTryAtk
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_ShiftGearTryAtk
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_ShiftGearTryAtk:
	setstatchanger STAT_ATK, 1, FALSE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_ShiftGearEnd
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_ShiftGearEnd
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_ShiftGearEnd:
	goto BattleScript_MoveEnd

BattleScript_EffectCoil:
	attackcanceler
	attackstring
	ppreduce
	jumpifstat BS_ATTACKER, CMP_LESS_THAN, STAT_ATK, MAX_STAT_STAGE, BattleScript_CoilDoMoveAnim
	jumpifstat BS_ATTACKER, CMP_LESS_THAN, STAT_DEF, MAX_STAT_STAGE, BattleScript_CoilDoMoveAnim
	jumpifstat BS_ATTACKER, CMP_EQUAL, STAT_ACC, MAX_STAT_STAGE, BattleScript_CantRaiseMultipleStats
BattleScript_CoilDoMoveAnim:
	attackanimation
	waitanimation
	setbyte sSTAT_ANIM_PLAYED, FALSE
	playstatchangeanimation BS_ATTACKER, BIT_ATK | BIT_DEF | BIT_ACC, 0
	setstatchanger STAT_ATK, 1, FALSE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_CoilTryDef
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_CoilTryDef
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_CoilTryDef:
	setstatchanger STAT_DEF, 1, FALSE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_CoilTryAcc
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_CoilTryAcc
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_CoilTryAcc:
	setstatchanger STAT_ACC, 1, FALSE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_CoilEnd
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_CoilEnd
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_CoilEnd:
	goto BattleScript_MoveEnd

BattleScript_EffectQuiverDance:
	attackcanceler
	attackstring
	ppreduce
	jumpifstat BS_ATTACKER, CMP_LESS_THAN, STAT_SPATK, MAX_STAT_STAGE, BattleScript_QuiverDanceDoMoveAnim
	jumpifstat BS_ATTACKER, CMP_LESS_THAN, STAT_SPDEF, MAX_STAT_STAGE, BattleScript_QuiverDanceDoMoveAnim
	jumpifstat BS_ATTACKER, CMP_EQUAL, STAT_SPEED, MAX_STAT_STAGE, BattleScript_CantRaiseMultipleStats
BattleScript_QuiverDanceDoMoveAnim::
	attackanimation
	waitanimation
	setbyte sSTAT_ANIM_PLAYED, FALSE
	playstatchangeanimation BS_ATTACKER, BIT_SPATK | BIT_SPDEF | BIT_SPEED, 0
	setstatchanger STAT_SPATK, 1, FALSE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_QuiverDanceTrySpDef
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_QuiverDanceTrySpDef
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_QuiverDanceTrySpDef::
	setstatchanger STAT_SPDEF, 1, FALSE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_QuiverDanceTrySpeed
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_QuiverDanceTrySpeed
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_QuiverDanceTrySpeed::
	setstatchanger STAT_SPEED, 1, FALSE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_QuiverDanceEnd
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_QuiverDanceEnd
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_QuiverDanceEnd::
	goto BattleScript_MoveEnd

BattleScript_EffectSpeedUpHit:
	setmoveeffect MOVE_EFFECT_SPD_PLUS_1 | MOVE_EFFECT_AFFECTS_USER
	goto BattleScript_EffectHit

BattleScript_EffectMeFirst:
	attackcanceler
	attackstring
	trymefirst BattleScript_ButItFailedPpReduce
	attackanimation
	waitanimation
	setbyte sB_ANIM_TURN, 0
	setbyte sB_ANIM_TARGETS_HIT, 0
	jumptocalledmove TRUE

BattleScript_EffectAttackSpAttackUp:
	attackcanceler
	attackstring
	ppreduce
	jumpifstat BS_ATTACKER, CMP_LESS_THAN, STAT_ATK, MAX_STAT_STAGE, BattleScript_AttackSpAttackUpDoMoveAnim
	jumpifstat BS_ATTACKER, CMP_EQUAL, STAT_SPATK, MAX_STAT_STAGE, BattleScript_CantRaiseMultipleStats
BattleScript_AttackSpAttackUpDoMoveAnim::
	attackanimation
	waitanimation
	setbyte sSTAT_ANIM_PLAYED, FALSE
	playstatchangeanimation BS_ATTACKER, BIT_ATK | BIT_SPATK, 0
	setstatchanger STAT_ATK, 1, FALSE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_AttackSpAttackUpTrySpAtk
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_AttackSpAttackUpTrySpAtk
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_AttackSpAttackUpTrySpAtk::
	setstatchanger STAT_SPATK, 1, FALSE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_AttackSpAttackUpEnd
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_AttackSpAttackUpEnd
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_AttackSpAttackUpEnd:
	goto BattleScript_MoveEnd

BattleScript_EffectAttackAccUp:
	attackcanceler
	attackstring
	ppreduce
	jumpifstat BS_ATTACKER, CMP_LESS_THAN, STAT_ATK, MAX_STAT_STAGE, BattleScript_AttackAccUpDoMoveAnim
	jumpifstat BS_ATTACKER, CMP_EQUAL, STAT_ACC, MAX_STAT_STAGE, BattleScript_CantRaiseMultipleStats
BattleScript_AttackAccUpDoMoveAnim::
	attackanimation
	waitanimation
	setbyte sSTAT_ANIM_PLAYED, FALSE
	playstatchangeanimation BS_ATTACKER, BIT_SPATK | BIT_SPDEF, 0
	setstatchanger STAT_ATK, 1, FALSE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_AttackAccUpTrySpDef
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_AttackAccUpTrySpDef
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_AttackAccUpTrySpDef::
	setstatchanger STAT_ACC, 1, FALSE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_AttackAccUpEnd
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_AttackAccUpEnd
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_AttackAccUpEnd:
	goto BattleScript_MoveEnd

BattleScript_EffectMistyTerrain:
BattleScript_EffectGrassyTerrain:
BattleScript_EffectElectricTerrain:
BattleScript_EffectPsychicTerrain:
	attackcanceler
	attackstring
	ppreduce
	setterrain BattleScript_ButItFailed
	attackanimation
	waitanimation
	printfromtable gTerrainStringIds
	waitmessage B_WAIT_TIME_LONG
	playanimation BS_SCRIPTING, B_ANIM_RESTORE_BG, NULL
	goto BattleScript_MoveEnd

BattleScript_EffectTopsyTurvy:
	attackcanceler
	attackstring
	ppreduce
	accuracycheck BattleScript_ButItFailed, NO_ACC_CALC_CHECK_LOCK_ON
	jumpifstat BS_TARGET, CMP_NOT_EQUAL, STAT_ATK, 6, BattleScript_EffectTopsyTurvyWorks
	jumpifstat BS_TARGET, CMP_NOT_EQUAL, STAT_DEF, 6, BattleScript_EffectTopsyTurvyWorks
	jumpifstat BS_TARGET, CMP_NOT_EQUAL, STAT_SPATK, 6, BattleScript_EffectTopsyTurvyWorks
	jumpifstat BS_TARGET, CMP_NOT_EQUAL, STAT_SPDEF, 6, BattleScript_EffectTopsyTurvyWorks
	jumpifstat BS_TARGET, CMP_NOT_EQUAL, STAT_SPEED, 6, BattleScript_EffectTopsyTurvyWorks
	jumpifstat BS_TARGET, CMP_NOT_EQUAL, STAT_ACC, 6, BattleScript_EffectTopsyTurvyWorks
	jumpifstat BS_TARGET, CMP_EQUAL, STAT_EVASION, 6, BattleScript_ButItFailed
BattleScript_EffectTopsyTurvyWorks:
	attackanimation
	waitanimation
	invertstatstages BS_TARGET
	printstring STRINGID_TOPSYTURVYSWITCHEDSTATS
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectIonDeluge:
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	orword gFieldStatuses, STATUS_FIELD_ION_DELUGE
	attackanimation
	waitanimation
	printstring STRINGID_IONDELUGEON
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectQuash:
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	tryquash BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_QUASHSUCCESS
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectHealPulse:
	attackcanceler
	attackstring
	ppreduce
	accuracycheck BattleScript_ButItFailed, NO_ACC_CALC_CHECK_LOCK_ON
	jumpifsubstituteblocks BattleScript_ButItFailed
	tryhealpulse BS_TARGET, BattleScript_AlreadyAtFullHp
	attackanimation
	waitanimation
	healthbarupdate BS_TARGET
	datahpupdate BS_TARGET
	printstring STRINGID_PKMNREGAINEDHEALTH
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectEntrainment:
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	tryentrainment BattleScript_ButItFailed
	attackanimation
	waitanimation
	setlastusedability BS_TARGET
	printstring STRINGID_PKMNACQUIREDABILITY
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectSimpleBeam:
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	setabilitysimple BS_TARGET, BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_PKMNACQUIREDSIMPLE
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectSuckerPunch:
	attackcanceler
	suckerpunchcheck BattleScript_ButItFailedAtkStringPpReduce
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	goto BattleScript_HitFromAtkString

BattleScript_EffectLuckyChant:
	attackcanceler
	attackstring
	ppreduce
	setluckychant BS_ATTACKER, BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_SHIELDEDFROMCRITICALHITS
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectMetalBurst:
	attackcanceler
	metalburstdamagecalculator BattleScript_ButItFailedAtkStringPpReduce
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	typecalc
	bichalfword gMoveResultFlags, MOVE_RESULT_NOT_VERY_EFFECTIVE | MOVE_RESULT_SUPER_EFFECTIVE
	adjustdamage
	goto BattleScript_HitFromAtkAnimation

BattleScript_EffectHealingWish:
	attackcanceler
	jumpifcantswitch SWITCH_IGNORE_ESCAPE_PREVENTION | BS_ATTACKER, BattleScript_ButItFailedAtkStringPpReduce
	attackstring
	ppreduce
	attackanimation
	waitanimation
	instanthpdrop BS_ATTACKER
	setatkhptozero
	tryfaintmon BS_ATTACKER, FALSE, NULL
	openpartyscreen BS_ATTACKER, BattleScript_EffectHealingWishEnd
	switchoutabilities BS_ATTACKER
	waitstate
	switchhandleorder BS_ATTACKER, 2
	returnatktoball
	getswitchedmondata BS_ATTACKER
	switchindataupdate BS_ATTACKER
	hpthresholds BS_ATTACKER
	printstring STRINGID_SWITCHINMON
	switchinanim BS_ATTACKER, TRUE
	waitstate
	setbyte cMULTISTRING_CHOOSER 0
	jumpifnotchosenmove MOVE_LUNAR_DANCE BattleScript_EffectHealingWishNewMon
	setbyte cMULTISTRING_CHOOSER 1
	restorepp BS_ATTACKER
BattleScript_EffectHealingWishNewMon:
	printfromtable gHealingWishStringIds
	waitmessage B_WAIT_TIME_LONG
	playanimation BS_ATTACKER, B_ANIM_WISH_HEAL, NULL
	waitanimation
	dmgtomaxattackerhp
	manipulatedamage DMG_CHANGE_SIGN
	healthbarupdate BS_ATTACKER
	datahpupdate BS_ATTACKER
	clearstatus BS_ATTACKER
	waitstate
	updatestatusicon BS_ATTACKER
	waitstate
	printstring STRINGID_HEALINGWISHHEALED
	waitmessage B_WAIT_TIME_LONG
	switchineffects BS_ATTACKER
BattleScript_EffectHealingWishEnd:
	moveendall
	end

BattleScript_EffectWorrySeed:
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	tryworryseed BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_PKMNACQUIREDABILITY
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectPowerSplit:
	attackcanceler
	attackstring
	ppreduce
	accuracycheck BattleScript_ButItFailed, NO_ACC_CALC_CHECK_LOCK_ON
	averagestats STAT_ATK
	averagestats STAT_SPATK
	attackanimation
	waitanimation
	printstring STRINGID_SHAREDITSPOWER
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectGuardSplit:
	attackcanceler
	attackstring
	ppreduce
	accuracycheck BattleScript_ButItFailed, NO_ACC_CALC_CHECK_LOCK_ON
	averagestats STAT_DEF
	averagestats STAT_SPDEF
	attackanimation
	waitanimation
	printstring STRINGID_SHAREDITSGUARD
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectHeartSwap:
	attackcanceler
	attackstring
	ppreduce
	accuracycheck BattleScript_ButItFailed, NO_ACC_CALC_CHECK_LOCK_ON
	swapstatstages STAT_ATK
	swapstatstages STAT_DEF
	swapstatstages STAT_SPEED
	swapstatstages STAT_SPATK
	swapstatstages STAT_SPDEF
	swapstatstages STAT_EVASION
	swapstatstages STAT_ACC
	attackanimation
	waitanimation
	printstring STRINGID_PKMNSWITCHEDSTATCHANGES
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectPowerSwap:
	attackcanceler
	attackstring
	ppreduce
	accuracycheck BattleScript_ButItFailed, NO_ACC_CALC_CHECK_LOCK_ON
	swapstatstages STAT_ATK
	swapstatstages STAT_SPATK
	attackanimation
	waitanimation
	printstring STRINGID_PKMNSWITCHEDSTATCHANGES
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectGuardSwap:
	attackcanceler
	attackstring
	ppreduce
	accuracycheck BattleScript_ButItFailed, NO_ACC_CALC_CHECK_LOCK_ON
	swapstatstages STAT_DEF
	swapstatstages STAT_SPDEF
	attackanimation
	waitanimation
	printstring STRINGID_PKMNSWITCHEDSTATCHANGES
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectSpeedSwap:
	attackcanceler
	attackstring
	ppreduce
	accuracycheck BattleScript_ButItFailed, NO_ACC_CALC_CHECK_LOCK_ON
	swapstatstages STAT_SPEED
	attackanimation
	waitanimation
	printstring STRINGID_PKMNSWITCHEDSTATCHANGES
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectTelekinesis:
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, NO_ACC_CALC_CHECK_LOCK_ON
	attackstring
	ppreduce
	settelekinesis BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_PKMNIDENTIFIED
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectStealthRock:
	attackcanceler
	attackstring
	ppreduce
	setstealthrock BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_POINTEDSTONESFLOAT
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectStickyWeb:
	attackcanceler
	attackstring
	ppreduce
	setstickyweb BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_STICKYWEBUSED
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectGastroAcid:
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	setgastroacid BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_PKMNSABILITYSUPPRESSED
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectToxicSpikes:
	attackcanceler
	attackstring
	ppreduce
	settoxicspikes BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_POISONSPIKESSCATTERED
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectMagnetRise:
	attackcanceler
	attackstring
	ppreduce
	setuserstatus3 STATUS3_MAGNET_RISE, BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_PKMNLEVITATEDONELECTROMAGNETISM
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectTrickRoom:
BattleScript_EffectWonderRoom:
BattleScript_EffectMagicRoom:
	attackcanceler
	attackstring
	ppreduce
	setroom
	attackanimation
	waitanimation
	printfromtable gRoomsStringIds
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectAquaRing:
	attackcanceler
	attackstring
	ppreduce
	setuserstatus3 STATUS3_AQUA_RING, BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_PKMNSURROUNDEDWITHVEILOFWATER
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectEmbargo:
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	setembargo BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_PKMNCANTUSEITEMSANYMORE
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectTailwind:
	attackcanceler
	attackstring
	ppreduce
	settailwind BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_TAILWINDBLEW
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectMircleEye:
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	setmiracleeye BattleScript_ButItFailed
	goto BattleScript_IdentifiedFoe

BattleScript_EffectGravity:
	attackcanceler
	attackstring
	ppreduce
	setgravity BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_GRAVITYINTENSIFIED 
	waitmessage B_WAIT_TIME_LONG
	selectfirstvalidtarget
BattleScript_GravityLoop:
	movevaluescleanup
	jumpifstatus3 BS_TARGET, STATUS3_ON_AIR | STATUS3_MAGNET_RISE | STATUS3_TELEKINESIS, BattleScript_GravityLoopDrop
	goto BattleScript_GravityLoopEnd
BattleScript_GravityLoopDrop:
	bringdownairbornebattler BS_TARGET
	printstring STRINGID_GRAVITYGROUNDING 
	waitmessage B_WAIT_TIME_LONG
BattleScript_GravityLoopEnd:	
	moveendto MOVEEND_NEXT_TARGET
	jumpifnexttargetvalid BattleScript_GravityLoop
	end   

BattleScript_EffectRoost:
	attackcanceler
	attackstring
	ppreduce
	tryhealhalfhealth BattleScript_AlreadyAtFullHp, BS_TARGET
	setroost
	goto BattleScript_PresentHealTarget

BattleScript_EffectCaptivate:
	setstatchanger STAT_SPATK, 2, TRUE
	attackcanceler
	jumpifsubstituteblocks BattleScript_ButItFailedAtkStringPpReduce
	jumpifoppositegenders BattleScript_CaptivateCheckAcc
	goto BattleScript_ButItFailedAtkStringPpReduce
BattleScript_CaptivateCheckAcc:
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	goto BattleScript_StatDownFromAttackString

BattleScript_EffectHealBlock:
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	jumpifability BS_TARGET_SIDE, ABILITY_AROMA_VEIL, BattleScript_AromaVeilProtects
	sethealblock BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_PKMNPREVENTEDFROMHEALING
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectThroatChop:
	jumpifsubstituteblocks BattleScript_EffectHit
	setmoveeffect MOVE_EFFECT_THROAT_CHOP | MOVE_EFFECT_CERTAIN
	goto BattleScript_EffectHit

BattleScript_EffectHitEscape:
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	critcalc
	damagecalc
	adjustdamage
	attackanimation
	waitanimation
	effectivenesssound
	hitanimation BS_TARGET
	waitstate
	healthbarupdate BS_TARGET
	datahpupdate BS_TARGET
	critmessage
	waitmessage B_WAIT_TIME_LONG
	resultmessage
	waitmessage B_WAIT_TIME_LONG
	jumpifmovehadnoeffect BattleScript_MoveEnd
	seteffectwithchance
	tryfaintmon BS_TARGET, FALSE, NULL
	moveendto MOVEEND_ATTACKER_VISIBLE
	moveendfrom MOVEEND_TARGET_VISIBLE
	jumpifbattleend BattleScript_HitEscapeEnd
	jumpifbyte CMP_NOT_EQUAL gBattleOutcome 0, BattleScript_HitEscapeEnd
	jumpifbattletype BATTLE_TYPE_ARENA, BattleScript_HitEscapeEnd
	jumpifcantswitch SWITCH_IGNORE_ESCAPE_PREVENTION | BS_ATTACKER, BattleScript_HitEscapeEnd
	openpartyscreen BS_ATTACKER, BattleScript_HitEscapeEnd
	switchoutabilities BS_ATTACKER
	waitstate
	switchhandleorder BS_ATTACKER, 2
	returntoball BS_ATTACKER
	getswitchedmondata BS_ATTACKER
	switchindataupdate BS_ATTACKER
	hpthresholds BS_ATTACKER
	printstring STRINGID_SWITCHINMON
	switchinanim BS_ATTACKER, TRUE
	waitstate
	switchineffects BS_ATTACKER
BattleScript_HitEscapeEnd:
	end

BattleScript_EffectPlaceholder:
	attackcanceler
	attackstring
	ppreduce
	pause 5
	printstring STRINGID_NOTDONEYET
	goto BattleScript_MoveEnd

BattleScript_EffectStompingTantrum:
BattleScript_EffectEvasionDownHit:
BattleScript_EffectVitalThrow:
BattleScript_EffectFalseSwipe:
BattleScript_EffectAlwaysCrit:
BattleScript_EffectPursuit:
BattleScript_EffectFellStinger:
BattleScript_EffectHit::
BattleScript_EffectLowKick:
BattleScript_EffectFlail:
BattleScript_EffectFacade:
BattleScript_EffectRevenge:
BattleScript_EffectReturn:
BattleScript_EffectFrustration:
BattleScript_EffectEruption:
BattleScript_EffectPledge:
BattleScript_EffectFling:
BattleScript_EffectWringOut:
BattleScript_EffectHex:
BattleScript_EffectAssurance:
BattleScript_EffectTrump_card:
BattleScript_EffectAcrobatics:
BattleScript_EffectHeatCrash:
BattleScript_EffectPunishment:
BattleScript_EffectStoredPower:
BattleScript_EffectElectroBall:
BattleScript_EffectGyroBall:
BattleScript_EffectEchoedVoice:
BattleScript_EffectPayback:
BattleScript_EffectRound:
BattleScript_EffectBrine:
BattleScript_EffectVenoshock:
BattleScript_EffectRetalitate:
BattleScript_EffectFoulPlay:
BattleScript_EffectPsyshock:
BattleScript_EffectWeatherBall:
BattleScript_EffectHiddenPower:
BattleScript_EffectTwoTypedMove:
BattleScript_EffectChangeTypeOnItem:
BattleScript_EffectFusionCombo:
BattleScript_EffectRevelationDance:
BattleScript_EffectBelch:

BattleScript_HitFromAtkCanceler::
	attackcanceler
BattleScript_HitFromAccCheck::
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
BattleScript_HitFromAtkString::
	attackstring
	ppreduce
BattleScript_HitFromCritCalc::
	critcalc
	damagecalc
	adjustdamage
BattleScript_HitFromAtkAnimation::
	attackanimation
	waitanimation
	effectivenesssound
	hitanimation BS_TARGET
	waitstate
	healthbarupdate BS_TARGET
	datahpupdate BS_TARGET
	critmessage
	waitmessage B_WAIT_TIME_LONG
	resultmessage
	waitmessage B_WAIT_TIME_LONG
	seteffectwithchance
	tryfaintmon BS_TARGET, FALSE, NULL
BattleScript_MoveEnd::
	moveendall
	end

BattleScript_EffectNaturalGift:
	attackcanceler
	attackstring
	ppreduce
	jumpifnotberry BS_ATTACKER, BattleScript_ButItFailed
	jumpifword CMP_COMMON_BITS, gFieldStatuses, STATUS_FIELD_MAGIC_ROOM, BattleScript_ButItFailed
	jumpifability BS_ATTACKER, ABILITY_KLUTZ, BattleScript_ButItFailed
	jumpifstatus3 BS_ATTACKER, STATUS3_EMBARGO, BattleScript_ButItFailed
	accuracycheck BattleScript_MoveMissedPause, ACC_CURR_MOVE
	critcalc
	damagecalc
	adjustdamage
	attackanimation
	waitanimation
	effectivenesssound
	hitanimation BS_TARGET
	waitstate
	healthbarupdate BS_TARGET
	datahpupdate BS_TARGET
	critmessage
	waitmessage B_WAIT_TIME_LONG
	resultmessage
	waitmessage B_WAIT_TIME_LONG
	seteffectwithchance
	jumpifmovehadnoeffect BattleScript_EffectNaturalGiftEnd
	removeitem BS_ATTACKER
BattleScript_EffectNaturalGiftEnd:
	tryfaintmon BS_TARGET, FALSE, NULL
	goto BattleScript_MoveEnd

BattleScript_MakeMoveMissed::
	orhalfword gMoveResultFlags, MOVE_RESULT_MISSED
BattleScript_PrintMoveMissed::
	attackstring
	ppreduce
BattleScript_MoveMissedPause::
	pause B_WAIT_TIME_SHORT
BattleScript_MoveMissed::
	effectivenesssound
	resultmessage
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectSleep::
	attackcanceler
	attackstring
	ppreduce
	jumpifsubstituteblocks BattleScript_ButItFailed
	jumpifstatus BS_TARGET, STATUS1_SLEEP, BattleScript_AlreadyAsleep
	jumpifcantmakeasleep BattleScript_CantMakeAsleep
	jumpifability BS_TARGET, ABILITY_COMATOSE, BattleScript_LeafGuardProtects
	jumpifflowerveil BattleScript_FlowerVeilProtects
	jumpifability BS_TARGET_SIDE, ABILITY_SWEET_VEIL, BattleScript_SweetVeilProtects
	jumpifleafguard BattleScript_LeafGuardProtects
	jumpifshieldsdown BS_TARGET, BattleScript_LeafGuardProtects
	jumpifstatus BS_TARGET, STATUS1_ANY, BattleScript_ButItFailed
	accuracycheck BattleScript_ButItFailed, ACC_CURR_MOVE
	jumpifsafeguard BattleScript_SafeguardProtected
	attackanimation
	waitanimation
	setmoveeffect MOVE_EFFECT_SLEEP
	seteffectprimary
	goto BattleScript_MoveEnd

BattleScript_FlowerVeilProtectsRet::
	pause B_WAIT_TIME_SHORT
	call BattleScript_AbilityPopUp
	printstring STRINGID_FLOWERVEILPROTECTED
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_FlowerVeilProtects:
	call BattleScript_FlowerVeilProtectsRet
	orhalfword gMoveResultFlags, MOVE_RESULT_FAILED
	goto BattleScript_MoveEnd

BattleScript_SweetVeilProtectsRet::
	pause B_WAIT_TIME_SHORT
	call BattleScript_AbilityPopUp
	printstring STRINGID_FLOWERVEILPROTECTED
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_SweetVeilProtects:
	call BattleScript_SweetVeilProtectsRet
	orhalfword gMoveResultFlags, MOVE_RESULT_FAILED
	goto BattleScript_MoveEnd

BattleScript_AromaVeilProtectsRet::
	pause B_WAIT_TIME_SHORT
	call BattleScript_AbilityPopUp
	printstring STRINGID_AROMAVEILPROTECTED
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_AromaVeilProtects:
	call BattleScript_AromaVeilProtectsRet
	orhalfword gMoveResultFlags, MOVE_RESULT_FAILED
	goto BattleScript_MoveEnd

BattleScript_LeafGuardProtectsRet::
	pause B_WAIT_TIME_SHORT
	call BattleScript_AbilityPopUp
	printstring STRINGID_ITDOESNTAFFECT
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_LeafGuardProtects:
	call BattleScript_LeafGuardProtectsRet
	orhalfword gMoveResultFlags, MOVE_RESULT_FAILED
	goto BattleScript_MoveEnd

BattleScript_AlreadyAsleep::
	setalreadystatusedmoveattempt BS_ATTACKER
	pause B_WAIT_TIME_SHORT
	printstring STRINGID_PKMNALREADYASLEEP
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_WasntAffected::
	pause B_WAIT_TIME_SHORT
	printstring STRINGID_PKMNWASNTAFFECTED
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_CantMakeAsleep::
	pause B_WAIT_TIME_SHORT
	printfromtable gUproarAwakeStringIds
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectPoisonHit:
	setmoveeffect MOVE_EFFECT_POISON
	goto BattleScript_EffectHit

BattleScript_EffectAbsorb::
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	critcalc
	damagecalc
	adjustdamage
	attackanimation
	waitanimation
	effectivenesssound
	hitanimation BS_TARGET
	waitstate
	healthbarupdate BS_TARGET
	datahpupdate BS_TARGET
	critmessage
	waitmessage B_WAIT_TIME_LONG
	resultmessage
	waitmessage B_WAIT_TIME_LONG
	setdrainedhp
	manipulatedamage DMG_BIG_ROOT
	orword gHitMarker, HITMARKER_IGNORE_SUBSTITUTE
	jumpifability BS_TARGET, ABILITY_LIQUID_OOZE, BattleScript_AbsorbLiquidOoze
	setbyte cMULTISTRING_CHOOSER, B_MSG_ABSORB
	goto BattleScript_AbsorbUpdateHp
BattleScript_AbsorbLiquidOoze::
	copybyte gBattlerAbility, gBattlerTarget
	call BattleScript_AbilityPopUp
	manipulatedamage DMG_CHANGE_SIGN
	setbyte cMULTISTRING_CHOOSER, B_MSG_ABSORB_OOZE
BattleScript_AbsorbUpdateHp::
	healthbarupdate BS_ATTACKER
	datahpupdate BS_ATTACKER
	jumpifmovehadnoeffect BattleScript_AbsorbTryFainting
	printfromtable gAbsorbDrainStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_AbsorbTryFainting::
	tryfaintmon BS_ATTACKER, FALSE, NULL
	tryfaintmon BS_TARGET, FALSE, NULL
	goto BattleScript_MoveEnd

BattleScript_EffectBurnHit::
BattleScript_EffectBlazeKick::
BattleScript_EffectScald:
	setmoveeffect MOVE_EFFECT_BURN
	goto BattleScript_EffectHit

BattleScript_EffectFreezeDry:
BattleScript_EffectFreezeHit::
	setmoveeffect MOVE_EFFECT_FREEZE
	goto BattleScript_EffectHit

BattleScript_EffectParalyzeHit::
	setmoveeffect MOVE_EFFECT_PARALYSIS
	goto BattleScript_EffectHit

BattleScript_EffectExplosion::
	attackcanceler
	attackstring
	ppreduce
	faintifabilitynotdamp
	setatkhptozero
	waitstate
	jumpifbyte CMP_NO_COMMON_BITS, gMoveResultFlags, MOVE_RESULT_MISSED, BattleScript_ExplosionDoAnimStartLoop
	call BattleScript_PreserveMissedBitDoMoveAnim
	goto BattleScript_ExplosionLoop
BattleScript_ExplosionDoAnimStartLoop:
	attackanimation
	waitanimation
BattleScript_ExplosionLoop:
	movevaluescleanup
	critcalc
	damagecalc
	adjustdamage
	accuracycheck BattleScript_ExplosionMissed, ACC_CURR_MOVE
	effectivenesssound
	hitanimation BS_TARGET
	waitstate
	healthbarupdate BS_TARGET
	datahpupdate BS_TARGET
	critmessage
	waitmessage B_WAIT_TIME_LONG
	resultmessage
	waitmessage B_WAIT_TIME_LONG
	tryfaintmon BS_TARGET, FALSE, NULL
	moveendto MOVEEND_NEXT_TARGET
	jumpifnexttargetvalid BattleScript_ExplosionLoop
	tryfaintmon BS_ATTACKER, FALSE, NULL
	moveendcase MOVEEND_CLEAR_BITS
	end
BattleScript_ExplosionMissed:
	effectivenesssound
	resultmessage
	waitmessage B_WAIT_TIME_LONG
	moveendto MOVEEND_NEXT_TARGET
	jumpifnexttargetvalid BattleScript_ExplosionLoop
	tryfaintmon BS_ATTACKER, FALSE, NULL
	end

BattleScript_EffectMindBlown::
	attackcanceler
	attackstring
	ppreduce
	faintifabilitynotdamp
	dmg_1_2_attackerhp
	healthbarupdate BS_ATTACKER
	datahpupdate BS_ATTACKER
	waitstate
	jumpifbyte CMP_NO_COMMON_BITS, gMoveResultFlags, MOVE_RESULT_MISSED, BattleScript_ExplosionDoAnimStartLoop
	call BattleScript_PreserveMissedBitDoMoveAnim
	goto BattleScript_ExplosionLoop

BattleScript_PreserveMissedBitDoMoveAnim:
	bichalfword gMoveResultFlags, MOVE_RESULT_MISSED
	attackanimation
	waitanimation
	orhalfword gMoveResultFlags, MOVE_RESULT_MISSED
	return

BattleScript_EffectDreamEater::
	attackcanceler
	jumpifsubstituteblocks BattleScript_DreamEaterNoEffect
	jumpifstatus BS_TARGET, STATUS1_SLEEP, BattleScript_DreamEaterWorked
	jumpifability BS_TARGET, ABILITY_COMATOSE, BattleScript_DreamEaterWorked
BattleScript_DreamEaterNoEffect:
	attackstring
	ppreduce
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_WasntAffected
BattleScript_DreamEaterWorked:
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	critcalc
	damagecalc
	adjustdamage
	attackanimation
	waitanimation
	effectivenesssound
	hitanimation BS_TARGET
	waitstate
	healthbarupdate BS_TARGET
	datahpupdate BS_TARGET
	critmessage
	waitmessage B_WAIT_TIME_LONG
	resultmessage
	waitmessage B_WAIT_TIME_LONG
	setdrainedhp
	manipulatedamage DMG_BIG_ROOT
	orword gHitMarker, HITMARKER_IGNORE_SUBSTITUTE
	healthbarupdate BS_ATTACKER
	datahpupdate BS_ATTACKER
	jumpifmovehadnoeffect BattleScript_DreamEaterTryFaintEnd
	printstring STRINGID_PKMNDREAMEATEN
	waitmessage B_WAIT_TIME_LONG
BattleScript_DreamEaterTryFaintEnd:
	tryfaintmon BS_TARGET, FALSE, NULL
	goto BattleScript_MoveEnd

BattleScript_EffectMirrorMove::
	attackcanceler
	attackstring
	pause B_WAIT_TIME_LONG
	trymirrormove
	ppreduce
	orhalfword gMoveResultFlags, MOVE_RESULT_FAILED
	printstring STRINGID_MIRRORMOVEFAILED
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectAttackUp::
	setstatchanger STAT_ATK, 1, FALSE
	goto BattleScript_EffectStatUp

BattleScript_EffectDefenseUp::
	setstatchanger STAT_DEF, 1, FALSE
	goto BattleScript_EffectStatUp

BattleScript_EffectSpecialAttackUp::
	setstatchanger STAT_SPATK, 1, FALSE
	goto BattleScript_EffectStatUp

BattleScript_EffectSpeedUp:
	setstatchanger STAT_SPEED, 1, FALSE
	goto BattleScript_EffectStatUp

BattleScript_EffectSpecialDefenseUp:
	setstatchanger STAT_SPDEF, 1, FALSE
	goto BattleScript_EffectStatUp

BattleScript_EffectAccuracyUp:
	setstatchanger STAT_ACC, 1, FALSE
	goto BattleScript_EffectStatUp

BattleScript_EffectEvasionUp::
	setstatchanger STAT_EVASION, 1, FALSE
BattleScript_EffectStatUp::
	attackcanceler
BattleScript_EffectStatUpAfterAtkCanceler::
	attackstring
	ppreduce
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_StatUpEnd
	jumpifbyte CMP_NOT_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_StatUpAttackAnim
	pause B_WAIT_TIME_SHORT
	goto BattleScript_StatUpPrintString
BattleScript_StatUpAttackAnim::
	attackanimation
	waitanimation
BattleScript_StatUpDoAnim::
	setgraphicalstatchangevalues
	playanimation BS_ATTACKER, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
BattleScript_StatUpPrintString::
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_StatUpEnd::
	goto BattleScript_MoveEnd

BattleScript_StatUp::
	playanimation BS_EFFECT_BATTLER, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
BattleScript_StatUpMsg::
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_EffectAttackDown:
	setstatchanger STAT_ATK, 1, TRUE
	goto BattleScript_EffectStatDown

BattleScript_EffectDefenseDown:
	setstatchanger STAT_DEF, 1, TRUE
	goto BattleScript_EffectStatDown

BattleScript_EffectSpeedDown:
	setstatchanger STAT_SPEED, 1, TRUE
	goto BattleScript_EffectStatDown

BattleScript_EffectAccuracyDown:
	setstatchanger STAT_ACC, 1, TRUE
	goto BattleScript_EffectStatDown

BattleScript_EffectSpecialAttackDown:
	setstatchanger STAT_SPATK, 1, TRUE
	goto BattleScript_EffectStatDown

BattleScript_EffectSpecialDefenseDown:
	setstatchanger STAT_SPDEF, 1, TRUE
	goto BattleScript_EffectStatDown

BattleScript_EffectEvasionDown:
	setstatchanger STAT_EVASION, 1, TRUE
BattleScript_EffectStatDown:
	attackcanceler
	jumpifsubstituteblocks BattleScript_ButItFailedAtkStringPpReduce
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
BattleScript_StatDownFromAttackString:
	attackstring
	ppreduce
	statbuffchange STAT_BUFF_ALLOW_PTR, BattleScript_StatDownEnd
	jumpifbyte CMP_LESS_THAN, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_DECREASE, BattleScript_StatDownDoAnim
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_FELL_EMPTY, BattleScript_StatDownEnd
	pause B_WAIT_TIME_SHORT
	goto BattleScript_StatDownPrintString
BattleScript_StatDownDoAnim::
	attackanimation
	waitanimation
	setgraphicalstatchangevalues
	playanimation BS_TARGET, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
BattleScript_StatDownPrintString::
	printfromtable gStatDownStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_StatDownEnd::
	goto BattleScript_MoveEnd

BattleScript_StatDown::
	playanimation BS_EFFECT_BATTLER, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
	printfromtable gStatDownStringIds
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_EffectHaze::
	attackcanceler
	attackstring
	ppreduce
	attackanimation
	waitanimation
	normalisebuffs
	printstring STRINGID_STATCHANGESGONE
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectBide::
	attackcanceler
	attackstring
	ppreduce
	attackanimation
	waitanimation
	orword gHitMarker, HITMARKER_CHARGING
	setbide
	goto BattleScript_MoveEnd

BattleScript_EffectRampage::
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	jumpifstatus2 BS_ATTACKER, STATUS2_MULTIPLETURNS, BattleScript_EffectRampage2
	ppreduce
BattleScript_EffectRampage2:
	confuseifrepeatingattackends
	goto BattleScript_HitFromCritCalc

BattleScript_EffectRoar::
	attackcanceler
	attackstring
	ppreduce
	jumpifroarfails BattleScript_ButItFailed
	jumpifability BS_TARGET, ABILITY_SUCTION_CUPS, BattleScript_AbilityPreventsPhasingOut
	jumpifstatus3 BS_TARGET, STATUS3_ROOTED, BattleScript_PrintMonIsRooted
	accuracycheck BattleScript_ButItFailed, NO_ACC_CALC_CHECK_LOCK_ON
	accuracycheck BattleScript_MoveMissedPause, ACC_CURR_MOVE
	jumpifbattletype BATTLE_TYPE_ARENA, BattleScript_ButItFailed
BattleScript_ForceRandomSwitch::
	forcerandomswitch BattleScript_ButItFailed

BattleScript_EffectMultiHit::
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	setmultihitcounter 0
	initmultihitstring
	sethword sMULTIHIT_EFFECT, 0
BattleScript_MultiHitLoop::
	jumpifhasnohp BS_ATTACKER, BattleScript_MultiHitEnd
	jumpifhasnohp BS_TARGET, BattleScript_MultiHitPrintStrings
	jumpifhalfword CMP_EQUAL, gChosenMove, MOVE_SLEEP_TALK, BattleScript_DoMultiHit
	jumpifstatus BS_ATTACKER, STATUS1_SLEEP, BattleScript_MultiHitPrintStrings
BattleScript_DoMultiHit::
	movevaluescleanup
	copyhword sMOVE_EFFECT, sMULTIHIT_EFFECT
	critcalc
	damagecalc
	jumpifmovehadnoeffect BattleScript_MultiHitNoMoreHits
	adjustdamage
	attackanimation
	waitanimation
	effectivenesssound
	hitanimation BS_TARGET
	waitstate
	healthbarupdate BS_TARGET
	datahpupdate BS_TARGET
	critmessage
	waitmessage B_WAIT_TIME_LONG
	multihitresultmessage
	printstring STRINGID_EMPTYSTRING3
	waitmessage 1
	addbyte sMULTIHIT_STRING + 4, 1
	moveendto MOVEEND_NEXT_TARGET
	jumpifbyte CMP_COMMON_BITS, gMoveResultFlags, MOVE_RESULT_FOE_ENDURED, BattleScript_MultiHitPrintStrings
	decrementmultihit BattleScript_MultiHitLoop
	goto BattleScript_MultiHitPrintStrings
BattleScript_MultiHitNoMoreHits::
	pause B_WAIT_TIME_SHORT
BattleScript_MultiHitPrintStrings::
	resultmessage
	waitmessage B_WAIT_TIME_LONG
	jumpifmovehadnoeffect BattleScript_MultiHitEnd
	copyarray gBattleTextBuff1, sMULTIHIT_STRING, 6
	printstring STRINGID_HITXTIMES
	waitmessage B_WAIT_TIME_LONG
BattleScript_MultiHitEnd::
	seteffectwithchance
	tryfaintmon BS_TARGET, FALSE, NULL
	moveendcase MOVEEND_SYNCHRONIZE_TARGET
	moveendfrom MOVEEND_STATUS_IMMUNITY_ABILITIES
	end

BattleScript_EffectConversion::
	attackcanceler
	attackstring
	ppreduce
	tryconversiontypechange BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_PKMNCHANGEDTYPE
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectFlinchHit::
	setmoveeffect MOVE_EFFECT_FLINCH
	goto BattleScript_EffectHit

BattleScript_EffectFlinchWithStatus:
	setmoveeffect MOVE_EFFECT_FLINCH
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	critcalc
	damagecalc
	adjustdamage
	attackanimation
	waitanimation
	effectivenesssound
	hitanimation BS_TARGET
	waitstate
	healthbarupdate BS_TARGET
	datahpupdate BS_TARGET
	critmessage
	waitmessage B_WAIT_TIME_LONG
	resultmessage
	waitmessage B_WAIT_TIME_LONG
	seteffectwithchance
	argumentstatuseffect
	tryfaintmon BS_TARGET, FALSE, NULL
	goto BattleScript_MoveEnd

BattleScript_EffectRestoreHp::
	attackcanceler
	attackstring
	ppreduce
	tryhealhalfhealth BattleScript_AlreadyAtFullHp, BS_ATTACKER
	attackanimation
	waitanimation
BattleScript_RestoreHp:
	orword gHitMarker, HITMARKER_IGNORE_SUBSTITUTE
	healthbarupdate BS_ATTACKER
	datahpupdate BS_ATTACKER
	printstring STRINGID_PKMNREGAINEDHEALTH
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectToxic::
	attackcanceler
	attackstring
	ppreduce
	jumpifability BS_TARGET, ABILITY_IMMUNITY, BattleScript_ImmunityProtected
	jumpifability BS_TARGET, ABILITY_COMATOSE, BattleScript_LeafGuardProtects
	jumpifflowerveil BattleScript_FlowerVeilProtects
	jumpifleafguard BattleScript_LeafGuardProtects
	jumpifshieldsdown BS_TARGET, BattleScript_LeafGuardProtects
	jumpifsubstituteblocks BattleScript_ButItFailed
	jumpifstatus BS_TARGET, STATUS1_POISON | STATUS1_TOXIC_POISON, BattleScript_AlreadyPoisoned
	jumpifstatus BS_TARGET, STATUS1_ANY, BattleScript_ButItFailed
	trypoisontype BS_ATTACKER, BS_TARGET, BattleScript_NotAffected
	accuracycheck BattleScript_ButItFailed, ACC_CURR_MOVE
	jumpifsafeguard BattleScript_SafeguardProtected
	attackanimation
	waitanimation
	setmoveeffect MOVE_EFFECT_TOXIC
	seteffectprimary
	resultmessage
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_AlreadyPoisoned::
	setalreadystatusedmoveattempt BS_ATTACKER
	pause B_WAIT_TIME_LONG
	printstring STRINGID_PKMNALREADYPOISONED
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_ImmunityProtected::
	copybyte gEffectBattler, gBattlerTarget
	setbyte cMULTISTRING_CHOOSER, B_MSG_ABILITY_PREVENTS_MOVE_STATUS
	call BattleScript_PSNPrevention
	goto BattleScript_MoveEnd

BattleScript_EffectPayDay::
	setmoveeffect MOVE_EFFECT_PAYDAY
	goto BattleScript_EffectHit

BattleScript_EffectAuroraVeil:
	attackcanceler
	attackstring
	ppreduce
	setauroraveil BS_ATTACKER
	goto BattleScript_PrintReflectLightScreenSafeguardString

BattleScript_EffectLightScreen::
	attackcanceler
	attackstring
	ppreduce
	setlightscreen
	goto BattleScript_PrintReflectLightScreenSafeguardString

BattleScript_EffectTriAttack::
	setmoveeffect MOVE_EFFECT_TRI_ATTACK
	goto BattleScript_EffectHit

BattleScript_EffectRest::
	attackcanceler
	attackstring
	ppreduce
	jumpifstatus BS_ATTACKER, STATUS1_SLEEP, BattleScript_RestIsAlreadyAsleep
	jumpifability BS_ATTACKER, ABILITY_COMATOSE, BattleScript_RestIsAlreadyAsleep
	jumpifcantmakeasleep BattleScript_RestCantSleep
	trysetrest BattleScript_AlreadyAtFullHp
	pause B_WAIT_TIME_SHORT
	printfromtable gRestUsedStringIds
	waitmessage B_WAIT_TIME_LONG
	updatestatusicon BS_ATTACKER
	waitstate
	goto BattleScript_PresentHealTarget

BattleScript_RestCantSleep::
	pause B_WAIT_TIME_LONG
	printfromtable gUproarAwakeStringIds
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_RestIsAlreadyAsleep::
	setalreadystatusedmoveattempt BS_ATTACKER
	pause B_WAIT_TIME_SHORT
	printstring STRINGID_PKMNALREADYASLEEP2
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectOHKO::
	attackcanceler
	attackstring
	ppreduce
	accuracycheck BattleScript_ButItFailed, NO_ACC_CALC_CHECK_LOCK_ON
	typecalc
	jumpifmovehadnoeffect BattleScript_HitFromAtkAnimation
	tryKO BattleScript_KOFail
	trysetdestinybondtohappen
	goto BattleScript_HitFromAtkAnimation
BattleScript_KOFail::
	pause B_WAIT_TIME_LONG
	printfromtable gKOFailedStringIds
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_TwoTurnMovesSecondTurn::
	attackcanceler
	setmoveeffect MOVE_EFFECT_CHARGING
	setbyte sB_ANIM_TURN, 1
	clearstatusfromeffect BS_ATTACKER
	orword gHitMarker, HITMARKER_NO_PPDEDUCT
	argumenttomoveeffect
	goto BattleScript_HitFromAccCheck

BattleScriptFirstChargingTurn::
	attackcanceler
	printstring STRINGID_EMPTYSTRING3
	ppreduce
	attackstring
	pause B_WAIT_TIME_LONG
	copybyte cMULTISTRING_CHOOSER, sTWOTURN_STRINGID
	printfromtable gFirstTurnOfTwoStringIds
	waitmessage B_WAIT_TIME_LONG
	attackanimation
	waitanimation
	orword gHitMarker, HITMARKER_CHARGING
	setmoveeffect MOVE_EFFECT_CHARGING | MOVE_EFFECT_AFFECTS_USER
	seteffectprimary
	return

BattleScript_EffectSuperFang::
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	typecalc
	bichalfword gMoveResultFlags, MOVE_RESULT_SUPER_EFFECTIVE | MOVE_RESULT_NOT_VERY_EFFECTIVE
	damagetohalftargethp
	goto BattleScript_HitFromAtkAnimation

BattleScript_EffectDragonRage::
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	typecalc
	bichalfword gMoveResultFlags, MOVE_RESULT_SUPER_EFFECTIVE | MOVE_RESULT_NOT_VERY_EFFECTIVE
	setword gBattleMoveDamage, 40
	adjustdamage
	goto BattleScript_HitFromAtkAnimation

BattleScript_EffectTrap::
	setmoveeffect MOVE_EFFECT_WRAP
	goto BattleScript_EffectHit

BattleScript_EffectDoubleHit::
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	setmultihitcounter 2
	initmultihitstring
	sethword sMULTIHIT_EFFECT, 0
	goto BattleScript_MultiHitLoop

BattleScript_EffectRecoilIfMiss::
	attackcanceler
	accuracycheck BattleScript_MoveMissedDoDamage, ACC_CURR_MOVE
.if B_CRASH_IF_TARGET_IMMUNE >= GEN_4
	typecalc
	jumpifbyte CMP_COMMON_BITS, gMoveResultFlags, MOVE_RESULT_DOESNT_AFFECT_FOE, BattleScript_MoveMissedDoDamage
.endif
	goto BattleScript_HitFromAtkString
BattleScript_MoveMissedDoDamage::
	jumpifability BS_ATTACKER, ABILITY_MAGIC_GUARD, BattleScript_PrintMoveMissed
	attackstring
	ppreduce
	pause B_WAIT_TIME_LONG
	resultmessage
	waitmessage B_WAIT_TIME_LONG
.if B_CRASH_IF_TARGET_IMMUNE < GEN_4
	jumpifbyte CMP_COMMON_BITS, gMoveResultFlags, MOVE_RESULT_DOESNT_AFFECT_FOE, BattleScript_MoveEnd
.endif
	printstring STRINGID_PKMNCRASHED
	waitmessage B_WAIT_TIME_LONG
	damagecalc
	typecalc
	adjustdamage
.if B_CRASH_IF_TARGET_IMMUNE == GEN_4
	manipulatedamage DMG_RECOIL_FROM_IMMUNE
.else
	manipulatedamage DMG_RECOIL_FROM_MISS
.endif
.if B_CRASH_IF_TARGET_IMMUNE >= GEN_4
	bichalfword gMoveResultFlags, MOVE_RESULT_MISSED | MOVE_RESULT_DOESNT_AFFECT_FOE
.else
	bichalfword gMoveResultFlags, MOVE_RESULT_MISSED
.endif
	orword gHitMarker, HITMARKER_IGNORE_SUBSTITUTE
	healthbarupdate BS_ATTACKER
	datahpupdate BS_ATTACKER
	tryfaintmon BS_ATTACKER, FALSE, NULL
.if B_CRASH_IF_TARGET_IMMUNE >= GEN_4
	orhalfword gMoveResultFlags, MOVE_RESULT_MISSED | MOVE_RESULT_DOESNT_AFFECT_FOE
.else
	orhalfword gMoveResultFlags, MOVE_RESULT_MISSED
.endif
	goto BattleScript_MoveEnd

BattleScript_EffectMist::
	attackcanceler
	attackstring
	ppreduce
	setmist
	attackanimation
	waitanimation
	printfromtable gMistUsedStringIds
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectFocusEnergy:
	attackcanceler
	attackstring
	ppreduce
	jumpifstatus2 BS_ATTACKER, STATUS2_FOCUS_ENERGY, BattleScript_ButItFailed
	setfocusenergy
	attackanimation
	waitanimation
	printfromtable gFocusEnergyUsedStringIds
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectConfuse:
	attackcanceler
	attackstring
	ppreduce
	jumpifability BS_TARGET, ABILITY_OWN_TEMPO, BattleScript_OwnTempoPrevents
	jumpifsubstituteblocks BattleScript_ButItFailed
	jumpifstatus2 BS_TARGET, STATUS2_CONFUSION, BattleScript_AlreadyConfused
	accuracycheck BattleScript_ButItFailed, ACC_CURR_MOVE
	jumpifsafeguard BattleScript_SafeguardProtected
	attackanimation
	waitanimation
	setmoveeffect MOVE_EFFECT_CONFUSION
	seteffectprimary
	resultmessage
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_AlreadyConfused::
	setalreadystatusedmoveattempt BS_ATTACKER
	pause B_WAIT_TIME_SHORT
	printstring STRINGID_PKMNALREADYCONFUSED
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectAttackUp2::
	setstatchanger STAT_ATK, 2, FALSE
	goto BattleScript_EffectStatUp

BattleScript_EffectDefenseUp2::
	setstatchanger STAT_DEF, 2, FALSE
	goto BattleScript_EffectStatUp

BattleScript_EffectDefenseUp3:
	setstatchanger STAT_DEF, 3, FALSE
	goto BattleScript_EffectStatUp

BattleScript_EffectSpeedUp2::
	setstatchanger STAT_SPEED, 2, FALSE
	goto BattleScript_EffectStatUp

BattleScript_EffectSpecialAttackUp2::
	setstatchanger STAT_SPATK, 2, FALSE
	goto BattleScript_EffectStatUp

BattleScript_EffectSpecialAttackUp3::
	setstatchanger STAT_SPATK, 3, FALSE
	goto BattleScript_EffectStatUp

BattleScript_EffectSpecialDefenseUp2::
	setstatchanger STAT_SPDEF, 2, FALSE
	goto BattleScript_EffectStatUp

BattleScript_EffectAccuracyUp2:
	setstatchanger STAT_ACC, 2, FALSE
	goto BattleScript_EffectStatUp

BattleScript_EffectEvasionUp2:
	setstatchanger STAT_EVASION, 2, FALSE
	goto BattleScript_EffectStatUp

BattleScript_EffectTransform::
	attackcanceler
	attackstring
	ppreduce
	transformdataexecution
	attackanimation
	waitanimation
	printfromtable gTransformUsedStringIds
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectAttackDown2:
	setstatchanger STAT_ATK, 2, TRUE
	goto BattleScript_EffectStatDown

BattleScript_EffectDefenseDown2:
	setstatchanger STAT_DEF, 2, TRUE
	goto BattleScript_EffectStatDown

BattleScript_EffectSpeedDown2:
	setstatchanger STAT_SPEED, 2, TRUE
	goto BattleScript_EffectStatDown

BattleScript_EffectSpecialDefenseDown2:
	setstatchanger STAT_SPDEF, 2, TRUE
	goto BattleScript_EffectStatDown

BattleScript_EffectSpecialAttackDown2:
	setstatchanger STAT_SPATK, 2, TRUE
	goto BattleScript_EffectStatDown

BattleScript_EffectAccuracyDown2:
	setstatchanger STAT_ACC, 2, TRUE
	goto BattleScript_EffectStatDown

BattleScript_EffectEvasionDown2:
	setstatchanger STAT_EVASION, 2, TRUE
	goto BattleScript_EffectStatDown

BattleScript_EffectReflect::
	attackcanceler
	attackstring
	ppreduce
	setreflect
BattleScript_PrintReflectLightScreenSafeguardString::
	attackanimation
	waitanimation
	printfromtable gReflectLightScreenSafeguardStringIds
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectPoison::
	attackcanceler
	attackstring
	ppreduce
	jumpifability BS_TARGET, ABILITY_IMMUNITY, BattleScript_ImmunityProtected
	jumpifability BS_TARGET, ABILITY_COMATOSE, BattleScript_LeafGuardProtects
	jumpifflowerveil BattleScript_FlowerVeilProtects
	jumpifleafguard BattleScript_LeafGuardProtects
	jumpifshieldsdown BS_TARGET, BattleScript_LeafGuardProtects
	jumpifsubstituteblocks BattleScript_ButItFailed
	jumpifstatus BS_TARGET, STATUS1_POISON, BattleScript_AlreadyPoisoned
	jumpifstatus BS_TARGET, STATUS1_TOXIC_POISON, BattleScript_AlreadyPoisoned
	trypoisontype BS_ATTACKER, BS_TARGET, BattleScript_NotAffected
	jumpifstatus BS_TARGET, STATUS1_ANY, BattleScript_ButItFailed
	accuracycheck BattleScript_ButItFailed, ACC_CURR_MOVE
	jumpifsafeguard BattleScript_SafeguardProtected
	attackanimation
	waitanimation
	setmoveeffect MOVE_EFFECT_POISON
	seteffectprimary
	resultmessage
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectParalyze:
	attackcanceler
	attackstring
	ppreduce
	jumpifability BS_TARGET, ABILITY_LIMBER, BattleScript_LimberProtected
	jumpifability BS_TARGET, ABILITY_COMATOSE, BattleScript_LeafGuardProtects
	jumpifflowerveil BattleScript_FlowerVeilProtects
	jumpifleafguard BattleScript_LeafGuardProtects
	jumpifshieldsdown BS_TARGET, BattleScript_LeafGuardProtects
	jumpifsubstituteblocks BattleScript_ButItFailed
	typecalc
	jumpifmovehadnoeffect BattleScript_ButItFailed
	jumpifstatus BS_TARGET, STATUS1_PARALYSIS, BattleScript_AlreadyParalyzed
	tryparalyzetype BS_ATTACKER, BS_TARGET, BattleScript_NotAffected
	jumpifstatus BS_TARGET, STATUS1_ANY, BattleScript_ButItFailed
	accuracycheck BattleScript_ButItFailed, ACC_CURR_MOVE
	jumpifsafeguard BattleScript_SafeguardProtected
	bichalfword gMoveResultFlags, MOVE_RESULT_SUPER_EFFECTIVE | MOVE_RESULT_NOT_VERY_EFFECTIVE
	attackanimation
	waitanimation
	setmoveeffect MOVE_EFFECT_PARALYSIS
	seteffectprimary
	resultmessage
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_AlreadyParalyzed:
	setalreadystatusedmoveattempt BS_ATTACKER
	pause B_WAIT_TIME_SHORT
	printstring STRINGID_PKMNISALREADYPARALYZED
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_LimberProtected::
	copybyte gEffectBattler, gBattlerTarget
	setbyte cMULTISTRING_CHOOSER, B_MSG_ABILITY_PREVENTS_MOVE_STATUS
	call BattleScript_PRLZPrevention
	goto BattleScript_MoveEnd

BattleScript_EffectAttackDownHit::
	setmoveeffect MOVE_EFFECT_ATK_MINUS_1
	goto BattleScript_EffectHit

BattleScript_EffectDefenseDownHit::
	setmoveeffect MOVE_EFFECT_DEF_MINUS_1
	goto BattleScript_EffectHit

BattleScript_EffectSpeedDownHit::
	setmoveeffect MOVE_EFFECT_SPD_MINUS_1
	goto BattleScript_EffectHit

BattleScript_EffectSpecialAttackDownHit::
	setmoveeffect MOVE_EFFECT_SP_ATK_MINUS_1
	goto BattleScript_EffectHit

BattleScript_EffectSpecialDefenseDownHit::
	setmoveeffect MOVE_EFFECT_SP_DEF_MINUS_1
	goto BattleScript_EffectHit

BattleScript_EffectSpecialDefenseDownHit2::
	setmoveeffect MOVE_EFFECT_SP_DEF_MINUS_2
	goto BattleScript_EffectHit

BattleScript_EffectAccuracyDownHit::
	setmoveeffect MOVE_EFFECT_ACC_MINUS_1
	goto BattleScript_EffectHit
	
BattleScript_PowerHerbActivation:
	playanimation BS_ATTACKER, B_ANIM_HELD_ITEM_EFFECT, NULL
	printstring STRINGID_POWERHERB
	waitmessage B_WAIT_TIME_LONG
	removeitem BS_ATTACKER
	return

BattleScript_EffectTwoTurnsAttack::
	jumpifstatus2 BS_ATTACKER, STATUS2_MULTIPLETURNS, BattleScript_TwoTurnMovesSecondTurn
	jumpifword CMP_COMMON_BITS, gHitMarker, HITMARKER_NO_ATTACKSTRING, BattleScript_TwoTurnMovesSecondTurn
	jumpifmove MOVE_SKY_ATTACK, BattleScript_EffectTwoTurnsAttackSkyAttack
	jumpifmove MOVE_RAZOR_WIND, BattleScript_EffectTwoTurnsAttackRazorWind
	jumpifmove MOVE_ICE_BURN, BattleScript_EffectTwoTurnsAttackIceBurn
	jumpifmove MOVE_FREEZE_SHOCK, BattleScript_EffectTwoTurnsAttackFreezeShock
	setbyte sTWOTURN_STRINGID, B_MSG_TURN1_RAZOR_WIND
BattleScript_EffectTwoTurnsAttackContinue:
	call BattleScriptFirstChargingTurn
	jumpifnoholdeffect BS_ATTACKER, HOLD_EFFECT_POWER_HERB, BattleScript_MoveEnd
	call BattleScript_PowerHerbActivation
	goto BattleScript_TwoTurnMovesSecondTurn
BattleScript_EffectTwoTurnsAttackSkyAttack:
	setbyte sTWOTURN_STRINGID, B_MSG_TURN1_SKY_ATTACK
	goto BattleScript_EffectTwoTurnsAttackContinue
BattleScript_EffectTwoTurnsAttackRazorWind:
	setbyte sTWOTURN_STRINGID, B_MSG_TURN1_RAZOR_WIND
	goto BattleScript_EffectTwoTurnsAttackContinue
BattleScript_EffectTwoTurnsAttackIceBurn:
	setbyte sTWOTURN_STRINGID, B_MSG_TURN1_RAZOR_WIND
	goto BattleScript_EffectTwoTurnsAttackContinue
BattleScript_EffectTwoTurnsAttackFreezeShock:
	setbyte sTWOTURN_STRINGID, B_MSG_TURN1_FREEZE_SHOCK
	goto BattleScript_EffectTwoTurnsAttackContinue	
	
BattleScript_EffectGeomancy:
	jumpifstatus2 BS_ATTACKER, STATUS2_MULTIPLETURNS, BattleScript_GeomancySecondTurn
	jumpifword CMP_COMMON_BITS, gHitMarker, HITMARKER_NO_ATTACKSTRING, BattleScript_GeomancySecondTurn
	setbyte sTWOTURN_STRINGID, B_MSG_TURN1_GEOMANCY
	call BattleScriptFirstChargingTurn
	jumpifnoholdeffect BS_ATTACKER, HOLD_EFFECT_POWER_HERB, BattleScript_MoveEnd
	call BattleScript_PowerHerbActivation
BattleScript_GeomancySecondTurn:
	attackcanceler
	setmoveeffect MOVE_EFFECT_CHARGING
	setbyte sB_ANIM_TURN, 1
	clearstatusfromeffect BS_ATTACKER
	orword gHitMarker, HITMARKER_NO_PPDEDUCT
	attackstring
	jumpifstat BS_ATTACKER, CMP_LESS_THAN, STAT_SPATK, MAX_STAT_STAGE, BattleScript_GeomancyDoMoveAnim
	jumpifstat BS_ATTACKER, CMP_LESS_THAN, STAT_SPDEF, MAX_STAT_STAGE, BattleScript_GeomancyDoMoveAnim
	jumpifstat BS_ATTACKER, CMP_EQUAL, STAT_SPEED, MAX_STAT_STAGE, BattleScript_CantRaiseMultipleStats
BattleScript_GeomancyDoMoveAnim::
	attackanimation
	waitanimation
	setbyte sSTAT_ANIM_PLAYED, FALSE
	playstatchangeanimation BS_ATTACKER, BIT_SPATK | BIT_SPDEF | BIT_SPEED, 0
	setstatchanger STAT_SPATK, 2, FALSE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_GeomancyTrySpDef
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_GeomancyTrySpDef
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_GeomancyTrySpDef::
	setstatchanger STAT_SPDEF, 2, FALSE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_GeomancyTrySpeed
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_GeomancyTrySpeed
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_GeomancyTrySpeed::
	setstatchanger STAT_SPEED, 2, FALSE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_GeomancyEnd
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_GeomancyEnd
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_GeomancyEnd::
	goto BattleScript_MoveEnd

BattleScript_EffectConfuseHit::
	setmoveeffect MOVE_EFFECT_CONFUSION
	goto BattleScript_EffectHit

BattleScript_EffectTwineedle::
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	sethword sMULTIHIT_EFFECT, MOVE_EFFECT_POISON
	attackstring
	ppreduce
	setmultihitcounter 2
	initmultihitstring
	goto BattleScript_MultiHitLoop

BattleScript_EffectSubstitute::
	attackcanceler
	ppreduce
	attackstring
	waitstate
	jumpifstatus2 BS_ATTACKER, STATUS2_SUBSTITUTE, BattleScript_AlreadyHasSubstitute
	setsubstitute
	jumpifbyte CMP_NOT_EQUAL, cMULTISTRING_CHOOSER, B_MSG_SUBSTITUTE_FAILED, BattleScript_SubstituteAnim
	pause B_WAIT_TIME_SHORT
	goto BattleScript_SubstituteString
BattleScript_SubstituteAnim::
	attackanimation
	waitanimation
	healthbarupdate BS_ATTACKER
	datahpupdate BS_ATTACKER
BattleScript_SubstituteString::
	printfromtable gSubsituteUsedStringIds
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd
BattleScript_AlreadyHasSubstitute::
	setalreadystatusedmoveattempt BS_ATTACKER
	pause B_WAIT_TIME_SHORT
	printstring STRINGID_PKMNHASSUBSTITUTE
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectRecharge::
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	setmoveeffect MOVE_EFFECT_RECHARGE | MOVE_EFFECT_AFFECTS_USER | MOVE_EFFECT_CERTAIN
	goto BattleScript_HitFromAtkString

BattleScript_MoveUsedMustRecharge::
	printstring STRINGID_PKMNMUSTRECHARGE
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectRage::
	attackcanceler
	accuracycheck BattleScript_RageMiss, ACC_CURR_MOVE
	setmoveeffect MOVE_EFFECT_RAGE
	seteffectprimary
	setmoveeffect 0
	goto BattleScript_HitFromAtkString
BattleScript_RageMiss::
	setmoveeffect MOVE_EFFECT_RAGE
	clearstatusfromeffect BS_ATTACKER
	goto BattleScript_PrintMoveMissed

BattleScript_EffectMimic::
	attackcanceler
	attackstring
	ppreduce
	jumpifsubstituteblocks BattleScript_ButItFailed
	accuracycheck BattleScript_ButItFailed, NO_ACC_CALC_CHECK_LOCK_ON
	mimicattackcopy BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_PKMNLEARNEDMOVE2
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectMetronome::
	attackcanceler
	attackstring
	pause B_WAIT_TIME_SHORT
	attackanimation
	waitanimation
	setbyte sB_ANIM_TURN, 0
	setbyte sB_ANIM_TARGETS_HIT, 0
	metronome

BattleScript_EffectLeechSeed::
	attackcanceler
	attackstring
	pause B_WAIT_TIME_SHORT
	ppreduce
	jumpifsubstituteblocks BattleScript_ButItFailed
	accuracycheck BattleScript_DoLeechSeed, ACC_CURR_MOVE
BattleScript_DoLeechSeed::
	setseeded
	attackanimation
	waitanimation
	printfromtable gLeechSeedStringIds
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectDoNothing::
	attackcanceler
	attackstring
	ppreduce
	jumpifmove MOVE_HOLD_HANDS, BattleScript_EffectHoldHands
	attackanimation
	waitanimation
	jumpifmove MOVE_CELEBRATE, BattleScript_EffectCelebrate
	jumpifmove MOVE_HAPPY_HOUR, BattleScript_EffectHappyHour
	incrementgamestat GAME_STAT_USED_SPLASH
	printstring STRINGID_BUTNOTHINGHAPPENED
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd
BattleScript_EffectHoldHands:
	jumpifsideaffecting BS_TARGET, SIDE_STATUS_CRAFTY_SHIELD, BattleScript_ButItFailed
	jumpifbyteequal gBattlerTarget, gBattlerAttacker, BattleScript_ButItFailed
	attackanimation
	waitanimation
	goto BattleScript_MoveEnd
BattleScript_EffectCelebrate:
	printstring STRINGID_CELEBRATEMESSAGE
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd
BattleScript_EffectHappyHour:
	setmoveeffect MOVE_EFFECT_HAPPY_HOUR
	seteffectprimary
	goto BattleScript_MoveEnd

BattleScript_EffectDisable::
	attackcanceler
	attackstring
	ppreduce
	jumpifability BS_TARGET_SIDE, ABILITY_AROMA_VEIL, BattleScript_AromaVeilProtects
	accuracycheck BattleScript_ButItFailed, ACC_CURR_MOVE
	disablelastusedattack BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_PKMNMOVEWASDISABLED
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectLevelDamage::
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	typecalc
	bichalfword gMoveResultFlags, MOVE_RESULT_SUPER_EFFECTIVE | MOVE_RESULT_NOT_VERY_EFFECTIVE
	dmgtolevel
	adjustdamage
	goto BattleScript_HitFromAtkAnimation

BattleScript_EffectPsywave::
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	typecalc
	bichalfword gMoveResultFlags, MOVE_RESULT_SUPER_EFFECTIVE | MOVE_RESULT_NOT_VERY_EFFECTIVE
	psywavedamageeffect
	adjustdamage
	goto BattleScript_HitFromAtkAnimation

BattleScript_EffectCounter::
	attackcanceler
	counterdamagecalculator BattleScript_ButItFailedAtkStringPpReduce
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	typecalc
	bichalfword gMoveResultFlags, MOVE_RESULT_NOT_VERY_EFFECTIVE | MOVE_RESULT_SUPER_EFFECTIVE
	adjustdamage
	goto BattleScript_HitFromAtkAnimation

BattleScript_EffectEncore::
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	jumpifability BS_TARGET_SIDE, ABILITY_AROMA_VEIL, BattleScript_AromaVeilProtects
	trysetencore BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_PKMNGOTENCORE
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectPainSplit::
	attackcanceler
	attackstring
	ppreduce
	accuracycheck BattleScript_ButItFailed, NO_ACC_CALC_CHECK_LOCK_ON
	painsplitdmgcalc BattleScript_ButItFailed
	attackanimation
	waitanimation
	orword gHitMarker, HITMARKER_IGNORE_SUBSTITUTE
	healthbarupdate BS_ATTACKER
	datahpupdate BS_ATTACKER
	copyword gBattleMoveDamage, sPAINSPLIT_HP
	healthbarupdate BS_TARGET
	datahpupdate BS_TARGET
	printstring STRINGID_SHAREDPAIN
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectSnore::
	attackcanceler
	jumpifability BS_ATTACKER, ABILITY_COMATOSE, BattleScript_SnoreIsAsleep
	jumpifstatus BS_ATTACKER, STATUS1_SLEEP, BattleScript_SnoreIsAsleep
	attackstring
	ppreduce
	goto BattleScript_ButItFailed
BattleScript_SnoreIsAsleep::
	jumpifhalfword CMP_EQUAL, gChosenMove, MOVE_SLEEP_TALK, BattleScript_DoSnore
	printstring STRINGID_PKMNFASTASLEEP
	waitmessage B_WAIT_TIME_LONG
	statusanimation BS_ATTACKER
BattleScript_DoSnore::
	attackstring
	ppreduce
	accuracycheck BattleScript_MoveMissedPause, ACC_CURR_MOVE
	setmoveeffect MOVE_EFFECT_FLINCH
	goto BattleScript_HitFromCritCalc

BattleScript_EffectConversion2::
	attackcanceler
	attackstring
	ppreduce
	settypetorandomresistance BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_PKMNCHANGEDTYPE
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectLockOn::
	attackcanceler
	attackstring
	ppreduce
	jumpifsubstituteblocks BattleScript_ButItFailed
	accuracycheck BattleScript_ButItFailed, ACC_CURR_MOVE
	setalwayshitflag
	attackanimation
	waitanimation
	printstring STRINGID_PKMNTOOKAIM
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectSketch::
	attackcanceler
	attackstring
	ppreduce
	copymovepermanently BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_PKMNSKETCHEDMOVE
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectSleepTalk::
	attackcanceler
	jumpifability BS_ATTACKER, ABILITY_COMATOSE, BattleScript_SleepTalkIsAsleep
	jumpifstatus BS_ATTACKER, STATUS1_SLEEP, BattleScript_SleepTalkIsAsleep
	attackstring
	ppreduce
	goto BattleScript_ButItFailed
BattleScript_SleepTalkIsAsleep::
	printstring STRINGID_PKMNFASTASLEEP
	waitmessage B_WAIT_TIME_LONG
	statusanimation BS_ATTACKER
	attackstring
	ppreduce
	orword gHitMarker, HITMARKER_NO_PPDEDUCT
	trychoosesleeptalkmove BattleScript_SleepTalkUsingMove
	pause B_WAIT_TIME_LONG
	goto BattleScript_ButItFailed
BattleScript_SleepTalkUsingMove::
	attackanimation
	waitanimation
	setbyte sB_ANIM_TURN, 0
	setbyte sB_ANIM_TARGETS_HIT, 0
	jumptocalledmove TRUE

BattleScript_EffectDestinyBond::
	attackcanceler
	attackstring
	ppreduce
	setdestinybond
	attackanimation
	waitanimation
	printstring STRINGID_PKMNTRYINGTOTAKEFOE
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectSpite::
	attackcanceler
	attackstring
	ppreduce
	accuracycheck BattleScript_ButItFailed, ACC_CURR_MOVE
	tryspiteppreduce BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_PKMNREDUCEDPP
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectHealBell::
	attackcanceler
	attackstring
	ppreduce
	healpartystatus
	waitstate
	attackanimation
	waitanimation
	printfromtable gPartyStatusHealStringIds
	waitmessage B_WAIT_TIME_LONG
	jumpifnotmove MOVE_HEAL_BELL, BattleScript_PartyHealEnd
	jumpifbyte CMP_NO_COMMON_BITS, cMULTISTRING_CHOOSER, B_MSG_BELL_SOUNDPROOF_ATTACKER, BattleScript_CheckHealBellMon2Unaffected
	printstring STRINGID_PKMNSXBLOCKSY
	waitmessage B_WAIT_TIME_LONG
BattleScript_CheckHealBellMon2Unaffected::
	jumpifbyte CMP_NO_COMMON_BITS, cMULTISTRING_CHOOSER, B_MSG_BELL_SOUNDPROOF_PARTNER, BattleScript_PartyHealEnd
	printstring STRINGID_PKMNSXBLOCKSY2
	waitmessage B_WAIT_TIME_LONG
BattleScript_PartyHealEnd::
	updatestatusicon BS_ATTACKER_WITH_PARTNER
	waitstate
	goto BattleScript_MoveEnd

BattleScript_EffectTripleKick::
	attackcanceler
	attackstring
	ppreduce
	sethword sTRIPLE_KICK_POWER, 0
	initmultihitstring
	setmultihit 3
BattleScript_TripleKickLoop::
	jumpifhasnohp BS_ATTACKER, BattleScript_TripleKickEnd
	jumpifhasnohp BS_TARGET, BattleScript_TripleKickNoMoreHits
	jumpifhalfword CMP_EQUAL, gChosenMove, MOVE_SLEEP_TALK, BattleScript_DoTripleKickAttack
	jumpifstatus BS_ATTACKER, STATUS1_SLEEP, BattleScript_TripleKickNoMoreHits
BattleScript_DoTripleKickAttack::
	accuracycheck BattleScript_TripleKickNoMoreHits, ACC_CURR_MOVE
	movevaluescleanup
	addbyte sTRIPLE_KICK_POWER, 10
	addbyte sMULTIHIT_STRING + 4, 1
	critcalc
	damagecalc
	adjustdamage
	jumpifmovehadnoeffect BattleScript_TripleKickNoMoreHits
	attackanimation
	waitanimation
	effectivenesssound
	hitanimation BS_TARGET
	waitstate
	healthbarupdate BS_TARGET
	datahpupdate BS_TARGET
	critmessage
	waitmessage B_WAIT_TIME_LONG
	printstring STRINGID_EMPTYSTRING3
	waitmessage 1
	moveendto MOVEEND_NEXT_TARGET
	jumpifbyte CMP_COMMON_BITS, gMoveResultFlags, MOVE_RESULT_FOE_ENDURED, BattleScript_TripleKickPrintStrings
	decrementmultihit BattleScript_TripleKickLoop
	goto BattleScript_TripleKickPrintStrings
BattleScript_TripleKickNoMoreHits::
	pause B_WAIT_TIME_SHORT
	jumpifbyte CMP_EQUAL, sMULTIHIT_STRING + 4, 0, BattleScript_TripleKickPrintStrings
	bichalfword gMoveResultFlags, MOVE_RESULT_MISSED
BattleScript_TripleKickPrintStrings::
	resultmessage
	waitmessage B_WAIT_TIME_LONG
	jumpifbyte CMP_EQUAL, sMULTIHIT_STRING + 4, 0, BattleScript_TripleKickEnd
	jumpifbyte CMP_COMMON_BITS, gMoveResultFlags, MOVE_RESULT_DOESNT_AFFECT_FOE, BattleScript_TripleKickEnd
	copyarray gBattleTextBuff1, sMULTIHIT_STRING, 6
	printstring STRINGID_HITXTIMES
	waitmessage B_WAIT_TIME_LONG
BattleScript_TripleKickEnd::
	seteffectwithchance
	tryfaintmon BS_TARGET, FALSE, NULL
	moveendfrom MOVEEND_UPDATE_LAST_MOVES
	end

BattleScript_EffectThief::
	setmoveeffect MOVE_EFFECT_STEAL_ITEM
	goto BattleScript_EffectHit

BattleScript_EffectHitPreventEscape:
	setmoveeffect MOVE_EFFECT_PREVENT_ESCAPE
	goto BattleScript_EffectHit

BattleScript_EffectMeanLook::
	attackcanceler
	attackstring
	ppreduce
	accuracycheck BattleScript_ButItFailed, NO_ACC_CALC_CHECK_LOCK_ON
	jumpifstatus2 BS_TARGET, STATUS2_ESCAPE_PREVENTION, BattleScript_ButItFailed
	jumpifsubstituteblocks BattleScript_ButItFailed
	attackanimation
	waitanimation
	setmoveeffect MOVE_EFFECT_PREVENT_ESCAPE
	seteffectprimary
	printstring STRINGID_TARGETCANTESCAPENOW
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectNightmare::
	attackcanceler
	attackstring
	ppreduce
	jumpifsubstituteblocks BattleScript_ButItFailed
	jumpifstatus2 BS_TARGET, STATUS2_NIGHTMARE, BattleScript_ButItFailed
	jumpifstatus BS_TARGET, STATUS1_SLEEP, BattleScript_NightmareWorked
	jumpifability BS_TARGET, ABILITY_COMATOSE, BattleScript_NightmareWorked
	goto BattleScript_ButItFailed
BattleScript_NightmareWorked::
	attackanimation
	waitanimation
	setmoveeffect MOVE_EFFECT_NIGHTMARE
	seteffectprimary
	printstring STRINGID_PKMNFELLINTONIGHTMARE
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectMinimize::
	attackcanceler
	setminimize
	setstatchanger STAT_EVASION, 1, FALSE
	goto BattleScript_EffectStatUpAfterAtkCanceler

BattleScript_EffectCurse::
	jumpiftype BS_ATTACKER, TYPE_GHOST, BattleScript_GhostCurse
	attackcanceler
	attackstring
	ppreduce
	jumpifstat BS_ATTACKER, CMP_GREATER_THAN, STAT_SPEED, MIN_STAT_STAGE, BattleScript_CurseTrySpeed
	jumpifstat BS_ATTACKER, CMP_NOT_EQUAL, STAT_ATK, MAX_STAT_STAGE, BattleScript_CurseTrySpeed
	jumpifstat BS_ATTACKER, CMP_EQUAL, STAT_DEF, MAX_STAT_STAGE, BattleScript_ButItFailed
BattleScript_CurseTrySpeed::
	copybyte gBattlerTarget, gBattlerAttacker
	setbyte sB_ANIM_TURN, 1
	attackanimation
	waitanimation
	setstatchanger STAT_SPEED, 1, TRUE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_CurseTryAttack
	printfromtable gStatDownStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_CurseTryAttack::
	setstatchanger STAT_ATK, 1, FALSE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_CurseTryDefense
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_CurseTryDefense::
	setstatchanger STAT_DEF, 1, FALSE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_CurseEnd
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_CurseEnd::
	goto BattleScript_MoveEnd
BattleScript_GhostCurse::
	jumpifbytenotequal gBattlerAttacker, gBattlerTarget, BattleScript_DoGhostCurse
	getmovetarget BS_ATTACKER
BattleScript_DoGhostCurse::
	attackcanceler
	attackstring
	ppreduce
	accuracycheck BattleScript_ButItFailed, NO_ACC_CALC_CHECK_LOCK_ON
	cursetarget BattleScript_ButItFailed
	orword gHitMarker, HITMARKER_IGNORE_SUBSTITUTE
	setbyte sB_ANIM_TURN, 0
	attackanimation
	waitanimation
	healthbarupdate BS_ATTACKER
	datahpupdate BS_ATTACKER
	printstring STRINGID_PKMNLAIDCURSE
	waitmessage B_WAIT_TIME_LONG
	tryfaintmon BS_ATTACKER, FALSE, NULL
	goto BattleScript_MoveEnd

BattleScript_EffectMatBlock::
	attackcanceler
	jumpifnotfirstturn BattleScript_ButItFailedAtkStringPpReduce
	goto BattleScript_ProtectLikeAtkString

BattleScript_EffectProtect::
BattleScript_EffectEndure::
	attackcanceler
BattleScript_ProtectLikeAtkString:
	attackstring
	ppreduce
	setprotectlike
	attackanimation
	waitanimation
	printfromtable gProtectLikeUsedStringIds
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectSpikes::
	attackcanceler
	trysetspikes BattleScript_ButItFailedAtkStringPpReduce
	attackstring
	ppreduce
	attackanimation
	waitanimation
	printstring STRINGID_SPIKESSCATTERED
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectForesight:
	attackcanceler
	attackstring
	ppreduce
	accuracycheck BattleScript_ButItFailed, NO_ACC_CALC_CHECK_LOCK_ON
	jumpifstatus2 BS_TARGET, STATUS2_FORESIGHT, BattleScript_ButItFailed
	setforesight
BattleScript_IdentifiedFoe:
	attackanimation
	waitanimation
	printstring STRINGID_PKMNIDENTIFIED
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectPerishSong::
	attackcanceler
	attackstring
	ppreduce
	trysetperishsong BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_FAINTINTHREE
	waitmessage B_WAIT_TIME_LONG
	setbyte sBATTLER, 0
BattleScript_PerishSongLoop::
	jumpifability BS_SCRIPTING, ABILITY_SOUNDPROOF, BattleScript_PerishSongNotAffected
BattleScript_PerishSongLoopIncrement::
	addbyte sBATTLER, 1
	jumpifbytenotequal sBATTLER, gBattlersCount, BattleScript_PerishSongLoop
	goto BattleScript_MoveEnd

BattleScript_PerishSongNotAffected::
	printstring STRINGID_PKMNSXBLOCKSY2
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_PerishSongLoopIncrement

BattleScript_EffectSandstorm::
	attackcanceler
	attackstring
	ppreduce
	setsandstorm
	goto BattleScript_MoveWeatherChange

BattleScript_EffectRollout::
	attackcanceler
	attackstring
	jumpifstatus2 BS_ATTACKER, STATUS2_MULTIPLETURNS, BattleScript_RolloutCheckAccuracy
	ppreduce
BattleScript_RolloutCheckAccuracy::
	accuracycheck BattleScript_RolloutHit, ACC_CURR_MOVE
BattleScript_RolloutHit::
	typecalc
	handlerollout
	goto BattleScript_HitFromCritCalc

BattleScript_EffectSwagger::
	attackcanceler
	jumpifsubstituteblocks BattleScript_MakeMoveMissed
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	jumpifconfusedandstatmaxed STAT_ATK, BattleScript_ButItFailed
	attackanimation
	waitanimation
	setstatchanger STAT_ATK, 2, FALSE
	statbuffchange STAT_BUFF_ALLOW_PTR, BattleScript_SwaggerTryConfuse
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_SwaggerTryConfuse
	setgraphicalstatchangevalues
	playanimation BS_TARGET, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_SwaggerTryConfuse:
	jumpifability BS_TARGET, ABILITY_OWN_TEMPO, BattleScript_OwnTempoPrevents
	jumpifsafeguard BattleScript_SafeguardProtected
	setmoveeffect MOVE_EFFECT_CONFUSION
	seteffectprimary
	goto BattleScript_MoveEnd

BattleScript_EffectFuryCutter:
	attackcanceler
	attackstring
	ppreduce
	accuracycheck BattleScript_FuryCutterHit, ACC_CURR_MOVE
BattleScript_FuryCutterHit:
	handlefurycutter
	critcalc
	damagecalc
	jumpifmovehadnoeffect BattleScript_FuryCutterHit
	adjustdamage
	goto BattleScript_HitFromAtkAnimation
	
BattleScript_TryDestinyKnotTarget:
	jumpifnoholdeffect BS_ATTACKER, HOLD_EFFECT_DESTINY_KNOT, BattleScript_TryDestinyKnotTargetRet
	infatuatewithbattler BS_TARGET, BS_ATTACKER
	playanimation BS_ATTACKER, B_ANIM_HELD_ITEM_EFFECT, NULL
	waitanimation
	status2animation BS_TARGET, STATUS2_INFATUATION
	waitanimation
	printstring STRINGID_DESTINYKNOTACTIVATES
	waitmessage B_WAIT_TIME_LONG
BattleScript_TryDestinyKnotTargetRet:
	return
	
BattleScript_TryDestinyKnotAttacker:
	jumpifnoholdeffect BS_TARGET, HOLD_EFFECT_DESTINY_KNOT, BattleScript_TryDestinyKnotAttackerRet
	infatuatewithbattler BS_ATTACKER, BS_TARGET
	playanimation BS_TARGET, B_ANIM_HELD_ITEM_EFFECT, NULL
	waitanimation
	status2animation BS_ATTACKER, STATUS2_INFATUATION
	waitanimation
	printstring STRINGID_DESTINYKNOTACTIVATES
	waitmessage B_WAIT_TIME_LONG
BattleScript_TryDestinyKnotAttackerRet:
	return

BattleScript_EffectAttract::
	attackcanceler
	attackstring
	ppreduce
	accuracycheck BattleScript_ButItFailed, ACC_CURR_MOVE
	jumpifability BS_TARGET_SIDE, ABILITY_AROMA_VEIL, BattleScript_AromaVeilProtects
	tryinfatuating BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_PKMNFELLINLOVE
	waitmessage B_WAIT_TIME_LONG
	call BattleScript_TryDestinyKnotAttacker
	goto BattleScript_MoveEnd

BattleScript_EffectPresent::
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	typecalc
	presentdamagecalculation

BattleScript_EffectSafeguard::
	attackcanceler
	attackstring
	ppreduce
	setsafeguard
	goto BattleScript_PrintReflectLightScreenSafeguardString

BattleScript_EffectThawHit::
	setmoveeffect MOVE_EFFECT_BURN
	goto BattleScript_EffectHit

BattleScript_EffectMagnitude::
	jumpifword CMP_COMMON_BITS, gHitMarker, HITMARKER_NO_ATTACKSTRING | HITMARKER_NO_PPDEDUCT, BattleScript_EffectMagnitudeTarget 
	attackcanceler
	attackstring
	ppreduce
	magnitudedamagecalculation
	pause B_WAIT_TIME_SHORT
	printstring STRINGID_MAGNITUDESTRENGTH
	waitmessage B_WAIT_TIME_LONG
BattleScript_EffectMagnitudeTarget:
	accuracycheck BattleScript_MoveMissedPause, ACC_CURR_MOVE
	goto BattleScript_HitFromCritCalc

BattleScript_EffectBatonPass::
	attackcanceler
	attackstring
	ppreduce
	jumpifbattletype BATTLE_TYPE_ARENA, BattleScript_ButItFailed
	jumpifcantswitch SWITCH_IGNORE_ESCAPE_PREVENTION | BS_ATTACKER, BattleScript_ButItFailed
	attackanimation
	waitanimation
	openpartyscreen BS_ATTACKER, BattleScript_ButItFailed
	switchoutabilities BS_ATTACKER
	waitstate
	switchhandleorder BS_ATTACKER, 2
	returntoball BS_ATTACKER
	getswitchedmondata BS_ATTACKER
	switchindataupdate BS_ATTACKER
	hpthresholds BS_ATTACKER
	printstring STRINGID_SWITCHINMON
	switchinanim BS_ATTACKER, TRUE
	waitstate
	switchineffects BS_ATTACKER
	goto BattleScript_MoveEnd

BattleScript_EffectRapidSpin::
.if B_SPEED_BUFFING_RAPID_SPIN == GEN_8
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	critcalc
	damagecalc
	adjustdamage
	attackanimation
	waitanimation
	effectivenesssound
	hitanimation BS_TARGET
	waitstate
	healthbarupdate BS_TARGET
	datahpupdate BS_TARGET
	critmessage
	waitmessage B_WAIT_TIME_LONG
	resultmessage
	waitmessage B_WAIT_TIME_LONG
	setmoveeffect MOVE_EFFECT_RAPIDSPIN | MOVE_EFFECT_AFFECTS_USER | MOVE_EFFECT_CERTAIN
	seteffectwithchance
	setstatchanger STAT_SPEED, 1, FALSE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_EffectRapidSpinEnd
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_EffectRapidSpinEnd
	setgraphicalstatchangevalues
	playanimation BS_ATTACKER, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_EffectRapidSpinEnd::
	tryfaintmon BS_TARGET, FALSE, NULL
	moveendall
	end
.else
	setmoveeffect MOVE_EFFECT_RAPIDSPIN | MOVE_EFFECT_AFFECTS_USER | MOVE_EFFECT_CERTAIN
.endif
	goto BattleScript_EffectHit

BattleScript_EffectSonicboom::
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	typecalc
	bichalfword gMoveResultFlags, MOVE_RESULT_SUPER_EFFECTIVE | MOVE_RESULT_NOT_VERY_EFFECTIVE
	setword gBattleMoveDamage, 20
	adjustdamage
	goto BattleScript_HitFromAtkAnimation

BattleScript_EffectMorningSun::
BattleScript_EffectSynthesis::
BattleScript_EffectMoonlight::
BattleScript_EffectShoreUp::
	attackcanceler
	attackstring
	ppreduce
	recoverbasedonsunlight BattleScript_AlreadyAtFullHp
	goto BattleScript_PresentHealTarget

BattleScript_EffectRainDance::
	attackcanceler
	attackstring
	ppreduce
	setrain
BattleScript_MoveWeatherChange::
	attackanimation
	waitanimation
	printfromtable gMoveWeatherChangeStringIds
	waitmessage B_WAIT_TIME_LONG
	call BattleScript_WeatherFormChanges
	goto BattleScript_MoveEnd

BattleScript_EffectSunnyDay::
	attackcanceler
	attackstring
	ppreduce
	setsunny
	goto BattleScript_MoveWeatherChange

BattleScript_EffectDefenseUpHit::
	setmoveeffect MOVE_EFFECT_DEF_PLUS_1 | MOVE_EFFECT_AFFECTS_USER
	goto BattleScript_EffectHit

BattleScript_EffectAttackUpHit::
	setmoveeffect MOVE_EFFECT_ATK_PLUS_1 | MOVE_EFFECT_AFFECTS_USER
	goto BattleScript_EffectHit

BattleScript_EffectAllStatsUpHit::
	setmoveeffect MOVE_EFFECT_ALL_STATS_UP | MOVE_EFFECT_AFFECTS_USER
	goto BattleScript_EffectHit

BattleScript_EffectBellyDrum::
	attackcanceler
	attackstring
	ppreduce
	maxattackhalvehp BattleScript_ButItFailed
	orword gHitMarker, HITMARKER_IGNORE_SUBSTITUTE
	attackanimation
	waitanimation
	healthbarupdate BS_ATTACKER
	datahpupdate BS_ATTACKER
	printstring STRINGID_PKMNCUTHPMAXEDATTACK
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectPsychUp::
	attackcanceler
	attackstring
	ppreduce
	copyfoestats BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_PKMNCOPIEDSTATCHANGES
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectMirrorCoat::
	attackcanceler
	mirrorcoatdamagecalculator BattleScript_ButItFailedAtkStringPpReduce
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	typecalc
	bichalfword gMoveResultFlags, MOVE_RESULT_NOT_VERY_EFFECTIVE | MOVE_RESULT_SUPER_EFFECTIVE
	adjustdamage
	goto BattleScript_HitFromAtkAnimation

BattleScript_EffectSkullBash::
	jumpifstatus2 BS_ATTACKER, STATUS2_MULTIPLETURNS, BattleScript_TwoTurnMovesSecondTurn
	jumpifword CMP_COMMON_BITS, gHitMarker, HITMARKER_NO_ATTACKSTRING, BattleScript_TwoTurnMovesSecondTurn
	setbyte sTWOTURN_STRINGID, B_MSG_TURN1_SKULL_BASH
	call BattleScriptFirstChargingTurn
	setstatchanger STAT_DEF, 1, FALSE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_SkullBashEnd
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_SkullBashEnd
	setgraphicalstatchangevalues
	playanimation BS_ATTACKER, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_SkullBashEnd::
	jumpifnoholdeffect BS_ATTACKER, HOLD_EFFECT_POWER_HERB, BattleScript_MoveEnd
	call BattleScript_PowerHerbActivation
	goto BattleScript_TwoTurnMovesSecondTurn

BattleScript_EffectTwister:
BattleScript_FlinchEffect:
BattleScript_EffectStomp:
	setmoveeffect MOVE_EFFECT_FLINCH
	goto BattleScript_EffectHit

BattleScript_EffectBulldoze:
	setmoveeffect MOVE_EFFECT_SPD_MINUS_1
BattleScript_EffectEarthquake:
	goto BattleScript_EffectHit

BattleScript_EffectFutureSight::
	attackcanceler
	attackstring
	ppreduce
	trysetfutureattack BattleScript_ButItFailed
	attackanimation
	waitanimation
	printfromtable gFutureMoveUsedStringIds
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectGust::
	goto BattleScript_EffectHit

BattleScript_EffectSolarbeam::
	jumpifabilitypresent ABILITY_CLOUD_NINE, BattleScript_SolarbeamDecideTurn
	jumpifabilitypresent ABILITY_AIR_LOCK, BattleScript_SolarbeamDecideTurn
	jumpifhalfword CMP_COMMON_BITS, gBattleWeather, WEATHER_SUN_TEMPORARY | WEATHER_SUN_PERMANENT, BattleScript_SolarbeamOnFirstTurn
BattleScript_SolarbeamDecideTurn::
	jumpifstatus2 BS_ATTACKER, STATUS2_MULTIPLETURNS, BattleScript_TwoTurnMovesSecondTurn
	jumpifword CMP_COMMON_BITS, gHitMarker, HITMARKER_NO_ATTACKSTRING, BattleScript_TwoTurnMovesSecondTurn
	setbyte sTWOTURN_STRINGID, B_MSG_TURN1_SOLAR_BEAM
	call BattleScriptFirstChargingTurn
	jumpifnoholdeffect BS_ATTACKER, HOLD_EFFECT_POWER_HERB, BattleScript_MoveEnd
	call BattleScript_PowerHerbActivation
	goto BattleScript_TwoTurnMovesSecondTurn
BattleScript_SolarbeamOnFirstTurn::
	orword gHitMarker, HITMARKER_CHARGING
	setmoveeffect MOVE_EFFECT_CHARGING | MOVE_EFFECT_AFFECTS_USER
	seteffectprimary
	ppreduce
	goto BattleScript_TwoTurnMovesSecondTurn

BattleScript_EffectThunder:
	setmoveeffect MOVE_EFFECT_PARALYSIS
	goto BattleScript_EffectHit

BattleScript_EffectHurricane:
	setmoveeffect MOVE_EFFECT_CONFUSION
	goto BattleScript_EffectHit

BattleScript_EffectTeleport:
	attackcanceler
	attackstring
	ppreduce
	jumpifbattletype BATTLE_TYPE_TRAINER, BattleScript_ButItFailed
	getifcantrunfrombattle BS_ATTACKER
	jumpifbyte CMP_EQUAL, gBattleCommunication, 1, BattleScript_ButItFailed
	jumpifbyte CMP_EQUAL, gBattleCommunication, 2, BattleScript_PrintAbilityMadeIneffective
	attackanimation
	waitanimation
	printstring STRINGID_PKMNFLEDFROMBATTLE
	waitmessage B_WAIT_TIME_LONG
	setoutcomeonteleport BS_ATTACKER
	goto BattleScript_MoveEnd

BattleScript_EffectBeatUp::
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	pause B_WAIT_TIME_SHORT
	ppreduce
	setbyte gBattleCommunication, 0
BattleScript_BeatUpLoop::
	movevaluescleanup
	trydobeatup BattleScript_BeatUpEnd, BattleScript_ButItFailed
	printstring STRINGID_PKMNATTACK
	critcalc
	jumpifbyte CMP_NOT_EQUAL, gIsCriticalHit, TRUE, BattleScript_BeatUpAttack
	manipulatedamage DMG_DOUBLED
BattleScript_BeatUpAttack::
	adjustdamage
	attackanimation
	waitanimation
	effectivenesssound
	hitanimation BS_TARGET
	waitstate
	healthbarupdate BS_TARGET
	datahpupdate BS_TARGET
	critmessage
	waitmessage B_WAIT_TIME_LONG
	resultmessage
	waitmessage B_WAIT_TIME_LONG
	tryfaintmon BS_TARGET, FALSE, NULL
	moveendto MOVEEND_NEXT_TARGET
	goto BattleScript_BeatUpLoop
BattleScript_BeatUpEnd::
	end

BattleScript_EffectSemiInvulnerable::
	jumpifstatus2 BS_ATTACKER, STATUS2_MULTIPLETURNS, BattleScript_SecondTurnSemiInvulnerable
	jumpifword CMP_COMMON_BITS, gHitMarker, HITMARKER_NO_ATTACKSTRING, BattleScript_SecondTurnSemiInvulnerable
	jumpifmove MOVE_FLY, BattleScript_FirstTurnFly
	jumpifmove MOVE_DIVE, BattleScript_FirstTurnDive
	jumpifmove MOVE_BOUNCE, BattleScript_FirstTurnBounce
	jumpifmove MOVE_PHANTOM_FORCE, BattleScript_FirstTurnPhantomForce
	jumpifmove MOVE_SHADOW_FORCE, BattleScript_FirstTurnPhantomForce
	setbyte sTWOTURN_STRINGID, B_MSG_TURN1_DIG
	goto BattleScript_FirstTurnSemiInvulnerable
BattleScript_FirstTurnBounce::
	setbyte sTWOTURN_STRINGID, B_MSG_TURN1_BOUNCE
	goto BattleScript_FirstTurnSemiInvulnerable
BattleScript_FirstTurnDive::
	setbyte sTWOTURN_STRINGID, B_MSG_TURN1_DIVE
	goto BattleScript_FirstTurnSemiInvulnerable
BattleScript_FirstTurnPhantomForce:
	setbyte sTWOTURN_STRINGID, B_MSG_TURN1_PHANTOM_FORCE
	goto BattleScript_FirstTurnSemiInvulnerable
BattleScript_FirstTurnFly::
	setbyte sTWOTURN_STRINGID, B_MSG_TURN1_FLY
BattleScript_FirstTurnSemiInvulnerable::
	call BattleScriptFirstChargingTurn
	setsemiinvulnerablebit
	jumpifnoholdeffect BS_ATTACKER, HOLD_EFFECT_POWER_HERB, BattleScript_MoveEnd
	call BattleScript_PowerHerbActivation
BattleScript_SecondTurnSemiInvulnerable::
	attackcanceler
	setmoveeffect MOVE_EFFECT_CHARGING
	setbyte sB_ANIM_TURN, 1
	clearstatusfromeffect BS_ATTACKER
	orword gHitMarker, HITMARKER_NO_PPDEDUCT
	argumenttomoveeffect
BattleScript_SemiInvulnerableTryHit::
	accuracycheck BattleScript_SemiInvulnerableMiss, ACC_CURR_MOVE
	clearsemiinvulnerablebit
	goto BattleScript_HitFromAtkString

BattleScript_SemiInvulnerableMiss::
	clearsemiinvulnerablebit
	goto BattleScript_PrintMoveMissed

BattleScript_EffectDefenseCurl::
	attackcanceler
	attackstring
	ppreduce
	setdefensecurlbit
	setstatchanger STAT_DEF, 1, FALSE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_DefenseCurlDoStatUpAnim
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_StatUpPrintString
	attackanimation
	waitanimation
BattleScript_DefenseCurlDoStatUpAnim::
	goto BattleScript_StatUpDoAnim

BattleScript_EffectSoftboiled::
	attackcanceler
	attackstring
	ppreduce
	tryhealhalfhealth BattleScript_AlreadyAtFullHp, BS_TARGET
BattleScript_PresentHealTarget::
	attackanimation
	waitanimation
	orword gHitMarker, HITMARKER_IGNORE_SUBSTITUTE
	healthbarupdate BS_TARGET
	datahpupdate BS_TARGET
	printstring STRINGID_PKMNREGAINEDHEALTH
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_AlreadyAtFullHp::
	pause B_WAIT_TIME_SHORT
	printstring STRINGID_PKMNHPFULL
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectFakeOut::
	attackcanceler
	jumpifnotfirstturn BattleScript_ButItFailedAtkStringPpReduce
	setmoveeffect MOVE_EFFECT_FLINCH
	goto BattleScript_EffectHit

BattleScript_ButItFailedAtkStringPpReduce::
	attackstring
BattleScript_ButItFailedPpReduce::
	ppreduce
BattleScript_ButItFailed::
	pause B_WAIT_TIME_SHORT
	orhalfword gMoveResultFlags, MOVE_RESULT_FAILED
	resultmessage
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_NotAffected::
	pause B_WAIT_TIME_SHORT
	orhalfword gMoveResultFlags, MOVE_RESULT_DOESNT_AFFECT_FOE
	resultmessage
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectUproar::
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	setmoveeffect MOVE_EFFECT_UPROAR | MOVE_EFFECT_AFFECTS_USER
	attackstring
	jumpifstatus2 BS_ATTACKER, STATUS2_MULTIPLETURNS, BattleScript_UproarHit
	ppreduce
BattleScript_UproarHit::
	goto BattleScript_HitFromCritCalc

BattleScript_EffectStockpile::
	attackcanceler
	attackstring
	ppreduce
	stockpile 0
	attackanimation
	waitanimation
	printfromtable gStockpileUsedStringIds
	waitmessage B_WAIT_TIME_LONG
	jumpifmovehadnoeffect BattleScript_EffectStockpileEnd
	jumpifstat BS_ATTACKER, CMP_LESS_THAN, STAT_DEF, MAX_STAT_STAGE, BattleScript_EffectStockpileDef
	jumpifstat BS_ATTACKER, CMP_EQUAL, STAT_SPDEF, MAX_STAT_STAGE, BattleScript_EffectStockpileEnd
BattleScript_EffectStockpileDef:
	setbyte sSTAT_ANIM_PLAYED, FALSE
	playstatchangeanimation BS_ATTACKER, BIT_DEF | BIT_SPDEF, 0
	setstatchanger STAT_DEF, 1, FALSE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_EffectStockpileSpDef
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_EffectStockpileSpDef
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_EffectStockpileSpDef::
	setstatchanger STAT_SPDEF, 1, FALSE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_EffectStockpileEnd
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_EffectStockpileEnd
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_EffectStockpileEnd:
	stockpile 1
	goto BattleScript_MoveEnd

BattleScript_EffectSpitUp::
	attackcanceler
	jumpifbyte CMP_EQUAL, cMISS_TYPE, B_MSG_PROTECTED, BattleScript_SpitUpFailProtect
	attackstring
	ppreduce
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	setbyte gIsCriticalHit, FALSE
	damagecalc
	adjustdamage
	stockpiletobasedamage BattleScript_SpitUpFail
	goto BattleScript_HitFromAtkAnimation
BattleScript_SpitUpFail::
	pause B_WAIT_TIME_SHORT
	printstring STRINGID_FAILEDTOSPITUP
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_SpitUpFailProtect::
	attackstring
	ppreduce
	pause B_WAIT_TIME_LONG
	stockpiletobasedamage BattleScript_SpitUpFail
	resultmessage
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectSwallow::
	attackcanceler
	attackstring
	ppreduce
	stockpiletohpheal BattleScript_SwallowFail
	goto BattleScript_PresentHealTarget

BattleScript_SwallowFail::
	pause B_WAIT_TIME_SHORT
	printfromtable gSwallowFailStringIds
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectHail::
	attackcanceler
	attackstring
	ppreduce
	sethail
	goto BattleScript_MoveWeatherChange

BattleScript_EffectTorment::
	attackcanceler
	attackstring
	ppreduce
	accuracycheck BattleScript_ButItFailed, ACC_CURR_MOVE
	jumpifability BS_TARGET_SIDE, ABILITY_AROMA_VEIL, BattleScript_AromaVeilProtects
	settorment BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_PKMNSUBJECTEDTOTORMENT
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectFlatter::
	attackcanceler
	jumpifsubstituteblocks BattleScript_MakeMoveMissed
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	jumpifconfusedandstatmaxed STAT_SPATK, BattleScript_ButItFailed
	attackanimation
	waitanimation
	setstatchanger STAT_SPATK, 1, FALSE
	statbuffchange STAT_BUFF_ALLOW_PTR, BattleScript_FlatterTryConfuse
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_FlatterTryConfuse
	setgraphicalstatchangevalues
	playanimation BS_TARGET, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_FlatterTryConfuse::
	jumpifability BS_TARGET, ABILITY_OWN_TEMPO, BattleScript_OwnTempoPrevents
	jumpifsafeguard BattleScript_SafeguardProtected
	setmoveeffect MOVE_EFFECT_CONFUSION
	seteffectprimary
	goto BattleScript_MoveEnd

BattleScript_EffectWillOWisp::
	attackcanceler
	attackstring
	ppreduce
	jumpifsubstituteblocks BattleScript_ButItFailed
	jumpifstatus BS_TARGET, STATUS1_BURN, BattleScript_AlreadyBurned
	jumpiftype BS_TARGET, TYPE_FIRE, BattleScript_NotAffected
	jumpifability BS_TARGET, ABILITY_WATER_VEIL, BattleScript_WaterVeilPrevents
	jumpifability BS_TARGET, ABILITY_COMATOSE, BattleScript_LeafGuardProtects
	jumpifflowerveil BattleScript_FlowerVeilProtects
	jumpifleafguard BattleScript_LeafGuardProtects
	jumpifshieldsdown BS_TARGET, BattleScript_LeafGuardProtects
	jumpifstatus BS_TARGET, STATUS1_ANY, BattleScript_ButItFailed
	accuracycheck BattleScript_ButItFailed, ACC_CURR_MOVE
	jumpifsafeguard BattleScript_SafeguardProtected
	attackanimation
	waitanimation
	setmoveeffect MOVE_EFFECT_BURN
	seteffectprimary
	goto BattleScript_MoveEnd

BattleScript_WaterVeilPrevents::
	copybyte gEffectBattler, gBattlerTarget
	setbyte cMULTISTRING_CHOOSER, B_MSG_ABILITY_PREVENTS_MOVE_STATUS
	call BattleScript_BRNPrevention
	goto BattleScript_MoveEnd

BattleScript_AlreadyBurned::
	setalreadystatusedmoveattempt BS_ATTACKER
	pause B_WAIT_TIME_SHORT
	printstring STRINGID_PKMNALREADYHASBURN
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectMemento::
	attackcanceler
	jumpifbyte CMP_EQUAL, cMISS_TYPE, B_MSG_PROTECTED, BattleScript_MementoFailProtect
	attackstring
	ppreduce
	jumpifattackandspecialattackcannotfall BattleScript_ButItFailed
	setatkhptozero
	attackanimation
	waitanimation
	jumpifsubstituteblocks BattleScript_EffectMementoPrintNoEffect
	setbyte sSTAT_ANIM_PLAYED, FALSE
	playstatchangeanimation BS_TARGET, BIT_ATK | BIT_SPATK, STAT_CHANGE_NEGATIVE | STAT_CHANGE_BY_TWO | STAT_CHANGE_MULTIPLE_STATS
	playstatchangeanimation BS_TARGET, BIT_ATK, STAT_CHANGE_NEGATIVE | STAT_CHANGE_BY_TWO
	setstatchanger STAT_ATK, 2, TRUE
	statbuffchange STAT_BUFF_ALLOW_PTR, BattleScript_EffectMementoTrySpAtk
	@ Greater than STAT_FELL is checking if the stat cannot decrease
	jumpifbyte CMP_GREATER_THAN, cMULTISTRING_CHOOSER, B_MSG_DEFENDER_STAT_FELL, BattleScript_EffectMementoTrySpAtk
	printfromtable gStatDownStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_EffectMementoTrySpAtk:
	playstatchangeanimation BS_TARGET, BIT_SPATK, STAT_CHANGE_NEGATIVE | STAT_CHANGE_BY_TWO
	setstatchanger STAT_SPATK, 2, TRUE
	statbuffchange STAT_BUFF_ALLOW_PTR, BattleScript_EffectMementoTryFaint
	@ Greater than STAT_FELL is checking if the stat cannot decrease
	jumpifbyte CMP_GREATER_THAN, cMULTISTRING_CHOOSER, B_MSG_DEFENDER_STAT_FELL, BattleScript_EffectMementoTryFaint
	printfromtable gStatDownStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_EffectMementoTryFaint:
	tryfaintmon BS_ATTACKER, FALSE, NULL
	goto BattleScript_MoveEnd
BattleScript_EffectMementoPrintNoEffect:
	printstring STRINGID_BUTNOEFFECT
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_EffectMementoTryFaint
BattleScript_MementoFailProtect:
	attackstring
	ppreduce
	jumpifattackandspecialattackcannotfall BattleScript_MementoFailEnd
BattleScript_MementoFailEnd:
	setatkhptozero
	pause B_WAIT_TIME_LONG
	effectivenesssound
	resultmessage
	waitmessage B_WAIT_TIME_LONG
	tryfaintmon BS_ATTACKER, FALSE, NULL
	goto BattleScript_MoveEnd

BattleScript_EffectFocusPunch::
	attackcanceler
	jumpifnodamage BattleScript_HitFromAccCheck
	ppreduce
	printstring STRINGID_PKMNLOSTFOCUS
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectSmellingsalt:
BattleScript_EffectWakeUpSlap:
BattleScript_EffectSparklingAria:
	jumpifsubstituteblocks BattleScript_EffectHit
	setmoveeffect MOVE_EFFECT_REMOVE_STATUS | MOVE_EFFECT_CERTAIN
	goto BattleScript_EffectHit

BattleScript_EffectFollowMe::
	attackcanceler
	attackstring
	ppreduce
	setforcedtarget
	attackanimation
	waitanimation
	printstring STRINGID_PKMNCENTERATTENTION
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectNaturePower::
	attackcanceler
	attackstring
	pause B_WAIT_TIME_SHORT
	callterrainattack
	printstring STRINGID_NATUREPOWERTURNEDINTO
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_EffectCharge::
	attackcanceler
	attackstring
	ppreduce
	setcharge
	attackanimation
	waitanimation
	setstatchanger STAT_SPDEF, 1, FALSE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_EffectChargeString
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_EffectChargeString
	setgraphicalstatchangevalues
	playanimation BS_ATTACKER, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_EffectChargeString:
	printstring STRINGID_PKMNCHARGINGPOWER
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectTaunt::
	attackcanceler
	attackstring
	ppreduce
	jumpifability BS_TARGET_SIDE, ABILITY_AROMA_VEIL, BattleScript_AromaVeilProtects
	accuracycheck BattleScript_ButItFailed, ACC_CURR_MOVE
	settaunt BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_PKMNFELLFORTAUNT
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectHelpingHand::
	attackcanceler
	attackstring
	ppreduce
	trysethelpinghand BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_PKMNREADYTOHELP
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectTrick::
	attackcanceler
	attackstring
	ppreduce
	jumpifsubstituteblocks BattleScript_ButItFailed
	accuracycheck BattleScript_ButItFailed, ACC_CURR_MOVE
	tryswapitems BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_PKMNSWITCHEDITEMS
	waitmessage B_WAIT_TIME_LONG
	printfromtable gItemSwapStringIds
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectRolePlay::
	attackcanceler
	attackstring
	ppreduce
	accuracycheck BattleScript_ButItFailed, NO_ACC_CALC_CHECK_LOCK_ON
	trycopyability BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_PKMNCOPIEDFOE
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectWish::
	attackcanceler
	attackstring
	ppreduce
	trywish 0, BattleScript_ButItFailed
	attackanimation
	waitanimation
	goto BattleScript_MoveEnd

BattleScript_EffectAssist:
	attackcanceler
	attackstring
	assistattackselect BattleScript_ButItFailedPpReduce
	attackanimation
	waitanimation
	setbyte sB_ANIM_TURN, 0
	setbyte sB_ANIM_TARGETS_HIT, 0
	jumptocalledmove TRUE

BattleScript_EffectIngrain:
	attackcanceler
	attackstring
	ppreduce
	setuserstatus3 STATUS3_ROOTED, BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_PKMNPLANTEDROOTS
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectSuperpower:
	setmoveeffect MOVE_EFFECT_ATK_DEF_DOWN | MOVE_EFFECT_AFFECTS_USER | MOVE_EFFECT_CERTAIN
	goto BattleScript_EffectHit

BattleScript_EffectCloseCombat:
	setmoveeffect MOVE_EFFECT_DEF_SPDEF_DOWN | MOVE_EFFECT_AFFECTS_USER | MOVE_EFFECT_CERTAIN
	goto BattleScript_EffectHit

BattleScript_EffectMagicCoat:
	attackcanceler
	trysetmagiccoat BattleScript_ButItFailedAtkStringPpReduce
	attackstring
	ppreduce
	attackanimation
	waitanimation
	printstring STRINGID_PKMNSHROUDEDITSELF
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectRecycle::
	attackcanceler
	attackstring
	ppreduce
	tryrecycleitem BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_XFOUNDONEY
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectBrickBreak::
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	removelightscreenreflect
	critcalc
	damagecalc
	adjustdamage
	jumpifbyte CMP_EQUAL, sB_ANIM_TURN, 0, BattleScript_BrickBreakAnim
	bichalfword gMoveResultFlags, MOVE_RESULT_MISSED | MOVE_RESULT_DOESNT_AFFECT_FOE
BattleScript_BrickBreakAnim::
	attackanimation
	waitanimation
	jumpifbyte CMP_LESS_THAN, sB_ANIM_TURN, 2, BattleScript_BrickBreakDoHit
	printstring STRINGID_THEWALLSHATTERED
	waitmessage B_WAIT_TIME_LONG
BattleScript_BrickBreakDoHit::
	typecalc
	effectivenesssound
	hitanimation BS_TARGET
	waitstate
	healthbarupdate BS_TARGET
	datahpupdate BS_TARGET
	critmessage
	waitmessage B_WAIT_TIME_LONG
	resultmessage
	waitmessage B_WAIT_TIME_LONG
	seteffectwithchance
	tryfaintmon BS_TARGET, FALSE, NULL
	goto BattleScript_MoveEnd

BattleScript_EffectYawn::
	attackcanceler
	attackstring
	ppreduce
	jumpifability BS_TARGET, ABILITY_VITAL_SPIRIT, BattleScript_PrintBankAbilityMadeIneffective
	jumpifability BS_TARGET, ABILITY_INSOMNIA, BattleScript_PrintBankAbilityMadeIneffective
	jumpifability BS_TARGET, ABILITY_COMATOSE, BattleScript_PrintBankAbilityMadeIneffective
	jumpifflowerveil BattleScript_FlowerVeilProtects
	jumpifleafguard BattleScript_LeafGuardProtects
	jumpifshieldsdown BS_TARGET, BattleScript_LeafGuardProtects
	jumpifsubstituteblocks BattleScript_ButItFailed
	jumpifsafeguard BattleScript_SafeguardProtected
	accuracycheck BattleScript_ButItFailed, NO_ACC_CALC_CHECK_LOCK_ON
	jumpifcantmakeasleep BattleScript_ButItFailed
	setyawn BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_PKMNWASMADEDROWSY
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd
BattleScript_PrintBankAbilityMadeIneffective::
	copybyte sBATTLER, gBattlerAbility
BattleScript_PrintAbilityMadeIneffective::
	pause B_WAIT_TIME_SHORT
	printstring STRINGID_PKMNSXMADEITINEFFECTIVE
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectKnockOff::
	setmoveeffect MOVE_EFFECT_KNOCK_OFF
	goto BattleScript_EffectHit

BattleScript_EffectEndeavor::
	attackcanceler
	attackstring
	ppreduce
	setdamagetohealthdifference BattleScript_ButItFailed
	copyword gHpDealt, gBattleMoveDamage
	accuracycheck BattleScript_MoveMissedPause, ACC_CURR_MOVE
	typecalc
	jumpifmovehadnoeffect BattleScript_HitFromAtkAnimation
	bichalfword gMoveResultFlags, MOVE_RESULT_SUPER_EFFECTIVE | MOVE_RESULT_NOT_VERY_EFFECTIVE
	copyword gBattleMoveDamage, gHpDealt
	adjustdamage
	goto BattleScript_HitFromAtkAnimation

BattleScript_EffectSkillSwap:
	attackcanceler
	attackstring
	ppreduce
	accuracycheck BattleScript_ButItFailed, NO_ACC_CALC_CHECK_LOCK_ON
	tryswapabilities BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_PKMNSWAPPEDABILITIES
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectImprison::
	attackcanceler
	attackstring
	ppreduce
	tryimprison BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_PKMNSEALEDOPPONENTMOVE
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectRefresh:
	attackcanceler
	attackstring
	ppreduce
	cureifburnedparalysedorpoisoned BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_PKMNSTATUSNORMAL
	waitmessage B_WAIT_TIME_LONG
	updatestatusicon BS_ATTACKER
	goto BattleScript_MoveEnd

BattleScript_EffectGrudge:
	attackcanceler
	attackstring
	ppreduce
	setuserstatus3 STATUS3_GRUDGE, BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_PKMNWANTSGRUDGE
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectSnatch:
	attackcanceler
	trysetsnatch BattleScript_ButItFailedAtkStringPpReduce
	attackstring
	ppreduce
	attackanimation
	waitanimation
	pause B_WAIT_TIME_SHORT
	printstring STRINGID_PKMNWAITSFORTARGET
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectSecretPower::
	getsecretpowereffect
	goto BattleScript_EffectHit

BattleScript_EffectRecoil25:
	setmoveeffect MOVE_EFFECT_RECOIL_25 | MOVE_EFFECT_AFFECTS_USER | MOVE_EFFECT_CERTAIN
	jumpifnotmove MOVE_STRUGGLE, BattleScript_EffectHit
	incrementgamestat GAME_STAT_USED_STRUGGLE
	goto BattleScript_EffectHit

BattleScript_EffectRecoil33::
	setmoveeffect MOVE_EFFECT_RECOIL_33 | MOVE_EFFECT_AFFECTS_USER | MOVE_EFFECT_CERTAIN
	goto BattleScript_EffectHit

BattleScript_EffectRecoil33WithStatus:
	setmoveeffect MOVE_EFFECT_RECOIL_33_STATUS | MOVE_EFFECT_AFFECTS_USER | MOVE_EFFECT_CERTAIN
	goto BattleScript_EffectHit

BattleScript_EffectRecoil50:
	setmoveeffect MOVE_EFFECT_RECOIL_50 | MOVE_EFFECT_AFFECTS_USER | MOVE_EFFECT_CERTAIN
	goto BattleScript_EffectHit

BattleScript_EffectTeeterDance::
	attackcanceler
	attackstring
	ppreduce
	setbyte gBattlerTarget, 0
BattleScript_TeeterDanceLoop::
	movevaluescleanup
	setmoveeffect MOVE_EFFECT_CONFUSION
	jumpifbyteequal gBattlerAttacker, gBattlerTarget, BattleScript_TeeterDanceLoopIncrement
	jumpifability BS_TARGET, ABILITY_OWN_TEMPO, BattleScript_TeeterDanceOwnTempoPrevents
	jumpifsubstituteblocks BattleScript_TeeterDanceSubstitutePrevents
	jumpifstatus2 BS_TARGET, STATUS2_CONFUSION, BattleScript_TeeterDanceAlreadyConfused
	jumpifhasnohp BS_TARGET, BattleScript_TeeterDanceLoopIncrement
	accuracycheck BattleScript_TeeterDanceMissed, ACC_CURR_MOVE
	jumpifsafeguard BattleScript_TeeterDanceSafeguardProtected
	attackanimation
	waitanimation
	seteffectprimary
	resultmessage
	waitmessage B_WAIT_TIME_LONG
BattleScript_TeeterDanceDoMoveEndIncrement::
	moveendto MOVEEND_NEXT_TARGET
BattleScript_TeeterDanceLoopIncrement::
	addbyte gBattlerTarget, 1
	jumpifbytenotequal gBattlerTarget, gBattlersCount, BattleScript_TeeterDanceLoop
	end

BattleScript_TeeterDanceOwnTempoPrevents::
	pause B_WAIT_TIME_SHORT
	printstring STRINGID_PKMNPREVENTSCONFUSIONWITH
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_TeeterDanceDoMoveEndIncrement

BattleScript_TeeterDanceSafeguardProtected::
	pause B_WAIT_TIME_SHORT
	printstring STRINGID_PKMNUSEDSAFEGUARD
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_TeeterDanceDoMoveEndIncrement

BattleScript_TeeterDanceSubstitutePrevents::
	pause B_WAIT_TIME_SHORT
	printstring STRINGID_BUTITFAILED
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_TeeterDanceDoMoveEndIncrement

BattleScript_TeeterDanceAlreadyConfused::
	setalreadystatusedmoveattempt BS_ATTACKER
	pause B_WAIT_TIME_SHORT
	printstring STRINGID_PKMNALREADYCONFUSED
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_TeeterDanceDoMoveEndIncrement

BattleScript_TeeterDanceMissed::
	resultmessage
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_TeeterDanceDoMoveEndIncrement

BattleScript_EffectMudSport::
BattleScript_EffectWaterSport::
	attackcanceler
	attackstring
	ppreduce
	settypebasedhalvers BattleScript_ButItFailed
	attackanimation
	waitanimation
	printfromtable gSportsUsedStringIds
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectPoisonFang::
	setmoveeffect MOVE_EFFECT_TOXIC
	goto BattleScript_EffectHit

BattleScript_EffectOverheat::
	setmoveeffect MOVE_EFFECT_SP_ATK_TWO_DOWN | MOVE_EFFECT_AFFECTS_USER | MOVE_EFFECT_CERTAIN
	goto BattleScript_EffectHit

BattleScript_EffectHammerArm::
	setmoveeffect MOVE_EFFECT_SPD_MINUS_1 | MOVE_EFFECT_AFFECTS_USER | MOVE_EFFECT_CERTAIN
	goto BattleScript_EffectHit

BattleScript_EffectTickle::
	attackcanceler
	attackstring
	ppreduce
	jumpifstat BS_TARGET, CMP_GREATER_THAN, STAT_ATK, MIN_STAT_STAGE, BattleScript_TickleDoMoveAnim
	jumpifstat BS_TARGET, CMP_EQUAL, STAT_DEF, MIN_STAT_STAGE, BattleScript_CantLowerMultipleStats
BattleScript_TickleDoMoveAnim::
	accuracycheck BattleScript_ButItFailed, ACC_CURR_MOVE
	attackanimation
	waitanimation
	setbyte sSTAT_ANIM_PLAYED, FALSE
	playstatchangeanimation BS_TARGET, BIT_ATK | BIT_DEF, STAT_CHANGE_NEGATIVE | STAT_CHANGE_MULTIPLE_STATS
	playstatchangeanimation BS_TARGET, BIT_ATK, STAT_CHANGE_NEGATIVE
	setstatchanger STAT_ATK, 1, TRUE
	statbuffchange STAT_BUFF_ALLOW_PTR, BattleScript_TickleTryLowerDef
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_DECREASE, BattleScript_TickleTryLowerDef
	printfromtable gStatDownStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_TickleTryLowerDef::
	playstatchangeanimation BS_TARGET, BIT_DEF, STAT_CHANGE_NEGATIVE
	setstatchanger STAT_DEF, 1, TRUE
	statbuffchange STAT_BUFF_ALLOW_PTR, BattleScript_TickleEnd
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_DECREASE, BattleScript_TickleEnd
	printfromtable gStatDownStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_TickleEnd::
	goto BattleScript_MoveEnd

BattleScript_CantLowerMultipleStats::
	pause B_WAIT_TIME_SHORT
	orhalfword gMoveResultFlags, MOVE_RESULT_FAILED
	printstring STRINGID_STATSWONTDECREASE2
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectCosmicPower::
	attackcanceler
	attackstring
	ppreduce
	jumpifstat BS_ATTACKER, CMP_LESS_THAN, STAT_DEF, MAX_STAT_STAGE, BattleScript_CosmicPowerDoMoveAnim
	jumpifstat BS_ATTACKER, CMP_EQUAL, STAT_SPDEF, MAX_STAT_STAGE, BattleScript_CantRaiseMultipleStats
BattleScript_CosmicPowerDoMoveAnim::
	attackanimation
	waitanimation
	setbyte sSTAT_ANIM_PLAYED, FALSE
	playstatchangeanimation BS_ATTACKER, BIT_DEF | BIT_SPDEF, 0
	setstatchanger STAT_DEF, 1, FALSE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_CosmicPowerTrySpDef
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_CosmicPowerTrySpDef
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_CosmicPowerTrySpDef::
	setstatchanger STAT_SPDEF, 1, FALSE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_CosmicPowerEnd
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_CosmicPowerEnd
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_CosmicPowerEnd::
	goto BattleScript_MoveEnd

BattleScript_EffectSkyUppercut::
	goto BattleScript_EffectHit

BattleScript_EffectBulkUp::
	attackcanceler
	attackstring
	ppreduce
	jumpifstat BS_ATTACKER, CMP_LESS_THAN, STAT_ATK, MAX_STAT_STAGE, BattleScript_BulkUpDoMoveAnim
	jumpifstat BS_ATTACKER, CMP_EQUAL, STAT_DEF, MAX_STAT_STAGE, BattleScript_CantRaiseMultipleStats
BattleScript_BulkUpDoMoveAnim::
	attackanimation
	waitanimation
	setbyte sSTAT_ANIM_PLAYED, FALSE
	playstatchangeanimation BS_ATTACKER, BIT_ATK | BIT_DEF, 0
	setstatchanger STAT_ATK, 1, FALSE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_BulkUpTryDef
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_BulkUpTryDef
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_BulkUpTryDef::
	setstatchanger STAT_DEF, 1, FALSE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_BulkUpEnd
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_BulkUpEnd
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_BulkUpEnd::
	goto BattleScript_MoveEnd

BattleScript_EffectCalmMind::
	attackcanceler
	attackstring
	ppreduce
	jumpifstat BS_ATTACKER, CMP_LESS_THAN, STAT_SPATK, MAX_STAT_STAGE, BattleScript_CalmMindDoMoveAnim
	jumpifstat BS_ATTACKER, CMP_EQUAL, STAT_SPDEF, MAX_STAT_STAGE, BattleScript_CantRaiseMultipleStats
BattleScript_CalmMindDoMoveAnim::
	attackanimation
	waitanimation
	setbyte sSTAT_ANIM_PLAYED, FALSE
	playstatchangeanimation BS_ATTACKER, BIT_SPATK | BIT_SPDEF, 0
	setstatchanger STAT_SPATK, 1, FALSE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_CalmMindTrySpDef
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_CalmMindTrySpDef
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_CalmMindTrySpDef::
	setstatchanger STAT_SPDEF, 1, FALSE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_CalmMindEnd
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_CalmMindEnd
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_CalmMindEnd::
	goto BattleScript_MoveEnd

BattleScript_CantRaiseMultipleStats::
	pause B_WAIT_TIME_SHORT
	orhalfword gMoveResultFlags, MOVE_RESULT_FAILED
	printstring STRINGID_STATSWONTINCREASE2
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_EffectDragonDance::
	attackcanceler
	attackstring
	ppreduce
	jumpifstat BS_ATTACKER, CMP_LESS_THAN, STAT_ATK, MAX_STAT_STAGE, BattleScript_DragonDanceDoMoveAnim
	jumpifstat BS_ATTACKER, CMP_EQUAL, STAT_SPEED, MAX_STAT_STAGE, BattleScript_CantRaiseMultipleStats
BattleScript_DragonDanceDoMoveAnim::
	attackanimation
	waitanimation
	setbyte sSTAT_ANIM_PLAYED, FALSE
	playstatchangeanimation BS_ATTACKER, BIT_ATK | BIT_SPEED, 0
	setstatchanger STAT_ATK, 1, FALSE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_DragonDanceTrySpeed
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_DragonDanceTrySpeed
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_DragonDanceTrySpeed::
	setstatchanger STAT_SPEED, 1, FALSE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_DragonDanceEnd
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_DragonDanceEnd
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_DragonDanceEnd::
	goto BattleScript_MoveEnd

BattleScript_EffectCamouflage::
	attackcanceler
	attackstring
	ppreduce
	settypetoterrain BattleScript_ButItFailed
	attackanimation
	waitanimation
	printstring STRINGID_PKMNCHANGEDTYPE
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_FaintAttacker::
	tryillusionoff BS_ATTACKER
	playfaintcry BS_ATTACKER
	pause B_WAIT_TIME_LONG
	dofaintanimation BS_ATTACKER
	printstring STRINGID_ATTACKERFAINTED
	cleareffectsonfaint BS_ATTACKER
	tryactivatesoulheart
	tryactivatereceiver BS_ATTACKER
	trytrainerslidefirstdownmsg BS_ATTACKER
	return

BattleScript_FaintTarget::
	tryillusionoff BS_TARGET
	playfaintcry BS_TARGET
	pause B_WAIT_TIME_LONG
	dofaintanimation BS_TARGET
	printstring STRINGID_TARGETFAINTED
	cleareffectsonfaint BS_TARGET
	tryactivatefellstinger BS_ATTACKER
	tryactivatesoulheart
	tryactivatereceiver BS_TARGET
	tryactivatemoxie BS_ATTACKER		@ and chilling neigh, as one ice rider
	tryactivatebeastboost BS_ATTACKER
	tryactivategrimneigh BS_ATTACKER	@ and as one shadow rider
	trytrainerslidefirstdownmsg BS_TARGET
	return

BattleScript_GiveExp::
	setbyte sGIVEEXP_STATE, 0
	getexp BS_TARGET
	end2

BattleScript_HandleFaintedMon::
	setbyte sSHIFT_SWITCHED, 0
	atk24 BattleScript_HandleFaintedMonMultiple
	jumpifbyte CMP_NOT_EQUAL, gBattleOutcome, 0, BattleScript_FaintedMonEnd
	jumpifbattletype BATTLE_TYPE_TRAINER | BATTLE_TYPE_DOUBLE, BattleScript_FaintedMonTryChooseAnother
	jumpifword CMP_NO_COMMON_BITS, gHitMarker, HITMARKER_x400000, BattleScript_FaintedMonTryChooseAnother
	printstring STRINGID_USENEXTPKMN
	setbyte gBattleCommunication, 0
	yesnobox
	jumpifbyte CMP_EQUAL, gBattleCommunication + 1, 0, BattleScript_FaintedMonTryChooseAnother
	jumpifplayerran BattleScript_FaintedMonEnd
	printstring STRINGID_CANTESCAPE2
BattleScript_FaintedMonTryChooseAnother:
	openpartyscreen BS_FAINTED, BattleScript_FaintedMonEnd
	switchhandleorder BS_FAINTED, 2
	jumpifnotbattletype BATTLE_TYPE_TRAINER, BattleScript_FaintedMonChooseAnother
	jumpifbattletype BATTLE_TYPE_LINK, BattleScript_FaintedMonChooseAnother
	jumpifbattletype BATTLE_TYPE_RECORDED_LINK, BattleScript_FaintedMonChooseAnother
	jumpifbattletype BATTLE_TYPE_FRONTIER, BattleScript_FaintedMonChooseAnother
	jumpifbattletype BATTLE_TYPE_DOUBLE, BattleScript_FaintedMonChooseAnother
	jumpifword CMP_COMMON_BITS, gHitMarker, HITMARKER_x400000, BattleScript_FaintedMonChooseAnother
	jumpifbyte CMP_EQUAL, sBATTLE_STYLE, OPTIONS_BATTLE_STYLE_SET, BattleScript_FaintedMonChooseAnother
	jumpifcantswitch BS_PLAYER1, BattleScript_FaintedMonChooseAnother
	setbyte sILLUSION_NICK_HACK, 1
	printstring STRINGID_ENEMYABOUTTOSWITCHPKMN
	setbyte gBattleCommunication, 0
	yesnobox
	jumpifbyte CMP_EQUAL, gBattleCommunication + 1, 1, BattleScript_FaintedMonChooseAnother
	setatktoplayer0
	openpartyscreen BS_ATTACKER | PARTY_SCREEN_OPTIONAL, BattleScript_FaintedMonChooseAnother
	switchhandleorder BS_ATTACKER, 2
	jumpifbyte CMP_EQUAL, gBattleCommunication, PARTY_SIZE, BattleScript_FaintedMonChooseAnother
	atknameinbuff1
	resetintimidatetracebits BS_ATTACKER
	hpthresholds2 BS_ATTACKER
	printstring STRINGID_RETURNMON
	switchoutabilities BS_ATTACKER
	waitstate
	returnatktoball
	waitstate
	drawpartystatussummary BS_ATTACKER
	getswitchedmondata BS_ATTACKER
	switchindataupdate BS_ATTACKER
	hpthresholds BS_ATTACKER
	printstring STRINGID_SWITCHINMON
	hidepartystatussummary BS_ATTACKER
	switchinanim BS_ATTACKER, 0
	waitstate
	setbyte sSHIFT_SWITCHED, 1
BattleScript_FaintedMonChooseAnother:
	drawpartystatussummary BS_FAINTED
	getswitchedmondata BS_FAINTED
	switchindataupdate BS_FAINTED
	hpthresholds BS_FAINTED
	printstring STRINGID_SWITCHINMON
	hidepartystatussummary BS_FAINTED
	switchinanim BS_FAINTED, FALSE
	waitstate
	various7 BS_ATTACKER
	trytrainerslidelastonmsg BS_FAINTED
	jumpifbytenotequal sSHIFT_SWITCHED, sZero, BattleScript_FaintedMonShiftSwitched
BattleScript_FaintedMonChooseAnotherEnd:
	switchineffects BS_FAINTED
	jumpifbattletype BATTLE_TYPE_DOUBLE, BattleScript_FaintedMonEnd
	cancelallactions
BattleScript_FaintedMonEnd::
	end2
BattleScript_FaintedMonShiftSwitched:
	copybyte sSAVED_BATTLER, gBattlerTarget
	switchineffects BS_ATTACKER
	resetsentmonsvalue
	copybyte gBattlerTarget, sSAVED_BATTLER
	goto BattleScript_FaintedMonChooseAnotherEnd

BattleScript_HandleFaintedMonMultiple::
	openpartyscreen BS_UNK_5, BattleScript_HandleFaintedMonMultipleStart
BattleScript_HandleFaintedMonMultipleStart::
	switchhandleorder BS_FAINTED, 0
	openpartyscreen BS_UNK_6, BattleScript_HandleFaintedMonMultipleEnd
	switchhandleorder BS_FAINTED, 0
BattleScript_HandleFaintedMonLoop::
	switchhandleorder BS_FAINTED, 3
	drawpartystatussummary BS_FAINTED
	getswitchedmondata BS_FAINTED
	switchindataupdate BS_FAINTED
	hpthresholds BS_FAINTED
	printstring STRINGID_SWITCHINMON
	hidepartystatussummary BS_FAINTED
	switchinanim BS_FAINTED, FALSE
	waitstate
	switchineffects 5
	jumpifbytenotequal gBattlerFainted, gBattlersCount, BattleScript_HandleFaintedMonLoop
BattleScript_HandleFaintedMonMultipleEnd::
	end2

BattleScript_LocalTrainerBattleWon::
	jumpifbattletype BATTLE_TYPE_TWO_OPPONENTS, BattleScript_LocalTwoTrainersDefeated
	printstring STRINGID_PLAYERDEFEATEDTRAINER1
	goto BattleScript_LocalBattleWonLoseTexts
BattleScript_LocalTwoTrainersDefeated::
	printstring STRINGID_TWOENEMIESDEFEATED
BattleScript_LocalBattleWonLoseTexts::
	trainerslidein BS_ATTACKER
	waitstate
	printstring STRINGID_TRAINER1LOSETEXT
	jumpifnotbattletype BATTLE_TYPE_TWO_OPPONENTS, BattleScript_LocalBattleWonReward
	trainerslideout B_POSITION_OPPONENT_LEFT
	waitstate
	trainerslidein BS_FAINTED
	waitstate
	printstring STRINGID_TRAINER2LOSETEXT
BattleScript_LocalBattleWonReward::
	getmoneyreward
	printstring STRINGID_PLAYERGOTMONEY
	waitmessage B_WAIT_TIME_LONG
BattleScript_PayDayMoneyAndPickUpItems::
	givepaydaymoney
	pickup
	end2

BattleScript_LocalBattleLost::
	jumpifbattletype BATTLE_TYPE_DOME, BattleScript_CheckDomeDrew
	jumpifbattletype BATTLE_TYPE_FRONTIER, BattleScript_LocalBattleLostPrintTrainersWinText
	jumpifbattletype BATTLE_TYPE_TRAINER_HILL, BattleScript_LocalBattleLostPrintTrainersWinText
	jumpifbattletype BATTLE_TYPE_EREADER_TRAINER, BattleScript_LocalBattleLostEnd
	jumpifhalfword CMP_EQUAL, gTrainerBattleOpponent_A, TRAINER_SECRET_BASE, BattleScript_LocalBattleLostEnd
BattleScript_LocalBattleLostPrintWhiteOut::
	printstring STRINGID_PLAYERWHITEOUT
	waitmessage B_WAIT_TIME_LONG
	printstring STRINGID_PLAYERWHITEOUT2
	waitmessage B_WAIT_TIME_LONG
BattleScript_LocalBattleLostEnd::
	end2
BattleScript_CheckDomeDrew::
	jumpifbyte CMP_EQUAL, gBattleOutcome, B_OUTCOME_DREW, BattleScript_LocalBattleLostEnd_
BattleScript_LocalBattleLostPrintTrainersWinText::
	jumpifnotbattletype BATTLE_TYPE_TRAINER, BattleScript_LocalBattleLostPrintWhiteOut
	returnopponentmon1toball BS_ATTACKER
	waitstate
	returnopponentmon2toball BS_ATTACKER
	waitstate
	trainerslidein BS_ATTACKER
	waitstate
	printstring STRINGID_TRAINER1WINTEXT
	jumpifbattletype BATTLE_TYPE_TOWER_LINK_MULTI, BattleScript_LocalBattleLostDoTrainer2WinText
	jumpifnotbattletype BATTLE_TYPE_TWO_OPPONENTS, BattleScript_LocalBattleLostEnd_
BattleScript_LocalBattleLostDoTrainer2WinText::
	trainerslideout B_POSITION_OPPONENT_LEFT
	waitstate
	trainerslidein BS_FAINTED
	waitstate
	printstring STRINGID_TRAINER2WINTEXT
BattleScript_LocalBattleLostEnd_::
	end2

BattleScript_FrontierLinkBattleLost::
	returnopponentmon1toball BS_ATTACKER
	waitstate
	returnopponentmon2toball BS_ATTACKER
	waitstate
	trainerslidein BS_ATTACKER
	waitstate
	printstring STRINGID_TRAINER1WINTEXT
	trainerslideout B_POSITION_OPPONENT_LEFT
	waitstate
	trainerslidein BS_FAINTED
	waitstate
	printstring STRINGID_TRAINER2WINTEXT
	jumpifbattletype BATTLE_TYPE_RECORDED, BattleScript_FrontierLinkBattleLostEnd
	endlinkbattle
BattleScript_FrontierLinkBattleLostEnd::
	waitmessage B_WAIT_TIME_LONG
	end2

BattleScript_LinkBattleWonOrLost::
	jumpifbattletype BATTLE_TYPE_BATTLE_TOWER, BattleScript_TowerLinkBattleWon
	printstring STRINGID_BATTLEEND
	waitmessage B_WAIT_TIME_LONG
	jumpifbattletype BATTLE_TYPE_RECORDED, BattleScript_LinkBattleWonOrLostWaitEnd
	endlinkbattle
BattleScript_LinkBattleWonOrLostWaitEnd::
	waitmessage B_WAIT_TIME_LONG
	end2

BattleScript_TowerLinkBattleWon::
	playtrainerdefeatbgm BS_ATTACKER
	printstring STRINGID_BATTLEEND
	waitmessage B_WAIT_TIME_LONG
	trainerslidein BS_ATTACKER
	waitstate
	printstring STRINGID_TRAINER1LOSETEXT
	trainerslideout B_POSITION_OPPONENT_LEFT
	waitstate
	trainerslidein BS_FAINTED
	waitstate
	printstring STRINGID_TRAINER2LOSETEXT
	jumpifbattletype BATTLE_TYPE_RECORDED, BattleScript_TowerLinkBattleWonEnd
	endlinkbattle
BattleScript_TowerLinkBattleWonEnd::
	waitmessage B_WAIT_TIME_LONG
	end2

BattleScript_FrontierTrainerBattleWon::
	jumpifnotbattletype BATTLE_TYPE_TRAINER, BattleScript_PayDayMoneyAndPickUpItems
	jumpifbattletype BATTLE_TYPE_TWO_OPPONENTS, BattleScript_FrontierTrainerBattleWon_TwoDefeated
	printstring STRINGID_PLAYERDEFEATEDTRAINER1
	goto BattleScript_FrontierTrainerBattleWon_LoseTexts
BattleScript_FrontierTrainerBattleWon_TwoDefeated:
	printstring STRINGID_TWOENEMIESDEFEATED
BattleScript_FrontierTrainerBattleWon_LoseTexts:
	trainerslidein BS_ATTACKER
	waitstate
	printstring STRINGID_TRAINER1LOSETEXT
	jumpifnotbattletype BATTLE_TYPE_TWO_OPPONENTS, BattleScript_TryPickUpItems
	trainerslideout B_POSITION_OPPONENT_LEFT
	waitstate
	trainerslidein BS_FAINTED
	waitstate
	printstring STRINGID_TRAINER2LOSETEXT
BattleScript_TryPickUpItems:
	jumpifnotbattletype BATTLE_TYPE_PYRAMID, BattleScript_FrontierTrainerBattleWon_End
	pickup
BattleScript_FrontierTrainerBattleWon_End:
	end2

BattleScript_SmokeBallEscape::
	playanimation BS_ATTACKER, B_ANIM_SMOKEBALL_ESCAPE, NULL
	printstring STRINGID_PKMNFLEDUSINGITS
	waitmessage B_WAIT_TIME_LONG
	end2

BattleScript_RanAwayUsingMonAbility::
	printstring STRINGID_PKMNFLEDUSING
	waitmessage B_WAIT_TIME_LONG
	end2

BattleScript_GotAwaySafely::
	printstring STRINGID_GOTAWAYSAFELY
	waitmessage B_WAIT_TIME_LONG
	end2

BattleScript_WildMonFled::
	printstring STRINGID_WILDPKMNFLED
	waitmessage B_WAIT_TIME_LONG
	end2

BattleScript_PrintCantRunFromTrainer::
	printstring STRINGID_NORUNNINGFROMTRAINERS
	end2

BattleScript_PrintFailedToRunString::
	printfromtable gNoEscapeStringIds
	waitmessage B_WAIT_TIME_LONG
	end2

BattleScript_PrintCantEscapeFromBattle::
	printselectionstringfromtable gNoEscapeStringIds
	endselectionscript

BattleScript_PrintFullBox::
	printselectionstring STRINGID_BOXISFULL
	endselectionscript

BattleScript_ActionSwitch::
	hpthresholds2 BS_ATTACKER
	printstring STRINGID_RETURNMON
	jumpifbattletype BATTLE_TYPE_DOUBLE, BattleScript_PursuitSwitchDmgSetMultihit
	setmultihit 1
	goto BattleScript_PursuitSwitchDmgLoop
BattleScript_PursuitSwitchDmgSetMultihit::
	setmultihit 2
BattleScript_PursuitSwitchDmgLoop::
	jumpifnopursuitswitchdmg BattleScript_DoSwitchOut
	swapattackerwithtarget
	trysetdestinybondtohappen
	call BattleScript_PursuitDmgOnSwitchOut
	swapattackerwithtarget
BattleScript_DoSwitchOut::
	decrementmultihit BattleScript_PursuitSwitchDmgLoop
	switchoutabilities BS_ATTACKER
	waitstate
	returnatktoball
	waitstate
	drawpartystatussummary BS_ATTACKER
	switchhandleorder BS_ATTACKER, 1
	getswitchedmondata BS_ATTACKER
	switchindataupdate BS_ATTACKER
	hpthresholds BS_ATTACKER
	printstring STRINGID_SWITCHINMON
	hidepartystatussummary BS_ATTACKER
	switchinanim BS_ATTACKER, FALSE
	waitstate
	switchineffects BS_ATTACKER
	moveendcase MOVEEND_STATUS_IMMUNITY_ABILITIES
	moveendcase MOVEEND_MIRROR_MOVE
	end2

BattleScript_PursuitDmgOnSwitchOut::
	pause B_WAIT_TIME_SHORT
	attackstring
	ppreduce
	critcalc
	damagecalc
	adjustdamage
	attackanimation
	waitanimation
	effectivenesssound
	hitanimation BS_TARGET
	waitstate
	healthbarupdate BS_TARGET
	datahpupdate BS_TARGET
	critmessage
	waitmessage B_WAIT_TIME_LONG
	resultmessage
	waitmessage B_WAIT_TIME_LONG
	tryfaintmon BS_TARGET, FALSE, NULL
	moveendfromto MOVEEND_ABILITIES, MOVEEND_CHOICE_MOVE
	getbattlerfainted BS_TARGET
	jumpifbyte CMP_EQUAL, gBattleCommunication, FALSE, BattleScript_PursuitDmgOnSwitchOutRet
	setbyte sGIVEEXP_STATE, 0
	getexp BS_TARGET
BattleScript_PursuitDmgOnSwitchOutRet:
	return

BattleScript_Pausex20::
	pause B_WAIT_TIME_SHORT
	return

BattleScript_LevelUp::
	fanfare MUS_LEVEL_UP
	printstring STRINGID_PKMNGREWTOLV
	setbyte sLVLBOX_STATE, 0
	drawlvlupbox
	handlelearnnewmove BattleScript_LearnedNewMove, BattleScript_LearnMoveReturn, TRUE
	goto BattleScript_AskToLearnMove
BattleScript_TryLearnMoveLoop::
	handlelearnnewmove BattleScript_LearnedNewMove, BattleScript_LearnMoveReturn, FALSE
BattleScript_AskToLearnMove::
	buffermovetolearn
	printstring STRINGID_TRYTOLEARNMOVE1
	printstring STRINGID_TRYTOLEARNMOVE2
	printstring STRINGID_TRYTOLEARNMOVE3
	waitstate
	setbyte sLEARNMOVE_STATE, 0
	yesnoboxlearnmove BattleScript_ForgotAndLearnedNewMove
	printstring STRINGID_STOPLEARNINGMOVE
	waitstate
	setbyte sLEARNMOVE_STATE, 0
	yesnoboxstoplearningmove BattleScript_AskToLearnMove
	printstring STRINGID_DIDNOTLEARNMOVE
	goto BattleScript_TryLearnMoveLoop
BattleScript_ForgotAndLearnedNewMove::
	printstring STRINGID_123POOF
	printstring STRINGID_PKMNFORGOTMOVE
	printstring STRINGID_ANDELLIPSIS
BattleScript_LearnedNewMove::
	buffermovetolearn
	fanfare MUS_LEVEL_UP
	printstring STRINGID_PKMNLEARNEDMOVE
	waitmessage B_WAIT_TIME_LONG
	updatechoicemoveonlvlup BS_ATTACKER
	goto BattleScript_TryLearnMoveLoop
BattleScript_LearnMoveReturn::
	return

BattleScript_RainContinuesOrEnds::
	printfromtable gRainContinuesStringIds
	waitmessage B_WAIT_TIME_LONG
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_RAIN_STOPPED, BattleScript_RainContinuesOrEndsEnd
	playanimation BS_ATTACKER, B_ANIM_RAIN_CONTINUES, NULL
BattleScript_RainContinuesOrEndsEnd::
	end2

BattleScript_DamagingWeatherContinues::
	printfromtable gSandStormHailContinuesStringIds
	waitmessage B_WAIT_TIME_LONG
	playanimation2 BS_ATTACKER, sB_ANIM_ARG1, NULL
	setbyte gBattleCommunication, 0
BattleScript_DamagingWeatherLoop::
	copyarraywithindex gBattlerAttacker, gBattlerByTurnOrder, gBattleCommunication, 1
	weatherdamage
	jumpifword CMP_EQUAL, gBattleMoveDamage, 0, BattleScript_DamagingWeatherLoopIncrement
	jumpifword CMP_COMMON_BITS gBattleMoveDamage, 1 << 31, BattleScript_DamagingWeatherHeal
	printfromtable gSandStormHailDmgStringIds
	waitmessage B_WAIT_TIME_LONG
	effectivenesssound
	hitanimation BS_ATTACKER
	goto BattleScript_DamagingWeatherHpChange
BattleScript_DamagingWeatherHeal:
	call BattleScript_AbilityPopUp
	printstring STRINGID_ICEBODYHPGAIN
	waitmessage B_WAIT_TIME_LONG
BattleScript_DamagingWeatherHpChange:
	orword gHitMarker, HITMARKER_x20 | HITMARKER_IGNORE_SUBSTITUTE | HITMARKER_x100000 | HITMARKER_GRUDGE
	healthbarupdate BS_ATTACKER
	datahpupdate BS_ATTACKER
	tryfaintmon BS_ATTACKER, FALSE, NULL
	atk24 BattleScript_DamagingWeatherLoopIncrement
BattleScript_DamagingWeatherLoopIncrement::
	jumpifbyte CMP_NOT_EQUAL, gBattleOutcome, 0, BattleScript_DamagingWeatherContinuesEnd
	addbyte gBattleCommunication, 1
	jumpifbytenotequal gBattleCommunication, gBattlersCount, BattleScript_DamagingWeatherLoop
BattleScript_DamagingWeatherContinuesEnd::
	bicword gHitMarker, HITMARKER_x20 | HITMARKER_IGNORE_SUBSTITUTE | HITMARKER_x100000 | HITMARKER_GRUDGE
	end2

BattleScript_SandStormHailEnds::
	printfromtable gSandStormHailEndStringIds
	waitmessage B_WAIT_TIME_LONG
	end2

BattleScript_SunlightContinues::
	printstring STRINGID_SUNLIGHTSTRONG
	waitmessage B_WAIT_TIME_LONG
	playanimation BS_ATTACKER, B_ANIM_SUN_CONTINUES, NULL
	end2

BattleScript_SunlightFaded::
	printstring STRINGID_SUNLIGHTFADED
	waitmessage B_WAIT_TIME_LONG
	end2

BattleScript_OverworldWeatherStarts::
	printfromtable gWeatherStartsStringIds
	waitmessage B_WAIT_TIME_LONG
	playanimation2 BS_ATTACKER, sB_ANIM_ARG1, NULL
	end3

BattleScript_OverworldTerrain::
	printfromtable gTerrainStringIds
	waitmessage B_WAIT_TIME_LONG
	playanimation BS_SCRIPTING, B_ANIM_RESTORE_BG, NULL
	end3

BattleScript_SideStatusWoreOff::
	printstring STRINGID_PKMNSXWOREOFF
	waitmessage B_WAIT_TIME_LONG
	end2

BattleScript_SideStatusWoreOffReturn::
	printstring STRINGID_PKMNSXWOREOFF
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_LuckyChantEnds::
	printstring STRINGID_LUCKYCHANTENDS
	waitmessage B_WAIT_TIME_LONG
	end2

BattleScript_TailwindEnds::
	printstring STRINGID_TAILWINDENDS
	waitmessage B_WAIT_TIME_LONG
	end2

BattleScript_TrickRoomEnds::
	printstring STRINGID_TRICKROOMENDS
	waitmessage B_WAIT_TIME_LONG
	end2

BattleScript_WonderRoomEnds::
	printstring STRINGID_WONDERROOMENDS
	waitmessage B_WAIT_TIME_LONG
	end2

BattleScript_MagicRoomEnds::
	printstring STRINGID_MAGICROOMENDS
	waitmessage B_WAIT_TIME_LONG
	end2

BattleScript_ElectricTerrainEnds::
	printstring STRINGID_ELECTRICTERRAINENDS
	waitmessage B_WAIT_TIME_LONG
	playanimation BS_ATTACKER, B_ANIM_RESTORE_BG, NULL
	end2

BattleScript_MistyTerrainEnds::
	printstring STRINGID_MISTYTERRAINENDS
	waitmessage B_WAIT_TIME_LONG
	playanimation BS_ATTACKER, B_ANIM_RESTORE_BG, NULL
	end2

BattleScript_GrassyTerrainEnds::
	printstring STRINGID_GRASSYTERRAINENDS
	waitmessage B_WAIT_TIME_LONG
	playanimation BS_ATTACKER, B_ANIM_RESTORE_BG, NULL
	end2

BattleScript_PsychicTerrainEnds::
	printstring STRINGID_PSYCHICTERRAINENDS
	waitmessage B_WAIT_TIME_LONG
	playanimation BS_ATTACKER, B_ANIM_RESTORE_BG, NULL
	end2

BattleScript_MudSportEnds::
	printstring STRINGID_MUDSPORTENDS
	waitmessage B_WAIT_TIME_LONG
	end2

BattleScript_WaterSportEnds::
	printstring STRINGID_WATERSPORTENDS
	waitmessage B_WAIT_TIME_LONG
	end2

BattleScript_GravityEnds::
	printstring STRINGID_GRAVITYENDS
	waitmessage B_WAIT_TIME_LONG
	end2

BattleScript_SafeguardProtected::
	pause B_WAIT_TIME_SHORT
	printstring STRINGID_PKMNUSEDSAFEGUARD
	waitmessage B_WAIT_TIME_LONG
	end2

BattleScript_SafeguardEnds::
	pause B_WAIT_TIME_SHORT
	printstring STRINGID_PKMNSAFEGUARDEXPIRED
	waitmessage B_WAIT_TIME_LONG
	end2

BattleScript_LeechSeedTurnDrain::
	playanimation BS_ATTACKER, B_ANIM_LEECH_SEED_DRAIN, sB_ANIM_ARG1
	orword gHitMarker, HITMARKER_IGNORE_SUBSTITUTE | HITMARKER_x100000
	healthbarupdate BS_ATTACKER
	datahpupdate BS_ATTACKER
	copyword gBattleMoveDamage, gHpDealt
	jumpifability BS_ATTACKER, ABILITY_LIQUID_OOZE, BattleScript_LeechSeedTurnPrintLiquidOoze
	setbyte cMULTISTRING_CHOOSER, B_MSG_LEECH_SEED_DRAIN
	jumpifstatus3 BS_TARGET, STATUS3_HEAL_BLOCK, BattleScript_LeechSeedHealBlock
	manipulatedamage DMG_BIG_ROOT
	goto BattleScript_LeechSeedTurnPrintAndUpdateHp
BattleScript_LeechSeedTurnPrintLiquidOoze::
	copybyte gBattlerAbility, gBattlerAttacker
	call BattleScript_AbilityPopUp
	setbyte cMULTISTRING_CHOOSER, B_MSG_LEECH_SEED_OOZE
BattleScript_LeechSeedTurnPrintAndUpdateHp::
	orword gHitMarker, HITMARKER_IGNORE_SUBSTITUTE | HITMARKER_x100000
	healthbarupdate BS_TARGET
	datahpupdate BS_TARGET
	printfromtable gLeechSeedStringIds
	waitmessage B_WAIT_TIME_LONG
	tryfaintmon BS_ATTACKER, FALSE, NULL
	tryfaintmon BS_TARGET, FALSE, NULL
	end2
BattleScript_LeechSeedHealBlock:
	setword gBattleMoveDamage, 0
	goto BattleScript_LeechSeedTurnPrintAndUpdateHp

BattleScript_BideStoringEnergy::
	printstring STRINGID_PKMNSTORINGENERGY
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_BideAttack::
	attackcanceler
	setmoveeffect MOVE_EFFECT_CHARGING
	clearstatusfromeffect BS_ATTACKER
	printstring STRINGID_PKMNUNLEASHEDENERGY
	waitmessage B_WAIT_TIME_LONG
	accuracycheck BattleScript_MoveMissed, ACC_CURR_MOVE
	typecalc
	bichalfword gMoveResultFlags, MOVE_RESULT_SUPER_EFFECTIVE | MOVE_RESULT_NOT_VERY_EFFECTIVE
	copyword gBattleMoveDamage, sBIDE_DMG
	adjustdamage
	setbyte sB_ANIM_TURN, 1
	attackanimation
	waitanimation
	effectivenesssound
	hitanimation BS_TARGET
	waitstate
	healthbarupdate BS_TARGET
	datahpupdate BS_TARGET
	resultmessage
	waitmessage B_WAIT_TIME_LONG
	tryfaintmon BS_TARGET, FALSE, NULL
	goto BattleScript_MoveEnd

BattleScript_BideNoEnergyToAttack::
	attackcanceler
	setmoveeffect MOVE_EFFECT_CHARGING
	clearstatusfromeffect BS_ATTACKER
	printstring STRINGID_PKMNUNLEASHEDENERGY
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_ButItFailed

BattleScript_RoarSuccessSwitch::
	call BattleScript_RoarSuccessRet
	getswitchedmondata BS_TARGET
	switchindataupdate BS_TARGET
	switchinanim BS_TARGET, FALSE
	waitstate
	printstring STRINGID_PKMNWASDRAGGEDOUT
	switchineffects BS_TARGET
	goto BattleScript_MoveEnd

BattleScript_RoarSuccessEndBattle::
	call BattleScript_RoarSuccessRet
	setoutcomeonteleport BS_ATTACKER
	finishaction

BattleScript_RoarSuccessRet:
	attackanimation
	waitanimation
	switchoutabilities BS_TARGET
	returntoball BS_TARGET
	waitstate
	return

BattleScript_WeaknessPolicy::
	copybyte sBATTLER, gBattlerTarget
	jumpifstat BS_TARGET, CMP_LESS_THAN, STAT_ATK, MAX_STAT_STAGE, BattleScript_WeaknessPolicyAtk
	jumpifstat BS_TARGET, CMP_EQUAL, STAT_SPATK, MAX_STAT_STAGE, BattleScript_WeaknessPolicyEnd
BattleScript_WeaknessPolicyAtk:
	playanimation BS_TARGET, B_ANIM_HELD_ITEM_EFFECT, NULL
	waitanimation
	setbyte sSTAT_ANIM_PLAYED, FALSE
	playstatchangeanimation BS_TARGET, BIT_ATK | BIT_SPATK, STAT_CHANGE_BY_TWO
	setstatchanger STAT_ATK, 2, FALSE
	statbuffchange STAT_BUFF_ALLOW_PTR, BattleScript_WeaknessPolicySpAtk
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_WeaknessPolicySpAtk
	printstring STRINGID_USINGITEMSTATOFPKMNROSE
	waitmessage B_WAIT_TIME_LONG
BattleScript_WeaknessPolicySpAtk:
	setstatchanger STAT_SPATK, 2, FALSE
	statbuffchange STAT_BUFF_ALLOW_PTR, BattleScript_WeaknessPolicyRemoveItem
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_WeaknessPolicyRemoveItem
	printstring STRINGID_USINGITEMSTATOFPKMNROSE
	waitmessage B_WAIT_TIME_LONG
BattleScript_WeaknessPolicyRemoveItem:
	removeitem BS_TARGET
BattleScript_WeaknessPolicyEnd:
	return

BattleScript_TargetItemStatRaise::
	copybyte sBATTLER, gBattlerTarget
	statbuffchange 0, BattleScript_TargetItemStatRaiseRemoveItemRet
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_TargetItemStatRaiseRemoveItemRet
	playanimation BS_TARGET, B_ANIM_HELD_ITEM_EFFECT, NULL
	waitanimation
	setgraphicalstatchangevalues
	playanimation BS_TARGET, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
	waitanimation
	printstring STRINGID_USINGITEMSTATOFPKMNROSE
	waitmessage B_WAIT_TIME_LONG
	removeitem BS_TARGET
BattleScript_TargetItemStatRaiseRemoveItemRet:
	return

BattleScript_MistProtected::
	pause B_WAIT_TIME_SHORT
	printstring STRINGID_PKMNPROTECTEDBYMIST
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_RageIsBuilding::
	printstring STRINGID_PKMNRAGEBUILDING
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_MoveUsedIsDisabled::
	printstring STRINGID_PKMNMOVEISDISABLED
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_SelectingDisabledMove::
	printselectionstring STRINGID_PKMNMOVEISDISABLED
	endselectionscript

BattleScript_DisabledNoMore::
	printstring STRINGID_PKMNMOVEDISABLEDNOMORE
	waitmessage B_WAIT_TIME_LONG
	end2

BattleScript_SelectingDisabledMoveInPalace::
	printstring STRINGID_PKMNMOVEISDISABLED
BattleScript_SelectingUnusableMoveInPalace::
	moveendto MOVEEND_NEXT_TARGET
	end

BattleScript_EncoredNoMore::
	printstring STRINGID_PKMNENCOREENDED
	waitmessage B_WAIT_TIME_LONG
	end2

BattleScript_DestinyBondTakesLife::
	printstring STRINGID_PKMNTOOKFOE
	waitmessage B_WAIT_TIME_LONG
	orword gHitMarker, HITMARKER_IGNORE_SUBSTITUTE | HITMARKER_x100000
	healthbarupdate BS_ATTACKER
	datahpupdate BS_ATTACKER
	tryfaintmon BS_ATTACKER, FALSE, NULL
	return

BattleScript_DmgHazardsOnAttacker::
	orword gHitMarker, HITMARKER_IGNORE_SUBSTITUTE | HITMARKER_x100000
	healthbarupdate BS_ATTACKER
	datahpupdate BS_ATTACKER
	call BattleScript_PrintHurtByDmgHazards
	tryfaintmon BS_ATTACKER, FALSE, NULL
	tryfaintmon BS_ATTACKER, TRUE, BattleScript_DmgHazardsOnAttackerFainted
	return

BattleScript_DmgHazardsOnAttackerFainted::
	setbyte sGIVEEXP_STATE, 0
	getexp BS_ATTACKER
	moveendall
	goto BattleScript_HandleFaintedMon

BattleScript_DmgHazardsOnTarget::
	orword gHitMarker, HITMARKER_IGNORE_SUBSTITUTE | HITMARKER_x100000
	healthbarupdate BS_TARGET
	datahpupdate BS_TARGET
	call BattleScript_PrintHurtByDmgHazards
	tryfaintmon BS_TARGET, FALSE, NULL
	tryfaintmon BS_TARGET, TRUE, BattleScript_DmgHazardsOnTargetFainted
	return

BattleScript_DmgHazardsOnTargetFainted::
	setbyte sGIVEEXP_STATE, 0
	getexp BS_TARGET
	moveendall
	goto BattleScript_HandleFaintedMon

BattleScript_DmgHazardsOnFaintedBattler::
	orword gHitMarker, HITMARKER_IGNORE_SUBSTITUTE | HITMARKER_x100000
	healthbarupdate BS_FAINTED
	datahpupdate BS_FAINTED
	call BattleScript_PrintHurtByDmgHazards
	tryfaintmon BS_FAINTED, FALSE, NULL
	tryfaintmon BS_FAINTED, TRUE, BattleScript_DmgHazardsOnFaintedBattlerFainted
	return

BattleScript_DmgHazardsOnFaintedBattlerFainted::
	setbyte sGIVEEXP_STATE, 0
	getexp BS_FAINTED
	moveendall
	goto BattleScript_HandleFaintedMon

BattleScript_PrintHurtByDmgHazards::
	printfromtable gDmgHazardsStringIds
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_ToxicSpikesAbsorbed::
	printstring STRINGID_TOXICSPIKESABSORBED
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_ToxicSpikesPoisoned::
	printstring STRINGID_TOXICSPIKESPOISONED
	waitmessage B_WAIT_TIME_LONG
	statusanimation BS_SCRIPTING
	updatestatusicon BS_SCRIPTING
	waitstate
	return

BattleScript_StickyWebOnSwitchIn::
	savetarget
	copybyte gBattlerTarget, sBATTLER
	printstring STRINGID_STICKYWEBSWITCHIN
	waitmessage B_WAIT_TIME_LONG
	statbuffchange STAT_BUFF_ALLOW_PTR, BattleScript_StickyWebOnSwitchInEnd
	jumpifbyte CMP_LESS_THAN, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_DECREASE, BattleScript_StickyWebOnSwitchInStatAnim
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_FELL_EMPTY, BattleScript_StickyWebOnSwitchInEnd
	pause B_WAIT_TIME_SHORT
	goto BattleScript_StickyWebOnSwitchInPrintStatMsg
BattleScript_StickyWebOnSwitchInStatAnim:
	setgraphicalstatchangevalues
	playanimation BS_TARGET, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
BattleScript_StickyWebOnSwitchInPrintStatMsg:
	printfromtable gStatDownStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_StickyWebOnSwitchInEnd:
	restoretarget
	return

BattleScript_PerishSongTakesLife::
	printstring STRINGID_PKMNPERISHCOUNTFELL
	waitmessage B_WAIT_TIME_LONG
	orword gHitMarker, HITMARKER_IGNORE_SUBSTITUTE | HITMARKER_x100000
	healthbarupdate BS_ATTACKER
	datahpupdate BS_ATTACKER
	tryfaintmon BS_ATTACKER, FALSE, NULL
	end2

BattleScript_PerishBodyActivates::
	call BattleScript_AbilityPopUp
	printstring STRINGID_PKMNSWILLPERISHIN3TURNS
	waitmessage B_WAIT_TIME_LONG
	orword gHitMarker, HITMARKER_IGNORE_SUBSTITUTE | HITMARKER_x100000
	return

BattleScript_PerishSongCountGoesDown::
	printstring STRINGID_PKMNPERISHCOUNTFELL
	waitmessage B_WAIT_TIME_LONG
	end2

BattleScript_AllStatsUp::
	jumpifstat BS_ATTACKER, CMP_LESS_THAN, STAT_ATK, MAX_STAT_STAGE, BattleScript_AllStatsUpAtk
	jumpifstat BS_ATTACKER, CMP_LESS_THAN, STAT_DEF, MAX_STAT_STAGE, BattleScript_AllStatsUpAtk
	jumpifstat BS_ATTACKER, CMP_LESS_THAN, STAT_SPEED, MAX_STAT_STAGE, BattleScript_AllStatsUpAtk
	jumpifstat BS_ATTACKER, CMP_LESS_THAN, STAT_SPATK, MAX_STAT_STAGE, BattleScript_AllStatsUpAtk
	jumpifstat BS_ATTACKER, CMP_EQUAL, STAT_SPDEF, MAX_STAT_STAGE, BattleScript_AllStatsUpRet
BattleScript_AllStatsUpAtk::
	setbyte sSTAT_ANIM_PLAYED, FALSE
	playstatchangeanimation BS_ATTACKER, BIT_ATK | BIT_DEF | BIT_SPEED | BIT_SPATK | BIT_SPDEF, 0
	setstatchanger STAT_ATK, 1, FALSE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_AllStatsUpDef
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_AllStatsUpDef::
	setstatchanger STAT_DEF, 1, FALSE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_AllStatsUpSpeed
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_AllStatsUpSpeed::
	setstatchanger STAT_SPEED, 1, FALSE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_AllStatsUpSpAtk
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_AllStatsUpSpAtk::
	setstatchanger STAT_SPATK, 1, FALSE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_AllStatsUpSpDef
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_AllStatsUpSpDef::
	setstatchanger STAT_SPDEF, 1, FALSE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_AllStatsUpRet
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_AllStatsUpRet::
	return

BattleScript_RapidSpinAway::
	rapidspinfree
	return

BattleScript_WrapFree::
	printstring STRINGID_PKMNGOTFREE
	waitmessage B_WAIT_TIME_LONG
	copybyte gBattlerTarget, sBATTLER
	return

BattleScript_LeechSeedFree::
	printstring STRINGID_PKMNSHEDLEECHSEED
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_SpikesFree::
	printstring STRINGID_PKMNBLEWAWAYSPIKES
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_ToxicSpikesFree::
	printstring STRINGID_PKMNBLEWAWAYTOXICSPIKES
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_StickyWebFree::
	printstring STRINGID_PKMNBLEWAWAYSTICKYWEB
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_StealthRockFree::
	printstring STRINGID_PKMNBLEWAWAYSTEALTHROCK
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_MonTookFutureAttack::
	printstring STRINGID_PKMNTOOKATTACK
	waitmessage B_WAIT_TIME_LONG
	jumpifbyte CMP_NOT_EQUAL, cMULTISTRING_CHOOSER, B_MSG_FUTURE_SIGHT, BattleScript_CheckDoomDesireMiss
	accuracycheck BattleScript_FutureAttackMiss, MOVE_FUTURE_SIGHT
	goto BattleScript_FutureAttackAnimate
BattleScript_CheckDoomDesireMiss::
	accuracycheck BattleScript_FutureAttackMiss, MOVE_DOOM_DESIRE
BattleScript_FutureAttackAnimate::
	critcalc
	damagecalc
	adjustdamage
	jumpifmovehadnoeffect BattleScript_DoFutureAttackResult
	jumpifbyte CMP_NOT_EQUAL, cMULTISTRING_CHOOSER, B_MSG_FUTURE_SIGHT, BattleScript_FutureHitAnimDoomDesire
	playanimation BS_ATTACKER, B_ANIM_FUTURE_SIGHT_HIT, NULL
	goto BattleScript_DoFutureAttackHit
BattleScript_FutureHitAnimDoomDesire::
	playanimation BS_ATTACKER, B_ANIM_DOOM_DESIRE_HIT, NULL
BattleScript_DoFutureAttackHit::
	effectivenesssound
	hitanimation BS_TARGET
	waitstate
	healthbarupdate BS_TARGET
	datahpupdate BS_TARGET
	critmessage
	waitmessage B_WAIT_TIME_LONG
BattleScript_DoFutureAttackResult:
	resultmessage
	waitmessage B_WAIT_TIME_LONG
	tryfaintmon BS_TARGET, FALSE, NULL
	atk24 BattleScript_FutureAttackEnd
BattleScript_FutureAttackEnd::
	moveendcase MOVEEND_RAGE
	moveendfromto MOVEEND_ITEM_EFFECTS_ALL, MOVEEND_UPDATE_LAST_MOVES
	setbyte gMoveResultFlags, 0
	end2
BattleScript_FutureAttackMiss::
	pause B_WAIT_TIME_SHORT
	sethword gMoveResultFlags, MOVE_RESULT_FAILED
	resultmessage
	waitmessage B_WAIT_TIME_LONG
	sethword gMoveResultFlags, 0
	end2

BattleScript_NoMovesLeft::
	printselectionstring STRINGID_PKMNHASNOMOVESLEFT
	endselectionscript

BattleScript_SelectingMoveWithNoPP::
	printselectionstring STRINGID_NOPPLEFT
	endselectionscript

BattleScript_NoPPForMove::
	attackstring
	pause B_WAIT_TIME_SHORT
	printstring STRINGID_BUTNOPPLEFT
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_SelectingTormentedMove::
	printselectionstring STRINGID_PKMNCANTUSEMOVETORMENT
	endselectionscript

BattleScript_MoveUsedIsTormented::
	printstring STRINGID_PKMNCANTUSEMOVETORMENT
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_SelectingTormentedMoveInPalace::
	printstring STRINGID_PKMNCANTUSEMOVETORMENT
	goto BattleScript_SelectingUnusableMoveInPalace

BattleScript_SelectingNotAllowedMoveTaunt::
	printselectionstring STRINGID_PKMNCANTUSEMOVETAUNT
	endselectionscript

BattleScript_MoveUsedIsTaunted::
	printstring STRINGID_PKMNCANTUSEMOVETAUNT
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_SelectingNotAllowedMoveTauntInPalace::
	printstring STRINGID_PKMNCANTUSEMOVETAUNT
	goto BattleScript_SelectingUnusableMoveInPalace

BattleScript_SelectingNotAllowedMoveThroatChop::
	printselectionstring STRINGID_PKMNCANTUSEMOVETHROATCHOP
	endselectionscript

BattleScript_MoveUsedIsThroatChopPrevented::
	printstring STRINGID_PKMNCANTUSEMOVETHROATCHOP
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_SelectingNotAllowedMoveThroatChopInPalace::
	printstring STRINGID_PKMNCANTUSEMOVETHROATCHOP
	goto BattleScript_SelectingUnusableMoveInPalace

BattleScript_ThroatChopEndTurn::
	printstring STRINGID_THROATCHOPENDS
	waitmessage B_WAIT_TIME_LONG
	end2
	
BattleScript_SlowStartEnds::
	pause 5
	copybyte gBattlerAbility, gBattlerAttacker
	call BattleScript_AbilityPopUp
	printstring STRINGID_SLOWSTARTEND
	waitmessage B_WAIT_TIME_LONG
	end2

BattleScript_SelectingNotAllowedMoveGravity::
	printselectionstring STRINGID_GRAVITYPREVENTSUSAGE
	endselectionscript

BattleScript_SelectingNotAllowedBelch::
	printselectionstring STRINGID_BELCHCANTSELECT
	endselectionscript

BattleScript_SelectingNotAllowedBelchInPalace::
	printstring STRINGID_BELCHCANTSELECT
	goto BattleScript_SelectingUnusableMoveInPalace

BattleScript_MoveUsedGravityPrevents::
	printstring STRINGID_GRAVITYPREVENTSUSAGE
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_SelectingNotAllowedMoveGravityInPalace::
	printstring STRINGID_GRAVITYPREVENTSUSAGE
	goto BattleScript_SelectingUnusableMoveInPalace

BattleScript_SelectingNotAllowedMoveHealBlock::
	printselectionstring STRINGID_HEALBLOCKPREVENTSUSAGE
	endselectionscript

BattleScript_MoveUsedHealBlockPrevents::
	printstring STRINGID_HEALBLOCKPREVENTSUSAGE
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_SelectingNotAllowedMoveHealBlockInPalace::
	printstring STRINGID_HEALBLOCKPREVENTSUSAGE
	goto BattleScript_SelectingUnusableMoveInPalace

BattleScript_WishComesTrue::
	trywish 1, BattleScript_WishButFullHp
	playanimation BS_TARGET, B_ANIM_WISH_HEAL, NULL
	printstring STRINGID_PKMNWISHCAMETRUE
	waitmessage B_WAIT_TIME_LONG
	orword gHitMarker, HITMARKER_IGNORE_SUBSTITUTE
	healthbarupdate BS_TARGET
	datahpupdate BS_TARGET
	printstring STRINGID_PKMNREGAINEDHEALTH
	waitmessage B_WAIT_TIME_LONG
	end2

BattleScript_WishButFullHp::
	printstring STRINGID_PKMNWISHCAMETRUE
	waitmessage B_WAIT_TIME_LONG
	pause B_WAIT_TIME_SHORT
	printstring STRINGID_PKMNHPFULL
	waitmessage B_WAIT_TIME_LONG
	end2

BattleScript_IngrainTurnHeal::
	playanimation BS_ATTACKER, B_ANIM_INGRAIN_HEAL, NULL
	printstring STRINGID_PKMNABSORBEDNUTRIENTS
BattleScript_TurnHeal:
	waitmessage B_WAIT_TIME_LONG
	orword gHitMarker, HITMARKER_IGNORE_SUBSTITUTE
	healthbarupdate BS_ATTACKER
	datahpupdate BS_ATTACKER
	end2

BattleScript_AquaRingHeal::
	playanimation BS_ATTACKER, B_ANIM_INGRAIN_HEAL, NULL
	printstring STRINGID_AQUARINGHEAL
	goto BattleScript_TurnHeal

BattleScript_PrintMonIsRooted::
	pause B_WAIT_TIME_SHORT
	printstring STRINGID_PKMNANCHOREDITSELF
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_AtkDefDown::
	setbyte sSTAT_ANIM_PLAYED, FALSE
	playstatchangeanimation BS_ATTACKER, BIT_DEF | BIT_ATK, STAT_CHANGE_CANT_PREVENT | STAT_CHANGE_NEGATIVE | STAT_CHANGE_MULTIPLE_STATS
	playstatchangeanimation BS_ATTACKER, BIT_ATK, STAT_CHANGE_CANT_PREVENT | STAT_CHANGE_NEGATIVE
	setstatchanger STAT_ATK, 1, TRUE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | MOVE_EFFECT_CERTAIN | STAT_BUFF_ALLOW_PTR, BattleScript_AtkDefDownTryDef
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_DECREASE, BattleScript_AtkDefDownTryDef
	printfromtable gStatDownStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_AtkDefDownTryDef:
	playstatchangeanimation BS_ATTACKER, BIT_DEF, STAT_CHANGE_CANT_PREVENT | STAT_CHANGE_NEGATIVE
	setstatchanger STAT_DEF, 1, TRUE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | MOVE_EFFECT_CERTAIN | STAT_BUFF_ALLOW_PTR, BattleScript_AtkDefDownRet
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_DECREASE, BattleScript_AtkDefDownRet
	printfromtable gStatDownStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_AtkDefDownRet:
	return

BattleScript_DefSpDefDown::
	setbyte sSTAT_ANIM_PLAYED, FALSE
	playstatchangeanimation BS_ATTACKER, BIT_DEF | BIT_SPDEF, STAT_CHANGE_CANT_PREVENT | STAT_CHANGE_NEGATIVE | STAT_CHANGE_MULTIPLE_STATS
	playstatchangeanimation BS_ATTACKER, BIT_DEF, STAT_CHANGE_CANT_PREVENT | STAT_CHANGE_NEGATIVE
	setstatchanger STAT_DEF, 1, TRUE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | MOVE_EFFECT_CERTAIN | STAT_BUFF_ALLOW_PTR, BattleScript_DefSpDefDownTrySpDef
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_DECREASE, BattleScript_DefSpDefDownTrySpDef
	printfromtable gStatDownStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_DefSpDefDownTrySpDef::
	playstatchangeanimation BS_ATTACKER, BIT_SPDEF, STAT_CHANGE_CANT_PREVENT | STAT_CHANGE_NEGATIVE
	setstatchanger STAT_SPDEF, 1, TRUE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | MOVE_EFFECT_CERTAIN | STAT_BUFF_ALLOW_PTR, BattleScript_DefSpDefDownRet
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_DECREASE, BattleScript_DefSpDefDownRet
	printfromtable gStatDownStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_DefSpDefDownRet::
	return

BattleScript_KnockedOff::
	playanimation BS_TARGET, B_ANIM_ITEM_KNOCKOFF, NULL
	printstring STRINGID_PKMNKNOCKEDOFF
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_MoveUsedIsImprisoned::
	printstring STRINGID_PKMNCANTUSEMOVESEALED
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_SelectingImprisonedMove::
	printselectionstring STRINGID_PKMNCANTUSEMOVESEALED
	endselectionscript

BattleScript_SelectingImprisonedMoveInPalace::
	printstring STRINGID_PKMNCANTUSEMOVESEALED
	goto BattleScript_SelectingUnusableMoveInPalace

BattleScript_GrudgeTakesPp::
	printstring STRINGID_PKMNLOSTPPGRUDGE
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_MagicCoatBounce::
	attackstring
	ppreduce
	pause B_WAIT_TIME_SHORT
	printfromtable gMagicCoatBounceStringIds
	waitmessage B_WAIT_TIME_LONG
	orword gHitMarker, HITMARKER_ATTACKSTRING_PRINTED | HITMARKER_NO_PPDEDUCT | HITMARKER_x800000
	setmagiccoattarget BS_ATTACKER
	return

BattleScript_SnatchedMove::
	attackstring
	ppreduce
	snatchsetbattlers
	playanimation BS_TARGET, B_ANIM_SNATCH_MOVE, NULL
	printstring STRINGID_PKMNSNATCHEDMOVE
	waitmessage B_WAIT_TIME_LONG
	orword gHitMarker, HITMARKER_ATTACKSTRING_PRINTED | HITMARKER_NO_PPDEDUCT | HITMARKER_x800000
	swapattackerwithtarget
	return

BattleScript_EnduredMsg::
	printstring STRINGID_PKMNENDUREDHIT
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_SturdiedMsg::
	copybyte gBattlerAbility, gBattlerTarget
	pause 16
	call BattleScript_AbilityPopUp
	printstring STRINGID_ENDUREDSTURDY
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_OneHitKOMsg::
	printstring STRINGID_ONEHITKO
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_SAtkDown2::
	setbyte sSTAT_ANIM_PLAYED, FALSE
	playstatchangeanimation BS_ATTACKER, BIT_SPATK, STAT_CHANGE_CANT_PREVENT | STAT_CHANGE_NEGATIVE | STAT_CHANGE_BY_TWO
	setstatchanger STAT_SPATK, 2, TRUE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | MOVE_EFFECT_CERTAIN | STAT_BUFF_ALLOW_PTR, BattleScript_SAtkDown2End
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_DECREASE, BattleScript_SAtkDown2End
	printfromtable gStatDownStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_SAtkDown2End::
	return

BattleScript_MoveEffectClearSmog::
	printstring STRINGID_RESETSTARGETSSTATLEVELS
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_FocusPunchSetUp::
	printstring STRINGID_EMPTYSTRING3
	waitmessage 1
	playanimation BS_ATTACKER, B_ANIM_FOCUS_PUNCH_SETUP, NULL
	printstring STRINGID_PKMNTIGHTENINGFOCUS
	waitmessage B_WAIT_TIME_LONG
	end2

BattleScript_MegaEvolution::
	printstring STRINGID_MEGAEVOREACTING
	waitmessage B_WAIT_TIME_LONG
	setbyte gIsCriticalHit, 0
	handlemegaevo BS_ATTACKER, 0
	handlemegaevo BS_ATTACKER, 1
	playanimation BS_ATTACKER, B_ANIM_MEGA_EVOLUTION, NULL
	waitanimation
	handlemegaevo BS_ATTACKER, 2
	printstring STRINGID_MEGAEVOEVOLVED
	waitmessage B_WAIT_TIME_LONG
	switchinabilities BS_ATTACKER
	end2

BattleScript_WishMegaEvolution::
	printstring STRINGID_FERVENTWISHREACHED
	waitmessage B_WAIT_TIME_LONG
	setbyte gIsCriticalHit, 0
	handlemegaevo BS_ATTACKER, 0
	handlemegaevo BS_ATTACKER, 1
	playanimation BS_ATTACKER, B_ANIM_MEGA_EVOLUTION, NULL
	waitanimation
	handlemegaevo BS_ATTACKER, 2
	printstring STRINGID_MEGAEVOEVOLVED
	waitmessage B_WAIT_TIME_LONG
	switchinabilities BS_ATTACKER
	end2

BattleScript_AttackerFormChange::
	pause 5
	copybyte gBattlerAbility, gBattlerAttacker
	call BattleScript_AbilityPopUp
	printstring STRINGID_EMPTYSTRING3
	waitmessage 1
	handleformchange BS_ATTACKER, 0
	handleformchange BS_ATTACKER, 1
	playanimation BS_ATTACKER, B_ANIM_FORM_CHANGE, NULL
	waitanimation
	handleformchange BS_ATTACKER, 2 
	return
	
BattleScript_AttackerFormChangeEnd3::
	call BattleScript_AttackerFormChange
	end3

BattleScript_BallFetch::
	call BattleScript_AbilityPopUp
	printstring STRINGID_FETCHEDPOKEBALL
	waitmessage B_WAIT_TIME_LONG
	end3

BattleScript_TargetFormChange::
	pause 5
	copybyte gBattlerAbility, gBattlerTarget
	call BattleScript_AbilityPopUp
	printstring STRINGID_EMPTYSTRING3
	waitmessage 1
	handleformchange BS_TARGET, 0
	handleformchange BS_TARGET, 1
	playanimation BS_TARGET, B_ANIM_FORM_CHANGE, NULL
	waitanimation
	handleformchange BS_TARGET, 2 
	return

BattleScript_IllusionOff::
	spriteignore0hp TRUE
	playanimation BS_TARGET, B_ANIM_ILLUSION_OFF, NULL
	waitanimation
	updatenick BS_TARGET
	waitstate
	spriteignore0hp FALSE
	printstring STRINGID_ILLUSIONWOREOFF
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_CottonDownActivates::
	setbyte sFIXED_ABILITY_POPUP, TRUE
	call BattleScript_AbilityPopUp
	copybyte gEffectBattler, gBattlerTarget
	savetarget
	setbyte gBattlerTarget, 0
BattleScript_CottonDownLoop:
	setstatchanger STAT_SPEED, 1, TRUE
	jumpifbyteequal gBattlerTarget, gEffectBattler, BattleScript_CottonDownLoopIncrement
	statbuffchange STAT_BUFF_NOT_PROTECT_AFFECTED, BattleScript_CottonDownTargetSpeedCantGoLower
	setgraphicalstatchangevalues
	playanimation BS_TARGET, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
	printfromtable gStatDownStringIds
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_CottonDownLoopIncrement
BattleScript_CottonDownTargetSpeedCantGoLower:
	printstring STRINGID_STATSWONTDECREASE
	waitmessage B_WAIT_TIME_LONG
BattleScript_CottonDownLoopIncrement:
	addbyte gBattlerTarget, 1
	jumpifbytenotequal gBattlerTarget, gBattlersCount, BattleScript_CottonDownLoop
BattleScript_CottonDownReturn:
	restoretarget
	destroyabilitypopup
	return

BattleScript_AnticipationActivates::
	pause 5
	call BattleScript_AbilityPopUp
	printstring STRINGID_ANTICIPATIONACTIVATES
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_AftermathDmg::
	pause B_WAIT_TIME_SHORT
	call BattleScript_AbilityPopUp
	orword gHitMarker, HITMARKER_IGNORE_SUBSTITUTE | HITMARKER_x100000
	healthbarupdate BS_ATTACKER
	datahpupdate BS_ATTACKER
	printstring STRINGID_AFTERMATHDMG
	waitmessage B_WAIT_TIME_LONG
	tryfaintmon BS_ATTACKER, FALSE, NULL
	return

BattleScript_MoveUsedIsAsleep::
	printstring STRINGID_PKMNFASTASLEEP
	waitmessage B_WAIT_TIME_LONG
	statusanimation BS_ATTACKER
	goto BattleScript_MoveEnd

BattleScript_MoveUsedWokeUp::
	bicword gHitMarker, HITMARKER_x10
	printfromtable gWokeUpStringIds
	waitmessage B_WAIT_TIME_LONG
	updatestatusicon BS_ATTACKER
	return

BattleScript_MonWokeUpInUproar::
	printstring STRINGID_PKMNWOKEUPINUPROAR
	waitmessage B_WAIT_TIME_LONG
	updatestatusicon BS_ATTACKER
	end2

BattleScript_PoisonTurnDmg::
	printstring STRINGID_PKMNHURTBYPOISON
	waitmessage B_WAIT_TIME_LONG
BattleScript_DoStatusTurnDmg::
	statusanimation BS_ATTACKER
BattleScript_DoTurnDmg:
	orword gHitMarker, HITMARKER_IGNORE_SUBSTITUTE | HITMARKER_x100000
	healthbarupdate BS_ATTACKER
	datahpupdate BS_ATTACKER
	tryfaintmon BS_ATTACKER, FALSE, NULL
	atk24 BattleScript_DoTurnDmgEnd
BattleScript_DoTurnDmgEnd:
	end2

BattleScript_PoisonHealActivates::
	printstring STRINGID_POISONHEALHPUP
	waitmessage B_WAIT_TIME_LONG
	recordability BS_ATTACKER
	statusanimation BS_ATTACKER
	orword gHitMarker, HITMARKER_IGNORE_SUBSTITUTE | HITMARKER_x100000
	healthbarupdate BS_ATTACKER
	datahpupdate BS_ATTACKER
	end2

BattleScript_BurnTurnDmg::
	printstring STRINGID_PKMNHURTBYBURN
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_DoStatusTurnDmg

BattleScript_MoveUsedIsFrozen::
	printstring STRINGID_PKMNISFROZEN
	waitmessage B_WAIT_TIME_LONG
	statusanimation BS_ATTACKER
	goto BattleScript_MoveEnd

BattleScript_MoveUsedUnfroze::
	printfromtable gGotDefrostedStringIds
	waitmessage B_WAIT_TIME_LONG
	updatestatusicon BS_ATTACKER
	return

BattleScript_DefrostedViaFireMove::
	printstring STRINGID_PKMNWASDEFROSTED
	waitmessage B_WAIT_TIME_LONG
	updatestatusicon BS_TARGET
	return

BattleScript_MoveUsedIsParalyzed::
	printstring STRINGID_PKMNISPARALYZED
	waitmessage B_WAIT_TIME_LONG
	statusanimation BS_ATTACKER
	cancelmultiturnmoves BS_ATTACKER
	goto BattleScript_MoveEnd

BattleScript_PowderMoveNoEffect::
	attackstring
	ppreduce
	pause B_WAIT_TIME_SHORT
	jumpiftype BS_TARGET, TYPE_GRASS, BattleScript_PowderMoveNoEffectPrint
	jumpifability BS_TARGET, ABILITY_OVERCOAT, BattleScript_PowderMoveNoEffectOvercoat
	printstring STRINGID_SAFETYGOOGLESPROTECTED
	goto BattleScript_PowderMoveNoEffectWaitMsg
BattleScript_PowderMoveNoEffectOvercoat:
	call BattleScript_AbilityPopUp
BattleScript_PowderMoveNoEffectPrint:
	printstring STRINGID_ITDOESNTAFFECT
BattleScript_PowderMoveNoEffectWaitMsg:
	waitmessage B_WAIT_TIME_LONG
	cancelmultiturnmoves BS_ATTACKER
	sethword gMoveResultFlags, MOVE_RESULT_FAILED
	goto BattleScript_MoveEnd

BattleScript_MoveUsedFlinched::
	printstring STRINGID_PKMNFLINCHED
	waitmessage B_WAIT_TIME_LONG
	jumpifability BS_ATTACKER ABILITY_STEADFAST BattleScript_TryActivateSteadFast
BattleScript_MoveUsedFlinchedEnd:
	goto BattleScript_MoveEnd
BattleScript_TryActivateSteadFast:
	setstatchanger STAT_SPEED, 1, FALSE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_MoveUsedFlinchedEnd
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_MoveUsedFlinchedEnd
	copybyte gBattlerAbility, gBattlerAttacker
	call BattleScript_AbilityPopUp
	setgraphicalstatchangevalues
	playanimation BS_ATTACKER, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
	setbyte gBattleCommunication STAT_SPEED
	stattextbuffer BS_ATTACKER
	printstring STRINGID_ATTACKERABILITYSTATRAISE
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveUsedFlinchedEnd

BattleScript_PrintUproarOverTurns::
	printfromtable gUproarOverTurnStringIds
	waitmessage B_WAIT_TIME_LONG
	end2

BattleScript_ThrashConfuses::
	chosenstatus2animation BS_ATTACKER, STATUS2_CONFUSION
	printstring STRINGID_PKMNFATIGUECONFUSION
	waitmessage B_WAIT_TIME_LONG
	end2

BattleScript_MoveUsedIsConfused::
	printstring STRINGID_PKMNISCONFUSED
	waitmessage B_WAIT_TIME_LONG
	status2animation BS_ATTACKER, STATUS2_CONFUSION
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, FALSE, BattleScript_MoveUsedIsConfusedRet
BattleScript_DoSelfConfusionDmg::
	cancelmultiturnmoves BS_ATTACKER
	adjustdamage
	printstring STRINGID_ITHURTCONFUSION
	waitmessage B_WAIT_TIME_LONG
	effectivenesssound
	hitanimation BS_ATTACKER
	waitstate
	orword gHitMarker, HITMARKER_IGNORE_SUBSTITUTE | HITMARKER_x100000
	healthbarupdate BS_ATTACKER
	datahpupdate BS_ATTACKER
	resultmessage
	waitmessage B_WAIT_TIME_LONG
	tryfaintmon BS_ATTACKER, FALSE, NULL
	goto BattleScript_MoveEnd
BattleScript_MoveUsedIsConfusedRet::
	return

BattleScript_MoveUsedPowder::
	bicword gHitMarker, HITMARKER_NO_ATTACKSTRING | HITMARKER_ATTACKSTRING_PRINTED
	attackstring
	ppreduce
	pause B_WAIT_TIME_SHORT
	cancelmultiturnmoves BS_ATTACKER
	status2animation BS_ATTACKER, STATUS2_POWDER
	waitanimation
	effectivenesssound
	hitanimation BS_ATTACKER
	waitstate
	orword gHitMarker, HITMARKER_IGNORE_SUBSTITUTE | HITMARKER_x100000
	healthbarupdate BS_ATTACKER
	datahpupdate BS_ATTACKER
	printstring STRINGID_POWDEREXPLODES
	waitmessage B_WAIT_TIME_LONG
	tryfaintmon BS_ATTACKER, FALSE, NULL
	goto BattleScript_MoveEnd

BattleScript_MoveUsedIsConfusedNoMore::
	printstring STRINGID_PKMNHEALEDCONFUSION
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_PrintPayDayMoneyString::
	printstring STRINGID_PLAYERPICKEDUPMONEY
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_WrapTurnDmg::
	jumpifability BS_ATTACKER, ABILITY_MAGIC_GUARD, BattleScript_DoTurnDmgEnd
	playanimation BS_ATTACKER, B_ANIM_TURN_TRAP, sB_ANIM_ARG1
	printstring STRINGID_PKMNHURTBY
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_DoTurnDmg

BattleScript_WrapEnds::
	printstring STRINGID_PKMNFREEDFROM
	waitmessage B_WAIT_TIME_LONG
	end2

BattleScript_MoveUsedIsInLove::
	printstring STRINGID_PKMNINLOVE
	waitmessage B_WAIT_TIME_LONG
	status2animation BS_ATTACKER, STATUS2_INFATUATION
	return

BattleScript_MoveUsedIsInLoveCantAttack::
	printstring STRINGID_PKMNIMMOBILIZEDBYLOVE
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_NightmareTurnDmg::
	printstring STRINGID_PKMNLOCKEDINNIGHTMARE
	waitmessage B_WAIT_TIME_LONG
	status2animation BS_ATTACKER, STATUS2_NIGHTMARE
	goto BattleScript_DoTurnDmg

BattleScript_CurseTurnDmg::
	printstring STRINGID_PKMNAFFLICTEDBYCURSE
	waitmessage B_WAIT_TIME_LONG
	status2animation BS_ATTACKER, STATUS2_CURSED
	goto BattleScript_DoTurnDmg

BattleScript_TargetPRLZHeal::
	printstring STRINGID_PKMNHEALEDPARALYSIS
	waitmessage B_WAIT_TIME_LONG
	updatestatusicon BS_TARGET
	return

BattleScript_MoveEffectSleep::
	statusanimation BS_EFFECT_BATTLER
	printfromtable gFellAsleepStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_UpdateEffectStatusIconRet::
	updatestatusicon BS_EFFECT_BATTLER
	waitstate
	return

BattleScript_YawnMakesAsleep::
	statusanimation BS_EFFECT_BATTLER
	printstring STRINGID_PKMNFELLASLEEP
	waitmessage B_WAIT_TIME_LONG
	updatestatusicon BS_EFFECT_BATTLER
	waitstate
	makevisible BS_EFFECT_BATTLER
	end2

BattleScript_EmbargoEndTurn::
	printstring STRINGID_EMBARGOENDS
	waitmessage B_WAIT_TIME_LONG
	end2

BattleScript_TelekinesisEndTurn::
	printstring STRINGID_TELEKINESISENDS
	waitmessage B_WAIT_TIME_LONG
	end2

BattleScript_BufferEndTurn::
	printstring STRINGID_BUFFERENDS
	waitmessage B_WAIT_TIME_LONG
	end2

BattleScript_ToxicOrb::
	setbyte cMULTISTRING_CHOOSER, 0
	copybyte gEffectBattler, gBattlerAttacker
	call BattleScript_MoveEffectToxic
	end2

BattleScript_FlameOrb::
	setbyte cMULTISTRING_CHOOSER, 0
	copybyte gEffectBattler, gBattlerAttacker
	call BattleScript_MoveEffectBurn
	end2

BattleScript_MoveEffectPoison::
	statusanimation BS_EFFECT_BATTLER
	printfromtable gGotPoisonedStringIds
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_UpdateEffectStatusIconRet

BattleScript_MoveEffectBurn::
	statusanimation BS_EFFECT_BATTLER
	printfromtable gGotBurnedStringIds
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_UpdateEffectStatusIconRet

BattleScript_MoveEffectFreeze::
	statusanimation BS_EFFECT_BATTLER
	printfromtable gGotFrozenStringIds
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_UpdateEffectStatusIconRet

BattleScript_MoveEffectParalysis::
	statusanimation BS_EFFECT_BATTLER
	printfromtable gGotParalyzedStringIds
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_UpdateEffectStatusIconRet

BattleScript_MoveEffectUproar::
	printstring STRINGID_PKMNCAUSEDUPROAR
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_MoveEffectToxic::
	statusanimation BS_EFFECT_BATTLER
	printstring STRINGID_PKMNBADLYPOISONED
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_UpdateEffectStatusIconRet

BattleScript_MoveEffectPayDay::
	printstring STRINGID_COINSSCATTERED
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_MoveEffectWrap::
	printfromtable gWrappedStringIds
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_MoveEffectConfusion::
	chosenstatus2animation BS_EFFECT_BATTLER, STATUS2_CONFUSION
	printstring STRINGID_PKMNWASCONFUSED
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_MoveEffectRecoilWithStatus::
	argumentstatuseffect
	copyword gBattleMoveDamage, sSAVED_DMG
BattleScript_MoveEffectRecoil::
	jumpifmove MOVE_STRUGGLE, BattleScript_DoRecoil
	jumpifability BS_ATTACKER, ABILITY_ROCK_HEAD, BattleScript_RecoilEnd
BattleScript_DoRecoil::
	orword gHitMarker, HITMARKER_IGNORE_SUBSTITUTE | HITMARKER_x100000
	healthbarupdate BS_ATTACKER
	datahpupdate BS_ATTACKER
	printstring STRINGID_PKMNHITWITHRECOIL
	waitmessage B_WAIT_TIME_LONG
	tryfaintmon BS_ATTACKER, FALSE, NULL
BattleScript_RecoilEnd::
	return

BattleScript_EffectWithChance::
	seteffectwithchance
	return

BattleScript_ItemSteal::
	playanimation BS_TARGET, B_ANIM_ITEM_STEAL, NULL
	printstring STRINGID_PKMNSTOLEITEM
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_DrizzleActivates::
	pause B_WAIT_TIME_SHORT
	call BattleScript_AbilityPopUp
	printstring STRINGID_PKMNMADEITRAIN
	waitstate
	playanimation BS_BATTLER_0, B_ANIM_RAIN_CONTINUES, NULL
	call BattleScript_WeatherFormChanges
	end3

BattleScript_DefiantActivates::
	pause B_WAIT_TIME_SHORT
	call BattleScript_AbilityPopUp
	statbuffchange 0, NULL
	setgraphicalstatchangevalues
	playanimation BS_ABILITY_BATTLER, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
	printstring STRINGID_DEFENDERSSTATROSE
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_AbilityPopUp:
	showabilitypopup BS_ABILITY_BATTLER
	recordability BS_ABILITY_BATTLER
	pause 40
	sethword sABILITY_OVERWRITE, 0
	return

BattleScript_SpeedBoostActivates::
	call BattleScript_AbilityPopUp
	playanimation BS_ATTACKER, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
	printstring STRINGID_PKMNRAISEDSPEED
	waitmessage B_WAIT_TIME_LONG
	end3
	
@ Can't compare directly to a value, have to compare to value at pointer
sZero:
.byte 0
	
BattleScript_MoodyActivates::
	call BattleScript_AbilityPopUp
	jumpifbyteequal sSTATCHANGER, sZero, BattleScript_MoodyLower
	statbuffchange MOVE_EFFECT_AFFECTS_USER | MOVE_EFFECT_CERTAIN | STAT_BUFF_NOT_PROTECT_AFFECTED, BattleScript_MoodyLower
	jumpifbyte CMP_GREATER_THAN, cMULTISTRING_CHOOSER, B_MSG_DEFENDER_STAT_ROSE, BattleScript_MoodyLower
	setgraphicalstatchangevalues
	playanimation BS_ATTACKER, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_MoodyLower:
	jumpifbyteequal sSAVED_STAT_CHANGER, sZero, BattleScript_MoodyEnd
	copybyte sSTATCHANGER, sSAVED_STAT_CHANGER
	statbuffchange MOVE_EFFECT_AFFECTS_USER | MOVE_EFFECT_CERTAIN | STAT_BUFF_NOT_PROTECT_AFFECTED, BattleScript_MoodyEnd
	jumpifbyte CMP_GREATER_THAN, cMULTISTRING_CHOOSER, B_MSG_DEFENDER_STAT_FELL, BattleScript_MoodyEnd
	setgraphicalstatchangevalues
	playanimation BS_ATTACKER, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
	printfromtable gStatDownStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_MoodyEnd:
	end3
	
BattleScript_EmergencyExit::
	pause 5
	call BattleScript_AbilityPopUp
	pause B_WAIT_TIME_LONG
BattleScript_EmergencyExitNoPopUp::
	playanimation BS_TARGET, B_ANIM_SLIDE_OFFSCREEN, NULL
	waitanimation
	openpartyscreen BS_TARGET, BattleScript_EmergencyExitRet
	switchoutabilities BS_TARGET
	waitstate
	switchhandleorder BS_TARGET, 2
	returntoball BS_TARGET
	getswitchedmondata BS_TARGET
	switchindataupdate BS_TARGET
	hpthresholds BS_TARGET
	printstring STRINGID_SWITCHINMON
	switchinanim BS_TARGET, TRUE
	waitstate
	switchineffects BS_TARGET
BattleScript_EmergencyExitRet:
	return
	
BattleScript_EmergencyExitWild::
	pause 5
	call BattleScript_AbilityPopUp
	pause B_WAIT_TIME_LONG
BattleScript_EmergencyExitWildNoPopUp::
	playanimation BS_TARGET, B_ANIM_SLIDE_OFFSCREEN, NULL
	waitanimation
	setoutcomeonteleport BS_TARGET
	finishaction
	return

BattleScript_TraceActivates::
	pause B_WAIT_TIME_SHORT
	call BattleScript_AbilityPopUp
	printstring STRINGID_PKMNTRACED
	waitmessage B_WAIT_TIME_LONG
	settracedability BS_SCRIPTING
	switchinabilities BS_SCRIPTING
	return

BattleScript_TraceActivatesEnd3::
	call BattleScript_TraceActivates
	end3

BattleScript_ReceiverActivates::
	call BattleScript_AbilityPopUp
	printstring STRINGID_RECEIVERABILITYTAKEOVER
	waitmessage B_WAIT_TIME_LONG
	settracedability BS_ABILITY_BATTLER
	return
	
BattleScript_AbilityHpHeal:
	call BattleScript_AbilityPopUp
	printstring STRINGID_PKMNSXRESTOREDHPALITTLE2
	waitmessage B_WAIT_TIME_LONG
	orword gHitMarker, HITMARKER_IGNORE_SUBSTITUTE
	healthbarupdate BS_ATTACKER
	datahpupdate BS_ATTACKER
	return

BattleScript_RainDishActivates::
	call BattleScript_AbilityHpHeal
	end3
	
BattleScript_CheekPouchActivates::
	copybyte sSAVED_BATTLER, gBattlerAttacker
	copybyte gBattlerAttacker, gBattlerAbility
	call BattleScript_AbilityHpHeal
	copybyte gBattlerAttacker, sSAVED_BATTLER
	return

BattleScript_HarvestActivates::
	pause 5
	call BattleScript_AbilityPopUp
	printstring STRINGID_HARVESTBERRY
	waitmessage B_WAIT_TIME_LONG
	end3

BattleScript_SolarPowerActivates::
	orword gHitMarker, HITMARKER_IGNORE_SUBSTITUTE | HITMARKER_x100000
	call BattleScript_AbilityPopUp
	healthbarupdate BS_ATTACKER
	datahpupdate BS_ATTACKER
	printstring STRINGID_SOLARPOWERHPDROP
	waitmessage B_WAIT_TIME_LONG
	tryfaintmon BS_ATTACKER, FALSE, NULL
	end3
	
BattleScript_HealerActivates::
	call BattleScript_AbilityPopUp
	curestatus BS_SCRIPTING
	updatestatusicon BS_SCRIPTING
	printstring STRINGID_HEALERCURE
	waitmessage B_WAIT_TIME_LONG
	end3

BattleScript_SandstreamActivates::
	pause B_WAIT_TIME_SHORT
	call BattleScript_AbilityPopUp
	printstring STRINGID_PKMNSXWHIPPEDUPSANDSTORM
	waitstate
	playanimation BS_BATTLER_0, B_ANIM_SANDSTORM_CONTINUES, NULL
	call BattleScript_WeatherFormChanges
	end3

BattleScript_SandSpitActivates::
	pause B_WAIT_TIME_SHORT
	call BattleScript_AbilityPopUp
	printstring STRINGID_ASANDSTORMKICKEDUP
	waitstate
	playanimation BS_BATTLER_0, B_ANIM_SANDSTORM_CONTINUES, NULL
	call BattleScript_WeatherFormChanges
	return

BattleScript_ShedSkinActivates::
	call BattleScript_AbilityPopUp
	printstring STRINGID_PKMNSXCUREDYPROBLEM
	waitmessage B_WAIT_TIME_LONG
	updatestatusicon BS_ATTACKER
	end3

BattleScript_WeatherFormChanges::
	setbyte sBATTLER, 0
BattleScript_WeatherFormChangesLoop::
	trycastformdatachange
	addbyte sBATTLER, 1
	jumpifbytenotequal sBATTLER, gBattlersCount, BattleScript_WeatherFormChangesLoop
	return

BattleScript_CastformChange::
	call BattleScript_DoCastformChange
	end3

BattleScript_DoCastformChange::
	copybyte gBattlerAbility, sBATTLER
	call BattleScript_AbilityPopUp
	docastformchangeanimation
	waitstate
	printstring STRINGID_PKMNTRANSFORMED
	waitmessage B_WAIT_TIME_LONG
	return
	
BattleScript_TryAdrenalineOrb:
	jumpifnoholdeffect BS_TARGET, HOLD_EFFECT_ADRENALINE_ORB, BattleScript_TryAdrenalineOrbRet
	jumpifstat BS_TARGET, CMP_EQUAL, STAT_SPEED, 12, BattleScript_TryAdrenalineOrbRet
	setstatchanger STAT_SPEED, 1, FALSE
	statbuffchange STAT_BUFF_NOT_PROTECT_AFFECTED | MOVE_EFFECT_CERTAIN | STAT_BUFF_ALLOW_PTR, BattleScript_TryAdrenalineOrbRet
	playanimation BS_TARGET, B_ANIM_HELD_ITEM_EFFECT, NULL
	setgraphicalstatchangevalues
	playanimation BS_TARGET, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
	copybyte sBATTLER, gBattlerTarget
	setlastuseditem BS_TARGET
	printstring STRINGID_USINGITEMSTATOFPKMNROSE
	waitmessage B_WAIT_TIME_LONG
	removeitem BS_TARGET
BattleScript_TryAdrenalineOrbRet:
	return

BattleScript_IntimidateActivatesEnd3::
	call BattleScript_PauseIntimidateActivates
	end3

BattleScript_PauseIntimidateActivates:
	pause B_WAIT_TIME_SHORT
BattleScript_IntimidateActivates::
	setbyte gBattlerTarget, 0
	call BattleScript_AbilityPopUp
BattleScript_IntimidateActivatesLoop:
	setstatchanger STAT_ATK, 1, TRUE
	trygetintimidatetarget BattleScript_IntimidateActivatesReturn
	jumpifstatus2 BS_TARGET, STATUS2_SUBSTITUTE, BattleScript_IntimidateActivatesLoopIncrement
	jumpifability BS_TARGET, ABILITY_CLEAR_BODY, BattleScript_IntimidatePrevented
	jumpifability BS_TARGET, ABILITY_HYPER_CUTTER, BattleScript_IntimidatePrevented
	jumpifability BS_TARGET, ABILITY_WHITE_SMOKE, BattleScript_IntimidatePrevented
.if B_UPDATED_INTIMIDATE >= GEN_8
	jumpifability BS_TARGET, ABILITY_INNER_FOCUS, BattleScript_IntimidatePrevented
	jumpifability BS_TARGET, ABILITY_SCRAPPY, BattleScript_IntimidatePrevented
	jumpifability BS_TARGET, ABILITY_OWN_TEMPO, BattleScript_IntimidatePrevented
	jumpifability BS_TARGET, ABILITY_OBLIVIOUS, BattleScript_IntimidatePrevented
.endif
	statbuffchange STAT_BUFF_NOT_PROTECT_AFFECTED | STAT_BUFF_ALLOW_PTR, BattleScript_IntimidateActivatesLoopIncrement
	jumpifbyte CMP_GREATER_THAN, cMULTISTRING_CHOOSER, 1, BattleScript_IntimidateActivatesLoopIncrement
	setgraphicalstatchangevalues
	playanimation BS_TARGET, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
	printstring STRINGID_PKMNCUTSATTACKWITH
	waitmessage B_WAIT_TIME_LONG
	call BattleScript_TryAdrenalineOrb
BattleScript_IntimidateActivatesLoopIncrement:
	addbyte gBattlerTarget, 1
	goto BattleScript_IntimidateActivatesLoop
BattleScript_IntimidateActivatesReturn:
	return
BattleScript_IntimidatePrevented:
	pause B_WAIT_TIME_SHORT
	call BattleScript_AbilityPopUp
	setbyte gBattleCommunication STAT_ATK
	stattextbuffer BS_ATTACKER
	printstring STRINGID_STATWASNOTLOWERED
	waitmessage B_WAIT_TIME_LONG
	call BattleScript_TryAdrenalineOrb
	goto BattleScript_IntimidateActivatesLoopIncrement

BattleScript_DroughtActivates::
	pause B_WAIT_TIME_SHORT
	call BattleScript_AbilityPopUp
	printstring STRINGID_PKMNSXINTENSIFIEDSUN
	waitstate
	playanimation BS_BATTLER_0, B_ANIM_SUN_CONTINUES, NULL
	call BattleScript_WeatherFormChanges
	end3

BattleScript_SnowWarningActivates::
	pause B_WAIT_TIME_SHORT
	call BattleScript_AbilityPopUp
	printstring STRINGID_SNOWWARNINGHAIL
	waitstate
	playanimation BS_BATTLER_0, B_ANIM_HAIL_CONTINUES, NULL
	call BattleScript_WeatherFormChanges
	end3

BattleScript_ElectricSurgeActivates::
	pause B_WAIT_TIME_SHORT
	call BattleScript_AbilityPopUp
	printstring STRINGID_TERRAINBECOMESELECTRIC
	waitmessage B_WAIT_TIME_LONG
	playanimation BS_SCRIPTING, B_ANIM_RESTORE_BG, NULL
	end3

BattleScript_MistySurgeActivates::
	pause B_WAIT_TIME_SHORT
	call BattleScript_AbilityPopUp
	printstring STRINGID_TERRAINBECOMESMISTY
	waitmessage B_WAIT_TIME_LONG
	playanimation BS_SCRIPTING, B_ANIM_RESTORE_BG, NULL
	end3

BattleScript_GrassySurgeActivates::
	pause B_WAIT_TIME_SHORT
	call BattleScript_AbilityPopUp
	printstring STRINGID_TERRAINBECOMESGRASSY
	waitmessage B_WAIT_TIME_LONG
	playanimation BS_SCRIPTING, B_ANIM_RESTORE_BG, NULL
	end3

BattleScript_PsychicSurgeActivates::
	pause B_WAIT_TIME_SHORT
	call BattleScript_AbilityPopUp
	printstring STRINGID_TERRAINBECOMESPSYCHIC
	waitmessage B_WAIT_TIME_LONG
	playanimation BS_SCRIPTING, B_ANIM_RESTORE_BG, NULL
	end3

BattleScript_BadDreamsActivates::
	setbyte gBattlerTarget, 0
	call BattleScript_AbilityPopUp
BattleScript_BadDreamsLoop:
	trygetbaddreamstarget BattleScript_BadDreamsEnd
	dmg_1_8_targethp
	orword gHitMarker, HITMARKER_IGNORE_SUBSTITUTE | HITMARKER_x100000
	printstring STRINGID_BADDREAMSDMG
	waitmessage B_WAIT_TIME_LONG
	jumpifability BS_TARGET, ABILITY_MAGIC_GUARD, BattleScript_BadDreamsIncrement
	healthbarupdate BS_TARGET
	datahpupdate BS_TARGET
	tryfaintmon BS_TARGET, FALSE, NULL
	atk24 BattleScript_BadDreamsIncrement
BattleScript_BadDreamsIncrement:
	addbyte gBattlerTarget, 1
	goto BattleScript_BadDreamsLoop
BattleScript_BadDreamsEnd:
	end3

BattleScript_TookAttack::
	attackstring
	pause B_WAIT_TIME_SHORT
	printstring STRINGID_PKMNSXTOOKATTACK
	waitmessage B_WAIT_TIME_LONG
	orword gHitMarker, HITMARKER_ATTACKSTRING_PRINTED
	return

BattleScript_SturdyPreventsOHKO::
	pause B_WAIT_TIME_SHORT
	call BattleScript_AbilityPopUp
	printstring STRINGID_PKMNPROTECTEDBY
	pause B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_DampStopsExplosion::
	pause B_WAIT_TIME_SHORT
	copybyte gBattlerAbility, gBattlerTarget
	call BattleScript_AbilityPopUp
	printstring STRINGID_PKMNPREVENTSUSAGE
	pause B_WAIT_TIME_LONG
	moveendto MOVEEND_NEXT_TARGET
	moveendcase MOVEEND_CLEAR_BITS
	end

BattleScript_MoveHPDrain_PPLoss::
	ppreduce
BattleScript_MoveHPDrain::
	attackstring
	pause B_WAIT_TIME_SHORT
	call BattleScript_AbilityPopUp
	orword gHitMarker, HITMARKER_IGNORE_SUBSTITUTE
	healthbarupdate BS_TARGET
	datahpupdate BS_TARGET
	printstring STRINGID_PKMNRESTOREDHPUSING
	waitmessage B_WAIT_TIME_LONG
	orhalfword gMoveResultFlags, MOVE_RESULT_DOESNT_AFFECT_FOE
	goto BattleScript_MoveEnd

BattleScript_MoveStatDrain_PPLoss::
	ppreduce
BattleScript_MoveStatDrain::
	attackstring
	pause B_WAIT_TIME_SHORT
	call BattleScript_AbilityPopUp
	setgraphicalstatchangevalues
	playanimation BS_TARGET, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
	waitanimation
	printstring STRINGID_TARGETABILITYSTATRAISE
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_MonMadeMoveUseless_PPLoss::
	ppreduce
BattleScript_MonMadeMoveUseless::
	attackstring
	pause B_WAIT_TIME_SHORT
	call BattleScript_AbilityPopUp
	printstring STRINGID_PKMNSXMADEYUSELESS
	waitmessage B_WAIT_TIME_LONG
	orhalfword gMoveResultFlags, MOVE_RESULT_DOESNT_AFFECT_FOE
	goto BattleScript_MoveEnd

BattleScript_FlashFireBoost_PPLoss::
	ppreduce
BattleScript_FlashFireBoost::
	attackstring
	pause B_WAIT_TIME_SHORT
	call BattleScript_AbilityPopUp
	printfromtable gFlashFireStringIds
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_AbilityPreventsPhasingOut::
	pause B_WAIT_TIME_SHORT
	call BattleScript_AbilityPopUp
	printstring STRINGID_PKMNANCHORSITSELFWITH
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_AbilityNoStatLoss::
	pause B_WAIT_TIME_SHORT
	call BattleScript_AbilityPopUp
	printstring STRINGID_PKMNPREVENTSSTATLOSSWITH
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_BRNPrevention::
	pause B_WAIT_TIME_SHORT
	printfromtable gBRNPreventionStringIds
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_PRLZPrevention::
	pause B_WAIT_TIME_SHORT
	printfromtable gPRLZPreventionStringIds
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_PSNPrevention::
	pause B_WAIT_TIME_SHORT
	printfromtable gPSNPreventionStringIds
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_ObliviousPreventsAttraction::
	pause B_WAIT_TIME_SHORT
	call BattleScript_AbilityPopUp
	printstring STRINGID_PKMNPREVENTSROMANCEWITH
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_FlinchPrevention::
	pause B_WAIT_TIME_SHORT
	call BattleScript_AbilityPopUp
	printstring STRINGID_PKMNSXPREVENTSFLINCHING
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_OwnTempoPrevents::
	pause B_WAIT_TIME_SHORT
	call BattleScript_AbilityPopUp
	printstring STRINGID_PKMNPREVENTSCONFUSIONWITH
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_SoundproofProtected::
	attackstring
	ppreduce
	pause B_WAIT_TIME_SHORT
	call BattleScript_AbilityPopUp
	printstring STRINGID_PKMNSXBLOCKSY
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_DazzlingProtected::
	attackstring
	ppreduce
	pause B_WAIT_TIME_SHORT
	call BattleScript_AbilityPopUp
	printstring STRINGID_POKEMONCANNOTUSEMOVE
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_MoveUsedPsychicTerrainPrevents::
	printstring STRINGID_POKEMONCANNOTUSEMOVE
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_GrassyTerrainHeals::
	setbyte gBattleCommunication, 0
BattleScript_GrassyTerrainLoop:
	copyarraywithindex gBattlerAttacker, gBattlerByTurnOrder, gBattleCommunication, 1
	checkgrassyterrainheal BS_ATTACKER, BattleScript_GrassyTerrainLoopIncrement
	printstring STRINGID_GRASSYTERRAINHEALS
	waitmessage B_WAIT_TIME_LONG
BattleScript_GrassyTerrainHpChange:
	orword gHitMarker, HITMARKER_x20 | HITMARKER_IGNORE_SUBSTITUTE | HITMARKER_x100000
	healthbarupdate BS_ATTACKER
	datahpupdate BS_ATTACKER
BattleScript_GrassyTerrainLoopIncrement::
	addbyte gBattleCommunication, 1
	jumpifbytenotequal gBattleCommunication, gBattlersCount, BattleScript_GrassyTerrainLoop
BattleScript_GrassyTerrainLoopEnd::
	bicword gHitMarker, HITMARKER_x20 | HITMARKER_IGNORE_SUBSTITUTE | HITMARKER_x100000
	jumpifword CMP_COMMON_BITS, gFieldStatuses, STATUS_FIELD_TERRAIN_PERMANENT, BattleScript_GrassyTerrainHealEnd
	jumpifbyte CMP_EQUAL, gFieldTimers + 5, 0, BattleScript_GrassyTerrainEnds
BattleScript_GrassyTerrainHealEnd:
	end2

BattleScript_AbilityNoSpecificStatLoss::
	pause B_WAIT_TIME_SHORT
	call BattleScript_AbilityPopUp
	printstring STRINGID_PKMNSXPREVENTSYLOSS
	waitmessage B_WAIT_TIME_LONG
	setbyte cMULTISTRING_CHOOSER, B_MSG_STAT_FELL_EMPTY
	return

BattleScript_StickyHoldActivates::
	pause B_WAIT_TIME_SHORT
	call BattleScript_AbilityPopUp
	printstring STRINGID_PKMNSXMADEYINEFFECTIVE
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

BattleScript_ColorChangeActivates::
	call BattleScript_AbilityPopUp
	printstring STRINGID_PKMNCHANGEDTYPEWITH
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_ProteanActivates::
	call BattleScript_AbilityPopUp
	printstring STRINGID_PKMNCHANGEDTYPE
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_CursedBodyActivates::
	call BattleScript_AbilityPopUp
	printstring STRINGID_CUSEDBODYDISABLED
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_MummyActivates::
	call BattleScript_AbilityPopUp
	printstring STRINGID_ATTACKERACQUIREDABILITY
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_TargetsStatWasMaxedOut::
	call BattleScript_AbilityPopUp
	statbuffchange STAT_BUFF_NOT_PROTECT_AFFECTED | MOVE_EFFECT_CERTAIN, NULL
	setgraphicalstatchangevalues
	playanimation BS_TARGET, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
	printstring STRINGID_TARGETSSTATWASMAXEDOUT
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_BattlerAbilityStatRaiseOnSwitchIn::
	copybyte gBattlerAbility, gBattlerAttacker
	call BattleScript_AbilityPopUp
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_NOT_PROTECT_AFFECTED | MOVE_EFFECT_CERTAIN, NULL
	setgraphicalstatchangevalues
	playanimation BS_ATTACKER, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
	waitanimation
	printstring STRINGID_BATTLERABILITYRAISEDSTAT
	waitmessage B_WAIT_TIME_LONG
	end3

BattleScript_TargetAbilityStatRaiseOnMoveEnd::
	call BattleScript_AbilityPopUp
	statbuffchange STAT_BUFF_NOT_PROTECT_AFFECTED | MOVE_EFFECT_CERTAIN, NULL
	setgraphicalstatchangevalues
	playanimation BS_TARGET, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
	waitanimation
	printstring STRINGID_ABILITYRAISEDSTATDRASTICALLY
	waitmessage B_WAIT_TIME_LONG
	return
	
BattleScript_ScriptingAbilityStatRaise::
	copybyte gBattlerAbility, sBATTLER
	call BattleScript_AbilityPopUp
	copybyte sSAVED_DMG, gBattlerAttacker
	copybyte gBattlerAttacker, sBATTLER
	statbuffchange STAT_BUFF_NOT_PROTECT_AFFECTED | MOVE_EFFECT_CERTAIN, NULL
	setgraphicalstatchangevalues
	playanimation BS_SCRIPTING, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
	waitanimation
	printstring STRINGID_ATTACKERABILITYSTATRAISE
	waitmessage B_WAIT_TIME_LONG
	copybyte gBattlerAttacker, sSAVED_DMG
	return

BattleScript_WeakArmorActivates::
	call BattleScript_AbilityPopUp
	setstatchanger STAT_DEF, 1, TRUE
	statbuffchange STAT_BUFF_ALLOW_PTR, BattleScript_WeakArmorActivatesSpeed
	jumpifbyte CMP_LESS_THAN, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_DECREASE, BattleScript_WeakArmorDefAnim
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_FELL_EMPTY, BattleScript_WeakArmorActivatesSpeed
	pause 16
	printfromtable gStatDownStringIds
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_WeakArmorActivatesSpeed
BattleScript_WeakArmorDefAnim:
	setgraphicalstatchangevalues
	playanimation BS_TARGET, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
	printstring STRINGID_TARGETABILITYSTATLOWER
	waitmessage B_WAIT_TIME_LONG
BattleScript_WeakArmorActivatesSpeed:
	setstatchanger STAT_SPEED, 2, FALSE
	statbuffchange STAT_BUFF_ALLOW_PTR, BattleScript_WeakArmorActivatesEnd
	jumpifbyte CMP_LESS_THAN, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_WeakArmorSpeedAnim
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_ROSE_EMPTY, BattleScript_WeakArmorActivatesEnd
	pause 16
	printstring STRINGID_TARGETSTATWONTGOHIGHER
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_WeakArmorActivatesEnd
BattleScript_WeakArmorSpeedAnim:
	setgraphicalstatchangevalues
	playanimation BS_TARGET, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
	printstring STRINGID_TARGETABILITYSTATRAISE
	waitmessage B_WAIT_TIME_LONG
BattleScript_WeakArmorActivatesEnd:
	return

BattleScript_RaiseStatOnFaintingTarget::
	copybyte gBattlerAbility, gBattlerAttacker
	call BattleScript_AbilityPopUp
	setgraphicalstatchangevalues
	playanimation BS_ATTACKER, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
	waitanimation
	printstring STRINGID_LASTABILITYRAISEDSTAT
	waitmessage B_WAIT_TIME_LONG
	return	

BattleScript_AttackerAbilityStatRaise::
	copybyte gBattlerAbility, gBattlerAttacker
	call BattleScript_AbilityPopUp
	setgraphicalstatchangevalues
	playanimation BS_ATTACKER, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
	waitanimation
	printstring STRINGID_ATTACKERABILITYSTATRAISE
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_FellStingerRaisesStat::
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_FellStingerRaisesAtkEnd
	jumpifbyte CMP_GREATER_THAN, cMULTISTRING_CHOOSER, B_MSG_DEFENDER_STAT_ROSE, BattleScript_FellStingerRaisesAtkEnd
	setgraphicalstatchangevalues
	playanimation BS_ATTACKER, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_FellStingerRaisesAtkEnd:
	return

BattleScript_AttackerAbilityStatRaiseEnd3::
	call BattleScript_AttackerAbilityStatRaise
	end3

BattleScript_SwitchInAbilityMsg::
	call BattleScript_AbilityPopUp
	printfromtable gSwitchInAbilityStringIds
	waitmessage B_WAIT_TIME_LONG
	end3

BattleScript_ActivateAsOne::
	call BattleScript_AbilityPopUp
	printfromtable gSwitchInAbilityStringIds
	waitmessage B_WAIT_TIME_LONG
	@ show unnerve
	sethword sABILITY_OVERWRITE, ABILITY_UNNERVE
	setbyte cMULTISTRING_CHOOSER, B_MSG_SWITCHIN_UNNERVE
	call BattleScript_AbilityPopUp
	printfromtable gSwitchInAbilityStringIds
	waitmessage B_WAIT_TIME_LONG
	end3
	
BattleScript_FriskMsgWithPopup::
	copybyte gBattlerAbility, gBattlerAttacker
	call BattleScript_AbilityPopUp
BattleScript_FriskMsg::
	printstring STRINGID_FRISKACTIVATES
	waitmessage B_WAIT_TIME_LONG
	return
	
BattleScript_FriskActivates::
	tryfriskmsg BS_ATTACKER
	end3

BattleScript_ImposterActivates::
	transformdataexecution
	call BattleScript_AbilityPopUp
	playmoveanimation BS_ATTACKER, MOVE_TRANSFORM
	waitanimation
	printstring STRINGID_IMPOSTERTRANSFORM
	waitmessage B_WAIT_TIME_LONG
	end3

BattleScript_HurtAttacker:
	orword gHitMarker, HITMARKER_IGNORE_SUBSTITUTE | HITMARKER_x100000
	healthbarupdate BS_ATTACKER
	datahpupdate BS_ATTACKER
	printstring STRINGID_PKMNHURTSWITH
	waitmessage B_WAIT_TIME_LONG
	tryfaintmon BS_ATTACKER, FALSE, NULL
	return

BattleScript_RoughSkinActivates::
	call BattleScript_AbilityPopUp
	call BattleScript_HurtAttacker
	return

BattleScript_RockyHelmetActivates::
	@ don't play the animation for a fainted mon
	jumpifabsent BS_TARGET, BattleScript_RockyHelmetActivatesDmg
	playanimation BS_TARGET, B_ANIM_HELD_ITEM_EFFECT, NULL
	waitanimation
BattleScript_RockyHelmetActivatesDmg:
	call BattleScript_HurtAttacker
	return

BattleScript_SpikyShieldEffect::
	jumpifabsent BS_ATTACKER, BattleScript_SpikyShieldRet
	orword gHitMarker, HITMARKER_IGNORE_SUBSTITUTE | HITMARKER_x100000
	bichalfword gMoveResultFlags, MOVE_RESULT_NO_EFFECT
	healthbarupdate BS_ATTACKER
	datahpupdate BS_ATTACKER
	printstring STRINGID_PKMNHURTSWITH
	waitmessage B_WAIT_TIME_LONG
	tryfaintmon BS_ATTACKER, FALSE, NULL
BattleScript_SpikyShieldRet::
	return

BattleScript_KingsShieldEffect::
	orword gHitMarker, HITMARKER_IGNORE_SUBSTITUTE | HITMARKER_x100000
	bichalfword gMoveResultFlags, MOVE_RESULT_NO_EFFECT
	seteffectsecondary
	setmoveeffect 0
	copybyte sBATTLER, gBattlerTarget
	copybyte gBattlerTarget, gBattlerAttacker
	copybyte gBattlerAttacker, sBATTLER
	return

BattleScript_BanefulBunkerEffect::
	orword gHitMarker, HITMARKER_IGNORE_SUBSTITUTE | HITMARKER_IGNORE_SAFEGUARD | HITMARKER_x100000
	bichalfword gMoveResultFlags, MOVE_RESULT_NO_EFFECT
	seteffectsecondary
	setmoveeffect 0
	return

BattleScript_CuteCharmActivates::
	call BattleScript_AbilityPopUp
	status2animation BS_ATTACKER, STATUS2_INFATUATION
	printstring STRINGID_PKMNSXINFATUATEDY
	waitmessage B_WAIT_TIME_LONG
	call BattleScript_TryDestinyKnotTarget
	return

BattleScript_AbilityStatusEffect::
	waitstate
	call BattleScript_AbilityPopUp
	seteffectsecondary
	return

BattleScript_DancerActivates::
	call BattleScript_AbilityPopUp
	waitmessage B_WAIT_TIME_SHORT
	setbyte sB_ANIM_TURN, 0
	setbyte sB_ANIM_TARGETS_HIT, 0
	orword gHitMarker, HITMARKER_x800000
	jumptocalledmove TRUE

BattleScript_SynchronizeActivates::
	waitstate
	call BattleScript_AbilityPopUp
	seteffectprimary
	return

BattleScript_NoItemSteal::
	pause B_WAIT_TIME_SHORT
	printstring STRINGID_PKMNSXMADEYINEFFECTIVE
	waitmessage B_WAIT_TIME_LONG
	return

BattleScript_AbilityCuredStatus::
	call BattleScript_AbilityPopUp
	printstring STRINGID_PKMNSXCUREDITSYPROBLEM
	waitmessage B_WAIT_TIME_LONG
	updatestatusicon BS_SCRIPTING
	return

BattleScript_IgnoresWhileAsleep::
	printstring STRINGID_PKMNIGNORESASLEEP
	waitmessage B_WAIT_TIME_LONG
	moveendto MOVEEND_NEXT_TARGET
	end

BattleScript_IgnoresAndUsesRandomMove::
	printstring STRINGID_PKMNIGNOREDORDERS
	waitmessage B_WAIT_TIME_LONG
	jumptocalledmove FALSE

BattleScript_MoveUsedLoafingAround::
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_LOAFING, BattleScript_MoveUsedLoafingAroundMsg
	jumpifbyte CMP_NOT_EQUAL, cMULTISTRING_CHOOSER, B_MSG_INCAPABLE_OF_POWER, BattleScript_MoveUsedLoafingAroundMsg
	setbyte gBattleCommunication, 0
	various24 BS_ATTACKER
	setbyte cMULTISTRING_CHOOSER, B_MSG_INCAPABLE_OF_POWER
BattleScript_MoveUsedLoafingAroundMsg::
	printfromtable gInobedientStringIds
	waitmessage B_WAIT_TIME_LONG
	moveendto MOVEEND_NEXT_TARGET
	end	
BattleScript_TruantLoafingAround::
	call BattleScript_AbilityPopUp
	goto BattleScript_MoveUsedLoafingAroundMsg

BattleScript_IgnoresAndFallsAsleep::
	printstring STRINGID_PKMNBEGANTONAP
	waitmessage B_WAIT_TIME_LONG
	setmoveeffect MOVE_EFFECT_SLEEP | MOVE_EFFECT_AFFECTS_USER
	seteffectprimary
	moveendto MOVEEND_NEXT_TARGET
	end

BattleScript_IgnoresAndHitsItself::
	printstring STRINGID_PKMNWONTOBEY
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_DoSelfConfusionDmg

BattleScript_SubstituteFade::
	playanimation BS_TARGET, B_ANIM_SUBSTITUTE_FADE, NULL
	printstring STRINGID_PKMNSUBSTITUTEFADED
	return

BattleScript_BerryCurePrlzEnd2::
	call BattleScript_BerryCureParRet
	end2

BattleScript_BerryCureParRet::
	playanimation BS_SCRIPTING, B_ANIM_HELD_ITEM_EFFECT, NULL
	printstring STRINGID_PKMNSITEMCUREDPARALYSIS
	waitmessage B_WAIT_TIME_LONG
	updatestatusicon BS_SCRIPTING
	removeitem BS_SCRIPTING
	return

BattleScript_BerryCurePsnEnd2::
	call BattleScript_BerryCurePsnRet
	end2

BattleScript_BerryCurePsnRet::
	playanimation BS_SCRIPTING, B_ANIM_HELD_ITEM_EFFECT, NULL
	printstring STRINGID_PKMNSITEMCUREDPOISON
	waitmessage B_WAIT_TIME_LONG
	updatestatusicon BS_SCRIPTING
	removeitem BS_SCRIPTING
	return

BattleScript_BerryCureBrnEnd2::
	call BattleScript_BerryCureBrnRet
	end2

BattleScript_BerryCureBrnRet::
	playanimation BS_SCRIPTING, B_ANIM_HELD_ITEM_EFFECT, NULL
	printstring STRINGID_PKMNSITEMHEALEDBURN
	waitmessage B_WAIT_TIME_LONG
	updatestatusicon BS_SCRIPTING
	removeitem BS_SCRIPTING
	return

BattleScript_BerryCureFrzEnd2::
	call BattleScript_BerryCureFrzRet
	end2

BattleScript_BerryCureFrzRet::
	playanimation BS_SCRIPTING, B_ANIM_HELD_ITEM_EFFECT, NULL
	printstring STRINGID_PKMNSITEMDEFROSTEDIT
	waitmessage B_WAIT_TIME_LONG
	updatestatusicon BS_SCRIPTING
	removeitem BS_SCRIPTING
	return

BattleScript_BerryCureSlpEnd2::
	call BattleScript_BerryCureSlpRet
	end2

BattleScript_BerryCureSlpRet::
	playanimation BS_SCRIPTING, B_ANIM_HELD_ITEM_EFFECT, NULL
	printstring STRINGID_PKMNSITEMWOKEIT
	waitmessage B_WAIT_TIME_LONG
	updatestatusicon BS_SCRIPTING
	removeitem BS_SCRIPTING
	return

BattleScript_GemActivates::
	playanimation BS_ATTACKER, B_ANIM_HELD_ITEM_EFFECT, NULL
	waitanimation
	printstring STRINGID_GEMACTIVATES
	waitmessage B_WAIT_TIME_LONG
	removeitem BS_ATTACKER
	return

BattleScript_BerryReduceDmg::
	playanimation BS_TARGET, B_ANIM_HELD_ITEM_EFFECT, NULL
	waitanimation
	printstring STRINGID_TARGETATEITEM
	waitmessage B_WAIT_TIME_LONG
	removeitem BS_TARGET
	return

BattleScript_PrintBerryReduceString::
	waitmessage B_WAIT_TIME_LONG
	printstring STRINGID_BERRYDMGREDUCES
	return

BattleScript_BerryCureConfusionEnd2::
	call BattleScript_BerryCureConfusionRet
	end2

BattleScript_BerryCureConfusionRet::
	playanimation BS_SCRIPTING, B_ANIM_HELD_ITEM_EFFECT, NULL
	printstring STRINGID_PKMNSITEMSNAPPEDOUT
	waitmessage B_WAIT_TIME_LONG
	removeitem BS_SCRIPTING
	return

BattleScript_BerryCureChosenStatusEnd2::
	call BattleScript_BerryCureChosenStatusRet
	end2

BattleScript_BerryCureChosenStatusRet::
	playanimation BS_SCRIPTING, B_ANIM_HELD_ITEM_EFFECT, NULL
	printfromtable gBerryEffectStringIds
	waitmessage B_WAIT_TIME_LONG
	updatestatusicon BS_SCRIPTING
	removeitem BS_SCRIPTING
	return

BattleScript_WhiteHerbEnd2::
	call BattleScript_WhiteHerbRet
	end2

BattleScript_WhiteHerbRet::
	playanimation BS_SCRIPTING, B_ANIM_HELD_ITEM_EFFECT, NULL
	printstring STRINGID_PKMNSITEMRESTOREDSTATUS
	waitmessage B_WAIT_TIME_LONG
	removeitem BS_SCRIPTING
	return
	
BattleScript_ItemHealHP_RemoveItemRet::
	jumpifability BS_SCRIPTING, ABILITY_RIPEN, BattleScript_ItemHealHP_RemoveItemRet_AbilityPopUp
	goto BattleScript_ItemHealHP_RemoveItemRet_Anim
BattleScript_ItemHealHP_RemoveItemRet_AbilityPopUp:
	call BattleScript_AbilityPopUp
BattleScript_ItemHealHP_RemoveItemRet_Anim:
	playanimation BS_SCRIPTING, B_ANIM_HELD_ITEM_EFFECT, NULL
	printstring STRINGID_PKMNSITEMRESTOREDHEALTH
	waitmessage B_WAIT_TIME_LONG
	orword gHitMarker, HITMARKER_IGNORE_SUBSTITUTE
	healthbarupdate BS_SCRIPTING
	datahpupdate BS_SCRIPTING
	removeitem BS_SCRIPTING
	return

BattleScript_ItemHealHP_RemoveItemEnd2::
	jumpifability BS_ATTACKER, ABILITY_RIPEN, BattleScript_ItemHealHP_RemoveItemEnd2_AbilityPopUp
	goto BattleScript_ItemHealHP_RemoveItemEnd2_Anim
BattleScript_ItemHealHP_RemoveItemEnd2_AbilityPopUp:
	call BattleScript_AbilityPopUp
BattleScript_ItemHealHP_RemoveItemEnd2_Anim:
	playanimation BS_ATTACKER, B_ANIM_HELD_ITEM_EFFECT, NULL
	printstring STRINGID_PKMNSITEMRESTOREDHEALTH
	waitmessage B_WAIT_TIME_LONG
	orword gHitMarker, HITMARKER_IGNORE_SUBSTITUTE
	healthbarupdate BS_ATTACKER
	datahpupdate BS_ATTACKER
	removeitem BS_ATTACKER
	end2

BattleScript_BerryPPHealEnd2::
	jumpifability BS_ATTACKER, ABILITY_RIPEN, BattleScript_BerryPPHealEnd2_AbilityPopup
	goto BattleScript_BerryPPHealEnd2_Anim
BattleScript_BerryPPHealEnd2_AbilityPopup:
	call BattleScript_AbilityPopUp
BattleScript_BerryPPHealEnd2_Anim:
	playanimation BS_ATTACKER, B_ANIM_HELD_ITEM_EFFECT, NULL
	printstring STRINGID_PKMNSITEMRESTOREDPP
	waitmessage B_WAIT_TIME_LONG
	removeitem BS_ATTACKER
	end2

BattleScript_ItemHealHP_End2::
	call BattleScript_ItemHealHP_Ret
	end2

BattleScript_AirBaloonMsgIn::
	printstring STRINGID_AIRBALLOONFLOAT
	waitmessage B_WAIT_TIME_LONG
	end3

BattleScript_AirBaloonMsgPop::
	printstring STRINGID_AIRBALLOONPOP
	waitmessage B_WAIT_TIME_LONG
	removeitem BS_TARGET
	return

BattleScript_ItemHurtRet::
	orword gHitMarker, HITMARKER_IGNORE_SUBSTITUTE | HITMARKER_x100000
	healthbarupdate BS_ATTACKER
	datahpupdate BS_ATTACKER
	printstring STRINGID_HURTBYITEM
	waitmessage B_WAIT_TIME_LONG
	tryfaintmon BS_ATTACKER, FALSE, NULL
	return

BattleScript_ItemHurtEnd2::
	playanimation BS_ATTACKER, B_ANIM_MON_HIT, NULL
	waitanimation
	call BattleScript_ItemHurtRet
	end2

BattleScript_ItemHealHP_Ret::
	playanimation BS_ATTACKER, B_ANIM_HELD_ITEM_EFFECT, NULL
	printstring STRINGID_PKMNSITEMRESTOREDHPALITTLE
	waitmessage B_WAIT_TIME_LONG
	orword gHitMarker, HITMARKER_IGNORE_SUBSTITUTE
	healthbarupdate BS_ATTACKER
	datahpupdate BS_ATTACKER
	return

BattleScript_SelectingNotAllowedMoveChoiceItem::
	printselectionstring STRINGID_ITEMALLOWSONLYYMOVE
	endselectionscript

BattleScript_SelectingNotAllowedMoveAssaultVest::
	printselectionstring STRINGID_ASSAULTVESTDOESNTALLOW
	endselectionscript

BattleScript_HangedOnMsg::
	playanimation BS_TARGET, B_ANIM_HANGED_ON, NULL
	printstring STRINGID_PKMNHUNGONWITHX
	waitmessage B_WAIT_TIME_LONG
	jumpifnoholdeffect BS_TARGET, HOLD_EFFECT_FOCUS_SASH, BattleScript_HangedOnMsgRet
	removeitem BS_TARGET
BattleScript_HangedOnMsgRet:
	return

BattleScript_BerryConfuseHealEnd2::
	jumpifability BS_ATTACKER, ABILITY_RIPEN, BattleScript_BerryConfuseHealEnd2_AbilityPopup
	goto BattleScript_BerryConfuseHealEnd2_Anim
BattleScript_BerryConfuseHealEnd2_AbilityPopup:
	call BattleScript_AbilityPopUp
BattleScript_BerryConfuseHealEnd2_Anim:
	playanimation BS_ATTACKER, B_ANIM_HELD_ITEM_EFFECT, NULL
	printstring STRINGID_PKMNSITEMRESTOREDHEALTH
	waitmessage B_WAIT_TIME_LONG
	orword gHitMarker, HITMARKER_IGNORE_SUBSTITUTE
	healthbarupdate BS_ATTACKER
	datahpupdate BS_ATTACKER
	printstring STRINGID_FORXCOMMAYZ
	waitmessage B_WAIT_TIME_LONG
	setmoveeffect MOVE_EFFECT_CONFUSION | MOVE_EFFECT_AFFECTS_USER
	seteffectprimary
	removeitem BS_ATTACKER
	end2

BattleScript_BerryConfuseHealRet::
	jumpifability BS_SCRIPTING, ABILITY_RIPEN, BattleScript_BerryConfuseHealRet_AbilityPopup
	goto BattleScript_BerryConfuseHealRet_Anim
BattleScript_BerryConfuseHealRet_AbilityPopup:
	call BattleScript_AbilityPopUp
BattleScript_BerryConfuseHealRet_Anim:
	playanimation BS_SCRIPTING, B_ANIM_HELD_ITEM_EFFECT, NULL
	printstring STRINGID_PKMNSITEMRESTOREDHEALTH
	waitmessage B_WAIT_TIME_LONG
	orword gHitMarker, HITMARKER_IGNORE_SUBSTITUTE
	healthbarupdate BS_SCRIPTING
	datahpupdate BS_SCRIPTING
	printstring STRINGID_FORXCOMMAYZ
	waitmessage B_WAIT_TIME_LONG
	setmoveeffect MOVE_EFFECT_CONFUSION | MOVE_EFFECT_AFFECTS_USER
	seteffectprimary
	removeitem BS_SCRIPTING
	return

BattleScript_BerryStatRaiseEnd2::
	jumpifability BS_ATTACKER, ABILITY_RIPEN, BattleScript_BerryStatRaiseEnd2_AbilityPopup
	goto BattleScript_BerryStatRaiseEnd2_Anim
BattleScript_BerryStatRaiseEnd2_AbilityPopup:
	call BattleScript_AbilityPopUp
BattleScript_BerryStatRaiseEnd2_Anim:
	playanimation BS_ATTACKER, B_ANIM_HELD_ITEM_EFFECT, NULL
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_BUFF_ALLOW_PTR, BattleScript_BerryStatRaiseDoStatUp
BattleScript_BerryStatRaiseDoStatUp::
	setbyte cMULTISTRING_CHOOSER, B_MSG_STAT_ROSE_ITEM
	call BattleScript_StatUp
	removeitem BS_ATTACKER
	end2

BattleScript_BerryStatRaiseRet::
	jumpifability BS_SCRIPTING, ABILITY_RIPEN, BattleScript_BerryStatRaiseRet_AbilityPopup
	goto BattleScript_BerryStatRaiseRet_Anim
BattleScript_BerryStatRaiseRet_AbilityPopup:
	call BattleScript_AbilityPopUp
BattleScript_BerryStatRaiseRet_Anim:
	playanimation BS_SCRIPTING, B_ANIM_HELD_ITEM_EFFECT, NULL
	statbuffchange STAT_BUFF_ALLOW_PTR, BattleScript_BerryStatRaiseRet_End
BattleScript_BerryStatRaiseRet_End:
	setbyte cMULTISTRING_CHOOSER, B_MSG_STAT_ROSE_ITEM
	call BattleScript_StatUp
	removeitem BS_SCRIPTING
	return

BattleScript_BerryFocusEnergyEnd2::
	playanimation BS_ATTACKER, B_ANIM_HELD_ITEM_EFFECT, NULL
	printstring STRINGID_PKMNUSEDXTOGETPUMPED
	waitmessage B_WAIT_TIME_LONG
	removeitem BS_ATTACKER
	end2

BattleScript_ActionSelectionItemsCantBeUsed::
	printselectionstring STRINGID_ITEMSCANTBEUSEDNOW
	endselectionscript

BattleScript_FlushMessageBox::
	printstring STRINGID_EMPTYSTRING3
	return

BattleScript_PalacePrintFlavorText::
	setbyte gBattleCommunication + 1, 0
BattleScript_PalaceTryBattlerFlavorText::
	palaceflavortext BS_ATTACKER @ BS_ATTACKER here overwritten by gBattleCommunication + 1
	jumpifbyte CMP_NOT_EQUAL, gBattleCommunication, TRUE, BattleScript_PalaceEndFlavorText
	printfromtable gBattlePalaceFlavorTextTable
	waitmessage B_WAIT_TIME_LONG
BattleScript_PalaceEndFlavorText::
	addbyte gBattleCommunication + 1, 1
	jumpifbytenotequal gBattleCommunication + 1, gBattlersCount, BattleScript_PalaceTryBattlerFlavorText
	setbyte gBattleCommunication, 0
	setbyte gBattleCommunication + 1, 0
	end2

BattleScript_ArenaTurnBeginning::
	waitcry BS_ATTACKER
	volumedown
	playse SE_ARENA_TIMEUP1
	pause 8
	playse SE_ARENA_TIMEUP1
	various14 BS_ATTACKER
	arenajudgmentstring B_MSG_REF_COMMENCE_BATTLE
	arenawaitmessage B_MSG_REF_COMMENCE_BATTLE
	pause B_WAIT_TIME_LONG
	various15 BS_ATTACKER
	volumeup
	end2

@ Unused
BattleScript_ArenaNothingDecided::
	playse SE_DING_DONG
	various14 BS_ATTACKER
	arenajudgmentstring B_MSG_REF_NOTHING_IS_DECIDED
	arenawaitmessage B_MSG_REF_NOTHING_IS_DECIDED
	pause B_WAIT_TIME_LONG
	various15 BS_ATTACKER
	end2

BattleScript_ArenaDoJudgment::
	makevisible BS_PLAYER1
	waitstate
	makevisible BS_OPPONENT1
	waitstate
	volumedown
	playse SE_ARENA_TIMEUP1
	pause 8
	playse SE_ARENA_TIMEUP1
	pause B_WAIT_TIME_LONG
	various14 BS_ATTACKER
	arenajudgmentstring B_MSG_REF_THATS_IT
	arenawaitmessage B_MSG_REF_THATS_IT
	pause B_WAIT_TIME_LONG
	setbyte gBattleCommunication, 0
	arenajudgmentwindow
	pause B_WAIT_TIME_LONG
	arenajudgmentwindow
	arenajudgmentstring B_MSG_REF_JUDGE_MIND
	arenawaitmessage B_MSG_REF_JUDGE_MIND
	arenajudgmentwindow
	arenajudgmentstring B_MSG_REF_JUDGE_SKILL
	arenawaitmessage B_MSG_REF_JUDGE_SKILL
	arenajudgmentwindow
	arenajudgmentstring B_MSG_REF_JUDGE_BODY
	arenawaitmessage B_MSG_REF_JUDGE_BODY
	arenajudgmentwindow
	jumpifbyte CMP_EQUAL, gBattleCommunication + 1, 3, BattleScript_ArenaJudgmentPlayerLoses
	jumpifbyte CMP_EQUAL, gBattleCommunication + 1, 4, BattleScript_ArenaJudgmentDraw
	arenajudgmentstring B_MSG_REF_PLAYER_WON
	arenawaitmessage B_MSG_REF_PLAYER_WON
	arenajudgmentwindow
	various15 BS_ATTACKER
	printstring STRINGID_DEFEATEDOPPONENTBYREFEREE
	waitmessage B_WAIT_TIME_LONG
	playfaintcry BS_OPPONENT1
	waitcry BS_ATTACKER
	dofaintanimation BS_OPPONENT1
	cleareffectsonfaint BS_OPPONENT1
	arenaopponentmonlost
	end2

BattleScript_ArenaJudgmentPlayerLoses:
	arenajudgmentstring B_MSG_REF_OPPONENT_WON
	arenawaitmessage B_MSG_REF_OPPONENT_WON
	arenajudgmentwindow
	various15 BS_ATTACKER
	printstring STRINGID_LOSTTOOPPONENTBYREFEREE
	waitmessage B_WAIT_TIME_LONG
	playfaintcry BS_PLAYER1
	waitcry BS_ATTACKER
	dofaintanimation BS_PLAYER1
	cleareffectsonfaint BS_PLAYER1
	arenaplayermonlost
	end2

BattleScript_ArenaJudgmentDraw:
	arenajudgmentstring B_MSG_REF_DRAW
	arenawaitmessage B_MSG_REF_DRAW
	arenajudgmentwindow
	various15 BS_ATTACKER
	printstring STRINGID_TIEDOPPONENTBYREFEREE
	waitmessage B_WAIT_TIME_LONG
	playfaintcry BS_PLAYER1
	waitcry BS_ATTACKER
	dofaintanimation BS_PLAYER1
	cleareffectsonfaint BS_PLAYER1
	playfaintcry BS_OPPONENT1
	waitcry BS_ATTACKER
	dofaintanimation BS_OPPONENT1
	cleareffectsonfaint BS_OPPONENT1
	arenabothmonlost
	end2

BattleScript_AskIfWantsToForfeitMatch::
	printselectionstring STRINGID_QUESTIONFORFEITMATCH
	forfeityesnobox BS_ATTACKER
	endselectionscript

BattleScript_PrintPlayerForfeited::
	printstring STRINGID_FORFEITEDMATCH
	waitmessage B_WAIT_TIME_LONG
	end2

BattleScript_PrintPlayerForfeitedLinkBattle::
	printstring STRINGID_FORFEITEDMATCH
	waitmessage B_WAIT_TIME_LONG
	endlinkbattle
	waitmessage B_WAIT_TIME_LONG
	end2

BattleScript_TotemFlaredToLife::
	playanimation BS_ATTACKER, B_ANIM_TOTEM_FLARE, NULL
	printstring STRINGID_AURAFLAREDTOLIFE
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_ApplyTotemVarBoost

BattleScript_TotemVar::
	gettotemboost BattleScript_ApplyTotemVarBoost
BattleScript_TotemVarEnd:
	end2
BattleScript_ApplyTotemVarBoost:
	statbuffchange STAT_BUFF_ALLOW_PTR, BattleScript_TotemVarEnd
	setgraphicalstatchangevalues
	playanimation BS_SCRIPTING, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
BattleScript_TotemVarPrintStatMsg:
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_TotemVar  @loop until stats bitfield is empty

BattleScript_AnnounceAirLockCloudNine::
	call BattleScript_AbilityPopUp
	printstring STRINGID_AIRLOCKACTIVATES
	waitmessage B_WAIT_TIME_LONG
	call BattleScript_WeatherFormChanges
	end3

BattleScript_QuickClawActivation::
	printstring STRINGID_EMPTYSTRING3
	waitmessage 1
	playanimation BS_ATTACKER, B_ANIM_HELD_ITEM_EFFECT, NULL
	waitanimation
	printstring STRINGID_CANACTFASTERTHANKSTO
	waitmessage B_WAIT_TIME_LONG
	end2

BattleScript_CustapBerryActivation::
	printstring STRINGID_EMPTYSTRING3
	waitmessage 1
	playanimation BS_ATTACKER, B_ANIM_HELD_ITEM_EFFECT, NULL
	waitanimation
	printstring STRINGID_CANACTFASTERTHANKSTO
	waitmessage B_WAIT_TIME_LONG
	removeitem BS_ATTACKER
	end2

BattleScript_MicleBerryActivateEnd2::
	jumpifability BS_ATTACKER, ABILITY_RIPEN, BattleScript_MicleBerryActivateEnd2_Ripen
	goto BattleScript_MicleBerryActivateEnd2_Anim
BattleScript_MicleBerryActivateEnd2_Ripen:
	call BattleScript_AbilityPopUp
BattleScript_MicleBerryActivateEnd2_Anim:
	playanimation BS_ATTACKER, B_ANIM_HELD_ITEM_EFFECT, NULL
	printstring STRINGID_MICLEBERRYACTIVATES
	waitmessage B_WAIT_TIME_LONG
	removeitem BS_ATTACKER
	end2

BattleScript_MicleBerryActivateRet::
	jumpifability BS_SCRIPTING, ABILITY_RIPEN, BattleScript_MicleBerryActivateRet_Ripen
	goto BattleScript_MicleBerryActivateRet_Anim
BattleScript_MicleBerryActivateRet_Ripen:
	call BattleScript_AbilityPopUp
BattleScript_MicleBerryActivateRet_Anim:
	playanimation BS_SCRIPTING, B_ANIM_HELD_ITEM_EFFECT, NULL
	printstring STRINGID_MICLEBERRYACTIVATES
	waitmessage B_WAIT_TIME_LONG
	removeitem BS_SCRIPTING
	return

BattleScript_JabocaRowapBerryActivates::
	jumpifability BS_TARGET, ABILITY_RIPEN, BattleScript_JabocaRowapBerryActivate_Ripen
	goto BattleScript_JabocaRowapBerryActivate_Anim
BattleScript_JabocaRowapBerryActivate_Ripen:
	call BattleScript_AbilityPopUp
BattleScript_JabocaRowapBerryActivate_Anim:
	jumpifabsent BS_TARGET, BattleScript_JabocaRowapBerryActivate_Dmg	@ dont play the animation for a fainted target
	playanimation BS_TARGET, B_ANIM_HELD_ITEM_EFFECT, NULL
	waitanimation
BattleScript_JabocaRowapBerryActivate_Dmg:
	call BattleScript_HurtAttacker
	removeitem BS_TARGET
	return
