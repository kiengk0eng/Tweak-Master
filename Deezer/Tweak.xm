#include <substrate.h>

%hook SASNativeAdManager
-(bool) isValidPremiumAd {
return FALSE;
}
%end

%hook SASNativeRequestManager
-(bool) premiumAdExistsAndIsFromTheRightType {
return FALSE;
}

-(bool) premiumAdIsFromTheRightTypeIfItExists {
return FALSE;
}
%end

%hook SASRequestManager
-(bool) premiumAdIsFromTheRightTypeIfItExists {
return FALSE;
}

-(bool) premiumAdExistsAndIsFromTheRightType {
return FALSE;
}
%end

%hook DeezerContentWindowing
-(bool) isValidPremiumAd {
return TRUE;
}
%end

%hook SASAdsViewController
-(bool) isValidPremiumAd {
return FALSE;
}
%end

%hook DZROpeningAdManager
-(bool) isBlocked {
return TRUE;
}

-(void) setIsBlocked:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook XMPPUserMemoryStorageObject
-(id) subscription {
return [NSNumber numberWithBool:YES];
}
%end

%hook XMPPPubSub
-(id) subscribeToNode:(id)arg1 withJID:(id)arg2 {
return [NSNumber numberWithBool:YES];
arg1 = [NSNumber numberWithBool:YES];
arg2 = [NSNumber numberWithBool:YES];
return %orig;
}
%end

%hook IDMessagingService
-(id) subscribers {
return [NSNumber numberWithBool:YES];
}

-(void) setSubscribers:(id)arg1 {
arg1 = [NSNumber numberWithBool:YES];
return %orig;
}

-(id) subscribe {
return [NSNumber numberWithBool:YES];
}

-(id) subscribersAccessLock {
return [NSNumber numberWithBool:YES];
}
%end