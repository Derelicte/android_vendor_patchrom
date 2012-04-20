.class public Lcom/miui/milk/ui/AutoBackupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AutoBackupReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 20
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24
    :cond_0
    invoke-static {p1, v2}, Lcom/miui/milk/common/AutoBackup;->setAutoBackupBreak(Landroid/content/Context;Z)V

    .line 25
    invoke-static {p1, v1}, Lcom/miui/milk/common/AutoBackup;->setNextBackup(Landroid/content/Context;Z)V

    .line 48
    :cond_1
    :goto_0
    return-void

    .line 30
    :cond_2
    const-string v0, "com.miui.backup.AUTO_BACKUP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 31
    invoke-static {p1, v2}, Lcom/miui/milk/common/AutoBackup;->setNextBackup(Landroid/content/Context;Z)V

    .line 33
    invoke-static {p1}, Lcom/miui/milk/util/SysHelpers;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 35
    invoke-static {p1, v1}, Lcom/miui/milk/common/AutoBackup;->setAutoBackupBreak(Landroid/content/Context;Z)V

    :cond_3
    move v0, v1

    .line 39
    :goto_1
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {p1}, Lcom/miui/milk/common/AutoBackup;->getAutoBackupBreak(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    .line 43
    :cond_4
    invoke-static {p1}, Lcom/miui/milk/util/AccountUtil;->getAccountInfo(Landroid/content/Context;)Lcom/miui/milk/util/AccountUtil$AccountInfo;

    move-result-object v1

    .line 44
    iget-object v1, v1, Lcom/miui/milk/util/AccountUtil$AccountInfo;->token:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/miui/milk/util/SysHelpers;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 45
    invoke-static {p1, v2}, Lcom/miui/milk/common/AutoBackup;->setAutoBackupBreak(Landroid/content/Context;Z)V

    .line 46
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/milk/service/AutoBackupService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1
.end method
