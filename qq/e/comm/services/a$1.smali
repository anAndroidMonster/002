.class final Lcom/qq/e/comm/services/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/comm/net/NetworkCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/comm/services/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/qq/e/comm/managers/plugin/PM;

.field private synthetic b:J


# direct methods
.method constructor <init>(Lcom/qq/e/comm/services/a;Lcom/qq/e/comm/managers/plugin/PM;J)V
    .locals 1

    iput-object p2, p0, Lcom/qq/e/comm/services/a$1;->a:Lcom/qq/e/comm/managers/plugin/PM;

    iput-wide p3, p0, Lcom/qq/e/comm/services/a$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/Exception;)V
    .locals 14

    const/4 v6, 0x0

    const-string v0, "ActivateError"

    invoke-static {v0, p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/qq/e/comm/services/RetCodeService;->getInstance()Lcom/qq/e/comm/services/RetCodeService;

    move-result-object v9

    new-instance v0, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;

    const-string v1, "sdk.e.qq.com"

    const-string v2, "launch"

    const-string v3, ""

    const/4 v4, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/qq/e/comm/services/a$1;->b:J

    sub-long/2addr v10, v12

    long-to-int v5, v10

    const/4 v8, 0x1

    move v7, v6

    invoke-direct/range {v0 .. v8}, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V

    invoke-virtual {v9, v0}, Lcom/qq/e/comm/services/RetCodeService;->send(Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;)V

    return-void
.end method

.method public final onResponse(Lcom/qq/e/comm/net/rr/Request;Lcom/qq/e/comm/net/rr/Response;)V
    .locals 14

    :try_start_0
    invoke-interface/range {p2 .. p2}, Lcom/qq/e/comm/net/rr/Response;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_4

    invoke-interface/range {p2 .. p2}, Lcom/qq/e/comm/net/rr/Response;->getStringContent()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ACTIVERESPONSE:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SDK Server response empty string,maybe zip or tea format error"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->report(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/qq/e/comm/services/RetCodeService;->getInstance()Lcom/qq/e/comm/services/RetCodeService;

    move-result-object v9

    new-instance v0, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;

    const-string v1, "sdk.e.qq.com"

    const-string v2, "launch"

    const-string v3, ""

    invoke-interface/range {p2 .. p2}, Lcom/qq/e/comm/net/rr/Response;->getStatusCode()I

    move-result v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v10, p0, Lcom/qq/e/comm/services/a$1;->b:J

    sub-long/2addr v6, v10

    long-to-int v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V

    invoke-virtual {v9, v0}, Lcom/qq/e/comm/services/RetCodeService;->send(Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;)V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    const-string v3, "ret"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "ret"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_1
    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Response Error,retCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    invoke-static {}, Lcom/qq/e/comm/services/RetCodeService;->getInstance()Lcom/qq/e/comm/services/RetCodeService;

    move-result-object v9

    new-instance v0, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;

    const-string v1, "sdk.e.qq.com"

    const-string v2, "launch"

    const-string v3, ""

    invoke-interface/range {p2 .. p2}, Lcom/qq/e/comm/net/rr/Response;->getStatusCode()I

    move-result v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v10, p0, Lcom/qq/e/comm/services/a$1;->b:J

    sub-long/2addr v6, v10

    long-to-int v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V

    invoke-virtual {v9, v0}, Lcom/qq/e/comm/services/RetCodeService;->send(Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;)V

    goto :goto_0

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/qq/e/comm/services/a$1;->a:Lcom/qq/e/comm/managers/plugin/PM;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    :try_start_3
    iget-object v0, p0, Lcom/qq/e/comm/services/a$1;->a:Lcom/qq/e/comm/managers/plugin/PM;

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/plugin/PM;->getPOFactory()Lcom/qq/e/comm/pi/POFactory;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v0, v3, v1}, Lcom/qq/e/comm/pi/POFactory;->config(ILjava/lang/String;)V
    :try_end_3
    .catch Lcom/qq/e/comm/managers/plugin/b; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    const-string v0, "sig"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "sig"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "jar"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "jar"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/qq/e/comm/services/a$1;->a:Lcom/qq/e/comm/managers/plugin/PM;

    invoke-virtual {v2, v1, v0}, Lcom/qq/e/comm/managers/plugin/PM;->update(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_5
    const-string v1, "ActivateError"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/qq/e/comm/services/RetCodeService;->getInstance()Lcom/qq/e/comm/services/RetCodeService;

    move-result-object v9

    new-instance v0, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;

    const-string v1, "sdk.e.qq.com"

    const-string v2, "launch"

    const-string v3, ""

    invoke-interface/range {p2 .. p2}, Lcom/qq/e/comm/net/rr/Response;->getStatusCode()I

    move-result v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v10, p0, Lcom/qq/e/comm/services/a$1;->b:J

    sub-long/2addr v6, v10

    long-to-int v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V

    invoke-virtual {v9, v0}, Lcom/qq/e/comm/services/RetCodeService;->send(Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Lcom/qq/e/comm/managers/plugin/b;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_7
    const-string v1, "Parse Active or launch response exception"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-static {}, Lcom/qq/e/comm/services/RetCodeService;->getInstance()Lcom/qq/e/comm/services/RetCodeService;

    move-result-object v9

    new-instance v0, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;

    const-string v1, "sdk.e.qq.com"

    const-string v2, "launch"

    const-string v3, ""

    invoke-interface/range {p2 .. p2}, Lcom/qq/e/comm/net/rr/Response;->getStatusCode()I

    move-result v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v10, p0, Lcom/qq/e/comm/services/a$1;->b:J

    sub-long/2addr v6, v10

    long-to-int v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V

    invoke-virtual {v9, v0}, Lcom/qq/e/comm/services/RetCodeService;->send(Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;)V

    goto/16 :goto_0

    :cond_4
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SDK server response code error while launch or activate,code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Lcom/qq/e/comm/net/rr/Response;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v9, v0

    invoke-static {}, Lcom/qq/e/comm/services/RetCodeService;->getInstance()Lcom/qq/e/comm/services/RetCodeService;

    move-result-object v10

    new-instance v0, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;

    const-string v1, "sdk.e.qq.com"

    const-string v2, "launch"

    const-string v3, ""

    invoke-interface/range {p2 .. p2}, Lcom/qq/e/comm/net/rr/Response;->getStatusCode()I

    move-result v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v12, p0, Lcom/qq/e/comm/services/a$1;->b:J

    sub-long/2addr v6, v12

    long-to-int v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V

    invoke-virtual {v10, v0}, Lcom/qq/e/comm/services/RetCodeService;->send(Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;)V

    throw v9
.end method
