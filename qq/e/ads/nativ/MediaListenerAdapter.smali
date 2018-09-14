.class public Lcom/qq/e/ads/nativ/MediaListenerAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/comm/adevent/ADListener;


# instance fields
.field private a:Lcom/qq/e/ads/nativ/MediaListener;


# direct methods
.method public constructor <init>(Lcom/qq/e/ads/nativ/MediaListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qq/e/ads/nativ/MediaListenerAdapter;->a:Lcom/qq/e/ads/nativ/MediaListener;

    return-void
.end method


# virtual methods
.method public onADEvent(Lcom/qq/e/comm/adevent/ADEvent;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/qq/e/ads/nativ/MediaListenerAdapter;->a:Lcom/qq/e/ads/nativ/MediaListener;

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lcom/qq/e/ads/nativ/MediaListener;->onVideoReady(J)V

    goto :goto_0

    :cond_0
    const-string v0, "NativeMedia ADEvent Paras error!"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/qq/e/ads/nativ/MediaListenerAdapter;->a:Lcom/qq/e/ads/nativ/MediaListener;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/MediaListener;->onVideoStart()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/qq/e/ads/nativ/MediaListenerAdapter;->a:Lcom/qq/e/ads/nativ/MediaListener;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/MediaListener;->onVideoPause()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/qq/e/ads/nativ/MediaListenerAdapter;->a:Lcom/qq/e/ads/nativ/MediaListener;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/MediaListener;->onVideoComplete()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/qq/e/ads/nativ/MediaListenerAdapter;->a:Lcom/qq/e/ads/nativ/MediaListener;

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/qq/e/comm/a;->a(I)Lcom/qq/e/comm/util/AdError;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/qq/e/ads/nativ/MediaListener;->onVideoError(Lcom/qq/e/comm/util/AdError;)V

    goto :goto_0

    :cond_1
    const-string v0, "NativeMedia ADEvent Paras error!"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/qq/e/ads/nativ/MediaListenerAdapter;->a:Lcom/qq/e/ads/nativ/MediaListener;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/MediaListener;->onReplayButtonClicked()V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/qq/e/ads/nativ/MediaListenerAdapter;->a:Lcom/qq/e/ads/nativ/MediaListener;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/MediaListener;->onADButtonClicked()V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/qq/e/ads/nativ/MediaListenerAdapter;->a:Lcom/qq/e/ads/nativ/MediaListener;

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/qq/e/ads/nativ/MediaListener;->onFullScreenChanged(Z)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "NativeMedia ADEvent Paras error!"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
