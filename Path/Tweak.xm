#include <substrate.h>

%hook PTPerson
-(bool) isPremium {
return TRUE;
}
%end

%hook PTPurchase
-(bool) isPremiumPurchase {
return TRUE;
}
%end

%hook PTPost
-(bool) isPremiumStory {
return TRUE;
}
%end