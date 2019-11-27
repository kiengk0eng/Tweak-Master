#include <substrate.h>

%hook ProfileViewController
-(bool) isVIP {
return TRUE;
}

-(bool) isYou {
return TRUE;
}
%end

%hook ProfilePerformancesDataController
-(bool) isThisProfileVIP {
return TRUE;
}

-(void) setIsThisProfileVIP:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook BoostLearnMoreAlertController
-(bool) isVIP {
return TRUE;
}

-(void) setIsVIP:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook ProfilePicButton
-(void) setAllowVIPBadge:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) allowVIPBadge {
return TRUE;
}

-(bool) forceVIPBadge {
return TRUE;
}

-(void) setForceVIPBadge:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook ProfilePerformancesDataController
+(id) isVIP:(bool)arg4 {
arg4 = TRUE;
return %orig;
}
%end

%hook SingRoute
+(id) urlForSubscriptionsWithVIPMode:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook PerformanceUploadState
-(bool) audioEffectIsVIP {
return TRUE;
}

-(bool) videoEffectIsVIP {
return TRUE;
}

-(void) setAudioEffectIsVIP:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(void) setVideoEffectIsVIP:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(void) isVIP:(bool)arg3 {
arg3 = TRUE;
return %orig;
}

-(void) isVIP:(bool)arg5 isALYCE:(bool)arg6 {
arg5 = TRUE;
arg6 = TRUE;
return %orig;
}

-(void) airbrushEnabled:(bool)arg7 isAudioVIP:(bool)arg8 isVideoVIP:(bool)arg9 isALYCEVideoStyle:(bool)arg10 {
arg7 = TRUE;
arg8 = TRUE;
arg9 = TRUE;
arg10 = TRUE;
return %orig;
}
%end

%hook BoostLearnMoreAlertController
+(id) createInstanceWithVIPStatus:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook ProfileThemeController
-(bool) isVIPOrPreviewing {
return TRUE;
}
%end

%hook SingingEffectsPanelAudioHelper
-(bool) isVIPEffect {
return TRUE;
}

-(bool) isEffectTypeAvailable:(unsigned long long)arg1 supportsHarmonizer:(bool)arg2 includeVIP:(bool)arg3 {
return TRUE;
arg2 = TRUE;
arg3 = TRUE;
}

-(id) availableEffectTypesWithVIP:(bool)arg1 supportsHarmonizer:(bool)arg2 {
arg1 = TRUE;
arg2 = TRUE;
return %orig;
}

-(unsigned long long) defaultAudioTypeWithVIP:(bool)arg1 supportsHarmonizer:(bool)arg2 {
arg1 = TRUE;
arg2 = TRUE;
return %orig;
}
%end

%hook MagicAnalytics
+(void) isVip:(bool)arg6 {
arg6 = TRUE;
return %orig;
}
%end

%hook MagicSubscriptionPlan
-(bool) hasTrial {
return FALSE;
}

-(bool) isLoading {
return TRUE;
}

-(long long) period {
return 2020;
}
%end

%hook MagicSubscriptionManager
-(bool) isSubscriptionActive {
return TRUE;
}

-(bool) isPromoSubscription {
return TRUE;
}

-(bool) isTrialSubscription {
return FALSE;
}

-(void) setSkipTrial:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(void) setIsPromo:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(void) setIsTrial:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(bool) isPromo {
return TRUE;
}

-(bool) isTrial {
return FALSE;
}

-(bool) expireAtValid {
return TRUE;
}

-(bool) skipTrial {
return TRUE;
}

-(bool) subscriptionsAllowed {
return TRUE;
}

-(bool) usedTrial {
return FALSE;
}

-(bool) isActive {
return TRUE;
}

-(void) setIsActive:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) loaded {
return TRUE;
}
%end

%hook MagicUpgradeTracker
-(bool) isUpgrade {
return TRUE;
}
%end

%hook TWTRUser
-(bool) isVerified {
return TRUE;
}
%end

%hook SNPAccountIcon
-(bool) isVerifiedAccount {
return TRUE;
}

-(bool) showVerifiedArtistBadge {
return TRUE;
}

-(bool) isSubscriber {
return TRUE;
}

-(bool) isRecommended {
return TRUE;
}

-(bool) hasValidChatJID {
return TRUE;
}
%end

%hook PostSingingPurchaseViewController
+(bool) shouldShowPaywall {
return TRUE;
}
%end

%hook SNPArrangement
-(bool) noPaywall {
return TRUE;
}

-(void) setNoPaywall:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook ADCAd
-(bool) viewAllowed {
return TRUE;
}
%end

%hook ChoosePerformanceViewController
-(bool) isPostPaywall {
return FALSE;
}

-(void) showAllPartsStateAnimated:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(void) setIsPostPaywall:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook MagicAnalytics
+(void) noPaywall:(bool)arg3 {
arg3 = TRUE;
return %orig;
}
%end

%hook SNPRegistrationCustomizeProfile3Controller
-(void) setSaveButtonIsEnabled:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook PerformanceUploadViewController
-(bool) alreadyDisplayedOpenCallCustomizeAlert {
return TRUE;
}

-(void) setAlreadyDisplayedOpenCallCustomizeAlert:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook MagicSKDescription
-(bool) validating {
return TRUE;
}

-(void) setValidating:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) hasTrial {
return FALSE;
}

-(long long) period {
return 2020;
}

-(void) setPeriod:(long long)arg1 {
arg1 = 2020;
return %orig;
}

-(long long) productType {
return 4;
}
%end

%hook SingingEffectsPanelVideoHelper
-(id) withVIP:(bool)arg2 {
arg2 = TRUE;
return %orig;
}

-(bool) isVIPColorType {
return TRUE;
}

-(bool) areVIPRenderingParameters {
return TRUE;
}

-(bool) isVIPStyleType {
return TRUE;
}

-(bool) includeVIP:(bool)arg2 includeVIP:(bool)arg3 {
return TRUE;
arg2 = TRUE;
arg3 = TRUE;
return %orig;
}

-(id) isVIP:(bool)arg2 isVIP:(bool)arg4 {
arg2 = TRUE;
arg4 = TRUE;
return %orig;
}

-(id) availableStyleTypesWithVIP:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(id) defaultRenderingParametersWithVIP:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(id) defaultParametersWithVIP:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end