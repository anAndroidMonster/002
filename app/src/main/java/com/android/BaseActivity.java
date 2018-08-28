package com.android;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

import com.lsf.xmchqq.android.R;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public abstract class BaseActivity extends Activity {
    //view
    private ListView mLvData;
    private MainAdapter mAdapter;
    private TextView mTvPause;
    private TextView mTvStatus;
    private TextView mTvFinish;
    private Handler mHandler = new Handler();
    //data
    private List<Integer> mDataList = new ArrayList<>();
    private CountListModel mData;
    private boolean mScrolling;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        initView();
        initEvent();
        initData();
    }

    protected abstract String getAppId();
    protected abstract String getAdId();

    private void initView(){
        mLvData = (ListView) findViewById(R.id.lv_data);
        mAdapter = new MainAdapter(BaseActivity.this, mDataList);
        mAdapter.setAd(getAppId(), getAdId());
        mLvData.setAdapter(mAdapter);

        mTvPause = (TextView) findViewById(R.id.tv_pause);
        mTvStatus = (TextView) findViewById(R.id.tv_status);
        mTvFinish = (TextView) findViewById(R.id.tv_finish);
    }

    private void initEvent(){
        mTvPause.setOnClickListener(mClickListener);
        mTvFinish.setOnClickListener(mClickListener);
    }

    private View.OnClickListener mClickListener = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            switch (v.getId()){
                case R.id.tv_pause:
                    if(mScrolling){
                        mScrolling = false;
                        mTvPause.setText("继续");
                    }else{
                        mScrolling = true;
                        mTvPause.setText("暂停");
                    }
                    break;
                case R.id.tv_finish:
                    mHandler.removeCallbacksAndMessages(null);

                    PackageManager packageManager = getPackageManager();
                    String appName = "com.example.tthtt";
                    if (checkPackInfo(appName)) {
                        Intent intent = packageManager.getLaunchIntentForPackage(appName);
                        startActivity(intent);
                    } else {
                        Toast.makeText(BaseActivity.this, "没有安装" + appName, Toast.LENGTH_SHORT).show();
                    }
                    finish();
                    break;
            }
        }
    };

    private void initData(){
        mData = ConfigFileHelper.ReadConfig();
        if(mData == null) mData = new CountListModel();
        int click = mData.getTodayModel().getClick();
        int show = mData.getTodayModel().getShow();
        mTvStatus.setText(click + "/" + show);

        for(int i=0; i<10000; i++){
            mDataList.add(i);
        }
        mAdapter.notifyDataSetChanged();


        mHandler.post(mAutoScrollRun);
    }

    @Override
    public void onResume(){
        super.onResume();
        mHandler.postDelayed(new Runnable() {
            @Override
            public void run() {
                mScrolling = true;
            }
        }, 1000*5);
    }

    public void onShowAd(){
        int click = mData.getTodayModel().getClick();
        int show = mData.getTodayModel().getShow();
        show += 1;
        mData.getTodayModel().setShow(show);
        mTvStatus.setText(click + "/" + show);
        ConfigFileHelper.WriteConfig(mData);
    }

    public void onClickAd(){
        int click = mData.getTodayModel().getClick();
        int show = mData.getTodayModel().getShow();
        click += 1;
        mData.getTodayModel().setClick(click);
        mTvStatus.setText(click + "/" + show);
        ConfigFileHelper.WriteConfig(mData);
    }

    private Runnable mAutoScrollRun = new Runnable() {
        @Override
        public void run() {
            mHandler.postDelayed(mAutoScrollRun, 1000*2);
            if(mScrolling) {
                Random random = new Random();
                int y = random.nextInt(1000);
                LogHelper.d("滑动列表" + y);
                mLvData.scrollListBy(y);
            }else{
                LogHelper.d("滑动暂停");
            }
        }
    };

    private boolean checkPackInfo(String packname) {
        PackageInfo packageInfo = null;
        try {
            packageInfo = getPackageManager().getPackageInfo(packname, 0);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        return packageInfo != null;
    }

    @Override
    public void onStop(){
        super.onStop();
        mScrolling = false;
        mTvPause.setText("继续");
    }
}
