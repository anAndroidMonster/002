package com.common;

import com.qq.e.comm.util.StringUtil;

import java.util.Random;

/**
 * Created by book4 on 2018/5/7.
 */

public class FinishHelper {
    private static FinishHelper mInstance;
    private final String Tag = "FinishHelper";
    private long mTimeDelay;
    private long mTimeStart;

    public static FinishHelper getInstance(){
        if(mInstance == null){
            synchronized (FinishHelper.class){
                if(mInstance == null){
                    mInstance = new FinishHelper();
                }
            }
        }
        return mInstance;
    }

    public void init(){
        if(StringUtil.isEmpty(ClickHelper.getInstance().getEnableId())){//不点击
            Random random = new Random();
            mTimeDelay = random.nextInt(1000*60) + 1;
            LogHelper.d("展示时间" + mTimeDelay/1000);
            mTimeStart = System.currentTimeMillis();
        }
    }

    public boolean isGoFinish(){
        if(mTimeDelay > 0){
            if((System.currentTimeMillis() - mTimeStart) >= mTimeDelay){
                return true;
            }
            return false;
        }else{//要点击
            return false;
        }
    }
}
