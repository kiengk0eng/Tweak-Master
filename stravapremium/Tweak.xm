#include <substrate.h>

%hook STRVPremiumSubscriptionViewController
-(bool) isAnnual {
return TRUE;
}
%end

%hook Athlete
-(bool) isInAppPurchaseSubscriber {
return TRUE;
}
%end

%hook Athlete
-(bool) isMonthlyPremiumSubscriber {
return TRUE;
}
%end

%hook STRVPremiumSubscriptionViewController
-(void) setIsAnnual:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook Athlete
-(bool) isPremium {
return TRUE;
}
%end

%hook AthleteTableViewController
-(bool) isViewedAthleteLoggedInUserAndPremium {
return TRUE;
}
%end

%hook STRVServerDefinedLeaderboard
-(bool) isPremium {
return TRUE;
}
%end

%hook User
-(bool) shouldAlwaysShowPremiumTrial {
return FALSE;
}
%end

%hook User
-(void) setAlwaysShowPremiumTrial:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook StravaPremiumManager
-(bool) isPremiumTrialPending {
return FALSE;
}
%end

%hook StravaPremiumManager
-(bool) isPremium {
return TRUE;
}
%end