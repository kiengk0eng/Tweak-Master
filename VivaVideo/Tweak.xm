#include <substrate.h>

%hook XYSettingHomeVC
-(void) gotoVIP:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook XYIAPMgr
-(bool) isPurchasedRemoveWatermark {
return TRUE;
}

-(bool) isPurchasedIAPProduct:(id)arg1 {
return TRUE;
return %orig;
}

-(bool) isPurchased:(id)arg1 {
return TRUE;
return %orig;
}

-(bool) isPurchasedPro {
return TRUE;
}

-(bool) isPurchasedRemoveDurationLimit {
return TRUE;
}

-(bool) isPurchasedHD {
return TRUE;
}

-(bool) isPurchasedSpecialPack1 {
return TRUE;
}

-(bool) isPurchasedVideoAdjust {
return TRUE;
}

-(bool) isPurchasedDefaultAnimatedText {
return TRUE;
}

-(bool) isPurchasedUnlockEverything {
return TRUE;
}

-(bool) isPurchasedRemoveAd {
return TRUE;
}

-(bool) isPurchasedTemplate:(id)arg1 {
return TRUE;
return %orig;
}

-(bool) isPurchasedNoAD {
return TRUE;
}

-(bool) isPurchasedAtLeastOneItem {
return %orig;
}

-(bool) checkIsPurchaseByPreferenceKey:(id)arg1 {
return TRUE;
return %orig;
}
%end

%hook WBMessageRegisterViewController
-(bool) isPureInt:(id)arg1 {
return TRUE;
return %orig;
}
%end

%hook XYClipEditVC
-(void) userBehaviorLogClipEditAdjust:(id)arg1 isApplied:(bool)arg2 isPurchased:(bool)arg3 {
arg2 = TRUE;
arg3 = TRUE;
return %orig;
}
%end

%hook UMANUtils
+(bool) isPureFloat:(id)arg1 {
return TRUE;
return %orig;
}

+(bool) isPureInt:(id)arg1 {
return TRUE;
return %orig;
}
%end

%hook XYIAPSubscribeMgr
-(bool) checkIsPurchaseByPreferenceKey:(id)arg1 {
return TRUE;
return %orig;
}
%end