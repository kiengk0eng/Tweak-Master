#include <substrate.h>

%hook BPTFreeVersionManager
-(bool) isSubscriptionActive {
return TRUE;
}

-(void) setIsSubscriptionActive:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) getActualSubscriptionActivityState {
return TRUE;
}
%end

%hook BPTConfiguration
+(bool) isSubscriptionActive {
return TRUE;
}
%end

%hook AppsFlyerUtils
+(bool) isJailBreakon {
return FALSE;
}
%end

%hook PodYandexMobileMetrica_KSSystemInfo
+(bool) isJailbroken {
return FALSE;
}
%end

%hook APDDeviceInfo
-(bool) jailbroken {
return FALSE;
}
%end

%hook YX_SSJailbreakCheck
+(bool) isProcessInfoAvailable {
return FALSE;
}
%end

%hook UnityAdsDevice
+(bool) isJailbroken {
return FALSE;
}
%end

%hook ANSMetadata
-(bool) isJailbroken {
return FALSE;
}

-(bool) computeIsJailbroken {
return FALSE;
}
%end

%hook PodYandexMobileMetrica_YX_SSJailbreakCheck
+(bool) isProcessInfoAvailable {
return FALSE;
}
%end

%hook CBJBroken
+(bool) isDeviceJailbroken {
return FALSE;
}
%end

%hook GADDevice
-(bool) jailbroken {
return FALSE;
}
%end