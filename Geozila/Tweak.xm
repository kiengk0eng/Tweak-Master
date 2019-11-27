#include <substrate.h>

%hook PremiumIAPHelper
+(bool) premiumPurchased {
return TRUE;
}
%end

%hook IAPHelper
-(bool) productPurchased {
return TRUE;
}
%end