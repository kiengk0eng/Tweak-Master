#include <substrate.h>

%hook UserProfilePageUserInfo
-(bool) userV {
return TRUE;
}

-(void) setUserV:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) kvip {
return TRUE;
}

-(void) setKvip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) vip {
return TRUE;
}

-(void) setVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) vvip {
return TRUE;
}

-(void) setVvip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook PremiumManager
-(bool) isVVIP {
return TRUE;
}

-(void) setIsVVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) isKSongPremium {
return TRUE;
}

-(bool) isDTS {
return TRUE;
}

-(unsigned long long) expireTime {
return 1;
}
%end

%hook PremiumModel
-(bool) isVip {
return TRUE;
}

-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) isDTS {
return TRUE;
}

-(void) setIsDTS:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) isVVip {
return TRUE;
}

-(void) setIsVVip:(bool)arg1 {
arg1 =TRUE;
return %orig;
}

-(bool) isKVip {
return TRUE;
}

-(void) setIsKVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) isPremiumForCurrentUser {
return TRUE;
}

-(unsigned long long) expireTime {
return 1;
}

-(void) setExpireTime:(unsigned long long)arg1 {
arg1 = 1;
return %orig;
}

-(unsigned long long) kvipExpireTime {
return 1;
}

-(void) setKvipExpireTime:(unsigned long long)arg1 {
arg1 = 1;
return %orig;
}

-(unsigned long long) serverTime {
return 2;
}

-(void) setServerTime:(unsigned long long)arg1 {
arg1 = 2;
return %orig;
}
%end

%hook DTSManager
-(bool) isDTSUser {
return TRUE;
}

-(bool) isDTSServiceExpire {
return FALSE;
}

-(bool) isUserHadRegisterDTS {
return TRUE;
}

-(bool) isAuthenticated {
return TRUE;
}
%end

%hook SingerCluster
-(bool) isVip {
return TRUE;
}
%end

%hook SongInfo
-(bool) isVipSong {
return FALSE;
}
%end

%hook AllSongSubViewController
-(bool) allSongVip {
return TRUE;
}
%end

%hook BLYDevice
+(bool) isJailBreak {
return FALSE;
}
%end

%hook WloginSdk
-(bool) _isJailbreak {
return FALSE;
}
%end

%hook QRCodeTlv_31
-(bool) _isJailbreak {
return FALSE;
}
%end

%hook LoadAdReqBuilder
-(id) clearJailBroken {
return [NSNumber numberWithInteger:0];
}
%end

%hook QMLogManager
-(id) encodeJailBrokenKey:(id)arg1 {
return [NSNumber numberWithInteger:0];
arg1 = [NSNumber numberWithInteger:0];
}
%end