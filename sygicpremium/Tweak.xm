#include <substrate.h>

%hook MainUtils
+(bool) isBundleWorldPaid {
return TRUE;
}

+(bool) isBundleWorldStandalone {
return TRUE;
}

+(bool) isBundleAllRegions {
return TRUE;
}
%end

%hook StoreDelegate
-(bool) isSubscription {
return TRUE;
}
%end

%hook ARView
+(bool) hasLicense {
return TRUE;
}
%end

%hook LicensedPluginControl
-(bool) hasLicense {
return TRUE;
}

-(int) getCurrentContentType {
return %orig;
}
%end

%hook GlympseManager
+(bool) hasLicense {
return TRUE;
}
%end

%hook GmeterPlugin
+(bool) hasLicense {
return TRUE;
}
%end

%hook DashcamManager
+(bool) hasLicense {
return TRUE;
}
%end

%hook HUDPlugin
+(bool) hasLicense {
return TRUE;
}
%end

%hook TravelBookPlugin
+(bool) hasLicense {
return TRUE;
}
%end

%hook FlurryUtil
+(BOOL) appIsCracked {
return FALSE;
}

+(BOOL) deviceIsJailbroken {
return FALSE;
}
%end

%hook BasePluginControl
-(int) getCurrentContentType {
return %orig;
}
%end

%hook PhotoNaviPlugin
-(int) getCurrentContentType {
return %orig;
}
%end

%hook HUDPlugin
-(int) getCurrentContentType {
return %orig;
}
%end

%hook CLSAnalyticsMetadataController
+(bool) hostJailbroken {
return FALSE;
}
%end

%hook PluginController
-(void) setLock:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook BasePluginContentView
-(bool) locked {
return FALSE;
}

-(void) setLocked:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook HudViewController
-(bool) getGpsSignal {
return TRUE;
}

-(bool) isTrafficVisible {
return TRUE;
}

-(void) setIsTrafficVisible:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook Config
+(bool) isSygicStoreEnabled {
return FALSE;
}
%end

%hook VoiceCommandsManager
+(bool) appLanguageSupported {
return TRUE;
}
%end

%hook MainApp
-(bool) enterpriseEditionExpired {
return FALSE;
}
%end

%hook SettingsObject
-(bool) couldExpire {
return FALSE;
}

-(void) setCouldExpire:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end