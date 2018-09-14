.class Lcom/qq/e/ads/nativ/NativeMediaAD$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/e/ads/nativ/NativeMediaAD$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/qq/e/comm/pi/POFactory;

.field private synthetic b:Lcom/qq/e/ads/nativ/NativeMediaAD$1;


# direct methods
.method constructor <init>(Lcom/qq/e/ads/nativ/NativeMediaAD$1;Lcom/qq/e/comm/pi/POFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/qq/e/ads/nativ/NativeMediaAD$1$1;->b:Lcom/qq/e/ads/nativ/NativeMediaAD$1;

    iput-object p2, p0, Lcom/qq/e/ads/nativ/NativeMediaAD$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeMediaAD$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeMediaAD$1$1;->b:Lcom/qq/e/ads/nativ/NativeMediaAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/nativ/NativeMediaAD$1;->d:Lcom/qq/e/ads/nativ/NativeMediaAD;

    iget-object v1, p0, Lcom/qq/e/ads/nativ/NativeMediaAD$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    iget-object v2, p0, Lcom/qq/e/ads/nativ/NativeMediaAD$1$1;->b:Lcom/qq/e/ads/nativ/NativeMediaAD$1;

    iget-object v2, v2, Lcom/qq/e/ads/nativ/NativeMediaAD$1;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/qq/e/ads/nativ/NativeMediaAD$1$1;->b:Lcom/qq/e/ads/nativ/NativeMediaAD$1;

    iget-object v3, v3, Lcom/qq/e/ads/nativ/NativeMediaAD$1;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/qq/e/ads/nativ/NativeMediaAD$1$1;->b:Lcom/qq/e/ads/nativ/NativeMediaAD$1;

    iget-object v4, v4, Lcom/qq/e/ads/nativ/NativeMediaAD$1;->c:Ljava/lang/String;

    new-instance v5, Lcom/qq/e/ads/nativ/NativeMediaAD$ADListenerAdapter;

    iget-object v6, p0, Lcom/qq/e/ads/nativ/NativeMediaAD$1$1;->b:Lcom/qq/e/ads/nativ/NativeMediaAD$1;

    iget-object v6, v6, Lcom/qq/e/ads/nativ/NativeMediaAD$1;->d:Lcom/qq/e/ads/nativ/NativeMediaAD;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/qq/e/ads/nativ/NativeMediaAD$ADListenerAdapter;-><init>(Lcom/qq/e/ads/nativ/NativeMediaAD;B)V

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/qq/e/comm/pi/POFactory;->getNativeVideoADDelegate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/comm/adevent/ADListener;)Lcom/qq/e/comm/pi/NVADI;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qq/e/ads/nativ/NativeMediaAD;->a(Lcom/qq/e/ads/nativ/NativeMediaAD;Lcom/qq/e/comm/pi/NVADI;)Lcom/qq/e/comm/pi/NVADI;

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeMediaAD$1$1;->b:Lcom/qq/e/ads/nativ/NativeMediaAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/nativ/NativeMediaAD$1;->d:Lcom/qq/e/ads/nativ/NativeMediaAD;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qq/e/ads/nativ/NativeMediaAD;->a(Lcom/qq/e/ads/nativ/NativeMediaAD;Z)Z

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeMediaAD$1$1;->b:Lcom/qq/e/ads/nativ/NativeMediaAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/nativ/NativeMediaAD$1;->d:Lcom/qq/e/ads/nativ/NativeMediaAD;

    invoke-static {v0}, Lcom/qq/e/ads/nativ/NativeMediaAD;->a(Lcom/qq/e/ads/nativ/NativeMediaAD;)Lcom/qq/e/ads/cfg/BrowserType;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeMediaAD$1$1;->b:Lcom/qq/e/ads/nativ/NativeMediaAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/nativ/NativeMediaAD$1;->d:Lcom/qq/e/ads/nativ/NativeMediaAD;

    iget-object v1, p0, Lcom/qq/e/ads/nativ/NativeMediaAD$1$1;->b:Lcom/qq/e/ads/nativ/NativeMediaAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/nativ/NativeMediaAD$1;->d:Lcom/qq/e/ads/nativ/NativeMediaAD;

    invoke-static {v1}, Lcom/qq/e/ads/nativ/NativeMediaAD;->a(Lcom/qq/e/ads/nativ/NativeMediaAD;)Lcom/qq/e/ads/cfg/BrowserType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/nativ/NativeMediaAD;->setBrowserType(Lcom/qq/e/ads/cfg/BrowserType;)V

    :cond_0
    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeMediaAD$1$1;->b:Lcom/qq/e/ads/nativ/NativeMediaAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/nativ/NativeMediaAD$1;->d:Lcom/qq/e/ads/nativ/NativeMediaAD;

    invoke-static {v0}, Lcom/qq/e/ads/nativ/NativeMediaAD;->b(Lcom/qq/e/ads/nativ/NativeMediaAD;)Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeMediaAD$1$1;->b:Lcom/qq/e/ads/nativ/NativeMediaAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/nativ/NativeMediaAD$1;->d:Lcom/qq/e/ads/nativ/NativeMediaAD;

    iget-object v1, p0, Lcom/qq/e/ads/nativ/NativeMediaAD$1$1;->b:Lcom/qq/e/ads/nativ/NativeMediaAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/nativ/NativeMediaAD$1;->d:Lcom/qq/e/ads/nativ/NativeMediaAD;

    invoke-static {v1}, Lcom/qq/e/ads/nativ/NativeMediaAD;->b(Lcom/qq/e/ads/nativ/NativeMediaAD;)Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/nativ/NativeMediaAD;->setDownAPPConfirmPolicy(Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;)V

    :cond_1
    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeMediaAD$1$1;->b:Lcom/qq/e/ads/nativ/NativeMediaAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/nativ/NativeMediaAD$1;->d:Lcom/qq/e/ads/nativ/NativeMediaAD;

    invoke-static {v0}, Lcom/qq/e/ads/nativ/NativeMediaAD;->c(Lcom/qq/e/ads/nativ/NativeMediaAD;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/qq/e/ads/nativ/NativeMediaAD$1$1;->b:Lcom/qq/e/ads/nativ/NativeMediaAD$1;

    iget-object v2, v2, Lcom/qq/e/ads/nativ/NativeMediaAD$1;->d:Lcom/qq/e/ads/nativ/NativeMediaAD;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/qq/e/ads/nativ/NativeMediaAD;->loadAD(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Exception while init NativeMediaAD Core"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeMediaAD$1$1;->b:Lcom/qq/e/ads/nativ/NativeMediaAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/nativ/NativeMediaAD$1;->d:Lcom/qq/e/ads/nativ/NativeMediaAD;

    invoke-static {v0, v8}, Lcom/qq/e/ads/nativ/NativeMediaAD;->a(Lcom/qq/e/ads/nativ/NativeMediaAD;Z)Z

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeMediaAD$1$1;->b:Lcom/qq/e/ads/nativ/NativeMediaAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/nativ/NativeMediaAD$1;->d:Lcom/qq/e/ads/nativ/NativeMediaAD;

    invoke-static {v0, v8}, Lcom/qq/e/ads/nativ/NativeMediaAD;->a(Lcom/qq/e/ads/nativ/NativeMediaAD;Z)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/qq/e/ads/nativ/NativeMediaAD$1$1;->b:Lcom/qq/e/ads/nativ/NativeMediaAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/nativ/NativeMediaAD$1;->d:Lcom/qq/e/ads/nativ/NativeMediaAD;

    invoke-static {v1, v8}, Lcom/qq/e/ads/nativ/NativeMediaAD;->a(Lcom/qq/e/ads/nativ/NativeMediaAD;Z)Z

    throw v0
.end method
