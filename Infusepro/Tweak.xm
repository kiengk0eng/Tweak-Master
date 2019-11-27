#include <substrate.h>

%hook FCInAppPurchaseServiceMobile
-(bool) isFeaturePurchased:(long long)arg1 tillDate:(id*)arg2 {
return TRUE;
}

-(bool) isTrialActiveWithTime {
return FALSE;
}
%end

%hook FCIAPGUIHelper
+(bool) isProAvailable {
return TRUE;
}

+(bool) isSubscriptionBought {
return TRUE;
}

+(bool) isLifetimeBought {
return TRUE;
}
%end

%hook FCProductCollectionCell
-(void) setProAvailable:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) proAvailable {
return TRUE;
}

-(bool) featurePurchased {
return TRUE;
}

-(void) setFeaturePurchased:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook FCInAppPurchaseServiceFullPro
-(bool) isFeaturePurchased {
return TRUE;
}

-(bool) isTrialActiveWithTime {
return FALSE;
}
%end

%hook FCInAppPlaybackStrategy
-(bool) hasPro {
return TRUE;
}
%end

%hook FCInAppPurchaseServiceDummy
-(bool) isFeaturePurchased {
return TRUE;
}
%end

%hook FCInAppPurchaseServiceBase
-(bool) isFeaturePurchased {
return TRUE;
}

-(bool) isSubscriptionFeature {
return TRUE;
}

-(bool) isTrialActiveWithTime {
return FALSE;
}
%end

%hook FCCloudSyncService
-(bool) hasSetuppedSubscriptions {
return TRUE;
}

-(bool) checkingSubscriptions {
return FALSE;
}

-(void) setCheckingSubscriptions:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(void) finishSubscriptionsCheckWithSuccess:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(void) setHasSetuppedSubscriptions:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook FCUserSettingsConfiguration
-(bool) upgradedTitleHidden {
return TRUE;
}

-(void) setUpgradedTitleHidden:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook FCProView
-(bool) upgradedAvailable {
return FALSE;
}

-(void) setUpgradedAvailable:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook FCUpgradeToViewController
-(bool) featureHasBought {
return TRUE;
}

-(void) setFeatureHasBought:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end