#include <substrate.h>

%hook RoomProtocolParser
-(bool) isPro {
return TRUE;
}

-(void) setIsPro:(bool)arg1 setIsPro:(bool)arg3 {
arg1 = TRUE;
arg3 = TRUE;
return %orig;
}
%end

%hook ChatRoomClient
-(bool) setIsPro:(bool)arg4 {
arg4 = TRUE;
return %orig;
}
%end

%hook A
-(bool) isPro {
return TRUE;
}
%end

%hook ContactListItem
-(bool) isPro {
return TRUE;
}
%end

%hook RoomListItem
-(bool) isPro {
return TRUE;
}
%end

%hook MyProfileHandler
-(bool) hasProLevel {
return TRUE;
}

-(long long) proStatusType {
return 1;
}

-(unsigned long long) nickColor {
return 9400;
}

-(void) setNickColor:(unsigned long long)arg1 {
arg1 = 9400;
return %orig;
}
%end

%hook UserProfile
-(bool) adultRoomEnable {
return TRUE;
}
%end

%ctor {
    %init(A = objc_getClass("Camfrog.RoomAddressResponse"));
};