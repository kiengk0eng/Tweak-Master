#include <substrate.h>

%hook TuneUtils
+(bool) checkJailBreak {
return FALSE;
}
%end

%hook TuneConfiguration
-(void) setShouldAutoDetectJailbroken:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(bool) shouldAutoDetectJailbroken {
return FALSE;
}
%end

%hook Tune
+(void) setShouldAutoDetectJailbroken:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

+(void) setJailbroken:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook GADDevice
-(bool) isJailbroken {
return FALSE;
}
%end

%hook CLSAnalyticsMetadataController
+(bool) hostJailbroken {
return FALSE;
}
%end

%hook PFDevice
-(bool) isJailbroken {
return FALSE;
}
%end

%hook MANIAPPurchaseEligibility
-(bool) isSubscriber {
return TRUE;
}

-(void) setIsSubscriber:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook Delegate
-(void) isSubscribed:(bool)arg2 {
arg2 = TRUE;
return %orig;
}
%end

%hook MANAuthToken
-(bool) isSubscribed {
return TRUE;
}

-(void) setIsSubscribed:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook MANUser
-(bool) isSubscribed {
return TRUE;
}

-(void) setIsSubscribed:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) isMobileSubscriber {
return TRUE;
}
%end

%hook UAInboxMessage
-(bool) isExpired {
return TRUE;
}
%end

%hook GADInAppPurchase
-(void) setPurchaseStatus:(long long)arg1 {
arg1 =1;
return %orig;
}

-(void) setIsVIP:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook MANProfile
-(void) setIsPlatnium:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook MAStoreManager
-(bool) isPurchasingProduct {
return TRUE;
}

-(void) setIsPurchasingProduct:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook MANConnection
-(bool) hasVipEmail {
return TRUE;
}

-(void) setHasVipEmail:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook MANEmail
-(bool) isVIP {
return TRUE;
}

-(bool) isPlatinum {
return TRUE;
}

-(void) setIsPlatinum:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook TuneSkyhookObserver
-(bool) isStillValid {
return TRUE;
}

-(bool) matchesSender {
return TRUE;
}
%end

%hook TuneSkyhookCenter
-(bool) hasObserverForHook {
return FALSE;
}
%end

%hook TunePowerHookValue
-(bool) hasExperimentValue {
return FALSE;
}

-(bool) isExperimentRunning {
return FALSE;
}
%end

%hook TunePowerHookManager
+(bool) setValueForHookById {
return FALSE;
}
%end

%hook TunePowerHookExperimentDetails
-(bool)isRunning {
return FALSE;
}
%end

%ctor {
    %init(Delegate = objc_getClass("Match_com.HamburgerViewController"));
}