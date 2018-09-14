.class public Lcom/qq/e/comm/managers/plugin/PM;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/comm/managers/plugin/PM$a;
    }
.end annotation


# static fields
.field private static final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;

.field private final b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/io/File;

.field private e:I

.field private f:Ldalvik/system/DexClassLoader;

.field private g:Ljava/io/RandomAccessFile;

.field private h:Ljava/nio/channels/FileLock;

.field private i:Z

.field private j:Lcom/qq/e/comm/managers/plugin/PM$a;

.field private k:Lcom/qq/e/comm/managers/plugin/PM$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qq/e/comm/managers/plugin/PM$2;

    invoke-direct {v0}, Lcom/qq/e/comm/managers/plugin/PM$2;-><init>()V

    sput-object v0, Lcom/qq/e/comm/managers/plugin/PM;->l:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qq/e/comm/managers/plugin/PM$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/qq/e/comm/managers/plugin/PM$1;

    invoke-direct {v0, p0}, Lcom/qq/e/comm/managers/plugin/PM$1;-><init>(Lcom/qq/e/comm/managers/plugin/PM;)V

    iput-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->k:Lcom/qq/e/comm/managers/plugin/PM$a$a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/qq/e/comm/managers/plugin/PM;->j:Lcom/qq/e/comm/managers/plugin/PM$a;

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/PM;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->i:Z

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/PM;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/PM;->a()V

    :cond_0
    return-void
.end method

.method private a()V
    .locals 5

    const/4 v2, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "PluginFile:\t"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->d:Ljava/io/File;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->d:Ljava/io/File;

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Ldalvik/system/DexClassLoader;

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    const-string v3, "e_qq_com_dex"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->f:Ldalvik/system/DexClassLoader;

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->j:Lcom/qq/e/comm/managers/plugin/PM$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->j:Lcom/qq/e/comm/managers/plugin/PM$a;

    invoke-interface {v0}, Lcom/qq/e/comm/managers/plugin/PM$a;->onLoadSuccess()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "exception while init plugin class loader"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/PM;->e()V

    goto :goto_1

    :cond_2
    iput-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->f:Ldalvik/system/DexClassLoader;

    goto :goto_1
.end method

.method static synthetic a(Lcom/qq/e/comm/managers/plugin/PM;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->f:Ldalvik/system/DexClassLoader;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/PM;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/PM;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Exception while init online plugin: "

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/PM;->e()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/qq/e/comm/managers/plugin/PM;)V
    .locals 0

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/PM;->e()V

    return-void
.end method

.method private b()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TimeStap_BEFORE_PLUGIN_INIT:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/PM;->c()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->i:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TimeStap_AFTER_PLUGIN_INIT:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    :goto_1
    return v0

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/qq/e/comm/managers/plugin/PM$1;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/qq/e/comm/managers/plugin/PM$1;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/qq/e/comm/a;->a(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "I3fcT+Dn/cIXxl45oHIgbucD35uZu3ehBUbgoD9Z3aWjr02+Bbnvi+so431iO1FGfyJuahRnpwtiFiFt0eEiPbBz4g+Re7ZHgmmhi6Ty3cotU0GAELxL/RjIdxNj/iU2KDdmRWlMf8N2NefaqIVKqnSgEoFC+c4KajFxIXQ3AA4="

    iput-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/qq/e/comm/managers/plugin/PM$1;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->d:Ljava/io/File;

    const/16 v2, 0x23d

    iput v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->e:I

    move v2, v1

    goto :goto_0

    :cond_3
    const-string v2, "Fail to prepair Defult plugin "

    invoke-static {v2}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "Exception while init plugin manager"

    invoke-static {v2, v1}, Lcom/qq/e/comm/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TimeStap_AFTER_PLUGIN_INIT:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TimeStap_AFTER_PLUGIN_INIT:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    throw v0
.end method

.method private c()Z
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->i:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/qq/e/comm/managers/plugin/c;

    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/qq/e/comm/managers/plugin/PM$1;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/qq/e/comm/managers/plugin/PM$1;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/qq/e/comm/managers/plugin/c;-><init>(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v1}, Lcom/qq/e/comm/managers/plugin/c;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/qq/e/comm/managers/plugin/PM$1;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/qq/e/comm/managers/plugin/PM$1;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/qq/e/comm/managers/plugin/c;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NextExist,Updated="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/qq/e/comm/managers/plugin/c;

    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/qq/e/comm/managers/plugin/PM$1;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/qq/e/comm/managers/plugin/PM$1;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/qq/e/comm/managers/plugin/c;-><init>(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v1}, Lcom/qq/e/comm/managers/plugin/c;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/qq/e/comm/managers/plugin/c;->b()I

    move-result v2

    const/16 v3, 0x23d

    if-ge v2, v3, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "last updated plugin version ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";asset plugin version=573"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {v1}, Lcom/qq/e/comm/managers/plugin/c;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->c:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/qq/e/comm/managers/plugin/c;->b()I

    move-result v0

    iput v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->e:I

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/qq/e/comm/managers/plugin/PM$1;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->d:Ljava/io/File;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    new-instance v2, Ljava/io/File;

    const-string v3, "e_qq_com_plugin"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v3, "update_lc"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    const-string v1, "lock"

    invoke-static {v1, v2}, Lcom/qq/e/comm/util/StringUtil;->writeTo(Ljava/lang/String;Ljava/io/File;)V

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->g:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->g:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v1

    iput-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->h:Ljava/nio/channels/FileLock;

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->h:Ljava/nio/channels/FileLock;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->g:Ljava/io/RandomAccessFile;

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeByte(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->j:Lcom/qq/e/comm/managers/plugin/PM$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->j:Lcom/qq/e/comm/managers/plugin/PM$a;

    invoke-interface {v0}, Lcom/qq/e/comm/managers/plugin/PM$a;->onLoadFail()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getFactory(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/e/comm/managers/plugin/b;
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetFactoryInstaceforInterface:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->f:Ldalvik/system/DexClassLoader;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PluginClassLoader is parent"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-ne v3, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    if-nez v1, :cond_1

    new-instance v0, Lcom/qq/e/comm/managers/plugin/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fail to init GDTADPLugin,PluginClassLoader == null;while loading factory impl for:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qq/e/comm/managers/plugin/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    sget-object v0, Lcom/qq/e/comm/managers/plugin/PM;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Lcom/qq/e/comm/managers/plugin/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "factory  implemention name is not specified for interface:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qq/e/comm/managers/plugin/b;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/qq/e/comm/managers/plugin/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fail to getfactory implement instance for interface:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/qq/e/comm/managers/plugin/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ServiceDelegateFactory ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0
.end method

.method public getLocalSig()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPOFactory()Lcom/qq/e/comm/pi/POFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/e/comm/managers/plugin/b;
        }
    .end annotation

    const-class v0, Lcom/qq/e/comm/pi/POFactory;

    invoke-virtual {p0, v0}, Lcom/qq/e/comm/managers/plugin/PM;->getFactory(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/e/comm/pi/POFactory;

    return-object v0
.end method

.method public getPluginVersion()I
    .locals 1

    iget v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->e:I

    return v0
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->i:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/qq/e/comm/managers/plugin/a;

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->a:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/managers/plugin/a;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->k:Lcom/qq/e/comm/managers/plugin/PM$a$a;

    invoke-virtual {v0, v1}, Lcom/qq/e/comm/managers/plugin/a;->a(Lcom/qq/e/comm/managers/plugin/PM$a$a;)V

    invoke-virtual {v0, p1, p2}, Lcom/qq/e/comm/managers/plugin/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
