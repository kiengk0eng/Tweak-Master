//Generated with FlexConverter.

#include <substrate.h>

%hook STAEventAdManager
-(bool) isSplashAdReady {
return FALSE;
}

-(void) setIsSplashAdReady:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(bool) isSplashScreenFinish {
return TRUE;
}
%end

%hook GADDevice
-(bool) jailbroken {
return FALSE;
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

%hook STASplashPreferences
-(bool) isSplashLoadingIndicatorEnabled {
return FALSE;
}

-(void) setIsSplashLoadingIndicatorEnabled:(bool)arg1 {
arg1 = FALSE;
return %orig;
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

-(void) setAdIsLoaded:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(bool) adIsLoaded {
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

%hook STAEventAdManager
-(bool) isReturnAdDisabled {
return FALSE;
}

-(void) setIsReturnAdDisabled:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(bool) isSplashPreferencesUsed {
return FALSE;
}

-(void) setIsSplashPreferencesUsed:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(bool) isSplashAdEnabled {
return FALSE;
}

-(void) setIsSplashAdEnabled:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(void) setIsSplashScreenFinish:(bool)arg1 {
arg1 = FALSE;
return %orig;
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

%hook IAPHelper
-(bool) productPurchased {
return TRUE;
}
%end

%hook GADBrowserAdViewDelegate
-(bool) handlesClicks {
return FALSE;
}

-(bool) adView {
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
-(bool) isBannerAnimationOK {
return FALSE;
}

-(bool) handlesUserClicks {
return FALSE;
}

-(bool) handlesUserImpressions {
return FALSE;
}
%end

