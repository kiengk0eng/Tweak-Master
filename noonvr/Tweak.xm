#include <substrate.h>

%hook VRPlayerViewController
-(void) isTrialMode:(bool)arg1 isTrialMode:(bool)arg3 {
arg1 = FALSE;
arg3 = FALSE;
return %orig;
}
%end