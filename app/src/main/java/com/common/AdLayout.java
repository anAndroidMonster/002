package com.common;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.widget.RelativeLayout;

import com.qq.e.ads.cfg.VideoOption;
import com.qq.e.ads.nativ.ADSize;
import com.qq.e.ads.nativ.NativeExpressAD;
import com.qq.e.ads.nativ.NativeExpressADView;
import com.qq.e.comm.util.AdError;

import java.util.List;

/**
 * Created by book4 on 2018/1/28.
 */

public class AdLayout extends RelativeLayout {
    private Context mContext;
    private int mIndex = -1;
    private NativeExpressADView nativeExpressADView;

    public AdLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        mContext = context;
        getInParam();
        initData();
    }

    private void getInParam(){
        String tag = getTag().toString();
        if(tag != null && tag.length() > 0){
            try{
                mIndex = Integer.parseInt(tag);
            }catch (NumberFormatException ex){
                ex.printStackTrace();
            }
        }
    }

    private void initData(){
        if(mIndex >= 0 && mIndex < Constant.NATIVE_IDS.length){
            String adId = Constant.NATIVE_IDS[mIndex];
            getNativeAd(Constant.APP_ID, adId);
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (nativeExpressADView != null) {
            nativeExpressADView.destroy();
        }
        setVisibility(GONE);
    }

    private void getNativeAd(String appId, String adId){
        NativeExpressAD nativeExpressAD = new NativeExpressAD(mContext, new ADSize(ADSize.FULL_WIDTH, ADSize.AUTO_HEIGHT), appId, adId, new NativeExpressAD.NativeExpressADListener() {
            @Override
            public void onNoAD(AdError adError) {

            }

            @Override
            public void onADLoaded(List<NativeExpressADView> list) {
                if (nativeExpressADView != null) {
                    nativeExpressADView.destroy();
                }
                // 3.返回数据后，SDK会返回可以用于展示NativeExpressADView列表
                nativeExpressADView = list.get(0);
                nativeExpressADView.render();
                addView(nativeExpressADView);
            }

            @Override
            public void onRenderFail(NativeExpressADView nativeExpressADView) {

            }

            @Override
            public void onRenderSuccess(NativeExpressADView nativeExpressADView) {

            }

            @Override
            public void onADExposure(NativeExpressADView nativeExpressADView) {

            }

            @Override
            public void onADClicked(NativeExpressADView nativeExpressADView) {

            }

            @Override
            public void onADClosed(NativeExpressADView nativeExpressADView) {

            }

            @Override
            public void onADLeftApplication(NativeExpressADView nativeExpressADView) {

            }

            @Override
            public void onADOpenOverlay(NativeExpressADView nativeExpressADView) {

            }

            @Override
            public void onADCloseOverlay(NativeExpressADView nativeExpressADView) {

            }
        });
        nativeExpressAD.setVideoOption(new VideoOption.Builder()
                .setAutoPlayPolicy(VideoOption.AutoPlayPolicy.WIFI)
                .setAutoPlayMuted(true)
                .build());
        nativeExpressAD.loadAD(1);
    }
}
