package com.msc.activity;

import android.content.Context;
import android.content.Intent;

import com.common.Constant;
import com.common.NativeActivity;
import com.common.ShowActivity;
import com.lsf.xmchqq.android.R;

/**
 * Created by book4 on 2018/5/2.
 */

public class MainActivity extends NativeActivity {
    public static void enterActivity(Context context){
        Intent intent = new Intent(context, MainActivity.class);
        context.startActivity(intent);
    }

    @Override
    protected int getImg() {
        return R.drawable.mstx_main;
    }

    @Override
    protected String getNativeId() {
        return Constant.NATIVE_IDS[0];
    }

    @Override
    protected int getAlighType() {
        return 0;
    }

    @Override
    protected int getMarginHeight() {
        return 0;
    }
}
