#include <substrate.h>

%hook A
-(bool) isAnySubscriptionPurchasedBefore {
return TRUE;
}

-(bool) isAnySubscriptionActive {
return TRUE;
}

-(long long) purchaseCountForProductID {
return 1;
}

-(bool) isLimitedWithSubscription {
return FALSE;
}

-(bool) isLifeTimeSubscriptionAcitve {
return TRUE;
}

-(bool) isManualSubscriptionActive {
return TRUE;
}

-(bool) isLifeTimeSubscriptionProduct {
return TRUE;
}

-(bool) isManualSubscriptionProduct {
return TRUE;
}

-(bool) isPurchasing {
return TRUE;
}

-(bool) isVerifying {
return TRUE;
}

-(void) setIsPurchasing:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(void) setIsVerifying:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) isProductInformationAvailableForProductID {
return TRUE;
}

-(bool) isProductInformationAvailable {
return TRUE;
}

-(long long) trialDaysLeft {
return 360;
}

-(bool) is3DaysTrialExpired {
return FALSE;
}
%end

%hook TDAppProfile
-(long long) purchaseTime {
return 2020;
}

-(void) setPurchaseTime:(long long)arg1 {
arg1 = 2020;
return %orig;
}
%end

%hook TDUtility
+(long long) getPurchaseDate {
return %orig;
}
%end

%hook B
-(double) subscriptionProlongTimeInterval {
return 2020;
}

-(void) setSubscriptionProlongTimeInterval:(double)arg1 {
arg1 = 2020;
return %orig;
}

-(bool) hasPurchasesForProductID {
return TRUE;
}

-(long long) purchaseCountForProductID {
return 1;
}
%end

%hook C
-(bool) hasTrial {
return TRUE ;
}
%end

%ctor {
    %init(A = objc_getClass("HotEight.Salesman"),
B = objc_getClass("HotEight.ReceiptVerificator"),
C = objc_getClass("HotEight.StoreProduct"),
D = objc_getClass("HotEight.AppDelegate"));
};