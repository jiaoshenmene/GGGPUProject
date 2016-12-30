//
//  GGProtocolManager.m
//  GGGPUProject
//
//  Created by dujia on 28/12/2016.
//  Copyright © 2016 dujia. All rights reserved.
//

#import "GGProtocolManager.h"

@interface GGProtocolManager()
@property (nonatomic, strong) NSMutableDictionary *serviceProvideSource;

@end

@implementation GGProtocolManager
+ (GGProtocolManager *)sharedInstance
{
    static GGProtocolManager * instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _serviceProvideSource = [[NSMutableDictionary alloc] init];
    }
    return self;
}

+ (void)registServiceProvide:(id)provide forName:(NSString *)name
{
    if (provide == nil || name == nil)
        return;
    [[self sharedInstance].serviceProvideSource setObject:provide forKey:name];
}

+ (id)serviceProvideForName:(NSString *)name
{
    return [[self sharedInstance].serviceProvideSource objectForKey:name];
}




@end
