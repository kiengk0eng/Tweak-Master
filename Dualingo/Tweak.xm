#include <substrate.h>

%hook DUOSessionManager
-(bool) isPlusEnabled {
return TRUE;
}
%end

%hook DUOSkillTreeViewController
-(bool) isPlusEnabled {
return TRUE;
}
%end

%hook DUOAdsEligibitily
+(bool) userHasAdsFreeWithUser {
return FALSE;
}
%end

%hook DUOPlusOfferCell
-(bool) userHasPlus {
return TRUE;
}

-(void) setUserHasPlus:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook One
-(bool) hasPlus {
return TRUE;
}
%end

%hook Subscription
-(bool) isSubscribed {
return TRUE;
}
%end

%hook WeborbClient
-(bool) isActiveSubscriber {
return TRUE;
}
%end

%ctor {
%init(One = objc_getClass("DuolingoMobile.DUOUser"));
}