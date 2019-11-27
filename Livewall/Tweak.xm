#include <substrate.h>

%hook ISSegment
-(id) isUserPaying {
return [NSNumber numberWithInteger:1];
}

-(void) setIsUserPaying:(id)arg1 {
arg1 = [NSNumber numberWithInteger:1];
return %orig;
}

-(bool) paying {
return TRUE;
}

-(void) setPaying:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook ISBaseManager
-(bool) isPremium:(id)arg1 {
return TRUE;
arg1 = [NSNumber numberWithInteger:1];
return %orig;
}

-(bool) isPremiumAvailable {
return TRUE;
}
%end

%hook APDSdk
-(bool) hasInAppPurchases {
return TRUE;
}
%end

%hook VungleUserSegmentationModel
-(bool) isPayingUser {
return TRUE;
}

-(void) setPayingUser:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook STAAdapptManager
+(bool) getIsPayingUser {
return TRUE;
}
%end

%hook WPInAppPurchaseManager
-(bool) isAlreadySubscribed {
return TRUE;
}
%end