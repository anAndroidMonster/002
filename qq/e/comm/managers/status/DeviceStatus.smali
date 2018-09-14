.class public Lcom/qq/e/comm/managers/status/DeviceStatus;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private volatile k:Ljava/lang/String;

.field private volatile l:Ljava/lang/String;

.field private volatile m:F

.field public final model:Ljava/lang/String;

.field private n:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->model:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->n:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qq/e/comm/managers/status/DeviceStatus;->getVersion()I

    move-result v0

    if-le v0, v3, :cond_0

    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    :goto_0
    iput v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->e:I

    invoke-virtual {p0}, Lcom/qq/e/comm/managers/status/DeviceStatus;->getVersion()I

    move-result v0

    if-le v0, v3, :cond_1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {p0, v0, v2}, Lcom/qq/e/comm/managers/status/DeviceStatus;->a(FI)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->c:I

    invoke-virtual {p0}, Lcom/qq/e/comm/managers/status/DeviceStatus;->getVersion()I

    move-result v0

    if-le v0, v3, :cond_2

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0, v0, v1}, Lcom/qq/e/comm/managers/status/DeviceStatus;->a(FI)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->d:I

    invoke-direct {p0}, Lcom/qq/e/comm/managers/status/DeviceStatus;->a()V

    return-void

    :cond_0
    const/16 v0, 0x78

    goto :goto_0

    :cond_1
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_1

    :cond_2
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_2
.end method

.method private a(FI)I
    .locals 1

    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    int-to-float v0, p2

    div-float/2addr v0, p1

    float-to-int p2, v0

    :cond_0
    return p2
.end method

.method static synthetic a(Lcom/qq/e/comm/managers/status/DeviceStatus;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->k:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->n:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setBearingRequired(Z)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setCostAllowed(Z)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setPowerRequirement(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->k:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->l:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iput v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->m:F

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    new-instance v5, Lcom/qq/e/comm/managers/status/DeviceStatus$1;

    invoke-direct {v5, p0, v0}, Lcom/qq/e/comm/managers/status/DeviceStatus$1;-><init>(Lcom/qq/e/comm/managers/status/DeviceStatus;Landroid/location/LocationManager;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v2, 0x7d0

    const v4, 0x45dac000    # 7000.0f

    :try_start_2
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/qq/e/comm/managers/status/DeviceStatus;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->l:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getCarrier()Lcom/qq/e/comm/managers/status/Carrier;
    .locals 2

    invoke-virtual {p0}, Lcom/qq/e/comm/managers/status/DeviceStatus;->getOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "46000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "46002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "46007"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "46020"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v0, Lcom/qq/e/comm/managers/status/Carrier;->CMCC:Lcom/qq/e/comm/managers/status/Carrier;

    :goto_0
    return-object v0

    :cond_1
    const-string v1, "46001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "46006"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    sget-object v0, Lcom/qq/e/comm/managers/status/Carrier;->UNICOM:Lcom/qq/e/comm/managers/status/Carrier;

    goto :goto_0

    :cond_3
    const-string v1, "46003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "46005"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    sget-object v0, Lcom/qq/e/comm/managers/status/Carrier;->TELECOM:Lcom/qq/e/comm/managers/status/Carrier;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/qq/e/comm/managers/status/Carrier;->UNKNOWN:Lcom/qq/e/comm/managers/status/Carrier;

    goto :goto_0
.end method

.method public getDataNet()Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->n:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    move-object v0, v1

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "unknow"

    :goto_2
    iput-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->i:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    const-string v0, "ed"

    goto :goto_2

    :pswitch_1
    const-string v0, "wi"

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDeviceDensity()I
    .locals 1

    iget v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->e:I

    return v0
.end method

.method public getDeviceHeight()I
    .locals 1

    iget v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->d:I

    return v0
.end method

.method public getDeviceWidth()I
    .locals 1

    iget v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->c:I

    return v0
.end method

.method public getDid()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/qq/e/comm/managers/status/DeviceStatus;->getPlainDid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/Md5Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLacAndCeilId()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/qq/e/comm/managers/status/DeviceStatus;->getOperator()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    const/4 v5, 0x3

    :try_start_0
    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x1cc

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->n:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    instance-of v5, v2, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v5, :cond_1

    move-object v0, v2

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v3

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    :goto_0
    const-string v2, "lac"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cellid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_1
    return-object v4

    :cond_1
    instance-of v2, v2, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v3

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "en"

    iput-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->b:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getLng()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationAccuracy()F
    .locals 1

    iget v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->m:F

    return v0
.end method

.method public getNetworkType()Lcom/qq/e/comm/managers/status/NetworkType;
    .locals 3

    invoke-virtual {p0}, Lcom/qq/e/comm/managers/status/DeviceStatus;->getDataNet()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Lcom/qq/e/comm/managers/status/DeviceStatus;->getPhoneNet()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-eqz v1, :cond_0

    const-string v2, "wi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/qq/e/comm/managers/status/NetworkType;->WIFI:Lcom/qq/e/comm/managers/status/NetworkType;

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/qq/e/comm/managers/status/NetworkType;->UNKNOWN:Lcom/qq/e/comm/managers/status/NetworkType;

    goto :goto_1

    :pswitch_0
    sget-object v0, Lcom/qq/e/comm/managers/status/NetworkType;->NET_2G:Lcom/qq/e/comm/managers/status/NetworkType;

    goto :goto_1

    :pswitch_1
    sget-object v0, Lcom/qq/e/comm/managers/status/NetworkType;->NET_3G:Lcom/qq/e/comm/managers/status/NetworkType;

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcom/qq/e/comm/managers/status/NetworkType;->NET_4G:Lcom/qq/e/comm/managers/status/NetworkType;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getOperator()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->n:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->g:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getPhoneNet()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->n:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->h:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->h:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getPlainDid()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->j:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->n:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->j:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Get imei encounter error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method public getScreenOrientation()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "l"

    iput-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->f:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->f:Ljava/lang/String;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "p"

    iput-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "emulator"

    invoke-static {v0}, Lcom/qq/e/comm/util/Md5Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->a:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->a:Ljava/lang/String;

    return-object v0

    :cond_1
    invoke-static {v0}, Lcom/qq/e/comm/util/Md5Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVersion()I
    .locals 1

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x3

    goto :goto_0
.end method
