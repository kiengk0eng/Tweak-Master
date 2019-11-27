#include <substrate.h>

%hook InAppPurchaseManager
-(bool) isItemPurchasedWithType:(id)arg1 {
return TRUE;
}
%end

%hook InAppPurchaseManager
-(bool) isBundlePurchased {
return TRUE;
}
%end