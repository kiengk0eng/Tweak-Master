#include <substrate.h>

%hook AMPremiumManager
-(bool) platinumPurchased {
return TRUE;
}

-(bool) isPlatinumPurchased {
return TRUE;
}

-(void) setPlatinumPurchased:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end