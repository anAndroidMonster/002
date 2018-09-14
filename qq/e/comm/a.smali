.class public Lcom/qq/e/comm/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/qq/e/comm/managers/setting/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/qq/e/comm/managers/setting/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qq/e/comm/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/qq/e/comm/a;->b:Lcom/qq/e/comm/managers/setting/a;

    return-void
.end method

.method public static a(I)Lcom/qq/e/comm/util/AdError;
    .locals 6

    const/16 v5, 0x1392

    const/16 v4, 0x7d2

    const/16 v2, 0x7d1

    const/16 v3, 0xfa1

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0x1770

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u672a\u77e5\u9519\u8bef\uff0c\u8be6\u7ec6\u7801\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    :goto_0
    return-object v0

    :sswitch_0
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const-string v1, "\u521d\u59cb\u5316\u9519\u8bef"

    invoke-direct {v0, v2, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const-string v1, "\u521d\u59cb\u5316\u9519\u8bef\uff0c\u8be6\u7ec6\u7801\uff1a200101"

    invoke-direct {v0, v2, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const-string v1, "\u521d\u59cb\u5316\u9519\u8bef\uff0c\u8be6\u7ec6\u7801\uff1a200102"

    invoke-direct {v0, v2, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const-string v1, "\u521d\u59cb\u5316\u9519\u8bef\uff0c\u8be6\u7ec6\u7801\uff1a200103"

    invoke-direct {v0, v2, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_4
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const-string v1, "\u5185\u90e8\u9519\u8bef"

    invoke-direct {v0, v4, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_5
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const-string v1, "\u5185\u90e8\u9519\u8bef\uff0c\u8be6\u7ec6\u7801\uff1a200201"

    invoke-direct {v0, v4, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_6
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const-string v1, "\u5185\u90e8\u9519\u8bef\uff0c\u8be6\u7ec6\u7801\uff1a200202"

    invoke-direct {v0, v4, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_7
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0xbb9

    const-string v2, "\u7f51\u7edc\u5f02\u5e38"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_8
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0xbbb

    const-string v2, "\u7f51\u7edc\u7c7b\u578b\u9519\u8bef\uff0c\u5f53\u524d\u8bbe\u5907\u7684\u7f51\u7edc\u7c7b\u578b\u4e0d\u7b26\u5408\u5f00\u5c4f\u5e7f\u544a\u7684\u52a0\u8f7d\u6761\u4ef6"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_9
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const-string v1, "\u4f20\u5165\u7684\u53c2\u6570\u6709\u9519\u8bef"

    invoke-direct {v0, v3, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_a
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4f20\u5165\u7684\u53c2\u6570\u6709\u9519\u8bef\uff0c\u8be6\u7ec6\u7801\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_b
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4f20\u5165\u7684\u53c2\u6570\u6709\u9519\u8bef\uff0c\u8be6\u7ec6\u7801\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_c
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4f20\u5165\u7684\u53c2\u6570\u6709\u9519\u8bef\uff0c\u8be6\u7ec6\u7801\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_d
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4f20\u5165\u7684\u53c2\u6570\u6709\u9519\u8bef\uff0c\u8be6\u7ec6\u7801\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_e
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0xfa2

    const-string v2, "Manifest\u6587\u4ef6\u4e2dActivity/Service/Permission\u7684\u58f0\u660e\u6709\u95ee\u9898"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_f
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0xfa3

    const-string v2, "\u5e7f\u544a\u4f4d\u9519\u8bef"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_10
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0xfa4

    const-string v2, "\u5f00\u5c4f\u5e7f\u544a\u5bb9\u5668\u4e0d\u53ef\u89c1"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_11
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0xfa5

    const-string v2, "\u5f00\u5c4f\u5e7f\u544a\u5bb9\u5668\u7684\u9ad8\u5ea6\u4f4e\u4e8e400dp"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_12
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0xfa6

    const-string v2, "\u539f\u751f\u5e7f\u544a\u63a5\u53e3\u8c03\u7528\u987a\u5e8f\u9519\u8bef\uff0c\u8c03\u7528\u70b9\u51fb\u63a5\u53e3\u524d\u672a\u8c03\u7528\u66dd\u5149\u63a5\u53e3"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_13
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0xfa8

    const-string v2, "\u8bbe\u5907\u65b9\u5411\u4e0d\u9002\u5408\u5c55\u793a\u5e7f\u544a"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_14
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0xfa9

    const-string v2, "\u5f00\u5c4f\u5e7f\u544a\u7684\u81ea\u5b9a\u4e49\u8df3\u8fc7\u6309\u94ae\u5c3a\u5bf8\u5c0f\u4e8e3x3dp"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_15
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0xfab

    const-string v2, "\u5f00\u5c4f\u5e7f\u544a\u62c9\u53d6\u8d85\u65f6"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_16
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0x1389

    const-string v2, "\u670d\u52a1\u7aef\u6570\u636e\u9519\u8bef"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_17
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0x138a

    const-string v2, "\u89c6\u9891\u7d20\u6750\u4e0b\u8f7d\u9519\u8bef"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_18
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0x138b

    const-string v2, "\u89c6\u9891\u7d20\u6750\u64ad\u653e\u9519\u8bef"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_19
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0x138c

    const-string v2, "\u6ca1\u6709\u5e7f\u544a"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1a
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0x138d

    const-string v2, "\u5e7f\u544a\u8bf7\u6c42\u91cf\u6216\u8005\u6d88\u8017\u7b49\u8d85\u8fc7\u65e5\u9650\u989d\uff0c\u8bf7\u660e\u5929\u518d\u8bf7\u6c42\u5e7f\u544a"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1b
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0x1391

    const-string v2, "\u5e7f\u544a\u8bf7\u6c42\u91cf\u6216\u8005\u6d88\u8017\u7b49\u8d85\u8fc7\u5c0f\u65f6\u9650\u989d\uff0c\u8bf7\u4e00\u5c0f\u65f6\u540e\u518d\u8bf7\u6c42\u5e7f\u544a"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1c
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0x138e

    const-string v2, "\u5305\u540d\u6821\u9a8c\u9519\u8bef\uff0c\u5f53\u524dApp\u7684\u5305\u540d\u548c\u5e7f\u70b9\u901a\u79fb\u52a8\u8054\u76df\u5b98\u7f51\u6ce8\u518c\u7684\u5a92\u4f53\u5305\u540d\u4e0d\u4e00\u81f4\uff0c\u56e0\u6b64\u65e0\u5e7f\u544a\u8fd4\u56de"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1d
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0x138f

    const-string v2, "\u8d44\u6e90\u52a0\u8f7d\u9519\u8bef"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1e
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0x1390

    const-string v2, "\u56fe\u7247\u52a0\u8f7d\u9519\u8bef"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1f
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const-string v1, "\u5e7f\u544a\u6837\u5f0f\u6821\u9a8c\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u5e7f\u544a\u4f4d\u4e0e\u63a5\u53e3\u4f7f\u7528\u662f\u5426\u4e00\u81f4"

    invoke-direct {v0, v5, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_20
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const-string v1, "\u539f\u751f\u6a21\u7248\u6e32\u67d3\u5931\u8d25"

    invoke-direct {v0, v5, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_21
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0xfac

    const-string v2, "\u5185\u5bb9\u63a5\u53e3\u8c03\u7528\u987a\u5e8f\u9519\u8bef\uff0c\u8c03\u7528\u70b9\u51fb\u63a5\u53e3\u524d\u672a\u8c03\u7528\u66dd\u5149\u63a5\u53e3"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_22
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 v1, 0xfad

    const-string v2, "\u4f7f\u7528\u652f\u6301\u89c6\u9891\u7d20\u6750\u7684\u539f\u751f\u6a21\u677f\u5e7f\u544a\u4f4d\u524d\uff0c\u8bf7\u5347\u7ea7\u60a8\u7684SDK"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_0
        0x12d -> :sswitch_1
        0x12e -> :sswitch_2
        0x12f -> :sswitch_3
        0x190 -> :sswitch_7
        0x193 -> :sswitch_7
        0x194 -> :sswitch_15
        0x195 -> :sswitch_1d
        0x196 -> :sswitch_1e
        0x1f4 -> :sswitch_f
        0x1f5 -> :sswitch_19
        0x1f6 -> :sswitch_16
        0x258 -> :sswitch_10
        0x259 -> :sswitch_8
        0x25a -> :sswitch_e
        0x25b -> :sswitch_5
        0x25c -> :sswitch_6
        0x25e -> :sswitch_11
        0x25f -> :sswitch_12
        0x260 -> :sswitch_14
        0x2bc -> :sswitch_17
        0x2bd -> :sswitch_18
        0x320 -> :sswitch_21
        0x7d1 -> :sswitch_0
        0x7d2 -> :sswitch_4
        0xbb9 -> :sswitch_7
        0xbbb -> :sswitch_8
        0xfa1 -> :sswitch_9
        0xfa2 -> :sswitch_e
        0xfa3 -> :sswitch_f
        0xfa4 -> :sswitch_10
        0xfa5 -> :sswitch_11
        0xfa6 -> :sswitch_12
        0xfa8 -> :sswitch_13
        0xfa9 -> :sswitch_14
        0xfab -> :sswitch_15
        0x1389 -> :sswitch_16
        0x138a -> :sswitch_17
        0x138b -> :sswitch_18
        0x138c -> :sswitch_19
        0x138d -> :sswitch_1a
        0x138e -> :sswitch_1c
        0x138f -> :sswitch_1d
        0x1390 -> :sswitch_1e
        0x1391 -> :sswitch_1b
        0x1393 -> :sswitch_20
        0x1a216 -> :sswitch_1c
        0x1a21a -> :sswitch_1f
        0x1a21b -> :sswitch_22
        0x1abc2 -> :sswitch_1a
        0x1abc3 -> :sswitch_1b
        0x30da5 -> :sswitch_1
        0x30da6 -> :sswitch_2
        0x30da7 -> :sswitch_3
        0x30e09 -> :sswitch_5
        0x30e0a -> :sswitch_6
        0x61ae5 -> :sswitch_a
        0x61ae6 -> :sswitch_b
        0x61ae7 -> :sswitch_c
        0x61ae8 -> :sswitch_d
    .end sparse-switch
.end method

.method public static a(Lcom/qq/e/comm/managers/plugin/PM;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "sdkv"

    invoke-static {}, Lcom/qq/e/comm/managers/status/SDKStatus;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pv"

    invoke-virtual {p0}, Lcom/qq/e/comm/managers/plugin/PM;->getPluginVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static a(Lcom/qq/e/comm/managers/setting/SM;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "suid"

    invoke-virtual {p0}, Lcom/qq/e/comm/managers/setting/SM;->getSuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sid"

    invoke-virtual {p0}, Lcom/qq/e/comm/managers/setting/SM;->getSid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-object v0
.end method

.method public static a(Lcom/qq/e/comm/managers/status/APPStatus;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "an"

    invoke-virtual {p0}, Lcom/qq/e/comm/managers/status/APPStatus;->getAPPName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appkey"

    invoke-virtual {p0}, Lcom/qq/e/comm/managers/status/APPStatus;->getAPPID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appv"

    invoke-virtual {p0}, Lcom/qq/e/comm/managers/status/APPStatus;->getAPPVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appn"

    invoke-virtual {p0}, Lcom/qq/e/comm/managers/status/APPStatus;->getAPPRealName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-object v0
.end method

.method public static a(Lcom/qq/e/comm/managers/status/DeviceStatus;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_0

    const-string v0, "so"

    invoke-virtual {p0}, Lcom/qq/e/comm/managers/status/DeviceStatus;->getScreenOrientation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "dn"

    invoke-virtual {p0}, Lcom/qq/e/comm/managers/status/DeviceStatus;->getDataNet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "lat"

    invoke-virtual {p0}, Lcom/qq/e/comm/managers/status/DeviceStatus;->getLat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "lng"

    invoke-virtual {p0}, Lcom/qq/e/comm/managers/status/DeviceStatus;->getLng()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/qq/e/comm/managers/status/DeviceStatus;->getLacAndCeilId()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/qq/e/comm/a;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-static {}, Lcom/qq/e/comm/constants/CustomPkgConstants;->getADActivityName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v2}, Lcom/qq/e/comm/a;->a(Landroid/content/Context;[Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-static {}, Lcom/qq/e/comm/constants/CustomPkgConstants;->getDownLoadServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v2}, Lcom/qq/e/comm/a;->b(Landroid/content/Context;[Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Exception While check SDK Env"

    invoke-static {v2, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Z
    .locals 12

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/qq/e/comm/constants/CustomPkgConstants;->getAssetPluginDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/qq/e/comm/constants/CustomPkgConstants;->getAssetPluginName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qq/e/comm/constants/CustomPkgConstants;->getAssetPluginDir()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/qq/e/comm/constants/CustomPkgConstants;->getAssetPluginName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "I3fcT+Dn/cIXxl45oHIgbucD35uZu3ehBUbgoD9Z3aWjr02+Bbnvi+so431iO1FGfyJuahRnpwtiFiFt0eEiPbBz4g+Re7ZHgmmhi6Ty3cotU0GAELxL/RjIdxNj/iU2KDdmRWlMf8N2NefaqIVKqnSgEoFC+c4KajFxIXQ3AA4="

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "573#####"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/qq/e/comm/util/StringUtil;->writeTo(Ljava/lang/String;Ljava/io/File;)V

    invoke-static {}, Lcom/qq/e/comm/constants/CustomPkgConstants;->getAssetPluginXorKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/qq/e/comm/util/FileUtil;->copyTo(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {}, Lcom/qq/e/comm/constants/CustomPkgConstants;->getAssetPluginXorKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    const/16 v0, 0x400

    new-array v8, v0, [B

    array-length v9, v7

    move v0, v2

    move v1, v2

    :goto_1
    invoke-virtual {v5, v8}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-lez v10, :cond_2

    move v3, v2

    :goto_2
    if-ge v3, v10, :cond_1

    add-int/lit8 v4, v0, 0x1

    const/16 v11, 0x40

    if-lt v0, v11, :cond_3

    aget-byte v11, v8, v3

    add-int/lit8 v0, v1, 0x1

    rem-int/2addr v1, v9

    aget-byte v1, v7, v1

    xor-int/2addr v1, v11

    int-to-byte v1, v1

    aput-byte v1, v8, v3

    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    move v0, v4

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v6, v8, v3, v10}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Exception while init default plugin manager"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method private static varargs a(Landroid/content/Context;[Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-gtz v2, :cond_1

    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v1, "Activity[%s] is required in AndroidManifest.xml"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Exception while checking required activities"

    invoke-static {v2, v1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static a([B)[B
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v0

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :goto_3
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 8

    const/4 v7, 0x5

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-array v3, v7, [Ljava/lang/String;

    const-string v2, "android.permission.INTERNET"

    aput-object v2, v3, v0

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v2, v3, v1

    const/4 v2, 0x2

    const-string v4, "android.permission.ACCESS_WIFI_STATE"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "android.permission.READ_PHONE_STATE"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v4, v3, v2

    move v2, v0

    :goto_0
    if-ge v2, v7, :cond_1

    :try_start_0
    aget-object v4, v3, v2

    invoke-virtual {p0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    const-string v1, "Permission %s is required in AndroidManifest.xml"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Check required Permissions error"

    invoke-static {v2, v1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private static varargs b(Landroid/content/Context;[Ljava/lang/Class;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-gtz v2, :cond_1

    const/4 v3, 0x0

    :try_start_0
    aget-object v3, p1, v3

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/high16 v6, 0x10000

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v1, "Service[%s] is required in AndroidManifest.xml"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Exception while checking required services"

    invoke-static {v2, v1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static b([B)[B
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :try_start_0
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V

    :cond_2
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    if-eqz v2, :cond_4

    :try_start_6
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V

    :cond_4
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :goto_4
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v2, v0

    goto :goto_2
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/comm/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/qq/e/comm/managers/setting/a;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/comm/a;->b:Lcom/qq/e/comm/managers/setting/a;

    return-object v0
.end method
