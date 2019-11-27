//Generated with FlexConverter.

#include <substrate.h>

%hook SubscriptionViewController
-(void) updateDatabaseUserInfo:(id)arg1 withSubscriptionStatus:(int)arg2 {
arg2 = 1;
return %orig;
}
%end

%hook TabsViewController
-(void) updateDatabaseUserInfo:(id)arg1 withSubscriptionStatus:(int)arg2 {
arg2 = 1;
return %orig;
}
%end

%hook MKStoreKit
-(bool) isProductPurchased:(id)arg1 {
return TRUE;
}
%end

%hook Seller
-(bool) isItemsPurchased:(id)arg1 {
return TRUE;
}
%end

%hook AdMobManager
-(bool) isAdRemovedWithPurchase {
return TRUE;
}
%end

%hook PurchaseManager
-(void) finishTransaction:(id)arg1 wasSuccessful:(bool)arg2 {
arg2 = TRUE;
return %orig;
}

-(bool) isProductPurchased:(id)arg1 {
return TRUE;
}
%end