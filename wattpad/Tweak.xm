#include <substrate.h>

%hook CustomURL
-(bool) handlePremiumPricing {
return TRUE;
}
%end

%hook ExperimentManager
+(bool) isUserEligibleForPremiumExperiments {
return TRUE;
}
%end

%hook DeveloperOptionsState
-(bool) mockWattpadPremium {
return TRUE;
}

-(void) setMockWattpadPremium:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook RTReadingViewController
-(bool) currentInterstitialTypeIsPremium {
return TRUE;
}

-(bool) isShowingPremiumInterstitial {
return TRUE;
}
%end

%hook MMVASTController
-(bool) isVPAID {
return TRUE;
}

-(void) setIsVPAID:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook MMVASTModel
-(bool) hasVPAIDCreative {
return TRUE;
}
%end

%hook MMMRAIDUtil
+(id) includeVPAID:(bool)arg2 {
arg2 = TRUE;
return %orig;
}
%end

%hook MMVASTMediaFile
-(bool) isVPAID {
return TRUE;
}
%end

%hook AdsMasterSwitch
-(bool) adsDisabledFromSubscription {
return TRUE;
}

-(void) setAdsDisabledFromSubscription:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end