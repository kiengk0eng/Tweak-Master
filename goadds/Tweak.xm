//Generated with FlexConverter.

#include <substrate.h>

%hook GxAddMeUserInfoModel
-(bool) isVip {
return TRUE;
}

-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook GZVIPFeatureVideoView
-(bool) isVip {
return TRUE;
}

-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook GZAnalysisWVMPViewController
-(bool) isVip {
return TRUE;
}

-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook GZAnalysisUnlockView
-(bool) isVip {
return TRUE;
}

-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook AddMeVIPViewController
-(bool) isVIP {
return TRUE;
}

-(void) setIsVIP:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook GZAnaOutterBaseCollectionViewCell
-(bool) isVip {
return TRUE;
}

-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook CustomizeCommentViewModel
-(bool) purchaseAccess {
return TRUE;
}

-(void) setPurchaseAccess:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook FIRAInAppPurchaseItem
-(bool) isFreeTrial {
return TRUE;
}

-(void) setFreeTrial:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook PlanBFeatureVIPFeatureView
-(bool) isBecomeVip {
return TRUE;
}

-(void) setIsBecomeVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook GZSwingView
-(bool) isLoadAds {
return FALSE;
}

-(void) setIsLoadAds:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook GZAnalysisCardCollectionViewCell
-(bool) isVip {
return TRUE;
}

-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook GZAnalysisViewProfileViewController
-(bool) isVip {
return TRUE;
}

-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook GZAnalysisCardWVMPCollectionViewCell
-(bool) isVip {
return TRUE;
}

-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook GZAnalysisViewController
-(bool) isVip {
return TRUE;
}

-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
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

%hook GZAnaDetChildViewController
-(bool) isVip {
return TRUE;
}

-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook GZRandomAvatorView
-(bool) isVip {
return TRUE;
}

-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook GxUserBaseModel
-(bool) isVip {
return TRUE;
}
%end

%hook GxIapItemBase
-(bool) isVIPProduct {
return TRUE;
}
%end

%hook GxIapItem
-(bool) hasCustomPlan {
return TRUE;
}
%end