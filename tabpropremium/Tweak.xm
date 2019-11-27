#include <substrate.h>

%hook OSSubscriptionState
-(bool) userSubscriptionSetting {
return TRUE;
}

-(void) setUserSubscriptionSetting:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) accpeted {
return TRUE;
}

-(void) setAccpeted:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) subscribed {
return TRUE;
}

-(void) setAccepted:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) compare {
return TRUE;
}
%end

%hook OneSignal
+(void) setSubscription:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook UVSuggestion
-(bool) subscribed {
return TRUE;
}

-(void) setSubscribed:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook BranchOpenRequest
-(void) setIsInstall:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) isInstall {
return TRUE;
}
%end

%hook PSTimeLine
-(void) setIsDemo:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(bool) isDemo {
return FALSE;
}
%end

%hook UVSession
-(void) setIsModal:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook TabController
-(bool) isFree {
return TRUE;
}

-(void) setIsFree:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end


%hook UVSession
-(bool) isModal {
return TRUE;
}
%end

%hook BranchUniversalObject
-(void) setPrice:(double)arg1 {
arg1 = 1;
return %orig;
}

-(double) price {
return 1;
}
%end

%hook PodYandexMobileMetrica_YX_SSJailbreakCheck
+(int) isJailbroken {
return 0;
}

+(int) jailbroken {
return 0;
}

+(int) cydiaCheck {
return 0;
}

+(int) inaccessibleFilesCheck {
return 0;
}

+(int) plistCheck {
return 0;
}

+(bool) isProcessInfoAvailable {
return FALSE;
}

+(int) processesCheck {
return 0;
}

+(int) systemCheck {
return 0;
}

+(int) symbolicLinkCheck {
return 0;
}

+(int) filesExistCheck {
return 0;
}
%end

%hook PodYandexMobileMetrica_KSSystemInfo
+(bool) isJailbroken {
return FALSE;
}
%end

%hook ANSMetadata
-(bool) computeIsJailbroken {
return FALSE;
}

-(bool) isJailbroken {
return FALSE;
}
%end

%hook OneSignalJailbreakDetection
+(bool) isJailbroken {
return FALSE;
}
%end


%hook Delegate
-(bool) isFree {
return TRUE;
}
%end

%ctor {
    %init(Delegate = objc_getClass("Tab_Pro.AppDelegate"));
}
