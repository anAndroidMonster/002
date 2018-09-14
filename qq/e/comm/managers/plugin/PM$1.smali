.class Lcom/qq/e/comm/managers/plugin/PM$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/comm/managers/plugin/PM$a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/comm/managers/plugin/PM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/qq/e/comm/managers/plugin/PM;


# direct methods
.method constructor <init>(Lcom/qq/e/comm/managers/plugin/PM;)V
    .locals 0

    iput-object p1, p0, Lcom/qq/e/comm/managers/plugin/PM$1;->a:Lcom/qq/e/comm/managers/plugin/PM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    const-string v1, "e_qq_com_plugin"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v2, "gdt_plugin.jar"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static b(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    const-string v1, "e_qq_com_plugin"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v2, "gdt_plugin.next"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static c(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    const-string v1, "e_qq_com_plugin"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v2, "gdt_plugin.jar.sig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static d(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    const-string v1, "e_qq_com_plugin"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v2, "gdt_plugin.next.sig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM$1;->a:Lcom/qq/e/comm/managers/plugin/PM;

    invoke-static {v0}, Lcom/qq/e/comm/managers/plugin/PM;->a(Lcom/qq/e/comm/managers/plugin/PM;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM$1;->a:Lcom/qq/e/comm/managers/plugin/PM;

    invoke-static {v0}, Lcom/qq/e/comm/managers/plugin/PM;->b(Lcom/qq/e/comm/managers/plugin/PM;)V

    return-void
.end method
