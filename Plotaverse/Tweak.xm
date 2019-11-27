#include <substrate.h>

%hook VungleUserSegmentationModel
-(bool) isPayingUser {
return TRUE;
}

-(void) setPayingUser:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook ISSegment
-(id) isUserPaying {
return [NSNumber numberWithBool:YES];
}

-(void) setIsUserPaying:(bool)arg1 {
arg1 = [NSNumber numberWithBool:YES];
return %orig;
}

-(bool) paying {
return TRUE;
}

-(void) setPaying:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook STAAdapptManager
+(bool) getIsPayingUser {
return TRUE;
}
%end

%hook TWTRStore
-(id) subscriptions {
return [NSNumber numberWithBool:YES];
}

-(void) setSubscriptions:(bool)arg1 {
arg1 = [NSNumber numberWithBool:YES];
return %orig;
}
%end

%hook Two
-(id) onPurchaseWatermark {
return [NSNumber numberWithBool:YES];
}
%end

%hook Tree
-(id) onSubscribe {
return [NSNumber numberWithBool:YES];
}
%end

%hook Four
-(void) onSubscribe:(bool)arg1 {
arg1 = [NSNumber numberWithBool:YES];
return %orig;
}
%end

%ctor {
    %init(One = objc_getClass("Plotagraph.AppDelegate"),
Two = objc_getClass("Plotagraph.SubscriptionsViewController"),
Tree = objc_getClass("Plotagraph.HomePageViewController"),
Four = objc_getClass("Plotagraph.SubscriptionOptionsViewController"));
};