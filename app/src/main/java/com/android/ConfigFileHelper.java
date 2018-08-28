package com.android;

import android.os.Environment;


import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;

import java.io.File;
import java.io.FileInputStream;
import java.util.Scanner;

public class ConfigFileHelper {

    //读取硬件参数配置
    public static CountListModel ReadConfig(){
        try {
            if(!checkSd()) return null;
            String sDir = Environment.getExternalStorageDirectory().getPath() + File.separator + "keep/count.txt";
            File fileName = new File(sDir);
            if (fileName.exists()) {
                FileInputStream input = new FileInputStream(sDir);
                Scanner scan = new Scanner(input);
                String str="";
                while (scan.hasNext()) {
                    str = new StringBuilder(String.valueOf(str)).append(scan.next()).append
                            ("\n").toString();
                }
                input.close();
                scan.close();
                CountListModel config = (CountListModel) new Gson().fromJson(str, new TypeToken<CountListModel>(){}.getType());
                return config;
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    //写入硬件参数配置
    public static void WriteConfig(CountListModel config){
        if(!checkSd()) return;
        String content = new Gson().toJson(config);
        String sDir = Environment.getExternalStorageDirectory().getPath() + File.separator + "keep/count.txt";
        FileUtil.writeFile(sDir, content, false);
    }

    private static boolean checkSd(){
        if(Environment.getExternalStorageState().equals(android.os.Environment.MEDIA_MOUNTED)){
            return true;
        }else{
            return false;
        }
    }

}
