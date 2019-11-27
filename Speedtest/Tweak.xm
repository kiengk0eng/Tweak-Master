#include <substrate.h>

%hook LayoutParams
-(void) setIsPaidUser:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook SpeedTestResultView
-(void) setIsPaidUserMode:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook PingParticleView
-(void) setIsPaidUser:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook ResultsBarView
-(void) setIsPaidUser:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) isPaidUser {
return TRUE;
}
%end

%hook SpeedTestViewController
-(void) setIsPaidUser:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) isPaidUser {
return TRUE;
}
%end

%hook UserState
-(bool) purchasedUser {
return TRUE;
}

-(void) setPurchasedUser:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook SpeedConsoleView
-(void) setPaidUserNode:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(id) isPaidUser:(bool)arg2 {
arg2 = TRUE;
return %orig;
}
%end