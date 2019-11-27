#include <substrate.h>

%hook CBSubscriptionProduct
+(bool) isTrialProductId:(id)arg1 {
return TRUE;
}
%end

%hook APNSubscriptionsManager
-(bool) hasActiveSubscription {
return TRUE;
}

-(double) activeSubscriptionRemainingTime {
return 1;
}

-(bool) isSubscriptionHasBeenMadeForProductIDsInList {
return TRUE;
}

-(bool) isSubscriptionHasBeenMadeForProductID {
return TRUE;
}

-(bool) isFreeTrial {
return FALSE;
}
%end

%hook APNSubscription
-(bool) isActive {
return TRUE;
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

%hook CBBaseGalleriaItemPresenter
-(void) unlockFromSubscriptionWithUserSegmentation:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook CBPurchasesManager
-(void) completeSubscriprionWithSuccess:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook CBGalleriaItemPresenter
-(void) unlockFromSubscriptionWithUserSegmentation:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end