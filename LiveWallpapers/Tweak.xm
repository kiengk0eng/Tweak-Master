#include <substrate.h>

%hook ISBaseManager
-(bool) isPremium {
return TRUE;
}

-(bool) canShowPremiumAdapter {
return TRUE;
}

-(void) setCanShowPremiumAdapter:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) isPremiumAvailable {
return TRUE;
}
%end

%hook SCTSubscriptionService
-(bool) isPurchased {
return TRUE;
}
%end