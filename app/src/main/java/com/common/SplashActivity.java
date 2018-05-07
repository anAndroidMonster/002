package com.common;

import android.app.Activity;
import android.os.Bundle;
import android.widget.FrameLayout;

import com.example.test.R;

/**
 * Created by book4 on 2018/5/1.
 */

public class SplashActivity extends Activity {
    //view
    private FrameLayout mLayContainer;
    //data
    private final String Tag = "splash";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_splash);
        initView();
        initEvent();
        initData();
    }

    private void initView(){
        mLayContainer = (FrameLayout) findViewById(R.id.lay_container);
    }

    private void initEvent(){

    }

    private void initData(){
        JumpHelper.jumpMain(SplashActivity.this);
    }
}
