package com.common;

import android.content.Context;

import com.msc.activity.LoginActivity;
import com.msc.activity.MainActivity;
import com.msc.activity.PaiDetailActivity;
import com.msc.activity.PaiUpLoad;
import com.msc.activity.PaiuploadChooseType;
import com.msc.activity.RecipeDetailActivity;
import com.msc.activity.RecipeListCommentActivity;
import com.msc.activity.UploadRecipeCreate;

import java.util.Random;

/**
 * Created by book4 on 2018/5/2.
 */

public class JumpHelper {
    private static int mIndex = -1;

    public static void doJump(Context context){
        Random random = new Random();
        int index = random.nextInt(10);
        while (index == mIndex){
            index = random.nextInt(10);
        }
        if(Constant.APP_NAME.equals("mstx")){
            enterActivityMstx(context, index);
        }
    }

    public static void jumpMain(Context context){
        mIndex = 0;
        if(Constant.APP_NAME.equals("mstx")){
            MainActivity.enterActivity(context);
        }
    }

    private static void enterActivityMstx(Context context, int index){
        mIndex = index;
        switch (index){
            case 0:
                MainActivity.enterActivity(context);
                break;
            case 1:
                LoginActivity.enterActivity(context);break;
            case 2:
                UploadRecipeCreate.enterActivity(context);break;
            case 3:
                RecipeDetailActivity.enterActivity(context);break;
            case 4:

            case 5:

                break;
            case 6:
                PaiDetailActivity.enterActivity(context);break;
            case 7:
                PaiUpLoad.enterActivity(context);break;
            case 8:
                PaiuploadChooseType.enterActivity(context);break;
            case 9:
                RecipeListCommentActivity.enterActivity(context);break;
        }
    }
}
