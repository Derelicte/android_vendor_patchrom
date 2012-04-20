.class public Lcom/android/updater/receiver/StartupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StartupReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private addDailyCheckAdvanced(Landroid/app/AlarmManager;Landroid/content/Context;)V
    .locals 8
    .parameter "alarm"
    .parameter "context"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/updater/receiver/StartupReceiver;->addDailyCheckNormal(Landroid/app/AlarmManager;Landroid/content/Context;)V

    .line 98
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 99
    .local v7, calendar:Ljava/util/Calendar;
    const/16 v0, 0xb

    const/16 v1, 0x11

    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 100
    const/16 v0, 0xc

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x404e

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 102
    const/4 v1, 0x1

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    const/4 v0, 0x2

    invoke-direct {p0, p2, v0}, Lcom/android/updater/receiver/StartupReceiver;->getPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 104
    const-string v0, "StartupReceiver"

    const-string v1, "set daily check for advanced user"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method

.method private addDailyCheckDeveloper(Landroid/app/AlarmManager;Landroid/content/Context;)V
    .locals 8
    .parameter "alarm"
    .parameter "context"

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/updater/receiver/StartupReceiver;->addDailyCheckAdvanced(Landroid/app/AlarmManager;Landroid/content/Context;)V

    .line 113
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 114
    .local v7, calendar:Ljava/util/Calendar;
    const/16 v0, 0xb

    const/16 v1, 0xf

    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 115
    const/16 v0, 0xc

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x404e

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 117
    const/4 v1, 0x1

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    const/4 v0, 0x3

    invoke-direct {p0, p2, v0}, Lcom/android/updater/receiver/StartupReceiver;->getPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 119
    const-string v0, "StartupReceiver"

    const-string v1, "set daily check for developer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void
.end method

.method private addDailyCheckNormal(Landroid/app/AlarmManager;Landroid/content/Context;)V
    .locals 8
    .parameter "alarm"
    .parameter "context"

    .prologue
    const/16 v6, 0xc

    const/4 v1, 0x1

    .line 83
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 84
    .local v7, calendar:Ljava/util/Calendar;
    const/16 v0, 0xb

    invoke-virtual {v7, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 85
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x404e

    mul-double/2addr v2, v4

    double-to-int v0, v2

    invoke-virtual {v7, v6, v0}, Ljava/util/Calendar;->set(II)V

    .line 87
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-direct {p0, p2, v1}, Lcom/android/updater/receiver/StartupReceiver;->getPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 89
    const-string v0, "StartupReceiver"

    const-string v1, "set daily check for normal user"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method

.method private addUploadUsageApp(Landroid/app/AlarmManager;Landroid/content/Context;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 56
    const/16 v1, 0xb

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 57
    const/16 v1, 0xc

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x404e

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 59
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/updater/UpdaterBackgroundService;

    invoke-direct {v1, p2, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    const-string v2, "command"

    const-string v3, "upload_usage_app"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {p2, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 63
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 64
    return-void
.end method

.method private addWeeklyCheck(Landroid/app/AlarmManager;Landroid/content/Context;)V
    .locals 8
    .parameter "alarm"
    .parameter "context"

    .prologue
    const/4 v5, 0x7

    .line 70
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 71
    .local v7, calendar:Ljava/util/Calendar;
    const/16 v0, 0xb

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x402e

    mul-double/2addr v1, v3

    double-to-int v1, v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 72
    invoke-virtual {v7, v5, v5}, Ljava/util/Calendar;->set(II)V

    .line 74
    const/4 v1, 0x1

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/updater/receiver/StartupReceiver;->getPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 76
    const-string v0, "StartupReceiver"

    const-string v1, "set weekly check for normal user"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method

.method private getPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 123
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/updater/UpdaterBackgroundService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    const-string v1, "command"

    const-string v2, "check_update"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v1, "check_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    const/high16 v1, 0x800

    invoke-static {p1, p2, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 127
    return-object v0
.end method

.method private showWelcomeInfo(Landroid/content/Context;Lcom/android/updater/utils/Preferences;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const v3, 0x7f05003b

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 134
    invoke-virtual {p2}, Lcom/android/updater/utils/Preferences;->getCurrentIncrementalVersion()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {}, Lcom/android/updater/utils/SysUtils;->getIncrementalVersion()Ljava/lang/String;

    move-result-object v6

    .line 136
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/android/updater/ApplyUpdateActivity;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    const-string v0, "current_version"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 140
    const v2, 0x7f02004a

    const v0, 0x7f05003c

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/updater/utils/SysUtils;->getModVersion()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/android/updater/utils/SysUtils;->showNotification(Landroid/content/Context;Landroid/content/Intent;IIILjava/lang/String;)V

    .line 144
    invoke-virtual {p2, v6}, Lcom/android/updater/utils/Preferences;->setCurrentIncrementalVersion(Ljava/lang/String;)V

    .line 146
    const-string v0, ""

    invoke-virtual {p2, v0}, Lcom/android/updater/utils/Preferences;->setRank(Ljava/lang/String;)V

    .line 147
    const-string v0, ""

    invoke-virtual {p2, v0}, Lcom/android/updater/utils/Preferences;->setTotal(Ljava/lang/String;)V

    .line 148
    const-string v0, ""

    invoke-virtual {p2, v0}, Lcom/android/updater/utils/Preferences;->setVersion(Ljava/lang/String;)V

    .line 149
    invoke-static {p1, v7}, Lcom/android/updater/utils/SysUtils;->showBubble(Landroid/content/Context;I)V

    .line 151
    invoke-virtual {p2}, Lcom/android/updater/utils/Preferences;->getLastUpdateInfo()Lcom/android/updater/customTypes/UpdateInfo;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/updater/utils/Preferences;->setCurrVersionInfo(Lcom/android/updater/customTypes/UpdateInfo;)V

    .line 153
    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 30
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 31
    .local v0, alarm:Landroid/app/AlarmManager;
    new-instance v1, Lcom/android/updater/utils/Preferences;

    invoke-direct {v1, p1}, Lcom/android/updater/utils/Preferences;-><init>(Landroid/content/Context;)V

    .line 33
    .local v1, pref:Lcom/android/updater/utils/Preferences;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/updater/utils/Preferences;->setCheckType(I)V

    .line 34
    invoke-virtual {v1}, Lcom/android/updater/utils/Preferences;->getUserLevel()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 43
    :pswitch_0
    invoke-direct {p0, v0, p1}, Lcom/android/updater/receiver/StartupReceiver;->addDailyCheckNormal(Landroid/app/AlarmManager;Landroid/content/Context;)V

    .line 44
    invoke-direct {p0, v0, p1}, Lcom/android/updater/receiver/StartupReceiver;->addWeeklyCheck(Landroid/app/AlarmManager;Landroid/content/Context;)V

    .line 48
    :goto_0
    invoke-static {}, Lmiui/os/Build;->isDevelopmentVersion()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    invoke-direct {p0, v0, p1}, Lcom/android/updater/receiver/StartupReceiver;->addUploadUsageApp(Landroid/app/AlarmManager;Landroid/content/Context;)V

    .line 51
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/updater/receiver/StartupReceiver;->showWelcomeInfo(Landroid/content/Context;Lcom/android/updater/utils/Preferences;)V

    .line 52
    return-void

    .line 36
    :pswitch_1
    invoke-direct {p0, v0, p1}, Lcom/android/updater/receiver/StartupReceiver;->addDailyCheckAdvanced(Landroid/app/AlarmManager;Landroid/content/Context;)V

    goto :goto_0

    .line 39
    :pswitch_2
    invoke-direct {p0, v0, p1}, Lcom/android/updater/receiver/StartupReceiver;->addDailyCheckDeveloper(Landroid/app/AlarmManager;Landroid/content/Context;)V

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
