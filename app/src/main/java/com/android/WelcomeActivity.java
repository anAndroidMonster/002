package com.android;

import android.app.Activity;
import android.os.Bundle;

import com.lsf.xmchqq.android.R;

import java.util.Random;

public class WelcomeActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_welcome);
        Random random = new Random();
        int index = random.nextInt(100);
        if(index < 60){//分2波
            MainActivity.enterActivity(WelcomeActivity.this);
        }else{
            ListInfoActivity.enterActivity(WelcomeActivity.this);
        }
        finish();
    }
}
