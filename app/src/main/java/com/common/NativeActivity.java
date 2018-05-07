package com.common;

import android.os.Bundle;
import android.widget.RelativeLayout;

/**
 * Created by book4 on 2018/5/7.
 */

public abstract class NativeActivity extends ShowActivity {

    protected abstract String getNativeId();

    protected abstract int getAlighType();

    protected abstract int getMarginHeight();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getNative();
    }

    private void getNative(){
        AdLayout adLay = new AdLayout(NativeActivity.this, getNativeId());
        RelativeLayout.LayoutParams lp = new RelativeLayout.LayoutParams(RelativeLayout.LayoutParams.MATCH_PARENT, RelativeLayout.LayoutParams.WRAP_CONTENT);
        if(getAlighType() == 0){
            lp.addRule(RelativeLayout.ALIGN_PARENT_TOP);
            lp.setMargins(0, getMarginHeight(), 0, 0);
        }else if(getAlighType() == 1){
            lp.addRule(RelativeLayout.CENTER_IN_PARENT);
        }else{
            lp.addRule(RelativeLayout.ALIGN_PARENT_BOTTOM);
            lp.setMargins(0, 0, 0, getMarginHeight());
        }
        mLayContainer.addView(adLay, lp);
    }
}
