#include <substrate.h>

%hook TNTAdsProvisioning
-(bool) isPremiumUser {
return TRUE;
}
%end

%hook TMOAccountInfo
-(bool) isPremiumUser {
return TRUE;
}

-(bool) isPremiumRingtonePackUnlocked {
return TRUE;
}

-(bool) isPremiumBackgroundUnlocked {
return TRUE;
}

-(bool) wirelessSubscriber {
return TRUE;
}
%end

%hook TMOPremiumState
-(bool) isPurchasedThroughIOSClient {
return TRUE;
}

-(long long) getPurchaseClient {
return 1;
}
%end

%hook TUIRenewableSubscriptionViewController
-(bool) isCurrentlyPremiumUser {
return TRUE;
}

-(void) setIsCurrentlyPremiumUser:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook TUILeanplumFeaturedStoreViewController
-(bool) isCurrentlyPremiumUser {
return TRUE;
}

-(void) setIsCurrentlyPremiumUser:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end