#include <substrate.h>

%hook SHUTagResult
-(bool) isPurchaseable {
return TRUE;
}

-(void) setPurchaseable:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook SHDInAppPurchase
-(bool) purchased {
return TRUE;
}

-(void) setPurchased:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) toggleable {
return TRUE;
}

-(void) setToggleable:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook SHUPaymentTableViewCell
-(bool) purchased {
return TRUE;
}

-(void) setPurchased:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook SHDShazamAccount
-(bool) isArtist {
return TRUE;
}

-(void) setVerified:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(void) setArtist:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) isVerified {
return TRUE;
}
%end

%hook SHMyShazamViewController
-(bool) isArtist {
return TRUE;
}

-(bool) proModeEnabled {
return TRUE;
}

-(void) setProModeEnabled:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook SHDMyShazamAccount
-(bool) isArtist {
return TRUE;
}

-(void) setArtist:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook SHKWatermarkDetector_iOS
-(bool) watermarkingEnabled {
return FALSE;
}

-(void) setWatermarkingEnabled:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook GADAdAppViewController
-(bool) isLoaded {
return FALSE;
}
%end

%hook GADApplication
-(bool) active {
return FALSE;
}
%end

%hook GADAd
-(bool) hasAdNetworkJavaScript {
return FALSE;
}
%end

%hook GADMAdNetworkConnector
-(bool) adMuted {
return TRUE;
}
%end

%ctor {
    %init(AppDelegate = objc_getClass("Shazam.AppDelegate"));
}

