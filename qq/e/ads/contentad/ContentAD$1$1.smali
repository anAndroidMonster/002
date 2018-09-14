.class Lcom/qq/e/ads/contentad/ContentAD$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/e/ads/contentad/ContentAD$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/qq/e/comm/pi/POFactory;

.field private synthetic b:Lcom/qq/e/ads/contentad/ContentAD$1;


# direct methods
.method constructor <init>(Lcom/qq/e/ads/contentad/ContentAD$1;Lcom/qq/e/comm/pi/POFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/qq/e/ads/contentad/ContentAD$1$1;->b:Lcom/qq/e/ads/contentad/ContentAD$1;

    iput-object p2, p0, Lcom/qq/e/ads/contentad/ContentAD$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/qq/e/ads/contentad/ContentAD$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qq/e/ads/contentad/ContentAD$1$1;->b:Lcom/qq/e/ads/contentad/ContentAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/contentad/ContentAD$1;->d:Lcom/qq/e/ads/contentad/ContentAD;

    iget-object v1, p0, Lcom/qq/e/ads/contentad/ContentAD$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    iget-object v2, p0, Lcom/qq/e/ads/contentad/ContentAD$1$1;->b:Lcom/qq/e/ads/contentad/ContentAD$1;

    iget-object v2, v2, Lcom/qq/e/ads/contentad/ContentAD$1;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/qq/e/ads/contentad/ContentAD$1$1;->b:Lcom/qq/e/ads/contentad/ContentAD$1;

    iget-object v3, v3, Lcom/qq/e/ads/contentad/ContentAD$1;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/qq/e/ads/contentad/ContentAD$1$1;->b:Lcom/qq/e/ads/contentad/ContentAD$1;

    iget-object v4, v4, Lcom/qq/e/ads/contentad/ContentAD$1;->c:Ljava/lang/String;

    new-instance v5, Lcom/qq/e/ads/contentad/ContentAD$ADListenerAdapter;

    iget-object v6, p0, Lcom/qq/e/ads/contentad/ContentAD$1$1;->b:Lcom/qq/e/ads/contentad/ContentAD$1;

    iget-object v6, v6, Lcom/qq/e/ads/contentad/ContentAD$1;->d:Lcom/qq/e/ads/contentad/ContentAD;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/qq/e/ads/contentad/ContentAD$ADListenerAdapter;-><init>(Lcom/qq/e/ads/contentad/ContentAD;B)V

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/qq/e/comm/pi/POFactory;->getContentAdDelegate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/comm/adevent/ADListener;)Lcom/qq/e/comm/pi/CAI;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qq/e/ads/contentad/ContentAD;->a(Lcom/qq/e/ads/contentad/ContentAD;Lcom/qq/e/comm/pi/CAI;)Lcom/qq/e/comm/pi/CAI;

    iget-object v0, p0, Lcom/qq/e/ads/contentad/ContentAD$1$1;->b:Lcom/qq/e/ads/contentad/ContentAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/contentad/ContentAD$1;->d:Lcom/qq/e/ads/contentad/ContentAD;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qq/e/ads/contentad/ContentAD;->a(Lcom/qq/e/ads/contentad/ContentAD;Z)Z

    iget-object v0, p0, Lcom/qq/e/ads/contentad/ContentAD$1$1;->b:Lcom/qq/e/ads/contentad/ContentAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/contentad/ContentAD$1;->d:Lcom/qq/e/ads/contentad/ContentAD;

    invoke-static {v0}, Lcom/qq/e/ads/contentad/ContentAD;->a(Lcom/qq/e/ads/contentad/ContentAD;)Lcom/qq/e/ads/cfg/BrowserType;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/contentad/ContentAD$1$1;->b:Lcom/qq/e/ads/contentad/ContentAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/contentad/ContentAD$1;->d:Lcom/qq/e/ads/contentad/ContentAD;

    iget-object v1, p0, Lcom/qq/e/ads/contentad/ContentAD$1$1;->b:Lcom/qq/e/ads/contentad/ContentAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/contentad/ContentAD$1;->d:Lcom/qq/e/ads/contentad/ContentAD;

    invoke-static {v1}, Lcom/qq/e/ads/contentad/ContentAD;->a(Lcom/qq/e/ads/contentad/ContentAD;)Lcom/qq/e/ads/cfg/BrowserType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/contentad/ContentAD;->setBrowserType(Lcom/qq/e/ads/cfg/BrowserType;)V

    :cond_0
    iget-object v0, p0, Lcom/qq/e/ads/contentad/ContentAD$1$1;->b:Lcom/qq/e/ads/contentad/ContentAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/contentad/ContentAD$1;->d:Lcom/qq/e/ads/contentad/ContentAD;

    invoke-static {v0}, Lcom/qq/e/ads/contentad/ContentAD;->b(Lcom/qq/e/ads/contentad/ContentAD;)Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qq/e/ads/contentad/ContentAD$1$1;->b:Lcom/qq/e/ads/contentad/ContentAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/contentad/ContentAD$1;->d:Lcom/qq/e/ads/contentad/ContentAD;

    iget-object v1, p0, Lcom/qq/e/ads/contentad/ContentAD$1$1;->b:Lcom/qq/e/ads/contentad/ContentAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/contentad/ContentAD$1;->d:Lcom/qq/e/ads/contentad/ContentAD;

    invoke-static {v1}, Lcom/qq/e/ads/contentad/ContentAD;->b(Lcom/qq/e/ads/contentad/ContentAD;)Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/contentad/ContentAD;->setDownAPPConfirmPolicy(Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;)V

    :cond_1
    iget-object v0, p0, Lcom/qq/e/ads/contentad/ContentAD$1$1;->b:Lcom/qq/e/ads/contentad/ContentAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/contentad/ContentAD$1;->d:Lcom/qq/e/ads/contentad/ContentAD;

    invoke-static {v0}, Lcom/qq/e/ads/contentad/ContentAD;->c(Lcom/qq/e/ads/contentad/ContentAD;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "page_number"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v1, "channel"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v4, "is_manual_operation"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v4, p0, Lcom/qq/e/ads/contentad/ContentAD$1$1;->b:Lcom/qq/e/ads/contentad/ContentAD$1;

    iget-object v4, v4, Lcom/qq/e/ads/contentad/ContentAD$1;->d:Lcom/qq/e/ads/contentad/ContentAD;

    invoke-virtual {v4, v3, v1, v0}, Lcom/qq/e/ads/contentad/ContentAD;->loadAD(IIZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Exception while init Native Core"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/qq/e/ads/contentad/ContentAD$1$1;->b:Lcom/qq/e/ads/contentad/ContentAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/contentad/ContentAD$1;->d:Lcom/qq/e/ads/contentad/ContentAD;

    invoke-static {v0, v8}, Lcom/qq/e/ads/contentad/ContentAD;->a(Lcom/qq/e/ads/contentad/ContentAD;Z)Z

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/qq/e/ads/contentad/ContentAD$1$1;->b:Lcom/qq/e/ads/contentad/ContentAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/contentad/ContentAD$1;->d:Lcom/qq/e/ads/contentad/ContentAD;

    invoke-static {v0, v8}, Lcom/qq/e/ads/contentad/ContentAD;->a(Lcom/qq/e/ads/contentad/ContentAD;Z)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/qq/e/ads/contentad/ContentAD$1$1;->b:Lcom/qq/e/ads/contentad/ContentAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/contentad/ContentAD$1;->d:Lcom/qq/e/ads/contentad/ContentAD;

    invoke-static {v1, v8}, Lcom/qq/e/ads/contentad/ContentAD;->a(Lcom/qq/e/ads/contentad/ContentAD;Z)Z

    throw v0
.end method
