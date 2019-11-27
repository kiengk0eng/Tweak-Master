#include <substrate.h>

%hook ULStoreController
+(bool) isSubscriptionActivation:(unsigned long long)arg1 {
return TRUE;
arg1 = 1;
return %orig;
}

-(void) isRenewal:(bool)arg3 {
arg3 = FALSE;
return %orig;
}

+(unsigned long long) storeActivationForProductActivation:(unsigned long long)arg1  {
return 1;
arg1 = 1;
return %orig;
}

-(bool) activationIsExpired {
return FALSE;
}

-(bool) activationLoaded {
return TRUE;
}

-(void) setActivationLoaded:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(unsigned long long) activation {
return 4;
}

-(void) setActivation:(unsigned long long)arg1 {
arg1 = 4;
return %orig;
}
%end