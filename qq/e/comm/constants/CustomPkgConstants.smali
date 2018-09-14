.class public Lcom/qq/e/comm/constants/CustomPkgConstants;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/qq/e/comm/DownloadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qq/e/comm/constants/CustomPkgConstants;->a:Ljava/lang/String;

    const-class v0, Lcom/qq/e/ads/ADActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qq/e/comm/constants/CustomPkgConstants;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getADActivityName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/qq/e/comm/constants/CustomPkgConstants;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getAssetPluginDir()Ljava/lang/String;
    .locals 1

    const-string v0, "gdt_plugin"

    return-object v0
.end method

.method public static getAssetPluginName()Ljava/lang/String;
    .locals 1

    const-string v0, "gdtadv2.jar"

    return-object v0
.end method

.method public static getAssetPluginXorKey()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public static getDownLoadServiceName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/qq/e/comm/constants/CustomPkgConstants;->a:Ljava/lang/String;

    return-object v0
.end method
