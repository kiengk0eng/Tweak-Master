#include <substrate.h>

%hook Registry
+(bool) isAllGearPurchased {
return TRUE;
}

+(bool) isAllGearPurchasedFromBundle {
return TRUE;
}

+(void) support:(bool)arg3 {
arg3 = TRUE;
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

%hook CLSAnalyticsMetadataController
+(bool) hostJailbroken {
return FALSE;
}
%end

%hook APMacroAction
-(bool) isFromBundle {
return TRUE;
}

-(void) setIsFromBundle:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook UVSession
-(bool) isModal {
return TRUE;
}

-(void) setIsModal:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook GearStoreManager
-(void) loadProductsComplete:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(void) support:(bool)arg2 {
arg2 = TRUE;
return %orig;
}
%end

%hook APStoreManager
-(void) support:(bool)arg2 {
arg2 = TRUE;
return %orig;
}
%end

%ctor {
    %init(Delegate = objc_getClass("Tonebridge.ToneBridgeAppDelegateiOS"));
}