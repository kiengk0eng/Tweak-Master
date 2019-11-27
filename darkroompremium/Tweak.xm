#include <substrate.h>

%hook HSLIAPHelper
-(bool) productIsPurchased {
return TRUE;
}
%end

%hook PFDevice
-(bool) isJailbroken {
return FALSE;
}
%end