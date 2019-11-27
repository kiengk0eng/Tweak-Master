#include <substrate.h>

%hook FIRAInAppPurchaseItem
-(bool) isFreeTrial {
return FALSE;
}

-(void) setFreeTrial:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook RemoveWatermarkManager
-(bool) isRemoveWatermark {
return TRUE;
}

-(void) setRemoveWatermark:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook KMAudioSongItem
-(bool) isPremium {
return TRUE;
}

-(void) setIsPremium:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook Assets
+(bool) isAssetPremiumFromFolderName {
return TRUE;
}
%end

%hook HotBottomView
-(bool) isPremium {
return TRUE;
}
%end