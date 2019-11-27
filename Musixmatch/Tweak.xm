#include <substrate.h>

%hook MXMUserAuthorizations
-(bool) isActive {
return TRUE;
}

-(void) setIsActive:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook MXMSharedUserManager
-(void) setInAppPurchasedStatus:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) currentInAppPurchasedStatus {
return TRUE;
}
%end

%hook MXMApplication
-(bool) isUserPurchasing {
return TRUE;
}

-(void) setIsUserPurchasing:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook MXMProduct
-(bool) purchasable {
return TRUE;
}

-(void) setPurchasable:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end