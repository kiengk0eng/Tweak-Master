#include <substrate.h>

%hook MKStoreKit
-(bool) isProductPurchased {
return TRUE;
}
%end

%hook FLStoreKit
-(bool) subscriptionPurchased:(int)arg1 {
return TRUE;
arg1 = 1;
return %orig;
}

-(void) purchaseProduct:(int)arg1 {
arg1 = 1;
return %orig;
}

-(bool) showPro {
return TRUE;
}

-(bool) subscribedPro {
return TRUE;
}

-(double) subscriptionTimeLeft:(int)arg1 {
return 9999;
arg1 = 1;
return %orig;
}
%end