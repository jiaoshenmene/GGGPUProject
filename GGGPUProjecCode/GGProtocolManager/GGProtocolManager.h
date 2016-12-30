//
//  GGProtocolManager.h
//  GGGPUProject
//
//  Created by dujia on 28/12/2016.
//  Copyright © 2016 dujia. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol GGProtocolManagerProtocol <NSObject>

@optional
- (void) urlFunction:(NSString *)url;

- (void) urlFunction:(NSString *)url rootVC:(UIViewController *)vc;
@end

@interface GGProtocolManager : NSObject
+ (void)registServiceProvide:(id)provide forName:(NSString *)name;
+ (id)serviceProvideForName:(NSString *)name;
@end
