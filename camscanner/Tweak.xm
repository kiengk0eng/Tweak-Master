#include <substrate.h>

%hook EDAMAccounting
-(id) premiumServiceStart {
return [NSNumber numberWithInteger:1];
}

-(void) setPremiumServiceStart:(id)arg1 {
arg1 = [NSNumber numberWithInteger:1];
return %orig;
}
%end

%hook CSAccountSettingViewController
-(bool) isPremiumAccount {
return TRUE;
}

-(void) setIsPremiumAccount:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook CSSettings
+(bool) isPremiumFeatureAvailable {
return TRUE;
}

-(void) setIsPremiumFeatureAvailable:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook ENSession
-(bool) isPremiumUser {
return TRUE;
}

-(void) setIsPremiumUser:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) isBusinessUser {
return TRUE;
}
%end

%hook CSDataCenter
+(bool) isPremiumAccount {
return TRUE;
}

-(void) setIsPremiumAccount:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

+(bool) isPaidVersion {
return TRUE;
}

-(bool) isUpgradeUser {
return TRUE;
}

-(void) setIsUpgradeUser:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

+(bool) isPurchasedAccount {
return TRUE;
}
%end

%hook CamScannerViewController
-(bool) isPremiumAccount {
return TRUE;
}

-(void) setIsPremiumAccount:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook CSSubscribeDetailViewController
-(bool) purchaseFinished {
return TRUE;
}

-(void) setPurchaseFinished:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook HTTPAuthenticationRequest
-(bool) isBasic {
return FALSE;
}
%end

%hook DBUSERCOMMONAccountType
-(bool) isBasic {
return FALSE;
}

-(bool) isPro {
return FALSE;
}

-(id) initWithPro {
return [NSNumber numberWithBool:FALSE];
}

-(bool) isEqualToAccountType {
return TRUE;
}

-(bool) isBusiness {
return TRUE;
}
%end

%hook WBEngine
-(bool) isUserExclusive {
return TRUE;
}

-(void) setIsUserExclusive:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook EDAMPremiumInfo
-(id) premiumExpirationDate {
return [NSNumber numberWithInteger:1];
}

-(void) setPremiumExpirationDate:(id)arg1 {
arg1 = [NSNumber numberWithInteger:1];
return %orig;
}
%end