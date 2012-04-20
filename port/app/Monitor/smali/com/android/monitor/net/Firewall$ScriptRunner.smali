.class final Lcom/android/monitor/net/Firewall$ScriptRunner;
.super Ljava/lang/Thread;
.source "Firewall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/monitor/net/Firewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScriptRunner"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private exec:Ljava/lang/Process;

.field public exitcode:I

.field private final file:Ljava/io/File;

.field private final res:Ljava/lang/StringBuilder;

.field private final script:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "context"
    .parameter "file"
    .parameter "script"
    .parameter "res"

    .prologue
    .line 502
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 492
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/monitor/net/Firewall$ScriptRunner;->exitcode:I

    .line 503
    iput-object p1, p0, Lcom/android/monitor/net/Firewall$ScriptRunner;->context:Landroid/content/Context;

    .line 504
    iput-object p2, p0, Lcom/android/monitor/net/Firewall$ScriptRunner;->file:Ljava/io/File;

    .line 505
    iput-object p3, p0, Lcom/android/monitor/net/Firewall$ScriptRunner;->script:Ljava/lang/String;

    .line 506
    iput-object p4, p0, Lcom/android/monitor/net/Firewall$ScriptRunner;->res:Ljava/lang/StringBuilder;

    .line 507
    return-void
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .locals 1

    .prologue
    .line 554
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/monitor/net/Firewall$ScriptRunner;->exec:Ljava/lang/Process;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/monitor/net/Firewall$ScriptRunner;->exec:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 555
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/monitor/net/Firewall$ScriptRunner;->exec:Ljava/lang/Process;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    monitor-exit p0

    return-void

    .line 554
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    .line 512
    :try_start_0
    iget-object v6, p0, Lcom/android/monitor/net/Firewall$ScriptRunner;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 513
    iget-object v6, p0, Lcom/android/monitor/net/Firewall$ScriptRunner;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, abspath:Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "chmod 777 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    .line 517
    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/android/monitor/net/Firewall$ScriptRunner;->file:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 518
    .local v3, out:Ljava/io/OutputStreamWriter;
    const-string v6, "#!/system/bin/sh\n"

    invoke-virtual {v3, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 519
    iget-object v6, p0, Lcom/android/monitor/net/Firewall$ScriptRunner;->script:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 520
    iget-object v6, p0, Lcom/android/monitor/net/Firewall$ScriptRunner;->script:Ljava/lang/String;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 521
    :cond_0
    const-string v6, "exit\n"

    invoke-virtual {v3, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    .line 523
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 524
    iget-object v6, p0, Lcom/android/monitor/net/Firewall$ScriptRunner;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "firewall_script"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 525
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/system/xbin/invoke-as -u root "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    iput-object v6, p0, Lcom/android/monitor/net/Firewall$ScriptRunner;->exec:Ljava/lang/Process;

    .line 527
    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v6, p0, Lcom/android/monitor/net/Firewall$ScriptRunner;->exec:Ljava/lang/Process;

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 528
    .local v4, r:Ljava/io/InputStreamReader;
    const/16 v6, 0x400

    new-array v1, v6, [C

    .line 529
    .local v1, buf:[C
    const/4 v5, 0x0

    .line 531
    .local v5, read:I
    :cond_1
    :goto_0
    invoke-virtual {v4, v1}, Ljava/io/InputStreamReader;->read([C)I

    move-result v5

    if-eq v5, v9, :cond_3

    .line 532
    iget-object v6, p0, Lcom/android/monitor/net/Firewall$ScriptRunner;->res:Ljava/lang/StringBuilder;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/monitor/net/Firewall$ScriptRunner;->res:Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 542
    .end local v0           #abspath:Ljava/lang/String;
    .end local v1           #buf:[C
    .end local v3           #out:Ljava/io/OutputStreamWriter;
    .end local v4           #r:Ljava/io/InputStreamReader;
    .end local v5           #read:I
    :catch_0
    move-exception v2

    .line 543
    .local v2, ex:Ljava/lang/InterruptedException;
    :try_start_1
    iget-object v6, p0, Lcom/android/monitor/net/Firewall$ScriptRunner;->res:Ljava/lang/StringBuilder;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/monitor/net/Firewall$ScriptRunner;->res:Ljava/lang/StringBuilder;

    const-string v7, "\nOperation timed-out"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    :cond_2
    invoke-virtual {p0}, Lcom/android/monitor/net/Firewall$ScriptRunner;->destroy()V

    .line 549
    .end local v2           #ex:Ljava/lang/InterruptedException;
    :goto_1
    return-void

    .line 535
    .restart local v0       #abspath:Ljava/lang/String;
    .restart local v1       #buf:[C
    .restart local v3       #out:Ljava/io/OutputStreamWriter;
    .restart local v4       #r:Ljava/io/InputStreamReader;
    .restart local v5       #read:I
    :cond_3
    :try_start_2
    new-instance v4, Ljava/io/InputStreamReader;

    .end local v4           #r:Ljava/io/InputStreamReader;
    iget-object v6, p0, Lcom/android/monitor/net/Firewall$ScriptRunner;->exec:Ljava/lang/Process;

    invoke-virtual {v6}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 536
    .restart local v4       #r:Ljava/io/InputStreamReader;
    const/4 v5, 0x0

    .line 537
    :cond_4
    :goto_2
    invoke-virtual {v4, v1}, Ljava/io/InputStreamReader;->read([C)I

    move-result v5

    if-eq v5, v9, :cond_6

    .line 538
    iget-object v6, p0, Lcom/android/monitor/net/Firewall$ScriptRunner;->res:Ljava/lang/StringBuilder;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/monitor/net/Firewall$ScriptRunner;->res:Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 544
    .end local v0           #abspath:Ljava/lang/String;
    .end local v1           #buf:[C
    .end local v3           #out:Ljava/io/OutputStreamWriter;
    .end local v4           #r:Ljava/io/InputStreamReader;
    .end local v5           #read:I
    :catch_1
    move-exception v2

    .line 545
    .local v2, ex:Ljava/lang/Exception;
    :try_start_3
    iget-object v6, p0, Lcom/android/monitor/net/Firewall$ScriptRunner;->res:Ljava/lang/StringBuilder;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/monitor/net/Firewall$ScriptRunner;->res:Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 547
    :cond_5
    invoke-virtual {p0}, Lcom/android/monitor/net/Firewall$ScriptRunner;->destroy()V

    goto :goto_1

    .line 541
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v0       #abspath:Ljava/lang/String;
    .restart local v1       #buf:[C
    .restart local v3       #out:Ljava/io/OutputStreamWriter;
    .restart local v4       #r:Ljava/io/InputStreamReader;
    .restart local v5       #read:I
    :cond_6
    :try_start_4
    iget-object v6, p0, Lcom/android/monitor/net/Firewall$ScriptRunner;->exec:Ljava/lang/Process;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/monitor/net/Firewall$ScriptRunner;->exec:Ljava/lang/Process;

    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    move-result v6

    iput v6, p0, Lcom/android/monitor/net/Firewall$ScriptRunner;->exitcode:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 547
    :cond_7
    invoke-virtual {p0}, Lcom/android/monitor/net/Firewall$ScriptRunner;->destroy()V

    goto :goto_1

    .end local v0           #abspath:Ljava/lang/String;
    .end local v1           #buf:[C
    .end local v3           #out:Ljava/io/OutputStreamWriter;
    .end local v4           #r:Ljava/io/InputStreamReader;
    .end local v5           #read:I
    :catchall_0
    move-exception v6

    invoke-virtual {p0}, Lcom/android/monitor/net/Firewall$ScriptRunner;->destroy()V

    throw v6
.end method
