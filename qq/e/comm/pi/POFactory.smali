.class public interface abstract Lcom/qq/e/comm/pi/POFactory;
.super Ljava/lang/Object;


# virtual methods
.method public abstract config(ILjava/lang/String;)V
.end method

.method public abstract createGridAppWallView(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcom/qq/e/comm/pi/GWI;
.end method

.method public abstract getAPKDownloadServiceDelegate(Landroid/app/Service;)Lcom/qq/e/comm/pi/SVSD;
.end method

.method public abstract getActivityDelegate(Ljava/lang/String;Landroid/app/Activity;)Lcom/qq/e/comm/pi/ACTD;
.end method

.method public abstract getAppWallView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/qq/e/comm/pi/AWI;
.end method

.method public abstract getBannerView(Landroid/app/Activity;Lcom/qq/e/ads/banner/ADSize;Ljava/lang/String;Ljava/lang/String;)Lcom/qq/e/comm/pi/BVI;
.end method

.method public abstract getContentAdDelegate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/comm/adevent/ADListener;)Lcom/qq/e/comm/pi/CAI;
.end method

.method public abstract getIADView(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcom/qq/e/comm/pi/IADI;
.end method

.method public abstract getNativeADDelegate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/comm/adevent/ADListener;)Lcom/qq/e/comm/pi/NADI;
.end method

.method public abstract getNativeExpressADDelegate(Landroid/content/Context;Lcom/qq/e/ads/nativ/ADSize;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/comm/adevent/ADListener;)Lcom/qq/e/comm/pi/NEADI;
.end method

.method public abstract getNativeExpressADView(Lcom/qq/e/comm/pi/NEADI;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/qq/e/ads/nativ/ADSize;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/HashMap;)Lcom/qq/e/comm/pi/NEADVI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qq/e/comm/pi/NEADI;",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Lcom/qq/e/ads/nativ/ADSize;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lcom/qq/e/comm/pi/NEADVI;"
        }
    .end annotation
.end method

.method public abstract getNativeSplashAdView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/qq/e/comm/pi/NSPVI;
.end method

.method public abstract getNativeVideoADDelegate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/comm/adevent/ADListener;)Lcom/qq/e/comm/pi/NVADI;
.end method

.method public abstract getSplashAdView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/qq/e/comm/pi/SPVI;
.end method
