#include <substrate.h>

%hook LPInAppPurchaseManager
-(bool) isProductPurchased:(id)arg1 {
return TRUE;
return %orig;
}

-(bool) isPurchasedYear {
return TRUE;
}

-(bool) isPurchasedItem {
return TRUE;
}
%end

%hook MKStoreKit
-(bool) isProductPurchased:(id)arg1 {
return TRUE;
return %orig;
}
%end

%hook EarthSpiritESCommonCollectionCell
-(void) setProUIWithIspro:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook ZDKCommentCountCache
-(double) expiresAt{
return 2088;
}
%end

%hook CLSAnalysticMetadataController
+(bool) hostJailbroken {
return FALSE;
}
%end

%ctor {
    %init(AppDelegate = objc_getClass("EarthSpirit.AppDelegate"));
}