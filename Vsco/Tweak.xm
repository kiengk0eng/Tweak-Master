#include <substrate.h>

%hook TWTRStore
-(id) subscriptions {
return [NSNumber numberWithBool:YES];
}

-(void) setSubscriptions:(id)arg1 {
arg1 = [NSNumber numberWithBool:YES];
return %orig;
}
%end

%hook TWTRSubscription
-(id) subscriber {
return [NSNumber numberWithBool:YES];
}
%end

%hook VSCOFollowAllHeaderViewModel
-(id) subscriber {
return [NSNumber numberWithBool:YES];
}

-(void) setSubscriber:(id)arg1 {
arg1 = [NSNumber numberWithBool:YES];
return %orig;
}
%end

%hook VSUSubscribableViewModel
-(id) subscribers {
return [NSNumber numberWithBool:YES];
}
%end

%hook VSCOStorefrontViewController
-(id) productPurchaser {
return [NSNumber numberWithBool:YES];
}

-(void) setProductPurchaser:(id)arg1 {
arg1 = [NSNumber numberWithBool:YES];
return %orig;
}

-(void) purchaseProduct:(id)arg1 {
arg1 = [NSNumber numberWithBool:YES];
return %orig;
}
%end

%hook VSCOStoreProductDetailViewController
-(id) productPurchaser {
return [NSNumber numberWithBool:YES];
}

-(void) setProductPurchaser:(id)arg1 {
arg1 = [NSNumber numberWithBool:YES];
return %orig;
}
%end

%hook VSCOStore
-(id) activeProductsRequests {
return [NSNumber numberWithBool:YES];
}

-(void) setActiveProductsRequests:(id)arg1 {
arg1 = [NSNumber numberWithBool:YES];
return %orig;
}
%end

%hook VSCOSettingsMainViewController
-(void) activatedSubscription:(id)arg1 {
arg1 = [NSNumber numberWithBool:YES];
return %orig;
}
%end

%hook VSCOStoreProduct
-(void) productWasPurchasedAndInstalled:(id)arg1 {
arg1 = [NSNumber numberWithBool:YES];
return %orig;
}

-(bool) isVSCOX {
return TRUE;
}

-(bool) isIncludedWithVSCOX {
return TRUE;
}

-(void) setIsIncludedWithVSCOX:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook A
-(bool) active {
return TRUE;
}

-(void) setActive:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) isPaymentVSCOX {
return TRUE;
}
%end

%hook FMDatabasePool
-(void) executeLocked:(id)arg1 {
arg1 = [NSNumber numberWithBool:FALSE];
return %orig;
}
%end

%hook AWSFMDatabasePool
-(void) executeLocked:(id)arg1 {
arg1 = [NSNumber numberWithBool:FALSE];
return %orig;
}
%end

%hook B
-(bool) isVSCOX {
return TRUE;
}
%end

%ctor {
    %init(A = objc_getClass("VSCOcam.VSCOXManager"),
B = objc_getClass("VSCOcam.VSCOXStoreProduct"));
};