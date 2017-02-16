//
//  NatWeexVolume.m
//
//  Created by huangyake on 17/1/7.
//  Copyright © 2017 Nat. All rights reserved.
//


#import "NatWeexVolume.h"
#import "NatVolume.h"

@implementation NatWeexVolume
WX_EXPORT_METHOD(@selector(set::))
WX_EXPORT_METHOD(@selector(get:))

- (void)get:(WXModuleCallback)callback{
    [[NatVolume singletonManger] get:^(id error, id result) {
        if (error) {
            if (callback) {
                callback(error);
            }
        }else{
            if (callback) {
                callback(result);
            }
        }
    }];
}
- (void)set:(NSNumber *)volume :(WXModuleCallback)callback{
    [[NatVolume singletonManger] set:volume :^(id error, id result) {
        if (error) {
            if (callback) {
                callback(error);
            }
        }else{
            if (callback) {
                callback(result);
            }
        }
    }];
}


@end
