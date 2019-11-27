#include <substrate.h>

%hook WeatherDataParser
+(bool) isPremiumGoldMembershipUnlocked {
return TRUE;
}

+(bool) isPremiumStandardMembershipUnlocked {
return TRUE;
}

+(bool) isWatchBackgroudUpdateCacheExpired {
return TRUE;
}
%end

%hook RMAppReceiptIAP
-(bool) isActiveAutoRenewableSubscriptionForDate {
return FALSE;
}
%end

%hook CARStoreManager
-(bool) isPremiumGoldMembershipUnlocked {
return TRUE;
}

-(bool) isPremiumStandardMembershipUnlocked {
return TRUE;
}

-(bool) didPurchaseAutorenewingSubscription {
return FALSE;
}

-(bool) receiptContainsActiveStandardSub {
return TRUE;
}

-(bool) receiptContainsActiveGoldSub {
return TRUE;
}

-(void) extendProSubscription:(bool)arg1 {
arg1 = 1;
return %orig;
}

-(void) enableTrialSubscription:(long long)arg1 {
arg1 = 0;
return %orig;
}
%end