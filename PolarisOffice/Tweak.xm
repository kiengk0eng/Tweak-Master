#include <substrate.h>

%hook DBUSERSAccountType
-(bool) isPro {
return TRUE;
}

-(bool) isBasic {
return FALSE;
}
%end

%hook UPCloudAccountManager
-(bool) isProPlan {
return TRUE;
}
%end

%hook FIRAInAppPurchaseItem
-(bool) isFreeTrial {
return FALSE;
}

-(void) setFreeTrial:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook FXServicePremiumVC_NewBM
-(bool) isOrangeDMFI {
return TRUE;
}

-(bool) isProductID {
return TRUE;
}

-(bool) isOrangePlan {
return TRUE;
}

-(void) setAdFreeButtonStatus:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(bool) checkPurchaseAvailable {
return FALSE;
}

-(void) showAdFreeView:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook XViewController
-(void) enableSubs:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook FPRFeatureControl
+(bool) featureEnabled:(id)arg1 {
return TRUE;
}
%end

%hook FSettingMainCell
-(void) showPremiumImage:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook FXPasscode
-(bool) enableAd {
return FALSE;
}

+(bool) show {
return TRUE;
}

+(bool) isShow {
return TRUE;
}
%end

%hook ERPush
-(void) setPremium:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) premium {
return TRUE;
}
%end

%hook FSaveAs
-(void) showPremiumVC:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook FXSearchPopupItem
+(id) isPremium:(bool)arg2 {
arg2 = TRUE;
return %orig;
}

-(bool) isPremium {
return TRUE;
}

-(void) setIsPremium:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook FXSettingEmail
-(void) setOpenPremium:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) openPremium {
return TRUE;
}
%end

%hook EDocuments
-(bool) isPremium {
return TRUE;
}

-(void) setIsPremium:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook UPCloudAccountManager
-(bool) isOrangePremiumPlan {
return TRUE;
}
%end

%hook FXDocument
-(void) showPremiumVC:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook FXPCInstallVC
-(bool) isPromotion {
return TRUE;
}
%end

%hook UPCloudRequester
+(bool) isProductionServer {
return TRUE;
}
%end

%hook FIRInstanceID
-(bool) isProductionApp {
return TRUE;
}
%end

%hook FXBrowserCellAd
-(bool) isAdFree {
return TRUE;
}
%end

%hook FXAdBannerVC
-(bool) isAdFreeBanner {
return TRUE;
}
%end

%hook FXEditorBannerVC
-(bool) isAdFreeBanner {
return TRUE;
}
%end

%hook UPCloudAccountManager
-(long long) hasAdFreePayment {
return 1;
}

-(void) setHasAdFreePayment:(bool)arg1 {
arg1 = 1;
return %orig;
}
%end

