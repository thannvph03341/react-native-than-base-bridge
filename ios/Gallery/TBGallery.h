//
//  TBGallery.h
//  AFNetworking
//
//  Created by Nong Than on 11/22/19.
//

#import "RCTViewManager.h"
#import <Photos/Photos.h>
#import <React/RCTLog.h>

NS_ASSUME_NONNULL_BEGIN

@interface TBGallery : RCTViewManager

@property (nonatomic, strong) UIView *galleryView;

+ (void) galleryAuthorization: (void(^)(NSDictionary *))onResult;

@end

NS_ASSUME_NONNULL_END
