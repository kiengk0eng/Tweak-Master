#include <substrate.h>

%hook FBUserInfoModel
-(bool) isVIP {
return TRUE;
}

-(void) setIsVIP:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook SMRecommendedFirendsModel
-(bool) isVip {
return TRUE;
}

-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook SMStarUserModel
-(bool) isVip {
return TRUE;
}

-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook SMUserRecordingSharedItem
-(bool) isVip {
return TRUE;
}

-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook SMUserNameLabelManager
-(bool) shouldNotShowGetVip {
return TRUE;
}

-(void) setShouldNotShowGetVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook SMRecordingSongItem
-(bool) isVIP {
return TRUE;
}

-(void) setIsVIP:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook SMSongProtocolModel
-(bool) isVIP {
return TRUE;
}
%end

%hook SMVipAdAndSingLimitViewController
-(bool) isBuying {
return TRUE;
}

-(void) setIsBuying:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook SMUser
-(bool) isVip {
return TRUE;
}

-(void) setIsVip:(bool)arg1 {
arg1 = TRUE;
return %orig;
}

-(bool) isVerified {
return TRUE;
}

-(void) setIsVerified:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook TWTRProfileHeaderView
-(bool) shouldDisplayVerifiedBadge {
return TRUE;
}
%end

%hook SMUserNameLabelModel
-(bool) isGetVIP {
return FALSE;
}

-(void) setIsGetVIP:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook SMUserNameLabel
-(bool) isGetVip {
return FALSE;
}

-(void) setIsGetVip:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end