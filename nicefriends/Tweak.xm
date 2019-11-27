#include <substrate.h>

%hook LCSFriendsDetailModel
-(bool) isVip {
return TRUE;
}

-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook CustomizeCommentViewModel
-(bool) isVip {
return TRUE;
}
%end

%hook GxIapItemBase
-(bool) isVIPProduct {
return TRUE;
}
%end

%hook MakeFriendsVIPViewController
-(bool) isVIP {
return TRUE;
}

-(void) setIsVIP:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook GxAddFriendsUserInfoModel
-(bool) isVip {
return TRUE;
}

-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook MakeFriendsVIPHeaderSectionView
-(bool) isVIP {
return TRUE;
}

-(void) setIsVIP:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook GxUserBaseModel
-(bool) isVip {
return TRUE;
}
%end

%hook AddMeModel
-(bool) isVip {
return TRUE;
}

-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook StoreVIPViewController
-(bool) isVip {
return TRUE;
}

-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook MatchVIPViewController
-(bool) isVIP {
return %orig;
}

-(void) setIsVIP:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook GateVIPViewController
-(bool) isVIP {
return TRUE;
}

-(void) setIsVIP:(bool)arg1 {
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

%hook GxWebApp
-(bool) subscriptionEnabled {
return TRUE;
}

-(void) setSubscriptionEnabled:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) consumptionEnabled {
return TRUE;
}

-(void) setConsumptionEnabled:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) innerEnabled {
return TRUE;
}

-(void) setInnerEnabled:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) multiTabEnabled {
return TRUE;
}

-(void) setMultiTabEnabled:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook GxIapItem
-(bool) hasCustomPlan {
return TRUE;
}

-(void) setHasCustomPlan:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook GxIapItemBase
-(bool) isCoinProduct {
return TRUE;
}

-(bool) isSubsLikeProduct {
return TRUE;
}

-(bool) isSubsFollowProduct {
return TRUE;
}

-(bool) isUserProduct {
return TRUE;
}

-(bool) isFancyFollowProduct {
return TRUE;
}

-(bool) isVideoViewProduct {
return TRUE;
}

-(bool) isCommentProduct {
return TRUE;
}

-(bool) isStoryViewProduct {
return TRUE;
}
%end

%hook IwUser
-(bool) isVerified {
return TRUE;
}

-(void) setIsVerified:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook GxUserBaseModel
-(bool) isVerified {
return TRUE;
}

-(void) setIsVerified:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook IGInsightUser
-(bool) isVerified {
return TRUE;
}

-(void) setIsVerified:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook SCAuthedUser
-(bool) isVerified {
return TRUE;
}

-(void) setIsVerified:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook IgUser
-(bool) isVerified {
return TRUE;
}

-(void) setIsVerified:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook GxFeatures
-(void) setBEnable:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(void) setBSetStatusEnable:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(void) setBStatus:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) bEnable {
return TRUE;
}

-(bool) bSetStatusEnable {
return TRUE;
}

-(bool) bStatus {
return TRUE;
}
%end