.class public interface abstract Lcom/qq/e/ads/nativ/NativeAD$NativeAdListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/ads/nativ/NativeAD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NativeAdListener"
.end annotation


# virtual methods
.method public abstract onADError(Lcom/qq/e/ads/nativ/NativeADDataRef;Lcom/qq/e/comm/util/AdError;)V
.end method

.method public abstract onADLoaded(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qq/e/ads/nativ/NativeADDataRef;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onADStatusChanged(Lcom/qq/e/ads/nativ/NativeADDataRef;)V
.end method

.method public abstract onNoAD(Lcom/qq/e/comm/util/AdError;)V
.end method
