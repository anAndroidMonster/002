.class Lcom/qq/e/ads/nativ/NativeExpressADView$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/e/ads/nativ/NativeExpressADView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/qq/e/comm/pi/POFactory;

.field private synthetic b:Lcom/qq/e/ads/nativ/NativeExpressADView$1;


# direct methods
.method constructor <init>(Lcom/qq/e/ads/nativ/NativeExpressADView$1;Lcom/qq/e/comm/pi/POFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/qq/e/ads/nativ/NativeExpressADView$1$1;->b:Lcom/qq/e/ads/nativ/NativeExpressADView$1;

    iput-object p2, p0, Lcom/qq/e/ads/nativ/NativeExpressADView$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v10, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView$1$1;->b:Lcom/qq/e/ads/nativ/NativeExpressADView$1;

    iget-object v9, v0, Lcom/qq/e/ads/nativ/NativeExpressADView$1;->h:Lcom/qq/e/ads/nativ/NativeExpressADView;

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    iget-object v1, p0, Lcom/qq/e/ads/nativ/NativeExpressADView$1$1;->b:Lcom/qq/e/ads/nativ/NativeExpressADView$1;

    iget-object v1, v1, Lcom/qq/e/ads/nativ/NativeExpressADView$1;->c:Lcom/qq/e/comm/pi/NEADI;

    iget-object v2, p0, Lcom/qq/e/ads/nativ/NativeExpressADView$1$1;->b:Lcom/qq/e/ads/nativ/NativeExpressADView$1;

    iget-object v2, v2, Lcom/qq/e/ads/nativ/NativeExpressADView$1;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/qq/e/ads/nativ/NativeExpressADView$1$1;->b:Lcom/qq/e/ads/nativ/NativeExpressADView$1;

    iget-object v3, v3, Lcom/qq/e/ads/nativ/NativeExpressADView$1;->h:Lcom/qq/e/ads/nativ/NativeExpressADView;

    iget-object v4, p0, Lcom/qq/e/ads/nativ/NativeExpressADView$1$1;->b:Lcom/qq/e/ads/nativ/NativeExpressADView$1;

    iget-object v4, v4, Lcom/qq/e/ads/nativ/NativeExpressADView$1;->d:Lcom/qq/e/ads/nativ/ADSize;

    iget-object v5, p0, Lcom/qq/e/ads/nativ/NativeExpressADView$1$1;->b:Lcom/qq/e/ads/nativ/NativeExpressADView$1;

    iget-object v5, v5, Lcom/qq/e/ads/nativ/NativeExpressADView$1;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/qq/e/ads/nativ/NativeExpressADView$1$1;->b:Lcom/qq/e/ads/nativ/NativeExpressADView$1;

    iget-object v6, v6, Lcom/qq/e/ads/nativ/NativeExpressADView$1;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/qq/e/ads/nativ/NativeExpressADView$1$1;->b:Lcom/qq/e/ads/nativ/NativeExpressADView$1;

    iget-object v7, v7, Lcom/qq/e/ads/nativ/NativeExpressADView$1;->f:Lorg/json/JSONObject;

    iget-object v8, p0, Lcom/qq/e/ads/nativ/NativeExpressADView$1$1;->b:Lcom/qq/e/ads/nativ/NativeExpressADView$1;

    iget-object v8, v8, Lcom/qq/e/ads/nativ/NativeExpressADView$1;->g:Ljava/util/HashMap;

    invoke-interface/range {v0 .. v8}, Lcom/qq/e/comm/pi/POFactory;->getNativeExpressADView(Lcom/qq/e/comm/pi/NEADI;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/qq/e/ads/nativ/ADSize;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/HashMap;)Lcom/qq/e/comm/pi/NEADVI;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/qq/e/ads/nativ/NativeExpressADView;->a(Lcom/qq/e/ads/nativ/NativeExpressADView;Lcom/qq/e/comm/pi/NEADVI;)Lcom/qq/e/comm/pi/NEADVI;

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView$1$1;->b:Lcom/qq/e/ads/nativ/NativeExpressADView$1;

    iget-object v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView$1;->h:Lcom/qq/e/ads/nativ/NativeExpressADView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qq/e/ads/nativ/NativeExpressADView;->a(Lcom/qq/e/ads/nativ/NativeExpressADView;Z)Z

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView$1$1;->b:Lcom/qq/e/ads/nativ/NativeExpressADView$1;

    iget-object v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView$1;->h:Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-static {v0}, Lcom/qq/e/ads/nativ/NativeExpressADView;->a(Lcom/qq/e/ads/nativ/NativeExpressADView;)Lcom/qq/e/ads/nativ/NativeExpressMediaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView$1$1;->b:Lcom/qq/e/ads/nativ/NativeExpressADView$1;

    iget-object v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView$1;->h:Lcom/qq/e/ads/nativ/NativeExpressADView;

    iget-object v1, p0, Lcom/qq/e/ads/nativ/NativeExpressADView$1$1;->b:Lcom/qq/e/ads/nativ/NativeExpressADView$1;

    iget-object v1, v1, Lcom/qq/e/ads/nativ/NativeExpressADView$1;->h:Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-static {v1}, Lcom/qq/e/ads/nativ/NativeExpressADView;->a(Lcom/qq/e/ads/nativ/NativeExpressADView;)Lcom/qq/e/ads/nativ/NativeExpressMediaListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/nativ/NativeExpressADView;->setMediaListener(Lcom/qq/e/ads/nativ/NativeExpressMediaListener;)V

    :cond_0
    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView$1$1;->b:Lcom/qq/e/ads/nativ/NativeExpressADView$1;

    iget-object v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView$1;->h:Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-static {v0}, Lcom/qq/e/ads/nativ/NativeExpressADView;->b(Lcom/qq/e/ads/nativ/NativeExpressADView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView$1$1;->b:Lcom/qq/e/ads/nativ/NativeExpressADView$1;

    iget-object v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView$1;->h:Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-virtual {v0}, Lcom/qq/e/ads/nativ/NativeExpressADView;->render()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView$1$1;->b:Lcom/qq/e/ads/nativ/NativeExpressADView$1;

    iget-object v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView$1;->h:Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-static {v0, v10}, Lcom/qq/e/ads/nativ/NativeExpressADView;->a(Lcom/qq/e/ads/nativ/NativeExpressADView;Z)Z

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Exception while init Native Express AD View Core"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView$1$1;->b:Lcom/qq/e/ads/nativ/NativeExpressADView$1;

    iget-object v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView$1;->h:Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-static {v0, v10}, Lcom/qq/e/ads/nativ/NativeExpressADView;->a(Lcom/qq/e/ads/nativ/NativeExpressADView;Z)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/qq/e/ads/nativ/NativeExpressADView$1$1;->b:Lcom/qq/e/ads/nativ/NativeExpressADView$1;

    iget-object v1, v1, Lcom/qq/e/ads/nativ/NativeExpressADView$1;->h:Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-static {v1, v10}, Lcom/qq/e/ads/nativ/NativeExpressADView;->a(Lcom/qq/e/ads/nativ/NativeExpressADView;Z)Z

    throw v0
.end method
