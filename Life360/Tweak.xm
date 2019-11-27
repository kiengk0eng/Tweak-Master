#include <substrate.h>

%hook A
-(bool) isPremiumWithCircleID:(id)arg1 {
return TRUE;
arg1 = [NSNumber numberWithInteger:2];
return %orig;
}

-(bool) isSelectedCirclePremium {
return TRUE;
}

-(long long) skuIDForSelectedCircle {
return 2;
}
%end

%hook B
-(long long) selectedSKUTier {
return 2;
}
%end

%hook C
-(bool) premium {
return TRUE;
}
%end

%hook D
-(bool) isPremiumFeatureOn:(unsigned long long)arg1 {
return TRUE;
arg1 = 2;
return %orig;
}
%end

%hook E
-(bool) isPremiumNoCommitmentOnAndNoTrialFor {
return TRUE;
}
%end

%hook _L360Circle
-(bool) premiumValue {
return TRUE;
}

-(void) setPremiumValue:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook L360ShareAppSyncManager
-(void) isPremium:(bool)arg3 {
arg3 = TRUE;
return %orig;
}

-(bool) isPremium {
return TRUE;
}

-(void) setIsPremium:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%ctor {
    %init(A = objc_getClass("SafetyMap.PremiumStore"),
B = objc_getClass("SafetyMap.PremiumTierStore"),
C = objc_getClass("SafetyMap.L360ImmutableCircleObject"),
D = objc_getClass("SafetyMap.L360CrimeSexExperimentMock"),
E = objc_getClass("SafetyMap.L360PremiumNoCommitmentManager"));
};