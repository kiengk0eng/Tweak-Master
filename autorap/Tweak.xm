#include <substrate.h>

%hook SNPAccountIcon
-(bool) isVIP {
return TRUE;
}

-(bool) isVerifiedAccount {
return TRUE;
}
%end

%hook MagicAnalytics
+(void) isVip:(bool)arg6 {
arg6 = TRUE;
return %orig;
}
%end

%hook MagicSubscriptionManager
-(void) setIsPromo:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(void) setIsActive:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook MagicSubscriptionManager
-(bool) isActive {
return TRUE;
}

-(bool) isSubscriptionActive {
return TRUE;
}

-(void) setSkipTrial:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) isPromo {
return TRUE;
}

-(bool) expireAtValid {
return TRUE;
}

-(bool) skipTrial {
return TRUE;
}

-(bool) subscriptionsAllowed {
return TRUE;
}

-(bool) isPromoSubscription {
return TRUE;
}
%end

%hook MagicSubscriptionPlan
-(int) period {
return 2020;
}
%end

%hook GADDevice
-(bool) jailbroken {
return TRUE;
}
%end