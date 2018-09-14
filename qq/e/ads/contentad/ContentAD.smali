.class public Lcom/qq/e/ads/contentad/ContentAD;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/ads/contentad/ContentAD$ADListenerAdapter;,
        Lcom/qq/e/ads/contentad/ContentAD$ContentADListener;
    }
.end annotation


# instance fields
.field private a:Lcom/qq/e/ads/cfg/BrowserType;

.field private b:Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

.field private c:Lcom/qq/e/comm/pi/CAI;

.field private d:Z

.field private e:Lcom/qq/e/ads/contentad/ContentAD$ContentADListener;

.field private f:Z

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/contentad/ContentAD$ContentADListener;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qq/e/ads/contentad/ContentAD;->g:Ljava/util/List;

    iput-boolean v3, p0, Lcom/qq/e/ads/contentad/ContentAD;->h:Z

    invoke-static {p2}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string v0, "GDTContentAd Contructor paras error,appid=%s,posId=%s,context=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v3

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/qq/e/ads/contentad/ContentAD;->d:Z

    invoke-static {p1}, Lcom/qq/e/comm/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Required Activity/Service/Permission Not Declared in AndroidManifest.xml"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/qq/e/ads/contentad/ContentAD;->f:Z

    iput-object p4, p0, Lcom/qq/e/ads/contentad/ContentAD;->e:Lcom/qq/e/ads/contentad/ContentAD$ContentADListener;

    sget-object v0, Lcom/qq/e/comm/managers/GDTADManager;->INIT_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/qq/e/ads/contentad/ContentAD$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/qq/e/ads/contentad/ContentAD$1;-><init>(Lcom/qq/e/ads/contentad/ContentAD;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/qq/e/ads/contentad/ContentAD;)Lcom/qq/e/ads/cfg/BrowserType;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/ads/contentad/ContentAD;->a:Lcom/qq/e/ads/cfg/BrowserType;

    return-object v0
.end method

.method static synthetic a(Lcom/qq/e/ads/contentad/ContentAD;Lcom/qq/e/comm/pi/CAI;)Lcom/qq/e/comm/pi/CAI;
    .locals 0

    iput-object p1, p0, Lcom/qq/e/ads/contentad/ContentAD;->c:Lcom/qq/e/comm/pi/CAI;

    return-object p1
.end method

.method static synthetic a(Lcom/qq/e/ads/contentad/ContentAD;Z)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qq/e/ads/contentad/ContentAD;->h:Z

    return v0
.end method

.method static synthetic b(Lcom/qq/e/ads/contentad/ContentAD;)Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/ads/contentad/ContentAD;->b:Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    return-object v0
.end method

.method static synthetic c(Lcom/qq/e/ads/contentad/ContentAD;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/ads/contentad/ContentAD;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/qq/e/ads/contentad/ContentAD;)Lcom/qq/e/ads/contentad/ContentAD$ContentADListener;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/ads/contentad/ContentAD;->e:Lcom/qq/e/ads/contentad/ContentAD$ContentADListener;

    return-object v0
.end method


# virtual methods
.method public loadAD(IIZ)V
    .locals 3

    iget-boolean v0, p0, Lcom/qq/e/ads/contentad/ContentAD;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/qq/e/ads/contentad/ContentAD;->f:Z

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "AD init Paras OR Context error,details in logs produced while init ContentAD"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/qq/e/ads/contentad/ContentAD;->h:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "page_number"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "channel"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "is_manual_operation"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/qq/e/ads/contentad/ContentAD;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/qq/e/ads/contentad/ContentAD;->c:Lcom/qq/e/comm/pi/CAI;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qq/e/ads/contentad/ContentAD;->c:Lcom/qq/e/comm/pi/CAI;

    invoke-interface {v0, p1, p2, p3}, Lcom/qq/e/comm/pi/CAI;->loadAd(IIZ)V

    goto :goto_0

    :cond_3
    const-string v0, "ContentAD Init error,See More Logs"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setBrowserType(Lcom/qq/e/ads/cfg/BrowserType;)V
    .locals 2

    iput-object p1, p0, Lcom/qq/e/ads/contentad/ContentAD;->a:Lcom/qq/e/ads/cfg/BrowserType;

    iget-object v0, p0, Lcom/qq/e/ads/contentad/ContentAD;->c:Lcom/qq/e/comm/pi/CAI;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/contentad/ContentAD;->c:Lcom/qq/e/comm/pi/CAI;

    invoke-virtual {p1}, Lcom/qq/e/ads/cfg/BrowserType;->value()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/qq/e/comm/pi/CAI;->setBrowserType(I)V

    :cond_0
    return-void
.end method

.method public setDownAPPConfirmPolicy(Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;)V
    .locals 1

    iput-object p1, p0, Lcom/qq/e/ads/contentad/ContentAD;->b:Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    iget-object v0, p0, Lcom/qq/e/ads/contentad/ContentAD;->c:Lcom/qq/e/comm/pi/CAI;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/contentad/ContentAD;->c:Lcom/qq/e/comm/pi/CAI;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/CAI;->setDownAPPConfirmPolicy(Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;)V

    :cond_0
    return-void
.end method
