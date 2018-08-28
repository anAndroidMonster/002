package com.android;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

import com.lsf.xmchqq.android.R;

public class ListInfoActivity extends BaseActivity {

    public static void enterActivity(Context context){
        Intent intent = new Intent(context, ListInfoActivity.class);
        context.startActivity(intent);
    }


    @Override
    protected String getAppId() {
        return Constant.APP_ID;
    }

    @Override
    protected String getAdId() {
        return Constant.AD_IDS[1];
    }
}
