#include <substrate.h>

%hook StoreObserver
-(id) productsPurchased {
return [NSNumber numberWithBool:YES];
}

-(void) setProductsPurchased:(id)arg1 {
arg1 = [NSNumber numberWithBool:YES];
return %orig;
}

-(bool) hasPurchasedProducts {
return TRUE;
}

-(id) purchasedID {
return [NSNumber numberWithInteger:1];
}

-(void) setPurchasedID:(id)arg1 {
arg1 = [NSNumber numberWithInteger:1];
return %orig;
}

-(void) buy:(id)arg1 {
arg1 = [NSNumber numberWithBool:YES];
return %orig;
}
%end