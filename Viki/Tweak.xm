#include <substrate.h>

%hook FNFAssetResourceLoadingDataRequest
-(bool) bypassCache {
return TRUE;
}

-(void) setBypassCache:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook VKAPIResource
-(bool) isVikiPassExclusive {
return TRUE;
}

-(bool) isVikiPassPremiumExclusive {
return TRUE;
}
%end

%hook VKActivity
-(bool) isVikiPassExclusive {
return TRUE;
}
%end

%hook A
-(bool) hasVikiPass {
return TRUE;
}
%end

%hook VKUser
-(void) setIsSubscriber:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) isSubscriber {
return TRUE;
}

-(bool) isVikiPassTrial {
return TRUE;
}
%end

%hook VKUserCollection
-(bool) isBlocked {
return FALSE;
}
%end

%hook VKSeries
-(unsigned long long) subscriptions {
return 1;
}

-(void) setSubscriptions:(unsigned long long)arg1 {
arg1 = 1;
return %orig;
}

-(bool) isBlocked {
return FALSE;
}
%end

%hook VKPerson
-(unsigned long long) subscriptions {
return 1;
}

-(void) setSubscriptions:(unsigned long long)arg1 {
arg1 = 1;
return %orig;
}
%end

%hook B
-(bool) isAlwaysGetTestAds {
return FALSE;
}

-(void) setIsAlwaysGetTestAds:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook VKAPICollection
-(bool) isComplete {
return TRUE;
}
%end

%hook ACTAutomatedUsageTracker
-(double) timeToEndOfPriorUsageIntervalSince1970 {
return 0;
}

-(void) setPersistentTimeToNextUsageIntervalSince1970:(double)arg1 {
arg1 = 0;
return %orig;
}

-(void) reportAtSecondsSince1970:(double)arg1 {
arg1 = 0;
return %orig;
}

-(double) timeToEndOfCurrentUsageIntervalSince1970 {
return 0;
}

-(void) setTimeToEndOfPriorUsageIntervalSince1970:(double)arg1 {
arg1 = 0;
return %orig;
}

-(double) timeSince1970ToEndOfCurrentUsageIntervalBasedOnPriorUsageInterval:(double)arg1 {
return 0;
arg1 = 0;
return %orig;
}

-(double) persistentTimeToNextUsageIntervalSince1970 {
return 0;
}
%end

%hook VKAPIResource
-(bool) isPaywallBlocked {
return TRUE;
}

-(bool) isAdFree {
return TRUE;
}
%end

%hook VKAppSession
-(bool) isSessionUser:(id)arg1 {
return TRUE;
return %orig;
}
%end

%hook C
-(bool) isHighlighted {
return FALSE;
}

-(void) setHighlighted:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook D
-(bool) isSelected {
return TRUE;
}

-(void) setSelected:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) isHighlighted {
return TRUE;
}

-(void) setHighlighted:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook E
+(id) vikiPassVerticalId {
return [NSNumber numberWithBool:YES];
}

+(id) vikiPassPremiumVerticalId {
return [NSNumber numberWithBool:YES];
}
%end

%hook VKAPIFilm
-(unsigned long long) subscriptions {
return 1;
}

-(void) setSubscriptions:(unsigned long long)arg1 {
arg1 = 1;
return %orig;
}
%end

%hook VKPerson
-(bool) isBlocked {
return FALSE;
}

-(void) setIsBlocked:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook VKAPICollection
-(void) setIsComplete:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(void) setIsVisible:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook F
-(bool) hasFeature:(long long)arg1 {
return TRUE;
arg1 = 1;
return %orig;
}
%end

%hook VKViewController
-(bool) isVisible {
return TRUE;
}
%end

%ctor {
%init(A = objc_getClass("Viki.VKAPIPrivileges"),
B = objc_getClass("Viki.SettingsManager"),
C = objc_getClass("Viki.VikiPassPlanItemView"),
D = objc_getClass("Viki.VikiPassTrackSelectorItemView"),
E = objc_getClass("Viki.VKAPIVertical"),
F = objc_getClass("Viki.VKAPIPrivileges"));
};