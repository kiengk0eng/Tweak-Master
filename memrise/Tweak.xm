#include <substrate.h>

%hook MRDashboardLevelsInfo
-(bool) isProUser {
return TRUE;
}

-(void) setIsProUser:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) isProChatEnabled {
return TRUE;
}

-(void) setIsProChatEnabled:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook MRUser
-(bool) isPro {
return TRUE;
}
%end

%hook MRSubscription
-(bool) isIOSSubscription {
return TRUE;
}

-(bool) isIOSSubscriptionWithPrivider {
return TRUE;
}
%end

%hook A
-(bool) isUserPro {
return TRUE;
}
%end

%ctor {
    %init(A = objc_getClass("Memrise.UserDataService"));
};