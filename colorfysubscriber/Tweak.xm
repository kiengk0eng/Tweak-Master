#include <substrate.h>

%hook StoreKitManager
-(bool) isSubscribed:(int)arg1 {
return TRUE;
arg1 = 99999;
return %orig;
}
%end

%hook TFGStoreKit
-(bool) isSubscription:(id)arg1 {
return TRUE;
return %orig;
}
%end

%hook TFGStoreKitReceiptValidator
-(bool) isSubscription:(id)arg1 {
return TRUE;
return %orig;
}
%end

%hook SocialPainting
-(bool) authorIsSubscriber {
return TRUE;
}
%end

%hook SocialPainting
-(void) setAuthorIsSubscriber:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook StoreKitManager
-(bool) isSubscriptionBased {
return TRUE;
}
%end

%hook StoreKitManager
-(bool) isSubscription:(id)arg1 {
return TRUE;
}
%end

%hook TFGPurchaseResult
-(id) isSubscription:(bool)arg5 {
arg5 = TRUE;
return %orig;
}
%end

%hook TFGPurchaseResult
-(bool) isSubscription {
return TRUE;
}
%end

%hook SocialUserDataManager
-(void) isSubscriber:(bool)arg2 {
arg2 = TRUE;
return %orig;
}
%end

%hook TFGTopazAnalyticsSession
-(void) setIsInstallUser:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook TFGTopazAnalyticsSession
-(bool) isInstallUser {
return TRUE;
}
%end