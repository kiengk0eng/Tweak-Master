#include <substrate.h>

%hook VSBackgroudIconData
-(bool) isPro {
return TRUE;
}
%end

%hook VSFilterIconsData
-(bool) isPro {
return TRUE;
}
%end

%hook VSThemeData
-(bool) isPro {
return TRUE;
}
%end

%hook VSTextTypeIconData
-(bool) isPro {
return TRUE;
}

-(void) setIsPro:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook VSMallUser
-(bool) isPro {
return TRUE;
}

-(void) setIsPro:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook VSSaveItem
-(bool) isPro {
return TRUE;
}

-(void) setIsPro:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook VSTransationItem
-(bool) isPro {
return TRUE;
}

-(void) setIsPro:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook VSProFeatureProvider
+(bool) isUnlimited {
return TRUE;
}

+(void) setIsUnlimited:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook VSProjectExporter
-(bool) useWaterMark {
return FALSE;
}

-(void) setUseWaterMark:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end