#include <substrate.h>

%hook EBPurchase
-(bool) purchaseProduct {
return TRUE;
}
%end

%hook STAAdapptManager
+(bool) getIsPayingUser {
return TRUE;
}
%end

%hook STABannerView
-(bool) devHideBanner {
return TRUE;
}

-(void) setDevHideBanner:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook GADDevice
-(bool) jailbroken {
return FALSE;
}
%end

%hook STASplashPreferences
-(void) setIsSplashLoadingIndicatorEnabled:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(bool) isSplashLoadingIndicatorEnabled {
return FALSE;
}
%end

%hook STASplashViewController
-(bool) showAd {
return FALSE;
}

-(void) setShowAd:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook STAStartAppAdBasic
+(bool) showAd {
return FALSE;
}
%end

%hook STACacheAdLoader
-(bool) showAd {
return FALSE;
}
%end

%hook STAAdCache
-(bool) showAd {
return FALSE;
}
%end

%hook GADApplication
-(bool) backgroundLoadingEnabled {
return FALSE;
}

-(bool) backgroundReloadingEnabled {
return FALSE;
}

-(bool) active {
return FALSE;
}
%end

%hook GADSlot
-(bool) monitoredViewVisible {
return FALSE;
}

-(bool) canEnableActiveViewMonitoring {
return FALSE;
}

-(bool) isGoogleAdURL:(id)arg1 {
return FALSE;
}
%end

%hook STAAdapptManager
+(float) getTotalPaidAmount {
return 1;
}
%end

%hook STAEventAdManager
-(void) setIsReturnAdDisabled:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(void) setIsSplashScreenFinish:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(void) setIsSplashPreferencesUsed:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(bool) isSplashPreferencesUsed {
return FALSE;
}

-(void) setIsSplashAdEnabled:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(bool) isReturnAdDisabled {
return FALSE;
}

-(bool) isSplashAdEnabled {
return FALSE;
}

-(bool) isSplashAdReady {
return FALSE;
}

-(void) setIsSplashAdReady:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(bool) isSplashScreenFinish {
return FALSE;
}
%end

%hook SDWebImageManager
-(bool) isRunning {
return FALSE;
}
%end

%hook GADMAdapterGoogleAdMobAds
-(bool) handlesUserClicks {
return FALSE;
}

-(bool) handlesUserImpressions {
return FALSE;
}
%end

%hook GADBrowserAdViewDelegate
-(bool) handlesClicks {
return FALSE;
}
%end

%hook GADAdViewDelegate
-(bool) handlesClicks {
return FALSE;
}
%end

%hook GADMediatedNativeAd
-(bool) adapterHandlesUserClicks {
return FALSE;
}

-(bool) adapterHandlesUserImpressions {
return FALSE;
}

-(void) setAdapterHandlesUserClicks:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(void) setAdapterHandlesUserImpressions:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook GADMAdapterCustomEvents
-(bool) handlesUserImpressions {
return FALSE;
}

-(bool) handlesUserClicks {
return FALSE;
}
%end