.class public Lcom/qq/e/ads/nativ/NativeExpressADView;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:Lcom/qq/e/comm/pi/NEADVI;

.field private b:Z

.field private volatile c:Z

.field private d:Lcom/qq/e/ads/nativ/NativeExpressMediaListener;

.field private e:Lcom/qq/e/comm/pi/AdData;


# direct methods
.method public constructor <init>(Lcom/qq/e/comm/pi/NEADI;Landroid/content/Context;Lcom/qq/e/ads/nativ/ADSize;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/HashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qq/e/comm/pi/NEADI;",
            "Landroid/content/Context;",
            "Lcom/qq/e/ads/nativ/ADSize;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->c:Z

    invoke-static/range {p7 .. p7}, Lcom/qq/e/ads/nativ/NativeExpressADView;->a(Ljava/util/HashMap;)Lcom/qq/e/comm/pi/AdData;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->e:Lcom/qq/e/comm/pi/AdData;

    sget-object v9, Lcom/qq/e/comm/managers/GDTADManager;->INIT_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/qq/e/ads/nativ/NativeExpressADView$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object v4, p1

    move-object v5, p3

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/qq/e/ads/nativ/NativeExpressADView$1;-><init>(Lcom/qq/e/ads/nativ/NativeExpressADView;Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/comm/pi/NEADI;Lcom/qq/e/ads/nativ/ADSize;Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/HashMap;)V

    invoke-interface {v9, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/qq/e/ads/nativ/NativeExpressADView;)Lcom/qq/e/ads/nativ/NativeExpressMediaListener;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->d:Lcom/qq/e/ads/nativ/NativeExpressMediaListener;

    return-object v0
.end method

.method private static a(Ljava/util/HashMap;)Lcom/qq/e/comm/pi/AdData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lcom/qq/e/comm/pi/AdData;"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "adinfo"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    :goto_0
    if-eqz v0, :cond_1

    const-string v2, "adinfo"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    instance-of v2, v0, Lcom/qq/e/comm/pi/AdData;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/qq/e/comm/pi/AdData;

    :goto_2
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method static synthetic a(Lcom/qq/e/ads/nativ/NativeExpressADView;Lcom/qq/e/comm/pi/NEADVI;)Lcom/qq/e/comm/pi/NEADVI;
    .locals 0

    iput-object p1, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->a:Lcom/qq/e/comm/pi/NEADVI;

    return-object p1
.end method

.method static synthetic a(Lcom/qq/e/ads/nativ/NativeExpressADView;Z)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/qq/e/ads/nativ/NativeExpressADView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->c:Z

    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->a:Lcom/qq/e/comm/pi/NEADVI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->a:Lcom/qq/e/comm/pi/NEADVI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/NEADVI;->destroy()V

    :cond_0
    return-void
.end method

.method public getBoundData()Lcom/qq/e/comm/pi/AdData;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->e:Lcom/qq/e/comm/pi/AdData;

    return-object v0
.end method

.method public render()V
    .locals 1

    iget-boolean v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->c:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->a:Lcom/qq/e/comm/pi/NEADVI;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->a:Lcom/qq/e/comm/pi/NEADVI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/NEADVI;->render()V

    goto :goto_0

    :cond_1
    const-string v0, "Native Express AD View Init Error"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAdSize(Lcom/qq/e/ads/nativ/ADSize;)V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->a:Lcom/qq/e/comm/pi/NEADVI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->a:Lcom/qq/e/comm/pi/NEADVI;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/NEADVI;->setAdSize(Lcom/qq/e/ads/nativ/ADSize;)V

    :cond_0
    return-void
.end method

.method public setMediaListener(Lcom/qq/e/ads/nativ/NativeExpressMediaListener;)V
    .locals 2

    iput-object p1, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->d:Lcom/qq/e/ads/nativ/NativeExpressMediaListener;

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->a:Lcom/qq/e/comm/pi/NEADVI;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->a:Lcom/qq/e/comm/pi/NEADVI;

    new-instance v1, Lcom/qq/e/ads/nativ/NativeExpressAD$ADListenerAdapter;

    invoke-direct {v1, p1}, Lcom/qq/e/ads/nativ/NativeExpressAD$ADListenerAdapter;-><init>(Lcom/qq/e/ads/nativ/NativeExpressMediaListener;)V

    invoke-interface {v0, v1}, Lcom/qq/e/comm/pi/NEADVI;->setAdListener(Lcom/qq/e/comm/adevent/ADListener;)V

    :cond_0
    return-void
.end method
