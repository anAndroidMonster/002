.class public final Lcom/qq/e/ads/cfg/VideoOption$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/ads/cfg/VideoOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:Z

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qq/e/ads/cfg/VideoOption$Builder;->a:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/qq/e/ads/cfg/VideoOption$Builder;->b:I

    return-void
.end method

.method static synthetic a(Lcom/qq/e/ads/cfg/VideoOption$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/qq/e/ads/cfg/VideoOption$Builder;->a:Z

    return v0
.end method

.method static synthetic b(Lcom/qq/e/ads/cfg/VideoOption$Builder;)I
    .locals 1

    iget v0, p0, Lcom/qq/e/ads/cfg/VideoOption$Builder;->b:I

    return v0
.end method


# virtual methods
.method public final build()Lcom/qq/e/ads/cfg/VideoOption;
    .locals 2

    new-instance v0, Lcom/qq/e/ads/cfg/VideoOption;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/qq/e/ads/cfg/VideoOption;-><init>(Lcom/qq/e/ads/cfg/VideoOption$Builder;B)V

    return-object v0
.end method

.method public final setAutoPlayMuted(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/qq/e/ads/cfg/VideoOption$Builder;->a:Z

    return-object p0
.end method

.method public final setAutoPlayPolicy(I)Lcom/qq/e/ads/cfg/VideoOption$Builder;
    .locals 0

    iput p1, p0, Lcom/qq/e/ads/cfg/VideoOption$Builder;->b:I

    return-object p0
.end method
