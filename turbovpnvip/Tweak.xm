#include <substrate.h>

%hook ACVPNServerCountryGroup
+(id) isVIP:(bool)arg3 {
arg3 = TRUE;
return %orig;
}
%end

%hook ACVPNServerArea
-(void) setIsVIP:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) isVIP {
return TRUE;
}
%end

%hook ACVPNManager
-(void) userIsVIP:(bool)arg3 {
arg3 = TRUE;
return %orig;
}
%end

%hook ACUserCenter
-(bool) isVIP {
return TRUE;
}

-(void) setIsVIP:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook ACPurchaseManager
-(bool) isVIP {
return TRUE;
}
%end

%hook DeviceInfo
+(bool) isJailbroken {
return FALSE;
}
%end

%hook BLYDevice
+(bool) IsJailbreak {
return FALSE;
}

-(bool) IsJailbreak {
return FALSE;
}
%end

%hook MVDeviceInfo
-(bool) isJailbreak {
return FALSE;
}
%end

%hook MobClick
+(bool) isJailbroken {
return FALSE;
}
%end

%hook FlurryUtil
+(BOOL) deviceIsJailbroken {
return FALSE;
}
%end

%hook UMTDeviceInfo
-(void) setIs_jailbroken:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end