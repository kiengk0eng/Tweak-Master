#include <substrate.h>

%hook SettingModel
-(bool) iTranslatePremiumActive {
return TRUE;
}

-(void) setITranslatePremiumActive:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(id) purchasedAnythingHash {
return [NSNumber numberWithBool:YES];
}

-(void) setPurchasedAnythingHash:(id)arg1 {
arg1 = [NSNumber numberWithBool:YES];
return %orig;
}
%end

%hook A
-(id) purchaseLegacyAsr:(bool)arg9 purchaseLegacyNoAds:(bool)arg10 purchaseLegacyPremium:(bool)arg11 {
arg9 = TRUE;
arg10 = TRUE;
arg11 = TRUE;
return %orig;
}
%end

%hook B
-(id) yourProSubscriptionLable {
return [NSNumber numberWithInteger:1];
}

-(void) setYourProSubscriptionLable:(id)arg1 {
arg1 = [NSNumber numberWithInteger:1];
return %orig;
}
%end

%hook C
-(void) subscribeYearly:(id)arg1 {
arg1 = [NSNumber numberWithInteger:1];
return %orig;
}
%end

%ctor {
    %init(A = objc_getClass("iTranslate.SettingsModelAdapter"),
B = objc_getClass("iTranslateAccountsUI.GetAllAppsViewController"),
C = objc_getClass("iTranslateAccountsUI.PurchaseView100013"),
D = objc_getClass("iTranslate.AppDelegate"));
};