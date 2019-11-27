#include <substrate.h>

%hook GMISettingsAvatar
-(bool) premium {
return TRUE;
}

-(void) setPremium:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(id) initWithPremium:(bool)arg1  {
arg1 = TRUE;
return %orig;
}

-(void) updatePremium:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook 1
-(bool) disablePremium {
return FALSE;
}

-(bool) testFlightPremiumDisabled {
return FALSE;
}
%end

%hook 2
-(void) hasPremium:(bool)arg3 {
arg3 = TRUE;
return %orig;
}
%end

%hook 3
-(bool) hasActiveSubscription {
return TRUE;
}

-(bool) iOSSubscriptionActive {
return TRUE;
}

-(bool) hasExternalSubscription {
return TRUE;
}

-(void) products {
UILabel *label = MSHookIvar<UILabel *>(self, "_products");
}

-(void) setProducts:(id)arg1 {
arg1 = UILabel *label = MSHookIvar<UILabel *>(self, "_setProducts");
}
%end

%hook SettingsViewController
-(bool) userSubscribed {
return TRUE;
}

-(void) setUserSubscribed:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook 4
+(id) isActive {
UILabel *label = MSHookIvar<UILabel *>(self, "_isActive");
}

+(id) activeUntil {
return [NSNumber numberWithInteger:2067];
}
%end

%hook MixpanelABService
-(void) setPremium {
UILabel *label = MSHookIvar<UILabel *>(self, "_setPremium");
}
%end

%ctor {
%init(1 = objc_getClass("Mimo.DeveloperMenuService"),

2 = objc_getClass("Mimo.ProfileHeaderView"),

3 = objc_getClass("Mimo.FinancialService"),

4 = objc_getClass("Mimo.SubscriptionConstants"));
};