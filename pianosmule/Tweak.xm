#include <substrate.h>

%hook SNPAccountIcon
-(bool) isVIP {
return TRUE;
}
%end

%hook MagicAnalytics
+(void) isVip:(bool) arg6 {
arg6 = TRUE;
return %orig;
}
%end

%hook MagicSubscriptionManager
-(bool) isSubscriptionActive {
return TRUE;
}

-(bool) isTrialSubscription {
return FALSE;
}

-(void) setSkipTrial:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) isTrial {
return FALSE;
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

-(bool) usedTrial {
return FALSE;
}

-(bool) isActive {
return TRUE;
}

-(void) setIsActive:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) loaded {
return TRUE;
}
%end

%hook GADDevice
-(bool) jailbroken {
return FALSE;
}
%end

%hook ANSMetadata
-(bool) computerIsJailbroken {
return FALSE;
}

-(bool) isJailbroken {
return FALSE;
}
%end