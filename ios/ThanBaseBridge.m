#import "ThanBaseBridge.h"

#import <AFNetworking/AFNetworking.h>
#import <React/RCTLog.h>
#import "TBGallery.h"

@implementation ThanBaseBridge

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(sampleMethod:(NSString *)stringArgument numberParameter:(nonnull NSNumber *)numberArgument callback:(RCTResponseSenderBlock)callback)
{
    // TODO: Implement some actually useful functionality
	AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
	manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/plain"];
	[manager GET:@"https://httpstat.us/200" parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject) {
			callback(@[[NSString stringWithFormat: @"numberArgument: %@ stringArgument: %@ resp: %@", numberArgument, stringArgument, responseObject]]);
	} failure:^(NSURLSessionTask *operation, NSError *error) {
			callback(@[[NSString stringWithFormat: @"numberArgument: %@ stringArgument: %@ err: %@", numberArgument, stringArgument, error]]);
	}];
}

RCT_EXPORT_METHOD(testMethod: (NSString *)stringAf) {
    RCTLogInfo(@"Pretending to create an event %@", stringAf);
}

RCT_REMAP_METHOD(checkGalleryAuthorization, galleryAuthorizationWithResolver:(RCTPromiseResolveBlock)resolve  rejecter:(RCTPromiseRejectBlock)reject)
{
    [TBGallery galleryAuthorization:^(NSDictionary *status) {
        if (status != nil) {
          resolve(status);
        } else {
            reject(@"CHECK_PERMISSION_GALLERY_ERROR", @"Can not check permission gallery.", nil);
        }
        
    }];
}

@end

