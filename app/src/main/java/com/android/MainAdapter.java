package com.android;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.lsf.xmchqq.android.R;
import com.qq.e.ads.cfg.VideoOption;
import com.qq.e.ads.nativ.ADSize;
import com.qq.e.ads.nativ.NativeExpressAD;
import com.qq.e.ads.nativ.NativeExpressADView;
import com.qq.e.comm.util.AdError;
import com.qq.e.comm.util.StringUtil;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Soul on 2017/8/15.
 */

public class MainAdapter extends BaseAdapter {

    private Context mContext;
    private List<Integer> mDataList = new ArrayList<>();
    private final int DIVIDER_NUM = 40;
    private String mAppId;
    private String mAdId;
    private NativeExpressADView nativeExpressADView;

    public MainAdapter(Context context, List<Integer> dataList) {
        this.mContext = context;
        this.mDataList = dataList;
    }

    public void setAd(String appId, String adId){
        mAppId = appId;
        mAdId = adId;
    }

    @Override
    public int getCount() {
        return mDataList == null?0: mDataList.size();
    }

    @Override
    public Object getItem(int position) {
        return null;
    }

    @Override
    public long getItemId(int position) {
        return 0;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        final ViewHolder holder;
        if (convertView == null) {
            holder = new ViewHolder();
            convertView = LayoutInflater.from(mContext).inflate(R.layout.item_main, null);

            holder.tvRemark = (TextView) convertView.findViewById(R.id.tv_item);
            holder.layContainer = (LinearLayout) convertView.findViewById(R.id.lay_ad);

            convertView.setTag(holder);
        }
        else {
            holder = (ViewHolder) convertView.getTag();
        }
        holder.tvRemark.setText("这是第" + position + "个");
        getAd(holder.layContainer, position%DIVIDER_NUM== 0);

        return convertView;
    }

    class ViewHolder {
        TextView tvRemark;
        LinearLayout layContainer;
    }

    private void getAd(final LinearLayout container, boolean isShow){
        if(!isShow){
            container.removeAllViews();
            return;
        }
        if(StringUtil.isEmpty(mAppId) || StringUtil.isEmpty(mAdId)) return;

        NativeExpressAD nativeExpressAD = new NativeExpressAD(mContext, new ADSize(ADSize.FULL_WIDTH, ADSize.AUTO_HEIGHT), mAppId, mAdId, new NativeExpressAD.NativeExpressADListener() {
            @Override
            public void onNoAD(AdError adError) {
                LogHelper.d("加载失败" + adError.getErrorMsg());
            }

            @Override
            public void onADLoaded(List<NativeExpressADView> list) {
                if (nativeExpressADView != null) {
                    nativeExpressADView.destroy();
                }
                // 3.返回数据后，SDK会返回可以用于展示NativeExpressADView列表
                nativeExpressADView = list.get(0);
                nativeExpressADView.render();
                try {
                    container.addView(nativeExpressADView);
                }catch (Exception ex){
                    ex.printStackTrace();
                }
            }

            @Override
            public void onRenderFail(NativeExpressADView nativeExpressADView) {
                LogHelper.d("展示失败");
            }

            @Override
            public void onRenderSuccess(NativeExpressADView nativeExpressADView) {

            }

            @Override
            public void onADExposure(NativeExpressADView nativeExpressADView) {
                LogHelper.d("展示成功");
                if(mContext instanceof  BaseActivity){
                    ((BaseActivity) mContext).onShowAd();
                }
            }

            @Override
            public void onADClicked(NativeExpressADView nativeExpressADView) {
                LogHelper.d("点击广告");
                if(mContext instanceof BaseActivity){
                    ((BaseActivity) mContext).onClickAd();
                }

            }

            @Override
            public void onADClosed(NativeExpressADView nativeExpressADView) {
                LogHelper.d("关闭广告");

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
