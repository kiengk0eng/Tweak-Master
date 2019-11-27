#include <substrate.h>

%hook BMGateKeeper
-(long long) hasPurchasedPass {
return 1;
}
%end

