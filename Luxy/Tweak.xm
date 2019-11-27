#include <substrate.h>

%hook MomentCell
-(bool) isVIP {
return TRUE;
}

-(void) setIsVIP:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook SquareAnimatedTransitioning
-(bool) isVip {
return TRUE;
}

-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook FullMatchModel
-(bool) isVIP {
return TRUE;
}
%end

%hook VisitorViewController
-(bool) isVIP {
return TRUE;
}

-(void) setIsVIP:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook MatchCardTransitioningDelegate
-(bool) isVip {
return TRUE;
}

-(void) setIsVip:(bool)arg1 {
return %orig;
}
%end

%hook AccountLevelCell
-(bool) isVip {
return TRUE;
}

-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook FilterDataWrapper
-(bool) isVip {
return TRUE;
}

-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook MomentCommentsViewCell
-(bool) isVIP {
return TRUE;
}

-(void) setIsVIP:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook GlobalFunction
+(bool) isVIPWithMask:(unsigned long long)arg1 {
return TRUE;
return %orig;
}

+(bool) isVIPWithUser {
return TRUE;
}

+(bool) isUnlockUndo {
return TRUE;
}
%end

%hook RecommendSquareItemAdapter
-(bool) isVIP {
return TRUE;
}

-(void) setIsVIP:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook SquareNavigationControllerDelegate
-(bool) isVip {
return TRUE;
}

-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook ProfileDataAdaptar
-(bool) isVIP {
return TRUE;
}
%end

%hook UserProfileViewController
-(void) resetVIPIconStatus:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook PurchaseLuxyBlackViewController
-(void) changeLuxyBlackFeature:(int)arg1 toValue:(bool)arg2 {
arg2 = TRUE;
arg1 = 4;
return %orig;
}
%end

%hook OSKActivity
-(bool) isAlreadyPurchased {
return TRUE;
}

+(bool) isAvailable {
return TRUE;
}

-(bool) isReadyToPerform {
return TRUE;
}
%end

%hook GroupListViewController
-(bool) jumptoPurchaseFAQ {
return FALSE;
}

-(void) setJumptoPurchaseFAQ:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook YapUser
-(bool) User_IsPlatinum {
return TRUE;
}

-(void) setUser_IsPlatinum:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(id) User_IsVip {
return [NSNumber numberWithInteger:1];
}

-(void) setUser_IsVip:(id)arg1 {
arg1 =  [NSNumber numberWithInteger:1];
return %orig;
}
%end

%hook ConversationViewController
-(bool) shouldPlayVIPUnlockAnimation {
return FALSE;
}

-(void) setShouldPlayVIPUnlockAnimation:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook GroupsStore
-(void) isUserVip:(bool)arg8 isVerifyUser:(bool)arg9 isStarUser:(bool)arg10 {
arg9 = TRUE;
arg8 = TRUE;
arg10 = TRUE;
return %orig;
}
%end

%hook ContactsStore
-(void) isvip:(bool)arg2 isVerify:(bool)arg3 isStarUser:(bool)arg4 {
arg2 = TRUE;
arg3 = TRUE;
arg4 = TRUE;
return %orig;
}
%end

%hook AccountLevelCell
-(void) setIsPlatinum:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) isMsgLocked {
return FALSE;
}

-(void) setIsMsgLocked:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(bool) isPlatinum {
return TRUE;
}

-(bool) isProspr {
return TRUE;
}

-(void) setIsProspr:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook PurchaseLuxyBlackViewController
-(bool) forbidShowCongratulateView {
return TRUE;
}

-(void) setForbidShowCongratulateView:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook FullMatchCardView
-(void) setScrollLocked:(bool)arg1 {
arg1 = FALSE;
return %orig;
}

-(bool) scrollLocked {
return FALSE;
}
%end

%hook CardTypeHelper
+(bool) isSuperBoost {
return TRUE;
}
%end

%hook VIPUnlockAnimationHelper
-(void) finishAnimation:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook LookbookUnlockView
-(bool) isIncome {
return TRUE;
}

-(void) setIsIncome:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook SquarePopAnimatedTransitioning
-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook MatchCardAnimatedTransitioning
-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook BarIconsView
-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook MatchCardDismissAnimatedTransitioning
-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook SIAlertView
-(void) setIsPlatinumCard:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook GlobalFunction
+(bool) isPlatinumWithMask:(unsigned long long)arg1 {
return TRUE;
}
%end

%hook YapTopic
-(bool) Topic_IsPlatinum {
return TRUE;
}

-(void) setTopic_IsPlatinum:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook SIAlertView
-(bool) isPlatinumCard {
return TRUE;
}
%end

%hook SquarePopAnimatedTransitioning
-(bool) isVip {
return TRUE;
}
%end

%hook MatchCardAnimatedTransitioning
-(bool) isVip {
return TRUE;
}
%end

%hook BarIconsView
-(bool) isVip {
return TRUE;
}

-(void) setMeIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) meIsVip {
return TRUE;
}

-(bool) isMe {
return TRUE;
}

-(void) setIsMe:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) isPT {
return TRUE;
}

-(void) setIsPT:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(void) setMeIsPT:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) meIsPT {
return TRUE;
}
%end

%hook MatchCardDismissAnimatedTransitioning
-(bool) isVip {
return TRUE;
}
%end

%hook RMStoreUserDefaultsPersistence
-(bool) isPurchasedProductOfIdentifier {
return TRUE;
}
%end

%hook RMStoreKeychainPersistence
-(bool) isPurchasedProductOfIdentifier {
return TRUE;
}
%end

%hook OSKActivitiesManager
-(bool) activityTypeIsPurchased:(id)arg1 {
return TRUE;
}
%end

%hook IAPManager
-(void) purchaseProduct:(int)arg1 {
arg1 = 1;
return %orig;
}
%end

%hook VouchPushModel
-(bool) isShowRose {
return TRUE;
}

-(void) setIsShowRose:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook GlobalFunction
+(bool) isLuxyStarWithMask:(unsigned long long)arg1 {
return TRUE;
return %orig;
}
%end

%hook RecommendSquareItemAdapter
-(bool) isLuxyStar {
return TRUE;
}

-(void) setIsLuxyStar:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook ProfileDataAdaptar
-(bool) isLuxyStar {
return TRUE;
}

-(bool) isPT {
return TRUE;
}
%end

%hook ProfileInfoCell
-(bool) isMe {
return TRUE;
}

-(void) setIsMe:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook MomentCell
-(bool) isPT {
return TRUE;
}

-(void) setIsPT:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook MomentCommentsViewCell
-(bool) isPT {
return TRUE;
}

-(void) setIsPT:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook RecommendSquareItemAdapter
-(bool) isPT {
return TRUE;
}

-(void) setIsPT:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook YapTakeALook
-(id) TakeALook_IsVip {
return  [NSNumber numberWithInteger:1];
}

-(void) setTakeALook_IsVip:(id)arg1 {
arg1 =  [NSNumber numberWithInteger:1];
return %orig;
}
%end

%hook UserAdapter
-(id) isVip {
return  [NSNumber numberWithInteger:1];
}

-(void) setIsVip:(id)arg1 {
arg1 =  [NSNumber numberWithInteger:1];
return %orig;
}
%end