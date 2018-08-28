package com.android;

import android.content.Context;
import android.content.Intent;

public class MainActivity extends BaseActivity {


    public static void enterActivity(Context context){
        Intent intent = new Intent(context, MainActivity.class);
        context.startActivity(intent);
    }


    @Override
    protected String getAppId() {
        return Constant.APP_ID;
    }

    @Override
    protected String getAdId() {
        return Constant.AD_IDS[0];
    }
}
