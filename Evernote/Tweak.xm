#include <substrate.h>

%hook EVEInAppPirchaseManager
-(id) activePayment {
return [NSNumber numberWithBool:YES];
}

-(void) activePayment:(bool)arg1 {
arg1 = [NSNumber numberWithBool:YES];
return %orig;
}

-(id) fullProductsRequest {
return [NSNumber numberWithBool:YES];
}

-(void) setFullProductsRequest:(bool)arg1 {
arg1 = [NSNumber numberWithBool:YES];
return %orig;
}
%end


%hook A
-(bool) hasSubscription {
return TRUE;
}
%end