//
//  TBGallery.m
//  AFNetworking
//
//  Created by Nong Than on 11/22/19.
//

#import "TBGallery.h"
#import <React/RCTConvert.h>

@implementation TBGallery

RCT_EXPORT_MODULE(RNTBGallery)


- (UIView *) view {
    
    self.galleryView = [[UIView alloc] init];
    self.galleryView.backgroundColor = [UIColor grayColor];
    return self.galleryView;
}

+ (void) galleryAuthorization: (void(^)(NSDictionary *))onResult {
    PHAuthorizationStatus status = [PHPhotoLibrary authorizationStatus];
    switch (status) {
        case PHAuthorizationStatusAuthorized:
            onResult(@{@"success": @(true), @"message": @"Authorized"});
            break;
        case PHAuthorizationStatusDenied:
            onResult(@{@"success": @(false), @"message": @"Denied"});
            break;
        case PHAuthorizationStatusRestricted:
            onResult(@{@"success": @(true), @"message": @"Restricted"});
            break;
        default:
            [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
                if (status == PHAuthorizationStatusAuthorized) {
                    onResult(@{@"success": @(true), @"message": @"Authorized"});
                } else {
                    onResult(@{@"success": @(false), @"message": @"Denied"});
                }
            }];
            break;
    }
}

- (NSArray *) getAssets: (PHFetchResult *)fetch{
    __block NSMutableArray *assetArray = NSMutableArray.new;
    [fetch enumerateObjectsUsingBlock:^(PHAsset *asset, NSUInteger idx, BOOL * stop) {
        RCTLog(@"asset: %@", asset);
        [assetArray addObject:asset];
    }];
    return assetArray;
}

- (void) getAllPhotos {
    
}

@end
