.class Lcom/qq/e/ads/contentad/ContentAD$ADListenerAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/comm/adevent/ADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/ads/contentad/ContentAD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ADListenerAdapter"
.end annotation


# instance fields
.field private synthetic a:Lcom/qq/e/ads/contentad/ContentAD;


# direct methods
.method private constructor <init>(Lcom/qq/e/ads/contentad/ContentAD;)V
    .locals 0

    iput-object p1, p0, Lcom/qq/e/ads/contentad/ContentAD$ADListenerAdapter;->a:Lcom/qq/e/ads/contentad/ContentAD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qq/e/ads/contentad/ContentAD;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qq/e/ads/contentad/ContentAD$ADListenerAdapter;-><init>(Lcom/qq/e/ads/contentad/ContentAD;)V

    return-void
.end method


# virtual methods
.method public onADEvent(Lcom/qq/e/comm/adevent/ADEvent;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/qq/e/ads/contentad/ContentAD$ADListenerAdapter;->a:Lcom/qq/e/ads/contentad/ContentAD;

    invoke-static {v0}, Lcom/qq/e/ads/contentad/ContentAD;->d(Lcom/qq/e/ads/contentad/ContentAD;)Lcom/qq/e/ads/contentad/ContentAD$ContentADListener;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "No DevADListener Binded"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->i(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v4, :cond_1

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qq/e/ads/contentad/ContentAD$ADListenerAdapter;->a:Lcom/qq/e/ads/contentad/ContentAD;

    invoke-static {v0}, Lcom/qq/e/ads/contentad/ContentAD;->d(Lcom/qq/e/ads/contentad/ContentAD;)Lcom/qq/e/ads/contentad/ContentAD$ContentADListener;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/qq/e/ads/contentad/ContentAD$ContentADListener;->onNoContentAD(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdEvent.Paras error for ContentAD("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v4, :cond_2

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qq/e/ads/contentad/ContentAD$ADListenerAdapter;->a:Lcom/qq/e/ads/contentad/ContentAD;

    invoke-static {v0}, Lcom/qq/e/ads/contentad/ContentAD;->d(Lcom/qq/e/ads/contentad/ContentAD;)Lcom/qq/e/ads/contentad/ContentAD$ContentADListener;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    check-cast v0, Ljava/util/List;

    invoke-interface {v1, v0}, Lcom/qq/e/ads/contentad/ContentAD$ContentADListener;->onContentADLoaded(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ADEvent.Paras error for ContentAD("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v4, :cond_3

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeMediaADData;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qq/e/ads/contentad/ContentAD$ADListenerAdapter;->a:Lcom/qq/e/ads/contentad/ContentAD;

    invoke-static {v0}, Lcom/qq/e/ads/contentad/ContentAD;->d(Lcom/qq/e/ads/contentad/ContentAD;)Lcom/qq/e/ads/contentad/ContentAD$ContentADListener;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    check-cast v0, Lcom/qq/e/ads/nativ/NativeMediaADData;

    invoke-interface {v1, v0}, Lcom/qq/e/ads/contentad/ContentAD$ContentADListener;->onContentADStatusChanged(Lcom/qq/e/ads/contentad/ContentAdData;)V

    goto/16 :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ADEvent.Paras error for ContentAD("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    instance-of v0, v0, Lcom/qq/e/ads/contentad/ContentAdData;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v4

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/qq/e/ads/contentad/ContentAD$ADListenerAdapter;->a:Lcom/qq/e/ads/contentad/ContentAD;

    invoke-static {v0}, Lcom/qq/e/ads/contentad/ContentAD;->d(Lcom/qq/e/ads/contentad/ContentAD;)Lcom/qq/e/ads/contentad/ContentAD$ContentADListener;

    move-result-object v2

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    check-cast v0, Lcom/qq/e/ads/contentad/ContentAdData;

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v0, v1}, Lcom/qq/e/ads/contentad/ContentAD$ContentADListener;->onContentADError(Lcom/qq/e/ads/contentad/ContentAdData;I)V

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ADEvent.Paras error for ContentAD("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v4, :cond_5

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeMediaADData;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/qq/e/ads/contentad/ContentAD$ADListenerAdapter;->a:Lcom/qq/e/ads/contentad/ContentAD;

    invoke-static {v0}, Lcom/qq/e/ads/contentad/ContentAD;->d(Lcom/qq/e/ads/contentad/ContentAD;)Lcom/qq/e/ads/contentad/ContentAD$ContentADListener;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    check-cast v0, Lcom/qq/e/ads/nativ/NativeMediaADData;

    invoke-interface {v1, v0}, Lcom/qq/e/ads/contentad/ContentAD$ContentADListener;->onADVideoLoaded(Lcom/qq/e/ads/contentad/ContentAdData;)V

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ADEvent.Paras error for ContentAD("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
