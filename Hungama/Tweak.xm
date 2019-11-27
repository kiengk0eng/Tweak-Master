#include <substrate.h>

%hook HMUserDefaults
+(bool) isSubscribedUser {
return TRUE;
}

+(id) getProUnitImageURl {
return [NSNumber numberWithBool:TRUE];
}

+(id) getUserSubscriptionTypeStr {
return [NSNumber numberWithBool:TRUE];
}

+(id) getProUnitActionUrl {
return [NSNumber numberWithBool:TRUE];
}
%end

%hook NetworkManager
-(bool) cekIfUserIsInOfflineMode {
return TRUE;
}
%end

%hook HungamaMisicInApp
-(bool) productPurchased {
return TRUE;
}

-(void) buyProduct:(id)arg1 {
arg1 = [NSNumber numberWithBool:TRUE];
return %orig;
}

-(void) SubscribeUser:(id)arg1 {
arg1 = [NSNumber numberWithBool:TRUE];
return %orig;
}
%end

%hook SubscribeViewController_2
-(id) products {
return [NSNumber numberWithBool:TRUE];
}

-(void) setProducts:(id)arg1 {
arg1 = [NSNumber numberWithBool:TRUE];
return %orig;
}
%end