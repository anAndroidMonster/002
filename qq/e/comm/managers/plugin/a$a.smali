.class final Lcom/qq/e/comm/managers/plugin/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/comm/net/NetworkCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/comm/managers/plugin/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private synthetic c:Lcom/qq/e/comm/managers/plugin/a;


# direct methods
.method public constructor <init>(Lcom/qq/e/comm/managers/plugin/a;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/qq/e/comm/managers/plugin/a$a;->c:Lcom/qq/e/comm/managers/plugin/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/qq/e/comm/managers/plugin/a$a;->a:Ljava/lang/String;

    iput p3, p0, Lcom/qq/e/comm/managers/plugin/a$a;->b:I

    return-void
.end method

.method private static a(Lcom/qq/e/comm/net/rr/Response;Ljava/io/File;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-interface {p0}, Lcom/qq/e/comm/net/rr/Response;->getStreamContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v4, 0x400

    :try_start_2
    new-array v4, v4, [B

    :goto_0
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6, v5}, Ljava/security/MessageDigest;->update([BII)V

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    :try_start_3
    const-string v4, "IOException While Update Plugin"

    invoke-static {v4, v1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v3}, Lcom/qq/e/comm/util/FileUtil;->tryClose(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/qq/e/comm/util/FileUtil;->tryClose(Ljava/io/OutputStream;)V

    :goto_2
    return-object v0

    :cond_0
    :try_start_4
    invoke-static {v3}, Lcom/qq/e/comm/util/FileUtil;->tryClose(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/qq/e/comm/util/FileUtil;->tryClose(Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/comm/util/Md5Util;->byteArrayToHexString([B)Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v0

    invoke-static {v3}, Lcom/qq/e/comm/util/FileUtil;->tryClose(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/qq/e/comm/util/FileUtil;->tryClose(Ljava/io/OutputStream;)V

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    :goto_3
    :try_start_5
    const-string v4, "MD5SUMException While Update Plugin"

    invoke-static {v4, v1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {v3}, Lcom/qq/e/comm/util/FileUtil;->tryClose(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/qq/e/comm/util/FileUtil;->tryClose(Ljava/io/OutputStream;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_4
    invoke-static {v3}, Lcom/qq/e/comm/util/FileUtil;->tryClose(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/qq/e/comm/util/FileUtil;->tryClose(Ljava/io/OutputStream;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v2, v0

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto :goto_1

    :catch_5
    move-exception v1

    move-object v2, v0

    goto :goto_1
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/a$a;->c:Lcom/qq/e/comm/managers/plugin/a;

    invoke-static {v0}, Lcom/qq/e/comm/managers/plugin/a;->b(Lcom/qq/e/comm/managers/plugin/a;)Lcom/qq/e/comm/managers/plugin/PM$a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/a$a;->c:Lcom/qq/e/comm/managers/plugin/a;

    invoke-static {v0}, Lcom/qq/e/comm/managers/plugin/a;->b(Lcom/qq/e/comm/managers/plugin/a;)Lcom/qq/e/comm/managers/plugin/PM$a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/qq/e/comm/managers/plugin/PM$a$a;->b()V

    :cond_0
    return-void
.end method

.method private a(Ljava/io/File;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/qq/e/comm/managers/plugin/a$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#####"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0, p1}, Lcom/qq/e/comm/util/StringUtil;->writeTo(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "IOException While Update Plugin"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final onException(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "Exception While Update Plugin"

    invoke-static {v0, p1}, Lcom/qq/e/comm/util/GDTLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/a$a;->a()V

    return-void
.end method

.method public final onResponse(Lcom/qq/e/comm/net/rr/Request;Lcom/qq/e/comm/net/rr/Response;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2}, Lcom/qq/e/comm/net/rr/Response;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_4

    :try_start_0
    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/a$a;->c:Lcom/qq/e/comm/managers/plugin/a;

    invoke-static {v2}, Lcom/qq/e/comm/managers/plugin/a;->a(Lcom/qq/e/comm/managers/plugin/a;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    const-string v4, "e_qq_com_plugin"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    const-string v4, "gdt_plugin.tmp"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/a$a;->c:Lcom/qq/e/comm/managers/plugin/a;

    invoke-static {v2}, Lcom/qq/e/comm/managers/plugin/a;->a(Lcom/qq/e/comm/managers/plugin/a;)Landroid/content/Context;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    const-string v5, "e_qq_com_plugin"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    const-string v5, "gdt_plugin.tmp.sig"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p2, v3}, Lcom/qq/e/comm/managers/plugin/a$a;->a(Lcom/qq/e/comm/net/rr/Response;Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/qq/e/comm/util/a;->a()Lcom/qq/e/comm/util/a;

    move-result-object v5

    iget-object v6, p0, Lcom/qq/e/comm/managers/plugin/a$a;->a:Ljava/lang/String;

    invoke-virtual {v5, v6, v2}, Lcom/qq/e/comm/util/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, v4}, Lcom/qq/e/comm/managers/plugin/a$a;->a(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/a$a;->c:Lcom/qq/e/comm/managers/plugin/a;

    invoke-static {v2}, Lcom/qq/e/comm/managers/plugin/a;->a(Lcom/qq/e/comm/managers/plugin/a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/e/comm/managers/plugin/PM$1;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/qq/e/comm/util/FileUtil;->renameTo(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/a$a;->c:Lcom/qq/e/comm/managers/plugin/a;

    invoke-static {v2}, Lcom/qq/e/comm/managers/plugin/a;->a(Lcom/qq/e/comm/managers/plugin/a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/e/comm/managers/plugin/PM$1;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/qq/e/comm/util/FileUtil;->renameTo(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PluginUpdateSucc:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/a$a;->c:Lcom/qq/e/comm/managers/plugin/a;

    invoke-static {v0}, Lcom/qq/e/comm/managers/plugin/a;->b(Lcom/qq/e/comm/managers/plugin/a;)Lcom/qq/e/comm/managers/plugin/PM$a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/a$a;->c:Lcom/qq/e/comm/managers/plugin/a;

    invoke-static {v0}, Lcom/qq/e/comm/managers/plugin/a;->b(Lcom/qq/e/comm/managers/plugin/a;)Lcom/qq/e/comm/managers/plugin/PM$a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/qq/e/comm/managers/plugin/PM$a$a;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TIMESTAMP_AFTER_DOWNPLUGIN:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";sig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    const-string v0, "Fail to update plugin while verifying,sig=%s,md5=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/qq/e/comm/managers/plugin/a$a;->a:Ljava/lang/String;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->report(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/a$a;->a()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "UnknownException While Update Plugin"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/a$a;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TIMESTAMP_AFTER_DOWNPLUGIN:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";sig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TIMESTAMP_AFTER_DOWNPLUGIN:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";sig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/a$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DownLoad Plugin Jar Status error,response status code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/qq/e/comm/net/rr/Response;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->report(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/a$a;->a()V

    goto/16 :goto_3
.end method
