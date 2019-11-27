//Generated with FlexConverter.

#include <substrate.h>

%hook UserItem
-(bool) isVip {
return TRUE;
}

-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) isTracksOpen {
return TRUE;
}

-(void) setIsTracksOpen:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook MADSubscriptionsGroup
-(bool) isTrialPeriodUsed {
return FALSE;
}

-(void) setIsTrialPeriodUsed:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(bool) isTrialPeriod {
return FALSE;
}

-(void) setIsTrialPeriod:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook MADSubscriptionManager
-(void) validateGroupsAfterBuy:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(bool) hasSubscriptionWithId:(id)arg1 {
return TRUE;
}

-(bool) setProduct:(id)arg1 {
return TRUE;
}

-(bool) isValidating {
return TRUE;
}

-(void) setIsValidating:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook MADSubscriptionsGroup
-(bool) hasGroupSubscriptionWithId:(id)arg1 {
return TRUE;
}

-(bool) setProduct:(id)arg1 {
return TRUE;
}

-(bool) isBuy {
return TRUE;
}
%end

%hook MADStore
-(bool) subscribeInActive {
return FALSE;
}

-(void) setSubscribeInActive:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(bool) hasIAPs {
return TRUE;
}
%end