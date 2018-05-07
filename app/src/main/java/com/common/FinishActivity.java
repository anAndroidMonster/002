package com.common;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

import com.example.test.R;

/**
 * Created by book4 on 2018/5/7.
 */

public class FinishActivity extends Activity {

    public static void enterActivity(Context context){
        Intent intent = new Intent(context, FinishActivity.class);
        context.startActivity(intent);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_finish);
    }
}
