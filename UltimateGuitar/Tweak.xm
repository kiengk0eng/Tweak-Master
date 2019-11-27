#include <substrate.h>

%hook UGBottomMenuPanelProps
-(bool) isTabPro {
return TRUE;
}

-(void) setIsTabPro:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook EVOProduct
-(bool) lifetime {
return TRUE;
}

-(void) setLifetime:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook EVOServiceAccess
-(double) dateAccess {
return 1;
}

-(void) setDateAccess:(double)arg1 {
arg1 = 1;
return %orig;
}

-(bool) lifetime {
return TRUE;
}

-(bool) isLifetimeAccess {
return TRUE;
}

-(bool) isValidAccess {
return TRUE;
}

-(bool) isSubscriptionAccess {
return TRUE;
}

-(void) setLifetime:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook UGMarketingController
-(bool) webView {
return FALSE;
}
%end

%hook UGProMarketingController
-(void) setReady:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(bool) ready {
return FALSE;
}
%end