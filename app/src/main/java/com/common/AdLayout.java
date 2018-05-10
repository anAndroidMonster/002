package com.common;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.RelativeLayout;

import com.qq.e.ads.cfg.VideoOption;
import com.qq.e.ads.nativ.ADSize;
import com.qq.e.ads.nativ.NativeExpressAD;
import com.qq.e.ads.nativ.NativeExpressADView;
import com.qq.e.comm.util.AdError;
import com.tendcloud.tenddata.TCAgent;

import java.util.List;

/**
 * Created by book4 on 2018/1/28.
 */

public class AdLayout extends RelativeLayout {
    private Context mContext;
    private NativeExpressADView nativeExpressADView;
    private String mAdId;

    public AdLayout(Context context, String adId) {
        super(context);
        mContext = context;
        mAdId = adId;
        initData();
    }

    private void initData(){
        if(mAdId != null && mAdId.length() > 0){
            getNativeAd(Constant.APP_ID, mAdId);
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
                LogHelper.d("加载失败" + adError.getErrorMsg());
                TCAgent.onEvent(mContext, "AD_ERROR");
                if(mContext instanceof NativeActivity){
                    ((NativeActivity) mContext).onAdError();
                }
            }

            @Override
            public void onADLoaded(List<NativeExpressADView> list) {
                if (nativeExpressADView != null) {
                    nativeExpressADView.destroy();
                }
                // 3.返回数据后，SDK会返回可以用于展示NativeExpressADView列表
                nativeExpressADView = list.get(0);
                nativeExpressADView.render();
                AdLayout.this.addView(nativeExpressADView);
            }

            @Override
            public void onRenderFail(NativeExpressADView nativeExpressADView) {
                LogHelper.d("展示失败");
                if(mContext instanceof NativeActivity){
                    ((NativeActivity) mContext).onAdError();
                }
            }

            @Override
            public void onRenderSuccess(NativeExpressADView nativeExpressADView) {

            }

            @Override
            public void onADExposure(NativeExpressADView nativeExpressADView) {
                TCAgent.onEvent(mContext, "AD_SHOW");
                LogHelper.d("展示成功");
            }

            @Override
            public void onADClicked(NativeExpressADView nativeExpressADView) {
                LogHelper.d("点击广告");
                TCAgent.onEvent(mContext, "AD_CLICK");
                ClickHelper.getInstance().setClicked(true);
                if(mContext instanceof NativeActivity){
                    ((NativeActivity) mContext).onDownloadTimeout();
                }
            }

            @Override
            public void onADClosed(NativeExpressADView nativeExpressADView) {
                LogHelper.d("关闭广告");
                if(mContext instanceof NativeActivity){
                    ((NativeActivity) mContext).onAdError();
                }
            }

            @Override
            public void onADLeftApplication(NativeExpressADView nativeExpressADView) {
                TCAgent.onEvent(mContext, "AD_VIEW_OUTSIDE");
                LogHelper.d("应用外浏览");
                if(mContext instanceof NativeActivity){
                    ((NativeActivity) mContext).onAdJump();
                }
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

    @Override
    public boolean dispatchTouchEvent(MotionEvent ev) {
        if(ev.getAction() == MotionEvent.ACTION_DOWN){
            if(mAdId.equals(ClickHelper.getInstance().getEnableId())){
                return super.dispatchTouchEvent(ev);
            }else{
                return false;
            }
        }
        return super.dispatchTouchEvent(ev);
    }
}
