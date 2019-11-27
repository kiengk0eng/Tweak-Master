//Generated with FlexConverter.

#include <substrate.h>

%hook BetternetUser
-(bool) isPremium {
return TRUE;
}

-(void) setIsPremium:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(void) setPremiumExpirationDate:(double)arg1 {
arg1 = 1970;
return %orig;
}

-(double) premiumExpirationDate {
return 1970;
}
%end

%hook CategoryLocationTableViewCell
-(bool) isFree {
return FALSE;
}

-(void) setIsFree:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook NoPremiumLocationTableViewCell
-(void) setIsFree:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(bool) isFree {
return FALSE;
}
%end

%hook LocationTableViewCell
-(void) setIsFree:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(bool) isFree {
return FALSE;
}
%end

%hook LocationManager
+(bool) currentLocationIsFree {
return FALSE;
}

+(void) andIsFree:(bool)arg4 {
arg4 = FALSE;
return %orig;
}
%end