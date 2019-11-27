#include <substrate.h>

%hook FilterMetaData
-(bool) isPremium {
return TRUE;
}

-(void) setIsPremium:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook FilterSelectionCell
-(void) isPremium:(bool)arg1 isPurchased:(bool)arg2 isNew:(bool)arg3 {
arg1 = TRUE;
arg2 = TRUE;
arg3 = TRUE;
return %orig;
}
%end

%hook VerticalFilterSelectionView
-(bool) filterCategoryIsPurchased:(unsigned long long)arg1 {
return TRUE;
arg1 = 1;
return %orig;
}
%end

%hook FIRALifetimeValueRecorder
+(bool) isPurchaseEvent {
return TRUE;
return %orig;
}
%end

%hook MainVideoEditViewModel
-(bool) unlimitedSubscriptionIsPurchased {
return TRUE;
}

-(bool) productIsPurchased:(long long)arg1 {
return TRUE;
arg1 = 1;
return %orig;
}

-(bool) filterCategoryIsPurchased {
return TRUE;
}
%end

%hook MainVideoEditViewController
-(bool) productAtIndexIsPurchased:(long long)arg1 {
return TRUE;
arg1 = 1;
return %orig;
}
%end

%hook FilterSelectionViewController
-(bool) filterCategoryIsPurchased:(unsigned long long)arg1 {
return TRUE;
arg1 = 1;
return %orig;
}
%end

%hook ANSMetadata
-(bool) computerIsJailbroken {
return FALSE;
}

-(bool) isJailbroken {
return FALSE;
}
%end