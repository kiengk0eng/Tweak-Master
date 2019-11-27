#include <substrate.h>

%hook A
-(bool) isTinderPlusActive {
return TRUE;
}

-(void) setIsTinderPlusActive:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook TNDRProductsManager
-(bool) isTinderPlusActive {
return TRUE;
}

-(bool) areGoldProductsSameAs {
return TRUE;
}
%end

%hook TNDRCurrentUser
-(bool) canUseFastMatch {
return TRUE;
}

-(bool) isTinderPlusEnabled {
return TRUE;
}

-(void) setIsTinderPlusEnabled:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) isTinderPlusSubscriber {
return TRUE;
}

-(bool) hideAge {
return TRUE;
}

-(bool) hideDistance {
return TRUE;
}

-(bool) selectEnabled {
return TRUE;
}
%end

%hook TNDRHomeViewModel
-(bool) isCurrentUserTinderPlusSubscriber {
return TRUE;
}

-(bool) isCurrentUserTinderGoldSubscriber {
return TRUE;
}
%end

%hook B
-(bool) isTinderPlusFeatureEnabled {
return TRUE;
}

-(bool) isTinderPlusSubscriber {
return TRUE;
}

-(bool) isTinderGoldSubscriber {
return TRUE;
}

-(bool) isGoldFeatureEnabled {
return TRUE;
}
%end

%hook TNDRPlusMerchandisingViewModel
-(bool) isTinderGoldSubscriber {
return TRUE;
}
%end

%hook TNDRPlusMerchandisingViewController
-(bool) isTinderPlusSubscriber {
return TRUE;
}
%end

%hook TNDRPlusControlViewModel
-(bool) isTinderPlusSubscriber {
return TRUE;
}
%end

%hook TNDRBoostSummaryViewController
-(id) isTinderPlusSubscriber:(bool)arg3 {
arg3 = TRUE;
return %orig;
}
%end

%hook TNDRGamepadView
-(bool) isTinderPlusSubscriber {
return TRUE;
}
%end

%hook C
-(bool) rewindButtonUnlocked {
return TRUE;
}

-(bool) boostButtonUnlocked {
return TRUE;
}

-(bool) superLikeButtonUnlocked {
return TRUE;
}

-(bool) isRecommendationUnlockScreenWithRecommendation {
return TRUE;
}
%end

%hook TNDRMetaUser
-(bool) hidesDistance {
return TRUE;
}

-(void) setHidesDistance:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) hidesAge {
return TRUE;
}

-(void) setHidesAge:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) hidesAds {
return TRUE;
}

-(void) setHidesAds:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook D
-(id) actionAfterTinderPlus {
return [NSNumber numberWithInteger:1];
}

-(void) setActionAfterTinderPlus:(bool)arg1 {
arg1 = [NSNumber numberWithInteger:1];
return %orig;
}

-(void) paywallRequestsDismissal:(bool)arg1 completion:(id)arg2 {
arg1 = [NSNumber numberWithInteger:1];
arg2 = [NSNumber numberWithInteger:1];
return %orig;
}
%end

%ctor {
    %init(A = objc_getClass("Tinder.PurchasesModel"),
B = objc_getClass("Tinder.HomeMerchandisingCurrentUserViewModel"),
C = objc_getClass("Tinder.FireboardingContext"),
D = objc_getClass("Tinder.ControlYourProfileContext"));
};

