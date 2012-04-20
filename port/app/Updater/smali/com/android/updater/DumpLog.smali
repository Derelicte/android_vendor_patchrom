.class public Lcom/android/updater/DumpLog;
.super Landroid/app/Service;
.source "DumpLog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v8, 0x2

    .line 20
    invoke-static {}, Lcom/android/updater/utils/SysUtils;->getIMEI()Ljava/lang/String;

    move-result-object v2

    .line 21
    .local v2, id:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 22
    const-string v2, "unknowndevice"

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/android/updater/DumpLog;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 25
    .local v3, rootFolder:Ljava/io/File;
    const/4 v1, 0x0

    .line 26
    .local v1, folderExist:Z
    if-eqz v3, :cond_1

    .line 27
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v1

    .line 32
    :cond_1
    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/android/updater/utils/SysUtils;->isUserAllowLog(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 33
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jlu"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 37
    .local v4, sb:Ljava/lang/StringBuilder;
    new-array v0, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "/system/xbin/dumplog"

    aput-object v6, v0, v5

    const/4 v5, 0x1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 39
    .local v0, command:[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v0           #command:[Ljava/lang/String;
    .end local v4           #sb:Ljava/lang/StringBuilder;
    :cond_2
    :goto_0
    invoke-virtual {p0, p3}, Lcom/android/updater/DumpLog;->stopSelfResult(I)Z

    .line 46
    return v8

    .line 40
    .restart local v0       #command:[Ljava/lang/String;
    .restart local v4       #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v5

    goto :goto_0
.end method
