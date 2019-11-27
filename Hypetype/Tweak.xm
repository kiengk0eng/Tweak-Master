#include <substrate.h>

%hook RMStoreKeychainPersistence
-(bool) isPurchasedProductOfIdentifier {
return TRUE;
}
%end

%hook HYPStoreServiceImplementation
-(bool) isAnyFeaturePurchased {
return TRUE;
}

-(bool) isFeaturePurchased {
return TRUE;
}

-(bool) isEveryFeaturePurchased {
return TRUE;
}
%end

%hook HYPStorePersistence
-(bool) isPurchasedProductOfIdentifier {
return TRUE;
}
%end

%hook AMPurchasedItem
-(bool) isPurchaseValid {
return TRUE;
}
%end

%hook Automonetize
-(bool) isSubscribed {
return TRUE;
}
%end