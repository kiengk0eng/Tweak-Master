#include <substrate.h>

%hook GxAddMeUserInfoModel
-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) isVip {
return TRUE;
}
%end

%hook CustomizeCommentViewModel
-(bool) isVip {
return TRUE;
}
%end

%hook GxUserBaseModel
-(bool) isAutoVip {
return TRUE;
}

-(bool) isVip {
return TRUE;
}
%end

%hook MFUserFinance
-(bool) isVip {
return TRUE;
}
%end

%hook GxIapItemBase
-(bool) isVIPProduct {
return TRUE;
}
%end

%hook AddMeDetailModel
-(bool) isVip {
return TRUE;
}

-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook GxWebApp
-(bool) subscriptionEnabled {
return TRUE;
}

-(void) setSubscriptionEnabled:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook PlanBSubscribeViewController
-(bool) isMonth {
return TRUE;
}

-(void) setIsMonth:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook GxOpenAdsModel
-(bool) enabled {
return FALSE;
}

-(void) setEnabled:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook GxIapItemBase
-(bool) isUserProduct {
return TRUE;
}

-(bool) isBoostProduct {
return TRUE;
}
%end

%hook GxIapItem
-(void) setMonthCount:(long long)arg1 {
arg1 = 36;
return %orig;
}
%end

%hook GxFeatures
-(bool) bEnable {
return TRUE;
}

-(void) setBEnable:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end