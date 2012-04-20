.class final Lcom/lbe/security/service/privacy/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/lbe/security/service/privacy/j;


# direct methods
.method constructor <init>(Lcom/lbe/security/service/privacy/j;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/service/privacy/g;->a:Lcom/lbe/security/service/privacy/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/lbe/security/service/core/internal/ar;->a()Lcom/lbe/security/service/core/internal/ar;

    move-result-object v0

    const-string v2, "secloader"

    invoke-virtual {v0, v2}, Lcom/lbe/security/service/core/internal/ar;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lbe/security/service/privacy/g;->a:Lcom/lbe/security/service/privacy/j;

    invoke-static {v0, v5, v1}, Lcom/lbe/security/service/privacy/j;->a(Lcom/lbe/security/service/privacy/j;II)V

    invoke-static {}, Lcom/lbe/security/service/a/h;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "chmod 755 %s/libloader.so\n"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "%s/libloader.so\n"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    const-string v0, "exit\n"

    aput-object v0, v2, v8

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v3, "su"

    invoke-virtual {v0, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    array-length v5, v2

    move v0, v1

    :goto_0
    if-lt v0, v5, :cond_0

    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v0, p0, Lcom/lbe/security/service/privacy/g;->a:Lcom/lbe/security/service/privacy/j;

    invoke-static {v0}, Lcom/lbe/security/service/privacy/j;->a(Lcom/lbe/security/service/privacy/j;)Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v2, 0x7d0

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v0, p0, Lcom/lbe/security/service/privacy/g;->a:Lcom/lbe/security/service/privacy/j;

    invoke-static {v0}, Lcom/lbe/security/service/privacy/j;->a(Lcom/lbe/security/service/privacy/j;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/lbe/security/service/privacy/g;->a:Lcom/lbe/security/service/privacy/j;

    invoke-static {v0, v1, v8}, Lcom/lbe/security/service/privacy/j;->a(Lcom/lbe/security/service/privacy/j;II)V

    iget-object v0, p0, Lcom/lbe/security/service/privacy/g;->a:Lcom/lbe/security/service/privacy/j;

    invoke-static {v0}, Lcom/lbe/security/service/privacy/j;->b(Lcom/lbe/security/service/privacy/j;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "enable_hips_service"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_1
    return-void

    :cond_0
    :try_start_1
    aget-object v6, v2, v0

    const-string v7, "ISO-8859-1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/lbe/security/service/privacy/g;->a:Lcom/lbe/security/service/privacy/j;

    invoke-static {v0}, Lcom/lbe/security/service/privacy/j;->c(Lcom/lbe/security/service/privacy/j;)Lcom/lbe/security/service/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lbe/security/service/core/d;->f()V

    iget-object v0, p0, Lcom/lbe/security/service/privacy/g;->a:Lcom/lbe/security/service/privacy/j;

    invoke-static {v0}, Lcom/lbe/security/service/privacy/j;->c(Lcom/lbe/security/service/privacy/j;)Lcom/lbe/security/service/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lbe/security/service/core/d;->d()V

    iget-object v0, p0, Lcom/lbe/security/service/privacy/g;->a:Lcom/lbe/security/service/privacy/j;

    invoke-static {v0, v8, v1}, Lcom/lbe/security/service/privacy/j;->a(Lcom/lbe/security/service/privacy/j;II)V

    goto :goto_1
.end method
