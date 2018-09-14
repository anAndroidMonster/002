.class final Lcom/qq/e/comm/managers/plugin/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Ljava/io/File;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qq/e/comm/managers/plugin/c;->a:Ljava/io/File;

    iput-object p2, p0, Lcom/qq/e/comm/managers/plugin/c;->b:Ljava/io/File;

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/c;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/c;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/c;->b:Ljava/io/File;

    invoke-static {v2}, Lcom/qq/e/comm/util/StringUtil;->readAll(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "#####"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    aget-object v3, v2, v3

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/qq/e/comm/util/StringUtil;->parseInteger(Ljava/lang/String;I)I

    move-result v4

    invoke-static {}, Lcom/qq/e/comm/util/a;->a()Lcom/qq/e/comm/util/a;

    move-result-object v2

    iget-object v5, p0, Lcom/qq/e/comm/managers/plugin/c;->a:Ljava/io/File;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    iput-object v3, p0, Lcom/qq/e/comm/managers/plugin/c;->c:Ljava/lang/String;

    iput v4, p0, Lcom/qq/e/comm/managers/plugin/c;->d:I

    :goto_1
    return v0

    :cond_1
    invoke-static {v5}, Lcom/qq/e/comm/util/Md5Util;->encode(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/qq/e/comm/util/a;->b(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "Exception while checking plugin"

    invoke-static {v2, v0}, Lcom/qq/e/comm/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_1
.end method

.method final a(Ljava/io/File;Ljava/io/File;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/c;->a:Ljava/io/File;

    invoke-virtual {p1, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/c;->a:Ljava/io/File;

    invoke-static {v1, p1}, Lcom/qq/e/comm/util/FileUtil;->renameTo(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/c;->b:Ljava/io/File;

    invoke-virtual {p2, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/c;->b:Ljava/io/File;

    invoke-static {v1, p2}, Lcom/qq/e/comm/util/FileUtil;->renameTo(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final b()I
    .locals 1

    iget v0, p0, Lcom/qq/e/comm/managers/plugin/c;->d:I

    return v0
.end method

.method final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/c;->c:Ljava/lang/String;

    return-object v0
.end method
