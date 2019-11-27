#include <substrate.h>

%hook KWPPOneKeyDocerVipTipView
-(bool) bought {
return TRUE;
}

-(void) setBought:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook KWPPOneKeyShowBoardBottomBarView
-(bool) docerVip {
return TRUE;
}

-(void) setDocerVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook VipInfo
-(bool) has_ad {
return TRUE;
}

-(void) setHas_ad:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook KWUserInfo
-(bool) isVIPUser {
return TRUE;
}

-(bool) vip_has_loaded {
return TRUE;
}

-(void) setVip_has_loaded:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) vip_has_ad {
return TRUE;
}

-(void) setVip_has_ad:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook KWUserNewVip
-(bool) isWpsVip {
return TRUE;
}

-(bool) isSuperVip {
return TRUE;
}

-(bool) isBronzeVip {
return TRUE;
}

-(void) setIsWpsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(void) setIsBronzeVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(void) setIsSuperVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook KWGetVipIconGuideView
+(bool) isNeedShow {
return TRUE;
}
%end

%hook KWVIPIconManager
+(bool) isGetVIPIconGuideViewByCurrentUser {
return TRUE;
}
%end

%hook KWUserDocerVip
-(bool) isDocerVip {
return TRUE;
}

-(void) setIsDocerVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end