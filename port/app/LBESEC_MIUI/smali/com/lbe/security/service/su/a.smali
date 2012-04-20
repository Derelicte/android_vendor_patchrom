.class final Lcom/lbe/security/service/su/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private b:Lcom/lbe/security/bean/e;

.field private synthetic c:Lcom/lbe/security/service/su/SuContentProvider;


# direct methods
.method public constructor <init>(Lcom/lbe/security/service/su/SuContentProvider;ILcom/lbe/security/bean/e;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/service/su/a;->c:Lcom/lbe/security/service/su/SuContentProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/lbe/security/service/su/a;->a:I

    iput-object p3, p0, Lcom/lbe/security/service/su/a;->b:Lcom/lbe/security/bean/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    const/16 v2, 0x200

    const/4 v13, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    new-instance v10, Lcom/lbe/security/ui/a/c;

    invoke-direct {v10, v9}, Lcom/lbe/security/ui/a/c;-><init>(Z)V

    iget-object v0, p0, Lcom/lbe/security/service/su/a;->b:Lcom/lbe/security/bean/e;

    invoke-virtual {v0}, Lcom/lbe/security/bean/e;->e()I

    move-result v0

    iput v0, v10, Lcom/lbe/security/ui/a/c;->a:I

    iget v0, p0, Lcom/lbe/security/service/su/a;->a:I

    iput v0, v10, Lcom/lbe/security/ui/a/c;->b:I

    iget-object v0, p0, Lcom/lbe/security/service/su/a;->b:Lcom/lbe/security/bean/e;

    iput-object v0, v10, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    sget-object v0, Lcom/lbe/security/bean/l;->e:Lcom/lbe/security/bean/g;

    invoke-virtual {v0, v2}, Lcom/lbe/security/bean/g;->a(I)Lcom/lbe/security/bean/k;

    move-result-object v0

    iput-object v0, v10, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    iget-object v0, p0, Lcom/lbe/security/service/su/a;->c:Lcom/lbe/security/service/su/SuContentProvider;

    invoke-virtual {v0}, Lcom/lbe/security/service/su/SuContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07006b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, v10, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    invoke-static {}, Lcom/lbe/security/ui/a/d;->a()Lcom/lbe/security/ui/a/d;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/lbe/security/ui/a/d;->a(Lcom/lbe/security/ui/a/c;)Lcom/lbe/security/ui/a/e;

    move-result-object v11

    invoke-static {}, Lcom/lbe/security/service/privacy/q;->a()Lcom/lbe/security/service/privacy/q;

    move-result-object v12

    new-instance v0, Lcom/lbe/security/bean/EventLog;

    iget-object v1, p0, Lcom/lbe/security/service/su/a;->b:Lcom/lbe/security/bean/e;

    invoke-virtual {v1}, Lcom/lbe/security/bean/e;->e()I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v10, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    iget-object v6, v10, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget v7, v11, Lcom/lbe/security/ui/a/e;->a:I

    invoke-direct/range {v0 .. v7}, Lcom/lbe/security/bean/EventLog;-><init>(IIJLjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v12, v0}, Lcom/lbe/security/service/privacy/q;->a(Lcom/lbe/security/bean/EventLog;)V

    iget-boolean v0, v11, Lcom/lbe/security/ui/a/e;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lbe/security/service/privacy/k;->a()Lcom/lbe/security/service/privacy/k;

    move-result-object v0

    iget-object v1, v10, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget-object v2, v10, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    invoke-virtual {v2}, Lcom/lbe/security/bean/k;->c()I

    move-result v2

    iget v3, v11, Lcom/lbe/security/ui/a/e;->a:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/bean/e;II)V

    :cond_0
    new-instance v1, Landroid/net/LocalSocket;

    invoke-direct {v1}, Landroid/net/LocalSocket;-><init>()V

    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v2, "/%1$d/%2$d"

    new-array v3, v13, [Ljava/lang/Object;

    iget v4, p0, Lcom/lbe/security/service/su/a;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    iget-object v4, p0, Lcom/lbe/security/service/su/a;->b:Lcom/lbe/security/bean/e;

    invoke-virtual {v4}, Lcom/lbe/security/bean/e;->e()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget v0, v11, Lcom/lbe/security/ui/a/e;->a:I

    if-ne v0, v13, :cond_2

    move v0, v8

    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/OutputStreamWriter;->write(I)V

    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v9

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v1}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_2
    throw v0

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1
.end method
