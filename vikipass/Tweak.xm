#include <substrate.h>

%hook VKAPIResource
-(bool) isVikiPassExclusive {
return TRUE;
}

-(bool) isVikiPassPremiumExclusive {
return TRUE;
}

-(bool) isPaywallBlocked {
return TRUE;
}
%end

%hook VKActivity
-(bool) isVikiPassExclusive {
return TRUE;
}
%end

%hook VKUser
-(bool) isSubscriber {
return TRUE;
}

-(void) setIsSubscriber:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook A
-(bool) hasVikiPass {
return TRUE;
}

-(bool) hasFeature:(long long)arg1 {
return TRUE;
arg1 = 1;
return %orig;
}
%end

%hook VikiAppDelegate

-(bool) application:(id)arg1 didFinishLaunchingWithOptions:(id)arg2 {

UIAlertView *credits = [[UIAlertView alloc] initWithTitle:@"VIKI®"
						  message:@"Viki Pass is now active \n (Thanks You don’t forget popcorn) \n Kiengk0eng © 2018"
						 delegate:self
					cancelButtonTitle:@"Close"
					otherButtonTitles:@"Follow", nil];
[credits show];
[credits release];
return %orig;
}

%new
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {

NSString *button = [alertView buttonTitleAtIndex:buttonIndex];

	if([button isEqualToString:@"Follow"])
	{
		[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://twitter.com/Kiengk0eng"]];
	}
}
%end

%ctor {
    %init(A = objc_getClass("Viki.VKAPIPrivilages"));
};