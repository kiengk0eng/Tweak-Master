#include <substrate.h>

%hook ACPurchaseManager
-(bool) isRequestProductsSuccess {
return TRUE;
}

-(void) setIsRequestProductsSuccess:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) isVIP {
return TRUE;
}
%end

%hook SysUtil
+(bool) isVip {
return TRUE;
}
%end

%hook ACVPNServerArea
-(bool) isVIP {
return TRUE;
}

-(void) setIsVIP:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook ACVPNServersCountryGroup
+(id) isVIP:(bool)arg3 {
arg3 = TRUE;
return %orig;
}
%end

%hook ACVPNManager
-(void) userIsVIP:(bool)arg3 {
arg3 = TRUE;
return %orig;
}

-(void) updateVIPStatus:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook ACUtil
+(bool) isLastSelectVIP {
return TRUE;
}

+(void) saveLastSelectVIP:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook ACUserCenter
-(bool) isVIP {
return TRUE;
}

-(void) setIsVIP:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook ACVPNServersViewController
-(bool) showingVIP {
return TRUE;
}

-(void) setShowingVIP:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) selectedVIP {
return TRUE;
}

-(void) setSelectedVIP:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end