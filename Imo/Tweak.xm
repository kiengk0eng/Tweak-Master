#include <substrate.h>

%hook AccountInfo
-(bool) isPremium {
return TRUE;
}

-(void) setIsPremium:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook InteractionManager
-(void) setAccountPremium:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook GCMPubSubRegistrationClient
-(bool) isSubscriptionInPreogress {
return TRUE;
}
%end