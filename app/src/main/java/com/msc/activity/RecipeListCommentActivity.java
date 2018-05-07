package com.msc.activity;

import android.content.Context;
import android.content.Intent;

import com.common.ShowActivity;
import com.example.test.R;

/**
 * Created by book4 on 2018/5/2.
 */

public class RecipeListCommentActivity extends ShowActivity {
    public static void enterActivity(Context context){
        Intent intent = new Intent(context, RecipeListCommentActivity.class);
        context.startActivity(intent);
    }

    @Override
    protected int getImg() {
        return R.drawable.mstx_list;
    }
}
