#include <substrate.h>


%hook FIRAInAppPurchaseItem
-(bool) isFreeTrial {
return FALSE;
}

-(void) setFreeTrial:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook FIRARemoteConfig
-(bool) isExpired {
return FALSE;
}
%end

%hook TCProfileEditViewController
-(id) premiumBadge {
return [NSNumber numberWithInteger:1];
}

-(void) setPremiumBadge:(id)arg1 {
arg1 = [NSNumber numberWithInteger:1];
return %orig;
}
%end

%hook SearchResult
-(bool) isPremium {
return TRUE;
}

-(void) setIsPremium:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook Utils
+(bool) isUserPremium {
return TRUE;
}

+(bool) premiumExpired {
return FALSE;
}
%end