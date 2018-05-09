package com.common;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.Toast;

import com.example.test.R;

import org.greenrobot.eventbus.EventBus;

import java.util.Date;

/**
 * Created by book4 on 2018/5/7.
 */

public class FinishActivity extends Activity {
    private long mClickTime;

    public static void enterActivity(Context context){
        Intent intent = new Intent(context, FinishActivity.class);
        context.startActivity(intent);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_finish);
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (event.getKeyCode() == KeyEvent.KEYCODE_BACK) {
            long clickTime = new Date().getTime();
            if(clickTime - mClickTime < 1000){
                finish();
                MessageEvent event1 = new MessageEvent();
                event1.setEventType(ConstantEvent.EVENT_QUIT);
                EventBus.getDefault().post(event1);
                return true;
            }else{
                Toast.makeText(FinishActivity.this, "双击返回退出", Toast.LENGTH_SHORT).show();
                mClickTime = clickTime;
                return true;
            }
        }
        return super.onKeyDown(keyCode, event);
    }
}
