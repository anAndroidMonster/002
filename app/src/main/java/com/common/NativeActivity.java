package com.common;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;

import java.util.Random;

/**
 * Created by book4 on 2018/5/7.
 */

public abstract class NativeActivity extends ShowActivity {

    protected abstract String getNativeId();

    protected abstract int getAlighType();

    protected abstract int getMarginHeight();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        initTouch();
        getNative();
    }

    private void initTouch(){
        //起点在layout才有效果，所以是外围滑动或者点击
        mLayContainer.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public boolean onTouch(View v, MotionEvent event) {
                switch (event.getAction()){
                    case MotionEvent.ACTION_UP:
                    case MotionEvent.ACTION_CANCEL:
                    case MotionEvent.ACTION_OUTSIDE:
                        if(getNativeId().equals(ClickHelper.getInstance().getEnableId())){
                            //不做跳转
                        }else {
                            JumpHelper.doJump(NativeActivity.this);
                        }
                        break;
                }
                return true;
            }
        });
    }

    private void getNative(){
        AdLayout adLay = new AdLayout(NativeActivity.this, getNativeId());
        RelativeLayout.LayoutParams lp = new RelativeLayout.LayoutParams(RelativeLayout.LayoutParams.MATCH_PARENT, RelativeLayout.LayoutParams.WRAP_CONTENT);
        if(getAlighType() == 0){
            lp.addRule(RelativeLayout.ALIGN_PARENT_TOP);
            lp.setMargins(0, getMarginHeight(), 0, 0);
        }else if(getAlighType() == 1){
            lp.addRule(RelativeLayout.CENTER_IN_PARENT);
        }else{
            lp.addRule(RelativeLayout.ALIGN_PARENT_BOTTOM);
            lp.setMargins(0, 0, 0, getMarginHeight());
        }
        mLayContainer.addView(adLay, lp);
    }

    public void onAdError(){
        if(getNativeId().equals(ClickHelper.getInstance().getEnableId())) {
            FinishActivity.enterActivity(NativeActivity.this);
        }
    }

    public void onAdJump(){
        Random random = new Random();
        long timeDelay = random.nextInt(1000*60);
        new Handler().postDelayed(new Runnable() {
            @Override
            public void run() {
                Intent intent=new Intent();
                intent.addCategory(Intent.CATEGORY_LAUNCHER);
                intent.setClass(NativeActivity.this, FinishActivity.class);
                startActivity(intent);
            }
        }, timeDelay);
    }
}
