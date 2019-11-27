#include <substrate.h>

%hook WLSubscriptionsManager
-(bool) hasPremium {
return TRUE;
}

-(void) setHasPremium:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(void) debugSetHasPremium:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) hasLifetimeSubscription {
return TRUE;
}

-(bool) hasConsumableSubscription {
return TRUE;
}

-(void) setHasConsumableSubscription:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(void) setHasLifetimeSubscription:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end