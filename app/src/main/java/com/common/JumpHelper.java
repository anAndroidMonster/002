package com.common;

import android.content.Context;

import com.msc.activity.LoginActivity;
import com.msc.activity.MainActivity;
import com.msc.activity.PaiDetailActivity;
import com.msc.activity.PaiUpLoad;
import com.msc.activity.PaiuploadChooseType;
import com.msc.activity.RecipeDetailActivity;
import com.msc.activity.RecipeListCommentActivity;
import com.msc.activity.RecommentUserListActivity;
import com.msc.activity.SearchActivity;
import com.msc.activity.UploadRecipeCreate;

import java.util.Random;

/**
 * Created by book4 on 2018/5/2.
 */

public class JumpHelper {
    private static int mIndex = -1;

    public static void doJump(Context context){
        if(FinishHelper.getInstance().isGoFinish()){
            FinishActivity.enterActivity(context);
            return;
        }
        Random random = new Random();
        int index = random.nextInt(100);
        while (getClassIndex(index) == mIndex){
            index = random.nextInt(100);
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

    private static int getClassIndex(int temp){
        if(temp < 20){//20
            return 0;
        }else if(temp < 45){//25
            return 1;
        }else if(temp < 60){//15
            return 2;
        }else if(temp < 70){//10
            return 3;
        }else if(temp < 75){//5
            return 4;
        }else if(temp < 80){//5
            return 5;
        }else if(temp < 85){//5
            return 6;
        }else if(temp < 90){//5
            return 7;
        }else if(temp < 95){//5
            return 8;
        }else {//5
            return 9;
        }
    }

    private static void enterActivityMstx(Context context, int index){
        //概率从大到小
        mIndex = index;
        switch (index){
            case 0:
                MainActivity.enterActivity(context);break;
            case 1:
                RecipeDetailActivity.enterActivity(context);break;
            case 2:
                PaiDetailActivity.enterActivity(context);break;
            case 3:
                LoginActivity.enterActivity(context);break;
            case 4:
                UploadRecipeCreate.enterActivity(context);break;
            case 5:
                PaiUpLoad.enterActivity(context);break;
            case 6:
                RecipeListCommentActivity.enterActivity(context);break;
            case 7:
                RecommentUserListActivity.enterActivity(context);break;
            case 8:
                SearchActivity.enterActivity(context);break;
            case 9:
                PaiuploadChooseType.enterActivity(context);break;
        }
    }
}
