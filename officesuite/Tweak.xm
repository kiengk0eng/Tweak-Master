#include <substrate.h>

%hook MSAppDelegate
+(bool) isPremium {
return TRUE;
}

-(bool) isPremiumEdition {
return TRUE;
}

-(void) setIsPremium:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook IAPManager
-(bool) isPremiumFromAppStore {
return TRUE;
}

-(bool) isPremiumLocallyActive {
return TRUE;
}

-(void) isPremium:(bool)arg3 fontsAvailable:(bool)arg4 applyPremium:(bool)arg5 {
arg5 = TRUE;
arg4 = TRUE;
arg3 = TRUE;
return %orig;
}

-(void) isPremium:(bool)arg3 fontsAvailable:(bool)arg4 {
arg3 = TRUE;
arg4 = TRUE;
return %orig;
}

-(bool) isPremiumFromMSConnect {
return TRUE;
}
%end

%hook MSDocLib
-(bool) isPremium {
return TRUE;
}
%end

%hook MSPDFViewController
-(bool) exportIsPremiumFeature {
return TRUE;
}
%end

%hook MSEnabledFeatures
-(bool) isPremiumFeatureAvailable:(id)arg1 {
return TRUE;
}
%end

%hook MSPageViewController
-(bool) exportIsPremiumFeature {
return TRUE;
}
%end

%hook MSAppAnalytics
+(void) setIsPremiumProperty:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook MSOfficeSuiteManager
-(bool) isPremium {
return TRUE;
}
%end

%hook FlurryUtil
+(BOOL) deviceIsJailbroken {
return FALSE;
}
%end

%hook GADDevice
-(bool) jailbroken {
return FALSE;
}
%end