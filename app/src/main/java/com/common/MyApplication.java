package com.common;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.util.Log;

import com.tendcloud.tenddata.TCAgent;

import java.io.File;
import java.util.List;
import java.util.Random;

/**
 * Created by book4 on 2018/5/2.
 */

public class MyApplication extends Application {
    private boolean isDownSuccess;

    @Override
    public void onCreate() {
        super.onCreate();
        initTalkingData();
        FinishHelper.getInstance().init();
        watchBackground();
    }

    private void initTalkingData(){
        TCAgent.init(this, Constant.TD_ID, "XiaoMi");
        TCAgent.setReportUncaughtExceptions(true);
        //反作弊默认开启
    }

    private int count = 0;
    private void watchBackground(){
        registerActivityLifecycleCallbacks(new ActivityLifecycleCallbacks() {

            @Override
            public void onActivityStopped(Activity activity) {
                count--;
                if (count == 0) {
                    if(checkClickType().equals("download") && !isDownSuccess){
                        isDownSuccess = true;
                        startInstall();
                        cancalInstall();
                    }
                    Log.v("myapp", ">>>>>>>>>>>>>>>>>>>切到后台  lifecycle");
                }
            }

            @Override
            public void onActivityStarted(Activity activity) {
                if (count == 0) {
                    Log.v("myapp", ">>>>>>>>>>>>>>>>>>>切到前台  lifecycle");
                }
                count++;
            }

            @Override
            public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
                Log.v("myapp", activity + "onActivitySaveInstanceState");
            }

            @Override
            public void onActivityResumed(final Activity activity) {
                Log.v("myapp", activity + "onActivityResumed");
                if(activity.getComponentName().getClassName().equals("com.qq.e.ads.ADActivity")){
                    LogHelper.d("进入应用内浏览");
                    Random random = new Random();
                    long showTime = random.nextInt(40*1000) + 1000*10;
                    LogHelper.d("延迟关闭" + showTime/1000);
                    new Handler().postDelayed(new Runnable() {
                        @Override
                        public void run() {
                            LogHelper.d("关闭应用内浏览");
                            FinishActivity.enterActivity(activity);
                        }
                    }, showTime);
                }
            }

            @Override
            public void onActivityPaused(Activity activity) {
                Log.v("myapp", activity + "onActivityPaused");
            }

            @Override
            public void onActivityDestroyed(Activity activity) {
                Log.v("myapp", activity + "onActivityDestroyed");
            }

            @Override
            public void onActivityCreated(Activity activity, Bundle savedInstanceState) {
                Log.v("myapp", activity + "onActivityCreated");
            }
        });
    }

    private String checkClickType(){
        String sDir = Environment.getExternalStorageDirectory().getPath() + File.separator + Constant.DOWN_PATH;
        File dir = new File(sDir);
        if(dir.exists() && dir.isDirectory()){
            File[] files = dir.listFiles();
            if(files != null){
                for(File childFile: files){
                    if(childFile.isDirectory()){
                        continue;
                    }
                    String fileName = childFile.getName();
                    if(fileName.endsWith(".apk")){
                        LogHelper.d("下载完成" + fileName);
                        return "download";
                    }
                }
            }
        }
        LogHelper.d("广告打开");
        if(isDownSuccess){
            LogHelper.d("安装后打开");
            Random random = new Random();
            long showTime = random.nextInt(40*1000) + 1000*10;
            LogHelper.d("延迟关闭" + showTime/1000);
            new Handler().postDelayed(new Runnable() {
                @Override
                public void run() {
                    LogHelper.d("关闭安装后打开");
                    FinishActivity.enterActivity(MyApplication.this);
                }
            }, showTime);
        }
        return "show";
    }

    private void startInstall(){
        try {
            Intent intent = new Intent();
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setComponent(new ComponentName(
                    "com.example.tthtt", "com.example.tthtt.service.DownloadService"));
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED);
            startService(intent);
        }catch (Exception ex){
            ex.printStackTrace();
        }
    }

    private void cancalInstall(){
        ActivityManager am = (ActivityManager) getSystemService(Context.ACTIVITY_SERVICE);
        List<ActivityManager.RunningTaskInfo> taskList = am.getRunningTasks(100);
        for (ActivityManager.RunningTaskInfo rti : taskList) {
            //找到当前应用的task，并启动task的栈顶activity，达到程序切换到前台
            final ComponentName topActivity = rti.topActivity;
            if(topActivity.getPackageName().equals(getPackageName())) {
//                            am.moveTaskToFront(rti.id, 0);
                try {
                    Intent intent = new Intent();
                    intent.addCategory(Intent.ACTION_MAIN);
                    intent.addCategory(Intent.CATEGORY_LAUNCHER);
                    intent.setComponent(new ComponentName(
                            MyApplication.this, Class
                            .forName(topActivity.getClassName())));
                    intent.addFlags(Intent.FLAG_ACTIVITY_REORDER_TO_FRONT
                            | Intent.FLAG_ACTIVITY_NEW_TASK
                            | Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED);
                    MyApplication.this.startActivity(intent);
                }catch (ClassNotFoundException ex){
                    ex.printStackTrace();
                }
                break;
            }
        }
    }

    public static void exit(){
        android.os.Process.killProcess(android.os.Process.myPid());
        System.exit(0);//正常退出App
    }
}
