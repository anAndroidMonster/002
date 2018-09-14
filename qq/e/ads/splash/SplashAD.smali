.class public final Lcom/qq/e/ads/splash/SplashAD;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/ads/splash/SplashAD$ADListenerAdapter;
    }
.end annotation


# instance fields
.field private a:Lcom/qq/e/comm/pi/NSPVI;

.field private b:Lcom/qq/e/ads/splash/SplashADListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p6, p0, Lcom/qq/e/ads/splash/SplashAD;->b:Lcom/qq/e/ads/splash/SplashADListener;

    invoke-static {p4}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p5}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string v0, "SplashAD Constructor params error, appid=%s,posId=%s,context=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p4, v1, v2

    const/4 v2, 0x1

    aput-object p5, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/16 v0, 0x7d1

    invoke-static {p6, v0}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashADListener;I)V

    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/qq/e/comm/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Required Activity/Service/Permission Not Declared in AndroidManifest.xml"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/16 v0, 0xfa2

    invoke-static {p6, v0}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashADListener;I)V

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0, p1, p4}, Lcom/qq/e/comm/managers/GDTADManager;->initWith(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Fail to Init GDT AD SDK, report logcat info filter by gdt_ad_mob"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const v0, 0x30da5

    invoke-static {p6, v0}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashADListener;I)V
    :try_end_0
    .catch Lcom/qq/e/comm/managers/plugin/b; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Fail to init splash plugin"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const v0, 0x30da6

    invoke-static {p6, v0}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashADListener;I)V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/GDTADManager;->getPM()Lcom/qq/e/comm/managers/plugin/PM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/plugin/PM;->getPOFactory()Lcom/qq/e/comm/pi/POFactory;

    move-result-object v0

    invoke-interface {v0, p1, p4, p5}, Lcom/qq/e/comm/pi/POFactory;->getNativeSplashAdView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/qq/e/comm/pi/NSPVI;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    invoke-interface {v0, p7}, Lcom/qq/e/comm/pi/NSPVI;->setFetchDelay(I)V

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    new-instance v1, Lcom/qq/e/ads/splash/SplashAD$ADListenerAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/qq/e/ads/splash/SplashAD$ADListenerAdapter;-><init>(Lcom/qq/e/ads/splash/SplashAD;B)V

    invoke-interface {v0, v1}, Lcom/qq/e/comm/pi/NSPVI;->setAdListener(Lcom/qq/e/comm/adevent/ADListener;)V

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    invoke-interface {v0, p3}, Lcom/qq/e/comm/pi/NSPVI;->setSkipView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    invoke-interface {v0, p2}, Lcom/qq/e/comm/pi/NSPVI;->fetchAndShowIn(Landroid/view/ViewGroup;)V
    :try_end_1
    .catch Lcom/qq/e/comm/managers/plugin/b; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Unknown Exception"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x25d

    invoke-static {p6, v0}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashADListener;I)V

    goto :goto_0

    :cond_4
    :try_start_2
    const-string v0, "SplashAdView created by factory return null"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const v0, 0x30da7

    invoke-static {p6, v0}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashADListener;I)V
    :try_end_2
    .catch Lcom/qq/e/comm/managers/plugin/b; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/qq/e/ads/splash/SplashAD;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;I)V
    .locals 8

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/qq/e/ads/splash/SplashAD;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;I)V

    return-void
.end method

.method static synthetic a(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/ads/splash/SplashADListener;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->b:Lcom/qq/e/ads/splash/SplashADListener;

    return-object v0
.end method

.method private static a(Lcom/qq/e/ads/splash/SplashADListener;I)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/qq/e/comm/a;->a(I)Lcom/qq/e/comm/util/AdError;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/qq/e/ads/splash/SplashADListener;->onNoAD(Lcom/qq/e/comm/util/AdError;)V

    :cond_0
    return-void
.end method
