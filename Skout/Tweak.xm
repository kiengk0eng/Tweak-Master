#include <substrate.h>

%hook User
-(bool) premiumSubscription {
return TRUE;
}

-(void) setPremiumSubscription:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(id) subcription {
return [NSNumber numberWithBool:YES];
}

-(void) setSubription:(id)arg1 {
arg1 = [NSNumber numberWithBool:YES];
return %orig;
}
%end

%hook SKTPopularityViewController
-(bool) isUserPremium {
return TRUE;
}

-(id) isPremium:(bool)arg2 {
arg2 = TRUE;
return %orig;
}
%end

%hook SKTBaseViewController
+(bool) isCurrentUserPremium {
return TRUE;
}
%end

%hook SKTBannerCache
-(bool) isAdFree {
return TRUE;
}
%end

%hook Subscription
-(bool) isSubscribed {
return TRUE;
}
%end

%hook GADDevice
-(bool) jailbroken {
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

%hook SPJailbreakStatusProvider
+(bool) isJailbroken {
return FALSE;
}
%end