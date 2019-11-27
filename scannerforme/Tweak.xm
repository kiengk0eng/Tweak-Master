#include <substrate.h>

%hook APNSubscription
-(bool) isActive {
return TRUE;
}
%end

%hook PSSubscriptionManager
-(bool) userHasSubscription {
return TRUE;
}

-(long long) daysRemainingOfActiveSubscription {
return 360;
}

-(bool) hasBeenMadeSubscriptionWithID:(id)arg1 {
return TRUE;
return %orig;
}

-(bool) isLimitedScanSegment {
return FALSE;
}
%end

%hook APNSubscriptionsManager
-(bool) hasActiveSubscription {
return TRUE;
}

-(double) activeSubscriptionRemainingTime {
return 360;
}
%end

%hook Delegate
-(bool) isUserSubscribed {
return TRUE;
}

-(bool) isFreeTRial {
return FALSE;
}

-(void) setIsFreeTrial:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%ctor {
    %init(Delegate = objc_getClass("Over.OVStoreServiceImpl"));
}