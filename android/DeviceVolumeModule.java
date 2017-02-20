package com.nat.weex;

import com.nat.device_volume.HLModuleResultListener;
import com.nat.device_volume.HLVolumeModule;
import com.taobao.weex.annotation.JSMethod;
import com.taobao.weex.bridge.JSCallback;
import com.taobao.weex.common.WXModule;

/**
 * Created by Daniel on 17/2/17.
 * Copyright (c) 2017 Nat. All rights reserved.
 */

public class DeviceVolumeModule extends WXModule{

    @JSMethod
    public void get(final JSCallback jsCallback){
        HLVolumeModule.getInstance(mWXSDKInstance.getContext()).get(new HLModuleResultListener() {
            @Override
            public void onResult(Object o) {
                jsCallback.invoke(o);
            }
        });
    }

    @JSMethod
    public void set(float volume, final JSCallback jsCallback){
        HLVolumeModule.getInstance(mWXSDKInstance.getContext()).set(volume, new HLModuleResultListener() {
            @Override
            public void onResult(Object o) {
                jsCallback.invoke(o);
            }
        });
    }
}
