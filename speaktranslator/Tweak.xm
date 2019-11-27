#include <substrate.h>

%hook APNSubscription
-(bool) isActive {
return TRUE;
}
%end

%hook APNSubscriptionsManager
-(bool) hasActiveSubscription {
return TRUE;
}

-(bool) isSubscriptionHasBeenMadeForProductIDsInList {
return TRUE;
}

-(bool) isSubscriptionHasBeenMadeForProductID {
return TRUE;
}

-(double) activeSubscriptionRemainingTime {
return 1;
}

-(bool) isFreeTrial {
return FALSE;
}

-(void) setIsFreeTrial:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook IAVisibilityTester
-(bool) isSubscribedToKVO {
return TRUE;
}

-(void) setSubscribedToKVO:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook MTRGAdParams
-(bool) allowSubservices {
return TRUE;
}

-(void) setAllowSubservices:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook TRNUser
-(bool) subscriptionsEnabled {
return TRUE;
}

-(void) setSubscriptionsEnabled:(bool)arg1 forced:(bool)arg2 {
arg1 = TRUE;
arg2 = TRUE;
return %orig;
}
%end

%hook APNSubscriptionRemainingTimeCounter
-(double) remainingTime {
return 1;
}
%end