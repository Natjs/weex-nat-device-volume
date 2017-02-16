//
//  NatWeexVolume.h
//
//  Created by huangyake on 17/1/7.
//  Copyright © 2017 Nat. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <WeexSDK/WeexSDK.h>


@protocol NatWeexVolumePro <WXModuleProtocol>

- (void)get:(WXModuleCallback)callback;
- (void)set:(NSNumber *)volume :(WXModuleCallback)callback;

@end

@interface NatWeexVolume : NSObject<NatWeexVolumePro>

@end
