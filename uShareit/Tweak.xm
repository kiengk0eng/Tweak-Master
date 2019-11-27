//Generated with FlexConverter.

#include <substrate.h>

%hook MRController
-(bool) isAdLoading {
return FALSE;
}

-(void) setIsAdLoading:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook MVSetting
-(bool) devMode {
return TRUE;
}

-(void) setDevMode:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook ASSplashAdModel
-(bool) handle {
return FALSE;
}

-(void) setHandle:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook FBANBannerAdAdapter
-(bool) startAdFromRootViewController:(id)arg1 {
return FALSE;
}

-(bool) startAdFromRootViewController:(id)arg1 animated:(bool)arg2 {
return FALSE;
arg2 = FALSE;
return %orig;
}
%end

%hook GADBannerView
-(bool) isAutoloadEnabled {
return FALSE;
}

-(void) setAutoloadEnabled:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook GADBannerAdViewDelegate
-(bool) adView:(id)arg1 shouldStartLoadWithRequest:(id)arg2 navigationType:(long long)arg3 {
return FALSE;
return %orig;
}
%end

%hook MPBannerAdManager
-(bool) adActionInProgress {
return FALSE;
}

-(void) setAdActionInProgress:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(bool) loading {
return FALSE;
}

-(bool) hasRequestedAtLeastOneAd {
return FALSE;
}

-(void) setHasRequestedAtLeastOneAd:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(bool) automaticallyRefreshesContents {
return FALSE;
}

-(void) setAutomaticallyRefreshesContents:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook GADNativeAdImageAdLoaderOptions
-(bool) disableImageLoading {
return TRUE;
}

-(void) setDisableImageLoading:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook GADAdURLStash
-(bool) hasLoadingAd {
return FALSE;
}
%end

%hook GADAdLoader
-(bool) isLoading {
return FALSE;
}
%end

%hook MRController
-(bool) isLoadingAd {
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
%end

%hook MPRewardedVideoAdManager
-(bool) loading {
return FALSE;
}

-(void) setLoading:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook GADWebView
-(bool) isLoading {
return FALSE;
}
%end

%hook MPNativeAdRequest
-(bool) loading {
return FALSE;
}

-(void) setLoading:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(bool) adHasReturned {
return FALSE;
}

-(void) setAdHasReturned:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(bool) autoCache {
return FALSE;
}

-(void) setAutoCache:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook MPNativeAdSourceQueue
-(bool) isAdLoading {
return FALSE;
}

-(void) setIsAdLoading:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook FBNativeAdScrollView
-(bool) isLoadingAds {
return FALSE;
}

-(void) setLoadingAds:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook GADBannerView
-(bool) slot:(id)arg1 shouldLoadRequest:(id)arg2 error:(id*)arg3 {
return FALSE;
return %orig;
}

-(bool) slotShouldReloadCurrentRequest:(id)arg1 {
return FALSE;
return %orig;
}

-(bool) slot:(id)arg1 shouldProcessAdResponse:(id)arg2 error:(id*)arg3 {
return FALSE;
}

-(bool) hasAutoRefreshed {
return FALSE;
}
%end

%hook GADDynamicHeightSearchBannerView
-(bool) webView:(id)arg1 shouldStartLoadWithRequest:(id)arg2 navigationType:(long long)arg3 {
return FALSE;
return %orig;
}
%end

%hook DFPBannerView
+(bool) canInitWithAdLoader:(id)arg1 error:(id*)arg2 {
return FALSE;
return %orig;
}

-(bool) slotShouldPreemptInProgressRequest:(id)arg1 {
return FALSE;
}

-(bool) slot:(id)arg1 notifyPublisherToRenderCustomRenderingAd:(id)arg2 error:(id*)arg3 {
return FALSE;
return %orig;
}

-(bool) enableManualImpressions {
return FALSE;
}

-(void) setEnableManualImpressions:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook DFPBannerViewOptions
-(bool) enableManualImpressions {
return FALSE;
}

-(void) setEnableManualImpressions:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook MobClickSession
-(bool) appBeKilling {
return TRUE;
}

-(void) setAppBeKilling:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook MPGoogleAdMobRewardedVideoCustomEvent
-(bool) hasAdAvailable {
return FALSE;
}
%end

%hook FacebookRewardedVideoCustomEvent
-(bool) hasAdAvailable {
return FALSE;
}
%end

%hook MPStoreKitProvider
+(bool) deviceHasStoreKit {
return FALSE;
}
%end

%hook ASSplashScanViewController
+(bool) hasSplashView {
return FALSE;
}
%end

%hook GADApplication
-(bool) isSplitScreenEnabled {
return FALSE;
}

-(bool) supportsOrientations:(unsigned long long)arg1 {
return FALSE;
return %orig;
}

-(void) openURL:(id)arg1 strictUniversalLink:(bool)arg2 completionHandler:(id)arg3 {
arg2 = FALSE;
return %orig;
}

-(bool) active {
return FALSE;
}
%end

%hook FBAdConfigManager
-(bool) isInAppAppStoreDisabled {
return TRUE;
}
%end

%hook FBInstreamAdDataModel
-(bool) adChoicesDisabled {
return TRUE;
}
%end

%hook GADMobileAds
-(bool) applicationMuted {
return TRUE;
}

-(void) setApplicationMuted:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook GADSlot
-(bool) monitoredViewVisible {
return FALSE;
}

-(bool) isBeingMediated {
return FALSE;
}

-(void) setReloadable:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(bool) monitoredViewIsSubviewOfDeviceScreen {
return FALSE;
}

-(bool) canEnableActiveViewMonitoring {
return FALSE;
}

-(bool) viewHasMadeImpression {
return FALSE;
}

-(bool) isMediating {
return FALSE;
}

-(bool) changeAdTypeTo:(id)arg1 {
return FALSE;
}

-(bool) isMakingRequest {
return FALSE;
}

-(void) loadNextRequestWithAutoRefresh:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(bool) shouldMakeRequest:(id)arg1 {
return FALSE;
}

-(void) setHasAutoRefreshed:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(bool) isGoogleAdURL:(id)arg1 {
return FALSE;
}

-(bool) validateAdResponseWithAdSize:(id)arg1 andValidAdSizes:(id)arg2 {
return FALSE;
return %orig;
}

-(void) setAdType:(id)arg1 andReloadRequest:(bool)arg2 {
arg2 = FALSE;
return %orig;
}

-(bool) hasAutoRefreshed {
return FALSE;
}

-(bool) reloadable {
return FALSE;
}

-(bool) manualImpressionsEnabled {
return FALSE;
}

-(void) setManualImpressionsEnabled:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(bool) isMRAIDEnabled {
return FALSE;
}

-(void) activeViewVisibilityChanged:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook GADNativeExpressAdView
-(bool) isAutoloadEnabled {
return FALSE;
}

-(void) setAutoloadEnabled:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook GADAdView
-(bool) hasLoadedAtLeastOnce {
return FALSE;
}

-(bool) isLoading {
return FALSE;
}
%end