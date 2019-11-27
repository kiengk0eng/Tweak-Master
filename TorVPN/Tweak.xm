#include <substrate.h>

%hook SystemInfo
+(bool) isPurchaseEnabled {
return TRUE;
}

+(bool) isIAPHelperEnabled {
return TRUE;
}

+(bool) isPaidApp {
return TRUE;
}

+(bool) isAdModeDisabled {
return TRUE;
}

+(bool) isLicensed {
return TRUE;
}

+(bool) isXBrowser {
return TRUE;
}

+(bool) isInAdMode {
return FALSE;
}

+(bool) isAutoAdsDisabled {
return TRUE;
}

+(bool) isRewardedAdEnabled {
return FALSE;
}

+(bool) isCommercialBreakEnabled {
return TRUE;
}

+(bool) isEnterprise {
return TRUE;
}

+(bool) licenseCanConnect {
return TRUE;
}

+(bool) isDefaultPacketModeEnabled {
return FALSE;
}

+(id) fullVersion {
return [NSNumber numberWithInteger:1];
}
%end

%ctor {
%init(AppDelegate = objc_getClass("VPNTorBrowser.AppDelegate"));
}