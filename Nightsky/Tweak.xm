#include <substrate.h>

%hook NewsEntry
-(bool) isPremium {
return TRUE;
}

-(void) setIsPremium:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook MKStoreKit
-(bool) isProductPurchased {
return TRUE;
}
%end

%hook SubscriptionItem
-(int) purchaseType {
return 1;
}

-(void) setPurchaseType:(int)arg1 {
arg1 = 1;
return %orig;
}
%end

%hook MainViewController
-(void) purchaseSubscription:(int)arg1 {
arg1 = 1;
return %orig;
}
%end

%hook NightSkyAppDelegate
-(bool) hasSubscription {
return TRUE;
}
%end