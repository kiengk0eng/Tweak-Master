#include <substrate.h>

%hook SNPAccountIcon
-(bool) isSubscriber {
return TRUE;
}

-(bool) isVerifiedAccount {
return TRUE;
}

-(bool) isVIP {
return TRUE;
}
%end

%hook PlayerBarPerformerInfoCell
-(bool) showVIPBadge {
return TRUE;
}

-(void) setShowVIPBadge:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook ProfilePicButton
-(bool) allowVIPBadge {
return TRUE;
}

-(void) setAllowVIPBadge:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) forceVIPBadge {
return FALSE;
}

-(void) setForceVIPBadge:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook MagicAnalytics
+(void) isVip:(bool)arg5 {
arg5 = TRUE;
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

-(bool) isPromo {
return TRUE;
}

-(void) setIsPromo:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) isTrial {
return FALSE;
}

-(void) setIsTrial:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(bool) expireAtValid {
return TRUE;
}

-(bool) isPromoSubscription {
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

%hook MagicPurchaseAPI
+(bool) subscriptionAllowed {
return TRUE;
}
%end

%hook MagicSubscriptionPlan
-(bool) isLoading {
return TRUE;
}
%end