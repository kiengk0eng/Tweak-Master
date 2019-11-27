#include <substrate.h>

%hook SubscribeVC
-(bool) isFullVersion {
return TRUE;
}

-(void) setIsFullVersion:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) isLimitsExceeded {
return FALSE;
}

-(void) setIsLimitsExceeded:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook InAppPurchaseManager
-(bool) isGettingProductsIDs {
return TRUE;
}

-(void) setIsGettingProductsIDs:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook APMInAppPurchaseItem
-(bool) isFreeTrial {
return FALSE;
}

-(void) setIsFreeTrial:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook UserModel
-(bool) isPro {
return TRUE;
}

-(void) setIsPro:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end