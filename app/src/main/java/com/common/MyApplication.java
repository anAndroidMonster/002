package com.common;

import android.app.Application;

import com.tendcloud.tenddata.TCAgent;

/**
 * Created by book4 on 2018/5/2.
 */

public class MyApplication extends Application {

    @Override
    public void onCreate() {
        super.onCreate();
        initTalkingData();
    }

    private void initTalkingData(){
        TCAgent.init(this, Constant.TD_ID, "XiaoMi");
        TCAgent.setReportUncaughtExceptions(true);
        //反作弊默认开启
    }
}
