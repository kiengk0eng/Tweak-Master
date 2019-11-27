#include <substrate.h>



%hook SettingsModel
-(bool) iTranslatePremiumActive {
return TRUE;
}

-(void) setiTranslatePremiumActive:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) kVPR {
return TRUE;
}

-(void) setKVPR:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(id) purchasedAnythingHash {
return [NSNumber numberWithInteger:1];
}

-(void) setPurchasedAnythingHash:(id)arg1 {
arg1 = [NSNumber numberWithInteger:1];
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

%hook iTor
-(void) offlineSwitchChanged:(id)arg1 {
arg1 = [NSNumber numberWithInteger:1];
return %orig;
}
%end

%ctor {
    %init(iTranslate = objc_getClass("iTranslate.AppDelegate"),
iTor = objc_getClass("iTranslate.SettingsTableViewController"));
};