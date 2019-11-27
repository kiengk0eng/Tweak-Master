#include <substrate.h>

%hook SocialManager
-(bool) getUserPremium {
return TRUE;
}

-(void) setUserPremium:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook StarManager
-(bool) userPremium {
return TRUE;
}

-(void) setUserPremium:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook BDEHelper
-(bool) productPurchased {
return TRUE;
}

-(bool) isLoadedSubscriptions {
return TRUE;
}
%end

%hook SubscriptionItem
-(bool) loaded {
return TRUE;
}

-(void) setLoaded:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) loading {
return TRUE;
}

-(void) setLoading:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end