//
//  WeexNatDeviceVolume.m
//
//  Created by huangyake on 17/1/7.
//  Copyright © 2017 Instapp. All rights reserved.
//


#import "WeexNatDeviceVolume.h"
#import <WeexPluginLoader/WeexPluginLoader.h>
#import <NatVolume/NatVolume.h>

@implementation WeexNatDeviceVolume
@synthesize weexInstance;

WX_PlUGIN_EXPORT_MODULE(nat/device/volume, WeexNatDeviceVolume)
WX_EXPORT_METHOD(@selector(set::))
WX_EXPORT_METHOD(@selector(get:))

- (void)get:(WXModuleCallback)callback{
    [[NatVolume singletonManger] get:^(id error, id result) {
        if (callback) {
            if (error) {
                callback(error);
            } else {
                callback(result);
            }
        }
    }];
}

- (void)set:(NSNumber *)volume :(WXModuleCallback)callback{
    [[NatVolume singletonManger] set:volume :^(id error, id result) {
        if (callback) {
            if (error) {
                callback(error);
            } else {
                callback(result);
            }
        }
    }];
}

@end
