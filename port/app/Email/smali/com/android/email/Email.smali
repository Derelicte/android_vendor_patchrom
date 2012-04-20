.class public Lcom/android/email/Email;
.super Landroid/app/Application;
.source "Email.java"


# static fields
.field public static DEBUG:Z

.field public static DEBUG_EXCHANGE:Z

.field public static DEBUG_EXCHANGE_FILE:Z

.field public static DEBUG_EXCHANGE_VERBOSE:Z

.field private static sAccountsChangedNotification:Z

.field public static sDebugInhibitGraphicsAcceleration:Z

.field private static sMessageDecodeErrorString:Ljava/lang/String;

.field private static sUiThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    sput-boolean v0, Lcom/android/email/Email;->sDebugInhibitGraphicsAcceleration:Z

    .line 80
    sput-boolean v0, Lcom/android/email/Email;->sAccountsChangedNotification:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static enableStrictMode(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 276
    invoke-static {p0}, Lcom/android/emailcommon/utility/Utility;->enableStrictMode(Z)V

    .line 277
    return-void
.end method

.method public static getMessageDecodeErrorString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    sget-object v0, Lcom/android/email/Email;->sMessageDecodeErrorString:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/email/Email;->sMessageDecodeErrorString:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static declared-synchronized getNotifyUiAccountsChanged()Z
    .locals 2

    .prologue
    .line 258
    const-class v0, Lcom/android/email/Email;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/email/Email;->sAccountsChangedNotification:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 241
    const-string v0, "Email"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return-void
.end method

.method public static declared-synchronized setNotifyUiAccountsChanged(Z)V
    .locals 2
    .parameter "setFlag"

    .prologue
    .line 250
    const-class v0, Lcom/android/email/Email;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/android/email/Email;->sAccountsChangedNotification:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    monitor-exit v0

    return-void

    .line 250
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static setServicesEnabled(Landroid/content/Context;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 130
    if-nez p1, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    const-class v4, Lcom/android/email/service/MailService;

    invoke-direct {v0, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 137
    invoke-static {p0}, Lcom/android/email/service/MailService;->actionReschedule(Landroid/content/Context;)V

    .line 139
    :cond_0
    new-instance v4, Landroid/content/ComponentName;

    const-class v0, Lcom/android/email/activity/MessageCompose;

    invoke-direct {v4, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v4, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 144
    new-instance v4, Landroid/content/ComponentName;

    const-class v0, Lcom/android/email/activity/ShortcutPicker;

    invoke-direct {v4, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v4, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 149
    new-instance v4, Landroid/content/ComponentName;

    const-class v0, Lcom/android/email/service/MailService;

    invoke-direct {v4, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v3, v4, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 154
    new-instance v4, Landroid/content/ComponentName;

    const-class v0, Lcom/android/email/service/AttachmentDownloadService;

    invoke-direct {v4, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_6

    move v0, v1

    :goto_3
    invoke-virtual {v3, v4, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 159
    if-eqz p1, :cond_1

    new-instance v0, Landroid/content/ComponentName;

    const-class v4, Lcom/android/email/service/MailService;

    invoke-direct {v0, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 166
    invoke-static {p0}, Lcom/android/email/service/MailService;->actionReschedule(Landroid/content/Context;)V

    .line 169
    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    const-class v4, Lcom/android/email/widget/WidgetConfiguration;

    invoke-direct {v0, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_2

    move v2, v1

    :cond_2
    invoke-virtual {v3, v0, v2, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 176
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/service/AttachmentDownloadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, p0, v0}, Lcom/android/email/Email;->startOrStopService(ZLandroid/content/Context;Landroid/content/Intent;)V

    .line 177
    invoke-static {p0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/email/NotificationController;->watchForMessages(Z)V

    .line 178
    return-void

    :cond_3
    move v0, v2

    .line 139
    goto :goto_0

    :cond_4
    move v0, v2

    .line 144
    goto :goto_1

    :cond_5
    move v0, v2

    .line 149
    goto :goto_2

    :cond_6
    move v0, v2

    .line 154
    goto :goto_3
.end method

.method public static setServicesEnabledAsync(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 93
    new-instance v0, Lcom/android/email/Email$1;

    invoke-direct {v0, p0}, Lcom/android/email/Email$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 99
    return-void
.end method

.method public static setServicesEnabledSync(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    .line 112
    const/4 v6, 0x0

    .line 114
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 118
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v7, 0x1

    .line 119
    .local v7, enable:Z
    :goto_0
    invoke-static {p0, v7}, Lcom/android/email/Email;->setServicesEnabled(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    if-eqz v6, :cond_0

    .line 123
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return v7

    .line 118
    .end local v7           #enable:Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 123
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private static startOrStopService(ZLandroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "enabled"
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 187
    if-eqz p0, :cond_0

    .line 188
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static updateLoggingFlags(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 224
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v4

    .line 225
    .local v4, prefs:Lcom/android/email/Preferences;
    invoke-virtual {v4}, Lcom/android/email/Preferences;->getEnableDebugLogging()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v1, 0x1

    .line 226
    .local v1, debugLogging:I
    :goto_0
    invoke-virtual {v4}, Lcom/android/email/Preferences;->getEnableExchangeLogging()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v5, 0x2

    .line 228
    .local v5, verboseLogging:I
    :goto_1
    invoke-virtual {v4}, Lcom/android/email/Preferences;->getEnableExchangeFileLogging()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v3, 0x4

    .line 230
    .local v3, fileLogging:I
    :goto_2
    invoke-virtual {v4}, Lcom/android/email/Preferences;->getEnableStrictMode()Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v2, 0x8

    .line 232
    .local v2, enableStrictMode:I
    :goto_3
    or-int v6, v1, v5

    or-int/2addr v6, v3

    or-int v0, v6, v2

    .line 233
    .local v0, debugBits:I
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/email/Controller;->serviceLogging(I)V

    .line 234
    return-void

    .end local v0           #debugBits:I
    .end local v1           #debugLogging:I
    .end local v2           #enableStrictMode:I
    .end local v3           #fileLogging:I
    .end local v5           #verboseLogging:I
    :cond_0
    move v1, v6

    .line 225
    goto :goto_0

    .restart local v1       #debugLogging:I
    :cond_1
    move v5, v6

    .line 226
    goto :goto_1

    .restart local v5       #verboseLogging:I
    :cond_2
    move v3, v6

    .line 228
    goto :goto_2

    .restart local v3       #fileLogging:I
    :cond_3
    move v2, v6

    .line 230
    goto :goto_3
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 196
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 197
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sput-object v1, Lcom/android/email/Email;->sUiThread:Ljava/lang/Thread;

    .line 198
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    .line 199
    .local v0, prefs:Lcom/android/email/Preferences;
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getEnableDebugLogging()Z

    move-result v1

    sput-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    .line 200
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getInhibitGraphicsAcceleration()Z

    move-result v1

    sput-boolean v1, Lcom/android/email/Email;->sDebugInhibitGraphicsAcceleration:Z

    .line 201
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getEnableStrictMode()Z

    move-result v1

    invoke-static {v1}, Lcom/android/email/Email;->enableStrictMode(Z)V

    .line 202
    invoke-static {p0}, Lcom/android/emailcommon/TempDirectory;->setTempDirectory(Landroid/content/Context;)V

    .line 205
    invoke-static {p0}, Lcom/android/email/RefreshManager;->getInstance(Landroid/content/Context;)Lcom/android/email/RefreshManager;

    .line 207
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/Controller;->resetVisibleLimits()V

    .line 210
    invoke-static {p0}, Lcom/android/email/Email;->updateLoggingFlags(Landroid/content/Context;)V

    .line 213
    const v1, 0x7f08009d

    invoke-virtual {p0, v1}, Lcom/android/email/Email;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/email/Email;->sMessageDecodeErrorString:Ljava/lang/String;

    .line 217
    invoke-static {p0}, Lcom/android/email/Email;->setServicesEnabledAsync(Landroid/content/Context;)V

    .line 218
    return-void
.end method
