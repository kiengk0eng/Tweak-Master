#include <substrate.h>

%hook A
-(bool) isSubscriptionExpired {
return FALSE;
}

-(void) setIsSubscriptionExpired:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(bool) isSubscriptionValid {
return TRUE;
}

-(void) setIsSubscriptionValid:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook AdNetworkManager
-(bool) isUserSubscribed {
return TRUE;
}
%end

%ctor {
    %init(A = objc_getClass("VPNProtect.StoreKitManager"),
B = objc_getClass("VPNProtect.AppDelegate"));
};