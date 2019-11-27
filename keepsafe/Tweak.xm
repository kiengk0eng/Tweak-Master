#include <substrate.h>

%hook AVYSupplyShopDetailViewController
-(void) setPurchased:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook AVYContentManager
-(bool) isCurrentlyUpdating {
return TRUE;
}

-(void) setCurrentlyUpdating:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) paidPurchasingEnabled {
return FALSE;
}

-(bool) paidPurchasingEnabledForPurchasable {
return FALSE;
}

-(void) setPaidPurchasingEnabled:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(long long) killSwitchStatus {
return 1;
}

-(void) setKillSwitchStatus:(long long)arg1 {
arg1 = 1;
return %orig;
}
%end

%hook AVYContentPack
-(void) setIsUserHidden:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(bool) isUserHidden {
return FALSE;
}
%end

%hook A
-(bool) paywall {
return FALSE;
}

-(id) initWithPaywall:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook AdColonyAdInfo
-(bool) iapEnabled {
return FALSE;
}

-(void) setIAPEnabled:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook ANSMetadata
-(bool) computeIsJailbroken {
return FALSE;
}

-(bool) isJailbroken {
return FALSE;
}
%end

%hook GADDevice
-(bool) jailbroken {
return FALSE;
}
%end

%hook AVYLocalyticsSession
-(bool) isDeviceJailbroken {
return FALSE;
}
%end

%hook GADDefaultInAppPurchaseFlow
-(bool) isDefaultPurchaseFlowEnabled {
return TRUE;
}
%end

%hook GADInAppPurchase
+(bool) quantityIsValid:(long long)arg1 {
return TRUE;
arg1 = 1;
return %orig;
}
%end

%hook AdobeUXInAppPurchase
-(bool) navigateToLoki {
return FALSE;
}

-(bool) performStorageUpgrade {
return TRUE;
}
%end

%hook AdobeUXInAppPurchaseV1
-(bool) _performStorageUpgradeWithCallbackURLScheme {
return TRUE;
}
%end

%hook AVYSupplyShopViewController
-(void) setPurchaseHudVisibile:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook AVYStoreKitManager
-(bool) purchasePurchasable {
return TRUE;
}
%end

%hook AVYPurchasableInstallInfo
-(bool) isUnlocked {
return TRUE;
}
%end

%hook ADJInternalState
-(bool) isDisabled {
return TRUE;
}
%end

%hook ADCConfiguration
-(bool) areAdsDisabled {
return TRUE;
}
%end

%hook ANSLifecycleEvent
-(bool) triggersFlush {
return TRUE;
}
%end

%hook AVYSupplyShopFeaturedSectionDataObject
-(bool) includeFreeContentPromo {
return TRUE;
}
%end

%hook ADCAd
-(bool) expired {
return FALSE;
}

-(void) setExpired:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook ADCCore
-(bool) network_timeout_expired {
return FALSE;
}

-(void) setNetwork_timeout_expired:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook ADCEvent
-(bool) isExpired {
return FALSE;
}
%end

%hook AVYAdobeUserProfile
-(bool) emailVerified {
return TRUE;
}

-(void) setEmailVerified:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook AVYContentStoreController
-(bool) isPurchasing {
return TRUE;
}

-(void) setPurchasing:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook AVYSupplyShopDetailViewController
-(bool) isPurchasing {
return TRUE;
}
%end

%hook AVYContentAccessManager
-(bool) objIsPurchasable:(id)arg1 {
return TRUE;
}
%end

%hook AVYPermissionsContainer
-(bool) isKillSwitched {
return TRUE;
}

-(void) setKillSwitched:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook AVYPurchasableOrderingInfo
-(bool) upToDateWithPurchasable {
return TRUE;
}
%end

%hook DTTimePeriod
-(bool) hasEndDate {
return FALSE;
}
%end

%hook GADInAppPurchase
-(long long) purchaseStatus {
return 1;
}

-(void) setPurchaseStatus:(long long)arg1 {
arg1 = 1;
return %orig;
}
%end

%hook AVYEditorFrameContentPackViewController
-(void) setPurchasedPack:(id)arg1 {
arg1 = [NSNumber numberWithBool:TRUE];
return %orig;
}

-(id) purchasedPack {
return [NSNumber numberWithBool:TRUE];
}
%end

%hook AVYStoreKitManager
-(void) unlockItemsInBundle:(id)arg1 {
arg1 = [NSNumber numberWithBool:TRUE];
return %orig;
}
%end

%ctor {
    %init(AppDelegate = objc_getClass("KeepSafe.AppDelegate"),
A = objc_getClass("KeepSafe.PremiumController"));
};

