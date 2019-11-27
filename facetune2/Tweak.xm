#include <substrate.h>

%hook BZRStore
-(bool) isUserSubscribed {
return TRUE;
}

-(bool) isSubscriptionProduct {
return TRUE;
}
%end

%hook BZRProduct
-(bool) isSubscribersOnly {
return FALSE;
}
%end

%hook TLManager
-(void) setIsActive:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) isActive {
return TRUE;
}
%end

%hook FTBackstageMainViewController
-(bool) isSubscriber {
return TRUE;
}
%end

%hook SPXRestorePurchasesEvent
-(bool) isSubscriber {
return TRUE;
}
%end

%hook BZRAllowedProductsProvider
-(bool) isSubscriptionProduct {
return TRUE;
}
%end

%hook FTUserSubscriptionStateProvider
-(bool) isSubscriber {
return TRUE;
}
%end

%hook SPXPurchaseSubscriptionEvent
-(bool) successfulPurchase {
return TRUE;
}

-(id) successfulPurchase:(bool)arg2 purchaseDuration:(double)arg4 {
arg2 = TRUE;
arg4 = 12;
return %orig;
}

-(double) purchaseDuration {
return 12;
}
%end

%hook FTFeatureViewModel
-(bool) isVipFeature {
return TRUE;
}
%end

%hook BZRReceiptInfo
-(bool) wasProductPurchased {
return TRUE;
}
%end

%hook FTKinesisStoreItemPurchasedEvent
-(unsigned long long) version {
return 4;
}
%end

%hook FTStoreItemScreen
-(bool) wasPurchased {
return TRUE;
}

-(id) wasPurchased:(bool)arg3 {
arg3 = TRUE;
return %orig;
}
%end

%hook FTSubscriptionSessionConfigurationStateProvider
+(bool) isFacetuneOnePromotionFromApplication {
return TRUE;
}
%end

%hook FTTaplyticsAdapter
-(bool) isFacetuneOwner {
return TRUE;
}
%end

%hook FTRemoteConfigurationManager
-(bool) isFacetuneOwner {
return TRUE;
}
%end

%hook FTSSubscriptionInfo
-(bool) isExpired {
return FALSE;
}
%end

%hook BZRReceiptSubscriptionInfo
-(bool) isExpired {
return FALSE;
}
%end

%hook FIRARemoteConfig
-(bool) isExpired {
return FALSE;
}
%end

%hook FTPaintProcessor
-(bool) oneTimeProcessingComplete {
return TRUE;
}

-(void) setOneTimeProcessingComplete:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook FTSubscriptionData
-(id) wasUpgradedByAsiaPromotion:(bool)arg4 wasUpgradedByImageExport:(bool)arg5 wasUpgradedByChristmas:(bool)arg6 {
arg4 = TRUE;
arg5 = TRUE;
arg6 = TRUE;
return %orig;
}
%end

%hook FTSubscriptionPeriodPricingFormat
-(id) initWithValue:(unsigned long long)arg1 {
arg1 = 9;
return %orig;
}
%end

%hook LTPeriodicFloatSet
-(double) pivotValue {
return 1;
}
%end

%hook BZRPeriodicReceiptValidatorActivator
-(void) setPeriodicValidationInterval:(double)arg1 {
arg1 = 1;
return %orig;
}
%end

%hook BZRPeriodicReceiptValidatorActivator
-(double) periodicValidationInterval {
return 9;
}
%end

%hook iRate
-(float) remindPeriod {
return 1;
}
%end
