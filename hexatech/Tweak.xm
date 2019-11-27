#include <substrate.h>

%hook BNUser
-(bool) isPremium {
return TRUE;
}

-(void) setPremium:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook HTVpnApp
-(bool) isPremium {
return TRUE;
}
%end

%hook HSSUser
-(bool) isPremium {
return TRUE;
}

-(bool) hasDedicatedServersPackage {
return TRUE;
}

-(double) expirationDate {
return 1;
}

-(void) setExpirationDate:(double)arg1 {
arg1 = 1;
return %orig;
}
%end

%hook AFBaseUser
-(void) setPremium:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) isPremium {
return TRUE;
}
%end

%hook AFUserAccount
-(bool) hasLifetime {
return TRUE;
}

-(bool) isValid {
return TRUE;
}

-(void) setIsValid:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end