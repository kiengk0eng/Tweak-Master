#include <substrate.h>

%hook F24UserSubscription
-(bool) isActive {
return TRUE;
}
%end

%hook F24UserSession
+(bool) canUpdateWithServerResponse {
return TRUE;
}

-(bool) isFeatureAllowed {
return TRUE;
}

-(bool) adsEnabled {
return FALSE;
}

-(bool) canUpgrade {
return TRUE;
}

-(bool) updateWithServerResponse {
return TRUE;
}

-(void) setAdsEnabled:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(bool) isSubscriptionLive {
return TRUE;
}

-(bool) isFeatureAllowed:(id)arg1 {
return TRUE;
arg1 =0;
return %orig;
}
%end

%hook Flight
+(bool) hasProAppInstalled {
return TRUE;
}

-(bool) hasActiveSubscriptions {
return TRUE;
}

-(bool) shouldUseProUpgradeWithForceRefresh:(bool)arg1 {
return TRUE;
arg1 = TRUE;
return %orig;
}
%end

%hook F24AlertHandler
-(bool) isSpecialFlightsSubscribed {
return TRUE;
}

-(bool) isTopicSubscribed {
return TRUE;
}
%end

%hook F24MainViewController
-(bool) activeBoughtPremiumSubscription {
return TRUE;
}
%end

%hook F24AppFeedbackAndReviewHelper
-(bool) checkHasActiveSubscription {
return TRUE;
}

-(bool) checkHadActiveSubscription {
return TRUE;
}
%end

%hook F24FeatureManager
-(id) includeBusiness:(bool)arg2 {
arg2 = TRUE;
return %orig;
}

-(bool) serverUpdatesEnabled {
return TRUE;
}
%end

%ctor {
    %init(Flight = objc_getClass("FlightradarFree.SubscriptionPurchaseManager"));
}

