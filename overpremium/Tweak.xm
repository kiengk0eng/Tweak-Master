#include <substrate.h>

%hook OVImagePickerSourcePixabay
-(bool) hasPurchasedPixabay {
return TRUE;
}
%end

%hook OVImagePickerSourceUnsplash
-(bool) hasPurchasedUnsplash {
return TRUE;
}
%end

%hook ANSMetadata
-(bool) computerIsjailbroken {
return FALSE;
}

-(bool) isJailbroken {
return FALSE;
}
%end

%hook Delegate
-(bool) isUserSubscribed {
return TRUE;
}
%end

%ctor {
    %init(Delegate = objc_getClass("Over.OVStoreServiceImpl"),
AppDelegate = objc_getClass("Over.OverAppDelegate"));
};