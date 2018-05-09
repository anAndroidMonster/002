package com.common;

import android.util.Log;

import com.qq.e.comm.util.StringUtil;

import java.util.Random;

/**
 * Created by book4 on 2018/5/7.
 */

public class ClickHelper {
    private static ClickHelper mInstance;
    private int mTempNum = -1;
    private boolean isClicked = false;
    private final String Tag = "ClickHelper";
    private String mAdId;

    public static ClickHelper getInstance(){
        if(mInstance == null){
            synchronized (ClickHelper.class){
                if(mInstance == null){
                    mInstance = new ClickHelper();
                }
            }
        }
        return mInstance;
    }

    public String getEnableId(){
        String result = "";
        if(isClicked){
            LogHelper.d("已经点击");
            return result;
        }
        if(mTempNum < 0){
            initTempNum();
        }
        //todo 点击率千分之十
        if(mTempNum >= 10){
            LogHelper.d("不可点击");
            return result;
        }
        if(!StringUtil.isEmpty(mAdId)){
            LogHelper.d("可以点击" + mAdId);
            return mAdId;
        }
        switch (Constant.APP_NAME){
            case "mstx":
                result = getIdMstx();
                break;
        }
        mAdId = result;
        LogHelper.d("可以点击" + result);
        return result;
    }

    private void initTempNum(){
        Random random = new Random();
        mTempNum = random.nextInt(1000);
    }

    private String getIdMstx(){
        Random random = new Random();
        int temp = random.nextInt(10);
        String result = "";
        if(temp < 1){//新建菜谱
            result = Constant.NATIVE_IDS[2];
        }else if(temp < 3){//登录
            result = Constant.NATIVE_IDS[3];
        }else if(temp < 6){//主界面
            result = Constant.NATIVE_IDS[0];
        }else{//菜谱
            result = Constant.NATIVE_IDS[1];
        }
        return result;
    }

    public void setClicked(boolean value){
        isClicked = value;
    }
}
