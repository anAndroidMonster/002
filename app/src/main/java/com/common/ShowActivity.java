package com.common;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.Toast;

import com.example.test.R;

import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;

import java.util.Date;

/**
 * Created by book4 on 2018/5/2.
 */

public abstract class ShowActivity extends Activity {
    //view
    private ImageView mIvShow;
    protected RelativeLayout mLayContainer;
    //data
    private long mClickTime;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_show);
        EventBus.getDefault().register(this);
        initView();
        initEvent();
        initData();
    }

    protected abstract int getImg();

    private void initView(){
        mIvShow = (ImageView) findViewById(R.id.iv_show);
        mLayContainer = (RelativeLayout) findViewById(R.id.lay_container);
    }

    private void initEvent(){
        mLayContainer.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public boolean onTouch(View v, MotionEvent event) {
                switch (event.getAction()){
                    case MotionEvent.ACTION_UP:
                    case MotionEvent.ACTION_CANCEL:
                    case MotionEvent.ACTION_OUTSIDE:
                        JumpHelper.doJump(ShowActivity.this);
                        break;
                }
                return true;
            }
        });
    }

    private void initData(){
        mIvShow.setImageResource(getImg());
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (event.getKeyCode() == KeyEvent.KEYCODE_BACK) {
            long clickTime = new Date().getTime();
            if(clickTime - mClickTime < 1000){
                MessageEvent event1 = new MessageEvent();
                event1.setEventType(ConstantEvent.EVENT_QUIT);
                EventBus.getDefault().post(event1);
                return true;
            }else{
                Toast.makeText(ShowActivity.this, "双击返回退出", Toast.LENGTH_SHORT).show();
                mClickTime = clickTime;
                return true;
            }
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override
    public void onDestroy(){
        EventBus.getDefault().unregister(this);
        super.onDestroy();
    }

    @Subscribe
    public void onEventMainThread(MessageEvent event){
        switch (event.getEventType()){
            case ConstantEvent.EVENT_QUIT:
                finish();
                break;
        }
    }
}
